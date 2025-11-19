uint64_t CSAutobahnEnabledForPlatform()
{
  if (CSAutobahnEnabledForPlatform_onceToken != -1)
  {
    CSAutobahnEnabledForPlatform_cold_1();
  }

  return CSAutobahnEnabledForPlatform_enabled;
}

uint64_t CSFeatureEnabled(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
      goto LABEL_10;
    case 7:
      if (_os_feature_enabled_impl())
      {
        result = 1;
      }

      else
      {
LABEL_10:

        result = _os_feature_enabled_impl();
      }

      break;
    case 11:
    case 12:
      result = _os_feature_enabled_impl();
      if (result)
      {

        result = _UISolariumEnabled();
      }

      break;
    default:
      result = 0;
      break;
  }

  return result;
}

__n128 CSCoverSheetTransitionContextMake@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  BSIntervalClip();
  *a3 = v6;
  result = *a1;
  v8 = *(a1 + 16);
  *(a3 + 8) = *a1;
  *(a3 + 24) = v8;
  *(a3 + 40) = a2;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

__CFString *NSStringFromCoverSheetCapability(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __NSStringFromCoverSheetCapability_block_invoke;
  v13 = &unk_27838CB38;
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

  if ([v3 count])
  {
    v8 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v8 = @"(none)";
  }

  return v8;
}

void __NSStringFromCoverSheetCapability_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 >= 0x8000)
  {
    if (a2 < 0x400000)
    {
      if (a2 >= 0x80000)
      {
        switch(a2)
        {
          case 0x80000:
            v2 = *(a1 + 32);
            v3 = @"HostedRemoteContent";
            goto LABEL_64;
          case 0x100000:
            v2 = *(a1 + 32);
            v3 = @"AccessoryPresentation";
            goto LABEL_64;
          case 0x200000:
            v2 = *(a1 + 32);
            v3 = @"CoverSheetSpotlight";
            goto LABEL_64;
        }
      }

      else
      {
        switch(a2)
        {
          case 0x8000:
            v2 = *(a1 + 32);
            v3 = @"ProudLockUpdates";
            goto LABEL_64;
          case 0x10000:
            v2 = *(a1 + 32);
            v3 = @"NotificationReveal";
            goto LABEL_64;
          case 0x20000:
            v2 = *(a1 + 32);
            v3 = @"NotificationInteract";
            goto LABEL_64;
        }
      }
    }

    else if (a2 <= 0x1FFFFFF)
    {
      switch(a2)
      {
        case 0x400000:
          v2 = *(a1 + 32);
          v3 = @"FocusActivityButton";
          goto LABEL_64;
        case 0x800000:
          v2 = *(a1 + 32);
          v3 = @"PosterSwitcher";
          goto LABEL_64;
        case 0x1000000:
          v2 = *(a1 + 32);
          v3 = @"LaunchFromWidget";
          goto LABEL_64;
      }
    }

    else if (a2 > 0x7FFFFFF)
    {
      if (a2 == 0x8000000)
      {
        v2 = *(a1 + 32);
        v3 = @"CameraSwipe";
        goto LABEL_64;
      }

      if (a2 == 0x10000000)
      {
        v2 = *(a1 + 32);
        v3 = @"Inherit";
        goto LABEL_64;
      }
    }

    else
    {
      if (a2 == 0x2000000)
      {
        v2 = *(a1 + 32);
        v3 = @"QuickActionButtons";
        goto LABEL_64;
      }

      if (a2 == 0x4000000)
      {
        v2 = *(a1 + 32);
        v3 = @"CaptureButton";
        goto LABEL_64;
      }
    }
  }

  else if (a2 <= 255)
  {
    if (a2 > 15)
    {
      switch(a2)
      {
        case 16:
          v2 = *(a1 + 32);
          v3 = @"PreArm";
          goto LABEL_64;
        case 64:
          v2 = *(a1 + 32);
          v3 = @"TodayCenter";
          goto LABEL_64;
        case 128:
          v2 = *(a1 + 32);
          v3 = @"ControlCenter";
          goto LABEL_64;
      }
    }

    else
    {
      switch(a2)
      {
        case 2:
          v2 = *(a1 + 32);
          v3 = @"Siri";
          goto LABEL_64;
        case 4:
          v2 = *(a1 + 32);
          v3 = @"Camera";
          goto LABEL_64;
        case 8:
          v2 = *(a1 + 32);
          v3 = @"TouchID";
          goto LABEL_64;
      }
    }
  }

  else if (a2 <= 2047)
  {
    switch(a2)
    {
      case 256:
        v2 = *(a1 + 32);
        v3 = @"LivePhotos";
        goto LABEL_64;
      case 512:
        v2 = *(a1 + 32);
        v3 = @"MediaControls";
        goto LABEL_64;
      case 1024:
        v2 = *(a1 + 32);
        v3 = @"Continuity";
        goto LABEL_64;
    }
  }

  else if (a2 >= 0x2000)
  {
    if (a2 == 0x2000)
    {
      v2 = *(a1 + 32);
      v3 = @"QuickNote";
      goto LABEL_64;
    }

    if (a2 == 0x4000)
    {
      v2 = *(a1 + 32);
      v3 = @"Screenshot";
      goto LABEL_64;
    }
  }

  else
  {
    if (a2 == 2048)
    {
      v2 = *(a1 + 32);
      v3 = @"Logout";
      goto LABEL_64;
    }

    if (a2 == 4096)
    {
      v2 = *(a1 + 32);
      v3 = @"DismissCoverSheet";
LABEL_64:

      [v2 addObject:v3];
      return;
    }
  }

  v4 = *(a1 + 32);
  if ((a2 & 0x38) != 0)
  {
    v3 = @"Unlock";
    v2 = *(a1 + 32);
    goto LABEL_64;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Other Capability: %lu", a2];
  [v4 addObject:v5];
}

id CSGetLegibilitySettingsForBackgroundStyle(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v1 = objc_alloc(MEMORY[0x277D760A8]);
    v2 = [MEMORY[0x277D75348] whiteColor];
    v3 = [v1 initWithStyle:1 contentColor:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_21EB21D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EB221FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2)
{

  return [(CSCoverSheetAppearanceResolver *)v2 _valueForTransitionInterval:a2 timingFunction:0];
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return [v0 transitionInputs];
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_7_0(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{

  return [v9 setAnimationDuration:a9];
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return [v0 isHidden];
}

uint64_t OUTLINED_FUNCTION_19()
{

  return [v0 setHidden:v1];
}

void sub_21EB28C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak((v21 - 136));
  _Unwind_Resume(a1);
}

id getCSProminentLayoutControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCSProminentLayoutControllerClass_softClass;
  v7 = getCSProminentLayoutControllerClass_softClass;
  if (!getCSProminentLayoutControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCSProminentLayoutControllerClass_block_invoke;
    v3[3] = &unk_27838C610;
    v3[4] = &v4;
    __getCSProminentLayoutControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21EB2B8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CSComponentTransitionInputsMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a7;
  *(a2 + 40) = result;
  return result;
}

void CSUpdateStatusBarBackgroundComponent(void *a1)
{
  v1 = a1;
  [v1 distanceFromBarToContent];
  [v1 scrollingContentInset];
  [v1 updateAppearanceForStatusBarBackgroundHidden:BSFloatLessThanOrEqualToFloat() ^ 1];
}

void sub_21EB3CC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__BSSafeCast(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    if (objc_opt_isKindOfClass())
    {
      a2 = v3;
    }

    else
    {
      a2 = 0;
    }
  }

  v4 = a2;

  return a2;
}

void __49__CSDeviceUnblockPolicyEnvironment_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIsUserRequestedEraseEnabled:{objc_msgSend(v3, "isUserRequestedEraseEnabled")}];
  [v4 setIsUserFindMyAccountPresent:{objc_msgSend(*(a1 + 32), "isUserFindMyAccountPresent")}];
  [v4 setIsDeviceInternetConnectionActive:{objc_msgSend(*(a1 + 32), "isDeviceInternetConnectionActive")}];
  [v4 setIsPasscodeGracePeriodUsable:{objc_msgSend(*(a1 + 32), "isPasscodeGracePeriodUsable")}];
}

void sub_21EB4F9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromCoverSheetTransitionType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"none";
  }

  else
  {
    return off_27838B880[a1 - 1];
  }
}

id NSStringFromCoverSheetTransitionContext(__int128 *a1)
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v3 = a1[1];
  v9 = *a1;
  v10 = v3;
  v7[2] = __NSStringFromCoverSheetTransitionContext_block_invoke;
  v7[3] = &unk_27838B860;
  v8 = v2;
  v11 = a1[2];
  v4 = v2;
  [v4 appendBodySectionWithName:@"CSCoverSheetTransitionContext" multilinePrefix:&stru_28302FDA0 block:v7];
  v5 = [v4 build];

  return v5;
}

id __NSStringFromCoverSheetTransitionContext_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendFloat:@"value" withName:*(a1 + 40)];
  v3 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v4 = NSStringFromInterval();
  v5 = [v3 appendObject:v4 withName:{@"interval", v7, v8}];

  return [*(a1 + 32) appendInteger:*(a1 + 80) withName:@"mode"];
}

void sub_21EB5425C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EB55014(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21EB5C1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SBStaticInitializer()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    if ((SecTaskGetCodeSignStatus(v0) & 0xC000001) != 0x4000001 && (os_variant_has_internal_content() & 1) == 0)
    {
      SBStaticInitializer_cold_1();
    }

    CFRelease(v1);
  }
}

double CSMainPageListInsetXLandscapePhoneDeviceSpecific()
{
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v3 = 0;
      v4 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v128 = [MEMORY[0x277D75418] currentDevice];
    if ([v128 userInterfaceIdiom] != 1)
    {
      v3 = 0;
      v4 = 1;
      goto LABEL_10;
    }
  }

  v4 = v2 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v119 = [MEMORY[0x277D759A0] mainScreen];
      [v119 _referenceBounds];
    }

    v3 = v5 ^ 1;
    BSSizeRoundForScale();
    if (v27 == *(MEMORY[0x277D66E30] + 288) && v26 == *(MEMORY[0x277D66E30] + 296))
    {
      v155 = v5 ^ 1;
      v156 = v4;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v152 = 0;
      v130 = 0;
      v153 = 0;
      v129 = 0;
      v154 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0.0;
      goto LABEL_67;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_10:
  v6 = __sb__runningInSpringBoard();
  v155 = v3;
  v156 = v4;
  if (v6)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v7 = 0;
      v8 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v127 = [MEMORY[0x277D75418] currentDevice];
    if ([v127 userInterfaceIdiom] != 1)
    {
      v7 = 0;
      v8 = 1;
      goto LABEL_19;
    }
  }

  v8 = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v118 = [MEMORY[0x277D759A0] mainScreen];
      [v118 _referenceBounds];
    }

    v7 = v5 ^ 1;
    BSSizeRoundForScale();
    if (v29 >= *(MEMORY[0x277D66E30] + 440))
    {
      LODWORD(v154) = v5 ^ 1;
      HIDWORD(v154) = v8;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v152 = 0;
      v130 = 0;
      v153 = 0;
      v129 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0.0;
      goto LABEL_67;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_19:
  v9 = __sb__runningInSpringBoard();
  v154 = __PAIR64__(v8, v7);
  if (v9)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v126 = [MEMORY[0x277D75418] currentDevice];
    if ([v126 userInterfaceIdiom] != 1)
    {
      v10 = 0;
      v11 = 1;
      goto LABEL_28;
    }
  }

  v11 = v9 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v117 = [MEMORY[0x277D759A0] mainScreen];
      [v117 _referenceBounds];
    }

    v10 = v5 ^ 1;
    BSSizeRoundForScale();
    if (v30 >= *(MEMORY[0x277D66E30] + 376))
    {
      v152 = v5 ^ 1;
      v153 = v11;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v129 = 0;
      v130 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0.0;
      goto LABEL_67;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_28:
  v12 = __sb__runningInSpringBoard();
  v152 = v10;
  v153 = v11;
  if (v12)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v1 = 0;
      v13 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v125 = [MEMORY[0x277D75418] currentDevice];
    if ([v125 userInterfaceIdiom] != 1)
    {
      v1 = 0;
      v13 = 1;
      goto LABEL_37;
    }
  }

  v13 = v12 ^ 1;
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v122 = [MEMORY[0x277D759A0] mainScreen];
    [v122 _referenceBounds];
  }

  v1 = v5 ^ 1;
  BSSizeRoundForScale();
  if (v14 >= *(MEMORY[0x277D66E30] + 280))
  {
    v150 = v5 ^ 1;
    v151 = v13;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    v148 = 0uLL;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v134 = 0;
    v149 = 0;
    v133 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    goto LABEL_67;
  }

LABEL_37:
  v15 = __sb__runningInSpringBoard();
  v150 = v1;
  v151 = v13;
  if (v15)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      HIDWORD(v148) = 0;
      v0 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    v124 = [MEMORY[0x277D75418] currentDevice];
    if ([v124 userInterfaceIdiom] != 1)
    {
      HIDWORD(v148) = 0;
      v0 = 1;
      goto LABEL_47;
    }
  }

  v0 = v15 ^ 1u;
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v120 = [MEMORY[0x277D759A0] mainScreen];
    [v120 _referenceBounds];
  }

  HIDWORD(v148) = v5 ^ 1;
  BSSizeRoundForScale();
  if (v24 >= *(MEMORY[0x277D66E30] + 264))
  {
    v149 = v0;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    *&v148 = 0;
    v137 = 0;
    v136 = 0;
    DWORD2(v148) = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    goto LABEL_67;
  }

LABEL_47:
  v25 = __sb__runningInSpringBoard();
  v149 = v0;
  if (v25)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v148 + 4) = 0;
      goto LABEL_186;
    }
  }

  else
  {
    v123 = [MEMORY[0x277D75418] currentDevice];
    if ([v123 userInterfaceIdiom] != 1)
    {
      *(&v148 + 4) = 0x100000000;
      goto LABEL_186;
    }
  }

  DWORD2(v148) = v25 ^ 1;
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v116 = [MEMORY[0x277D759A0] mainScreen];
    [v116 _referenceBounds];
  }

  DWORD1(v148) = v5 ^ 1;
  BSSizeRoundForScale();
  if (v32 >= *(MEMORY[0x277D66E30] + 248))
  {
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    LODWORD(v148) = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    goto LABEL_67;
  }

LABEL_186:
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_188;
    }

LABEL_194:
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    LODWORD(v148) = v5 ^ 1;
    goto LABEL_67;
  }

  v121 = [MEMORY[0x277D75418] currentDevice];
  if ([v121 userInterfaceIdiom] == 1)
  {
    goto LABEL_194;
  }

LABEL_188:
  LODWORD(v148) = v5 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_192:
    v147 = 0;
    goto LABEL_202;
  }

  v33 = __sb__runningInSpringBoard();
  if (v33)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v114 = [MEMORY[0x277D75418] currentDevice];
    if ([v114 userInterfaceIdiom])
    {
      v147 = 0x100000000;
      goto LABEL_202;
    }
  }

  HIDWORD(v147) = v33 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v107 = [MEMORY[0x277D759A0] mainScreen];
      [v107 _referenceBounds];
    }

    LODWORD(v147) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v36 >= *(MEMORY[0x277D66E30] + 200))
    {
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 136.0;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v147) = 0;
  }

LABEL_202:
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v146 = 0;
      goto LABEL_212;
    }
  }

  else
  {
    v115 = [MEMORY[0x277D75418] currentDevice];
    if ([v115 userInterfaceIdiom])
    {
      v146 = 0x100000000;
      goto LABEL_212;
    }
  }

  HIDWORD(v146) = v5 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v110 = [MEMORY[0x277D759A0] mainScreen];
      [v110 _referenceBounds];
    }

    LODWORD(v146) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v34 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_216;
    }
  }

  else
  {
    LODWORD(v146) = 0;
  }

LABEL_212:
  if (_SBF_Private_IsD94Like())
  {
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 129.0;
    goto LABEL_67;
  }

LABEL_216:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_220:
    v145 = 0;
    goto LABEL_230;
  }

  v35 = __sb__runningInSpringBoard();
  if (v35)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_220;
    }
  }

  else
  {
    v111 = [MEMORY[0x277D75418] currentDevice];
    if ([v111 userInterfaceIdiom])
    {
      v145 = 0x100000000;
      goto LABEL_230;
    }
  }

  HIDWORD(v145) = v35 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v102 = [MEMORY[0x277D759A0] mainScreen];
      [v102 _referenceBounds];
    }

    LODWORD(v145) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v41 >= *(MEMORY[0x277D66E30] + 136))
    {
      v144 = 0;
      v143 = 0;
      v142 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 124.0;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v145) = 0;
  }

LABEL_230:
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v144 = 0;
      goto LABEL_240;
    }
  }

  else
  {
    v113 = [MEMORY[0x277D75418] currentDevice];
    if ([v113 userInterfaceIdiom])
    {
      v144 = 0x100000000;
      goto LABEL_240;
    }
  }

  HIDWORD(v144) = v5 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v106 = [MEMORY[0x277D759A0] mainScreen];
      [v106 _referenceBounds];
    }

    LODWORD(v144) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v37 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_244;
    }
  }

  else
  {
    LODWORD(v144) = 0;
  }

LABEL_240:
  if (_SBF_Private_IsD64Like())
  {
    v143 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 118.0;
    goto LABEL_67;
  }

LABEL_244:
  v38 = __sb__runningInSpringBoard();
  if (v38)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v143 = 0;
      goto LABEL_254;
    }
  }

  else
  {
    v112 = [MEMORY[0x277D75418] currentDevice];
    if ([v112 userInterfaceIdiom])
    {
      v143 = 0x100000000;
      goto LABEL_254;
    }
  }

  HIDWORD(v143) = v38 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v39 = __sb__runningInSpringBoard();
    if (v39)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v103 = [MEMORY[0x277D759A0] mainScreen];
      [v103 _referenceBounds];
    }

    v5 = v39 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v143) = v5;
    if (v40 >= *(MEMORY[0x277D66E30] + 136))
    {
      v142 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 124.0;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v143) = 0;
  }

LABEL_254:
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v142 = 0;
      goto LABEL_264;
    }
  }

  else
  {
    v109 = [MEMORY[0x277D75418] currentDevice];
    if ([v109 userInterfaceIdiom])
    {
      v142 = 0x100000000;
      goto LABEL_264;
    }
  }

  HIDWORD(v142) = v5 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v101 = [MEMORY[0x277D759A0] mainScreen];
      [v101 _referenceBounds];
    }

    LODWORD(v142) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v42 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_274;
    }
  }

  else
  {
    LODWORD(v142) = 0;
  }

LABEL_264:
  if (_SBF_Private_IsD54())
  {
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 118.0;
    goto LABEL_67;
  }

LABEL_274:
  v43 = __sb__runningInSpringBoard();
  if (v43)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v141 = 0;
      goto LABEL_284;
    }
  }

  else
  {
    v108 = [MEMORY[0x277D75418] currentDevice];
    if ([v108 userInterfaceIdiom])
    {
      v141 = 0x100000000;
      goto LABEL_284;
    }
  }

  HIDWORD(v141) = v43 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v44 = __sb__runningInSpringBoard();
    if (v44)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v98 = [MEMORY[0x277D759A0] mainScreen];
      [v98 _referenceBounds];
    }

    v5 = v44 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v141) = v5;
    if (v45 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 118.0;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v141) = 0;
  }

LABEL_284:
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v140 = 0;
      goto LABEL_294;
    }
  }

  else
  {
    v105 = [MEMORY[0x277D75418] currentDevice];
    if ([v105 userInterfaceIdiom])
    {
      v140 = 0x100000000;
      goto LABEL_294;
    }
  }

  HIDWORD(v140) = v5 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v97 = [MEMORY[0x277D759A0] mainScreen];
      [v97 _referenceBounds];
    }

    LODWORD(v140) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v46 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_303;
    }
  }

  else
  {
    LODWORD(v140) = 0;
  }

LABEL_294:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 118.0;
    goto LABEL_67;
  }

LABEL_303:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_307:
    v139 = 0;
    goto LABEL_314;
  }

  v47 = __sb__runningInSpringBoard();
  if (v47)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_307;
    }
  }

  else
  {
    v100 = [MEMORY[0x277D75418] currentDevice];
    if ([v100 userInterfaceIdiom])
    {
      v139 = 0x100000000;
      goto LABEL_314;
    }
  }

  HIDWORD(v139) = v47 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v90 = [MEMORY[0x277D759A0] mainScreen];
      [v90 _referenceBounds];
    }

    LODWORD(v139) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v50 >= *(MEMORY[0x277D66E30] + 184))
    {
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 144.0;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v139) = 0;
  }

LABEL_314:
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v138 = 0;
      goto LABEL_324;
    }
  }

  else
  {
    v104 = [MEMORY[0x277D75418] currentDevice];
    if ([v104 userInterfaceIdiom])
    {
      v138 = 0x100000000;
      goto LABEL_324;
    }
  }

  HIDWORD(v138) = v5 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v94 = [MEMORY[0x277D759A0] mainScreen];
      [v94 _referenceBounds];
    }

    LODWORD(v138) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v48 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_328;
    }
  }

  else
  {
    LODWORD(v138) = 0;
  }

LABEL_324:
  if (_SBF_Private_IsD93Like())
  {
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 93.0;
    goto LABEL_67;
  }

LABEL_328:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_332:
    v137 = 0;
    goto LABEL_342;
  }

  v49 = __sb__runningInSpringBoard();
  if (v49)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_332;
    }
  }

  else
  {
    v96 = [MEMORY[0x277D75418] currentDevice];
    if ([v96 userInterfaceIdiom])
    {
      v137 = 0x100000000;
      goto LABEL_342;
    }
  }

  HIDWORD(v137) = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v0 = [MEMORY[0x277D759A0] mainScreen];
      [v0 _referenceBounds];
    }

    v92 = v0;
    LODWORD(v137) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v55 >= *(MEMORY[0x277D66E30] + 104))
    {
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 135.0;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v137) = 0;
  }

LABEL_342:
  v51 = __sb__runningInSpringBoard();
  v0 = &off_21EC94000;
  if (v51)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v136) = 0;
      v5 = 0;
      goto LABEL_352;
    }
  }

  else
  {
    v99 = [MEMORY[0x277D75418] currentDevice];
    if ([v99 userInterfaceIdiom])
    {
      v5 = 0;
      HIDWORD(v136) = 1;
      goto LABEL_352;
    }
  }

  HIDWORD(v136) = v51 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v52 = __sb__runningInSpringBoard();
    if (v52)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v89 = [MEMORY[0x277D759A0] mainScreen];
      [v89 _referenceBounds];
    }

    v5 = v52 ^ 1u;
    BSSizeRoundForScale();
    if (v53 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_356;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_352:
  if (_SBF_Private_IsD63Like())
  {
    v135 = 0;
    LODWORD(v136) = v5;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 87.0;
    goto LABEL_67;
  }

LABEL_356:
  LODWORD(v136) = v5;
  if (!_SBF_Private_IsD23Like())
  {
LABEL_360:
    v135 = 0;
    HIDWORD(v134) = 0;
    goto LABEL_370;
  }

  v54 = __sb__runningInSpringBoard();
  if (v54)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_360;
    }
  }

  else
  {
    v91 = [MEMORY[0x277D75418] currentDevice];
    if ([v91 userInterfaceIdiom])
    {
      HIDWORD(v134) = 0;
      v135 = 1;
      goto LABEL_370;
    }
  }

  v135 = v54 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v83 = [MEMORY[0x277D759A0] mainScreen];
      [v83 _referenceBounds];
    }

    HIDWORD(v134) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v60 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v134) = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v129 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 118.0;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v134) = 0;
  }

LABEL_370:
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v134) = 0;
      HIDWORD(v133) = 0;
      goto LABEL_380;
    }
  }

  else
  {
    v95 = [MEMORY[0x277D75418] currentDevice];
    if ([v95 userInterfaceIdiom])
    {
      HIDWORD(v133) = 0;
      LODWORD(v134) = 1;
      goto LABEL_380;
    }
  }

  LODWORD(v134) = v5 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v86 = [MEMORY[0x277D759A0] mainScreen];
      [v86 _referenceBounds];
    }

    HIDWORD(v133) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v56 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_384;
    }
  }

  else
  {
    HIDWORD(v133) = 0;
  }

LABEL_380:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v133) = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 87.0;
    goto LABEL_67;
  }

LABEL_384:
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v133) = 0;
      HIDWORD(v132) = 0;
      goto LABEL_394;
    }
  }

  else
  {
    v93 = [MEMORY[0x277D75418] currentDevice];
    if ([v93 userInterfaceIdiom])
    {
      HIDWORD(v132) = 0;
      LODWORD(v133) = 1;
      goto LABEL_394;
    }
  }

  LODWORD(v133) = v57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v84 = [MEMORY[0x277D759A0] mainScreen];
      [v84 _referenceBounds];
    }

    HIDWORD(v132) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v58 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v132) = 0;
      v130 = 0;
      v131 = 0;
      v129 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v59 = 0x405F000000000000;
LABEL_409:
      v23 = *&v59;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v132) = 0;
  }

LABEL_394:
  v5 = __sb__runningInSpringBoard();
  v1 = &off_21EC94000;
  if (v5)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v132) = 0;
      HIDWORD(v131) = 0;
      goto LABEL_404;
    }
  }

  else
  {
    v88 = [MEMORY[0x277D75418] currentDevice];
    if ([v88 userInterfaceIdiom])
    {
      HIDWORD(v131) = 0;
      LODWORD(v132) = 1;
      goto LABEL_404;
    }
  }

  LODWORD(v132) = v5 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v82 = [MEMORY[0x277D759A0] mainScreen];
      [v82 _referenceBounds];
    }

    HIDWORD(v131) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_415;
    }
  }

  else
  {
    HIDWORD(v131) = 0;
  }

LABEL_404:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v131) = 0;
    v129 = 0;
    v130 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 118.0;
    goto LABEL_67;
  }

LABEL_415:
  v62 = __sb__runningInSpringBoard();
  if (v62)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v131) = 0;
      HIDWORD(v130) = 0;
      goto LABEL_425;
    }
  }

  else
  {
    v87 = [MEMORY[0x277D75418] currentDevice];
    if ([v87 userInterfaceIdiom])
    {
      HIDWORD(v130) = 0;
      LODWORD(v131) = 1;
      goto LABEL_425;
    }
  }

  LODWORD(v131) = v62 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v81 = [MEMORY[0x277D759A0] mainScreen];
      [v81 _referenceBounds];
    }

    HIDWORD(v130) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v65 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v130) = 0;
      v129 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 135.0;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v130) = 0;
  }

LABEL_425:
  v63 = __sb__runningInSpringBoard();
  if (v63)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v130) = 0;
      v5 = 0;
      goto LABEL_435;
    }
  }

  else
  {
    v85 = [MEMORY[0x277D75418] currentDevice];
    if ([v85 userInterfaceIdiom])
    {
      v5 = 0;
      LODWORD(v130) = 1;
      goto LABEL_435;
    }
  }

  LODWORD(v130) = v63 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v64 = __sb__runningInSpringBoard();
    if (v64)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v80 = [MEMORY[0x277D759A0] mainScreen];
      [v80 _referenceBounds];
    }

    v5 = v64 ^ 1u;
    BSSizeRoundForScale();
    if (v66 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_443;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_435:
  if (_SBF_Private_IsD53())
  {
    HIDWORD(v129) = v5;
LABEL_437:
    LODWORD(v129) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 87.0;
    goto LABEL_67;
  }

LABEL_443:
  HIDWORD(v129) = v5;
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    LODWORD(v129) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 118.0;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    goto LABEL_437;
  }

  v23 = 118.0;
  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    LODWORD(v129) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    LODWORD(v129) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
LABEL_452:
    v23 = 87.0;
    goto LABEL_67;
  }

  v67 = __sb__runningInSpringBoard();
  if (v67)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v129) = 0;
      v16 = 0;
      goto LABEL_463;
    }
  }

  else
  {
    v79 = [MEMORY[0x277D75418] currentDevice];
    if ([v79 userInterfaceIdiom])
    {
      v16 = 0;
      LODWORD(v129) = 1;
      goto LABEL_463;
    }
  }

  LODWORD(v129) = v67 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v76 = [MEMORY[0x277D759A0] mainScreen];
      [v76 _referenceBounds];
    }

    v16 = v5 ^ 1;
    BSSizeRoundForScale();
    if (v71 >= *(MEMORY[0x277D66E30] + 88))
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      goto LABEL_67;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_463:
  v68 = __sb__runningInSpringBoard();
  if (v68)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v17 = 0;
      v18 = 0;
      goto LABEL_473;
    }
  }

  else
  {
    v78 = [MEMORY[0x277D75418] currentDevice];
    if ([v78 userInterfaceIdiom])
    {
      v18 = 0;
      v17 = 1;
      goto LABEL_473;
    }
  }

  v17 = v68 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v75 = [MEMORY[0x277D759A0] mainScreen];
      [v75 _referenceBounds];
    }

    v18 = v5 ^ 1;
    BSSizeRoundForScale();
    if (v72 >= *(MEMORY[0x277D66E30] + 72))
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      goto LABEL_452;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_473:
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v19 = 0;
      v20 = 0;
      goto LABEL_483;
    }
  }

  else
  {
    v77 = [MEMORY[0x277D75418] currentDevice];
    if ([v77 userInterfaceIdiom])
    {
      v20 = 0;
      v19 = 1;
      goto LABEL_483;
    }
  }

  v19 = v5 ^ 1;
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v1 = [MEMORY[0x277D759A0] mainScreen];
    [v1 _referenceBounds];
  }

  v20 = v5 ^ 1;
  BSSizeRoundForScale();
  if (v69 >= *(MEMORY[0x277D66E30] + 56))
  {
    v21 = 0;
    v22 = 0;
    v70 = 0x4046000000000000;
    goto LABEL_490;
  }

LABEL_483:
  v0 = __sb__runningInSpringBoard();
  if (v0)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v21 = 0;
      v22 = 0;
      v70 = 0x4044000000000000;
LABEL_490:
      v23 = *&v70;
      goto LABEL_67;
    }

    goto LABEL_497;
  }

  v5 = [MEMORY[0x277D75418] currentDevice];
  if ([v5 userInterfaceIdiom])
  {
    v22 = 0;
    v21 = 1;
    v59 = 0x4044000000000000;
    goto LABEL_409;
  }

LABEL_497:
  v21 = v0 ^ 1;
  v73 = __sb__runningInSpringBoard();
  if (v73)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v0 = [MEMORY[0x277D759A0] mainScreen];
    [v0 _referenceBounds];
  }

  v22 = v73 ^ 1;
  BSSizeRoundForScale();
  if (v74 < *(MEMORY[0x277D66E30] + 40))
  {
    v23 = 40.0;
  }

  else
  {
    v23 = 69.0;
  }

LABEL_67:
  if (v22)
  {
  }

  if (v21)
  {
  }

  if (v20)
  {
  }

  if (v19)
  {
  }

  if (v18)
  {
  }

  if (v17)
  {
  }

  if (v16)
  {
  }

  if (v129)
  {
  }

  if (HIDWORD(v129))
  {
  }

  if (v130)
  {
  }

  if (HIDWORD(v130))
  {
  }

  if (v131)
  {
  }

  if (HIDWORD(v131))
  {
  }

  if (v132)
  {
  }

  if (HIDWORD(v132))
  {
  }

  if (v133)
  {
  }

  if (HIDWORD(v133))
  {
  }

  if (v134)
  {
  }

  if (HIDWORD(v134))
  {
  }

  if (v135)
  {
  }

  if (v136)
  {
  }

  if (HIDWORD(v136))
  {
  }

  if (v137)
  {
  }

  if (HIDWORD(v137))
  {
  }

  if (v138)
  {
  }

  if (HIDWORD(v138))
  {
  }

  if (v139)
  {
  }

  if (HIDWORD(v139))
  {
  }

  if (v140)
  {
  }

  if (HIDWORD(v140))
  {
  }

  if (v141)
  {
  }

  if (HIDWORD(v141))
  {
  }

  if (v142)
  {
  }

  if (HIDWORD(v142))
  {
  }

  if (v143)
  {
  }

  if (HIDWORD(v143))
  {
  }

  if (v144)
  {
  }

  if (HIDWORD(v144))
  {
  }

  if (v145)
  {
  }

  if (HIDWORD(v145))
  {
  }

  if (v146)
  {
  }

  if (HIDWORD(v146))
  {
  }

  if (v147)
  {
  }

  if (HIDWORD(v147))
  {
  }

  if (v148)
  {
  }

  if (DWORD1(v148))
  {
  }

  if (DWORD2(v148))
  {
  }

  if (HIDWORD(v148))
  {
  }

  if (v149)
  {

    if (!v150)
    {
      goto LABEL_165;
    }
  }

  else if (!v150)
  {
LABEL_165:
    if (v151)
    {
      goto LABEL_166;
    }

    goto LABEL_176;
  }

  if (v151)
  {
LABEL_166:

    if (!v152)
    {
      goto LABEL_167;
    }

    goto LABEL_177;
  }

LABEL_176:
  if (!v152)
  {
LABEL_167:
    if (v153)
    {
      goto LABEL_168;
    }

    goto LABEL_178;
  }

LABEL_177:

  if (v153)
  {
LABEL_168:

    if (!v154)
    {
      goto LABEL_169;
    }

    goto LABEL_179;
  }

LABEL_178:
  if (!v154)
  {
LABEL_169:
    if (HIDWORD(v154))
    {
      goto LABEL_170;
    }

    goto LABEL_180;
  }

LABEL_179:

  if (HIDWORD(v154))
  {
LABEL_170:

    if (!v155)
    {
      goto LABEL_171;
    }

LABEL_181:

    if (!v156)
    {
      return v23;
    }

    goto LABEL_172;
  }

LABEL_180:
  if (v155)
  {
    goto LABEL_181;
  }

LABEL_171:
  if (v156)
  {
LABEL_172:
  }

  return v23;
}

void sub_21EB64158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EB6AF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EB6D484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EB6D944(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_21EB71474(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 144));
  _Unwind_Resume(a1);
}

void sub_21EB76090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EB77AB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21EB7BF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_21EB83F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EB86948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EB8BAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EB8ED70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_21EB8F830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EB8FDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EB909B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_21EB913C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EB91E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getCSProminentLayoutControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoverSheetKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoverSheetKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27838C630;
    v5 = 0;
    CoverSheetKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoverSheetKitLibraryCore_frameworkLibrary)
  {
    __getCSProminentLayoutControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CSProminentLayoutController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSProminentLayoutControllerClass_block_invoke_cold_1();
  }

  getCSProminentLayoutControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoverSheetKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoverSheetKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21EB9A664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EB9AF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21EB9BE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EBB5364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __CSAutobahnEnabledForPlatform_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = CSFeatureEnabled(2 * ((v1 & 0xFFFFFFFFFFFFFFFBLL) == 1));
  CSAutobahnEnabledForPlatform_enabled = result;
  return result;
}

void sub_21EBC438C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id tribeca_supported_text()
{
  if (tribeca_supported_text_token != -1)
  {
    tribeca_supported_text_cold_1();
  }

  v1 = tribeca_supported_text_text;

  return v1;
}

void __tribeca_supported_text_block_invoke()
{
  if (!aks_bak_get_beacon())
  {
    v0 = [objc_alloc(MEMORY[0x277CCA8D8]) _initUniqueWithPath:{@"/System/Library/PrivateFrameworks/FindMyBeaconingSupport.framework", 0}];
    v1 = v0;
    if (v0)
    {
      v2 = [v0 localizedStringForKey:@"E786CC8A-FAD0-49DB-9460-F27F248521CD" value:&stru_28302FDA0 table:0];
      v3 = v2;
      if (v2)
      {
        if ([v2 length])
        {
          objc_storeStrong(&tribeca_supported_text_text, v3);
        }
      }
    }
  }
}

uint64_t CSMagSafeAccessoryTypeForSBSAccessoryType(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_21EC95E40[a1 - 1];
  }
}

__CFString *NSStringFromCSCameraPrewarmingBackgroundLaunchTarget(uint64_t a1)
{
  v1 = @"None";
  if (a1 == 1)
  {
    v1 = @"Application";
  }

  if (a1 == 2)
  {
    return @"Extension";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromCoverSheetNotificationBehavior(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"(none)";
  }

  else
  {
    return off_27838CB78[a1];
  }
}

__CFString *NSStringFromCoverSheetScrollingStrategy(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"(none)";
  }

  else
  {
    return off_27838CB58[a1];
  }
}

__CFString *NSStringFromCoverSheetProximityDetectionMode(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(none)";
  }

  else
  {
    return off_27838CBA0[a1];
  }
}

void sub_21EBCEA54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  _Block_object_dispose((v2 - 144), 8);
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21EBCF2F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id NSStringFromCSTeachableMomentCallToActionLabelState(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = v2;
    v4 = @"SWIPE_UP_TO_OPEN";
    v5 = @"CoverSheetCommon";
  }

  else
  {
    if (a1)
    {
      goto LABEL_6;
    }

    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = v2;
    v4 = @"SWIPE_UP_TO_UNLOCK";
    v5 = @"CoverSheet";
  }

  v1 = [v2 localizedStringForKey:v4 value:&stru_28302FDA0 table:v5];

LABEL_6:

  return v1;
}

float64_t CubicAnimationControlPoints5ByScalingWithFactor@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>, double a3@<D0>)
{
  v3 = vmulq_n_f64(a1[1], a3);
  *a2 = vmulq_n_f64(*a1, a3);
  a2[1] = v3;
  result = a1[2].f64[0] * a3;
  a2[2].f64[0] = result;
  return result;
}

id CSRingColorForPowerStatus(void *a1)
{
  v1 = a1;
  v2 = [v1 powerStatus];
  v3 = UIAccessibilityDarkerSystemColorsEnabled();
  if ((v2 & 4) != 0)
  {
    v5 = MEMORY[0x277D75348];
    if (!v3)
    {
      v6 = [MEMORY[0x277D75348] systemYellowColor];
      goto LABEL_16;
    }

    v7 = 0.0431372549;
    v8 = 1.0;
    v9 = 1.0;
    goto LABEL_13;
  }

  if ((v2 & 2) != 0)
  {
    v5 = MEMORY[0x277D75348];
    if (v3)
    {
      v8 = 0.984313725;
      v7 = 0.0274509804;
      v9 = 0.0;
LABEL_13:
      v6 = [v5 colorWithRed:v8 green:v9 blue:v7 alpha:1.0];
      goto LABEL_16;
    }

    v6 = [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    v4 = [v1 chargeState];
    v5 = MEMORY[0x277D75348];
    if ((v2 & 1) == 0 && v4 != 2)
    {
      v6 = [MEMORY[0x277D75348] whiteColor];
      goto LABEL_16;
    }

    if (v3)
    {
      v9 = 0.862745098;
      v7 = 0.392156863;
      v8 = 0.0;
      goto LABEL_13;
    }

    v6 = [MEMORY[0x277D75348] systemGreenColor];
  }

LABEL_16:
  v10 = v6;

  return v10;
}

CSMagSafePowerStatus *CSMagSafePowerStatusForBatteryState(char a1, unsigned int a2, double a3)
{
  v6 = objc_alloc_init(CSMagSafePowerStatus);
  if (a1)
  {
    v7 = 4;
  }

  else if ([MEMORY[0x277D75A78] lowBatteryLevel] >= a3)
  {
    v7 = 2;
  }

  else
  {
    v7 = a2;
  }

  [(CSMagSafePowerStatus *)v6 setPowerStatus:v7];
  [(CSMagSafePowerStatus *)v6 setPowerPercent:a3];

  return v6;
}

uint64_t CSMagSafeRingPowerStatusForBatteryState(char a1, unsigned int a2, double a3)
{
  if (a1)
  {
    return 4;
  }

  if ([MEMORY[0x277D75A78] lowBatteryLevel] >= a3)
  {
    return 2;
  }

  return a2;
}

__CFString *NSStringFromCoverSheetEventType(unint64_t a1)
{
  if (a1 > 0x29)
  {
    return @"(unknown)";
  }

  else
  {
    return off_27838CD00[a1];
  }
}

void sub_21EBE7F28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromCoverSheetComponentType(unint64_t a1)
{
  if (a1 > 0x1C)
  {
    return @"(none)";
  }

  else
  {
    return off_27838D008[a1];
  }
}

__CFString *NSStringFromTransitionModifiers(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if ((a1 & 2) != 0)
  {
    [v2 addObject:@"update"];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"stretch"];
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 addObject:@"targetOffset"];
  if ((a1 & 0x10) == 0)
  {
LABEL_5:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 addObject:@"targetScale"];
  if ((a1 & 0x20) == 0)
  {
LABEL_6:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_14:
  [v3 addObject:@"blur"];
  if ((a1 & 0x40) != 0)
  {
LABEL_7:
    [v3 addObject:@"level"];
  }

LABEL_8:
  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:@"|"];
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

uint64_t ComponentTransitionInputsEqualToComponentTransitionInputs(uint64_t a1, uint64_t a2)
{
  result = BSFloatEqualToFloat();
  if (result)
  {
    result = BSFloatEqualToFloat();
    if (result)
    {
      result = BSPointEqualToPoint();
      if (result)
      {
        return *(a1 + 40) == *(a2 + 40);
      }
    }
  }

  return result;
}

id NSStringFromComponentTransitionInputs(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"duration: '%f'", *a1];
  [v2 addObject:v3];

  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromCGPoint(*(a1 + 8));
  v6 = [v4 stringWithFormat:@"targetOffset: '%@'", v5];
  [v2 addObject:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"targetScale: '%f'", *(a1 + 24)];
  [v2 addObject:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"blurRadius: '%f'", *(a1 + 32)];
  [v2 addObject:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"level: '%lu'", *(a1 + 40)];
  [v2 addObject:v9];

  v10 = [v2 componentsJoinedByString:@" "];;

  return v10;
}

void sub_21EBEA0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EBEA3F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21EC04354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EC10E08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CSListItemProvidingGetAllProviders()
{
  v0 = objc_alloc_init(CSListItemDiscoveryProvider);
  v1 = +[CSActivityManager sharedInstance];
  v2 = [MEMORY[0x277CBEB70] orderedSetWithObjects:{v1, v0, 0}];

  return v2;
}

void sub_21EC33328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromCoverSheetRegionRole(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"(unknown)";
  }

  else
  {
    return off_27838D698[a1];
  }
}

void sub_21EC34D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EC350FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EC35E48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21EC36398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EC3650C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getAAUIDeviceLocatorServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAAUIDeviceLocatorServiceClass_softClass;
  v7 = getAAUIDeviceLocatorServiceClass_softClass;
  if (!getAAUIDeviceLocatorServiceClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAAUIDeviceLocatorServiceClass_block_invoke;
    v3[3] = &unk_27838C610;
    v3[4] = &v4;
    __getAAUIDeviceLocatorServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21EC366E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EC36818(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21EC3690C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21EC36FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EC37254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAAUIDeviceLocatorStateDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleAccountUILibrary();
  result = dlsym(v2, "AAUIDeviceLocatorStateDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAUIDeviceLocatorStateDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AppleAccountUILibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!AppleAccountUILibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __AppleAccountUILibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27838D800;
    v4 = 0;
    AppleAccountUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AppleAccountUILibraryCore_frameworkLibrary;
  if (!AppleAccountUILibraryCore_frameworkLibrary)
  {
    AppleAccountUILibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __AppleAccountUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleAccountUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAAUIDeviceLocatorServiceClass_block_invoke(uint64_t a1)
{
  AppleAccountUILibrary();
  result = objc_getClass("AAUIDeviceLocatorService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAAUIDeviceLocatorServiceClass_block_invoke_cold_1();
  }

  getAAUIDeviceLocatorServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAAUIDeviceLocatorConfirmationUtilitiesContextClass_block_invoke(uint64_t a1)
{
  AppleAccountUILibrary();
  result = objc_getClass("AAUIDeviceLocatorConfirmationUtilitiesContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAAUIDeviceLocatorConfirmationUtilitiesContextClass_block_invoke_cold_1();
  }

  getAAUIDeviceLocatorConfirmationUtilitiesContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAAFMIPAuthenticateRequestClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AppleAccountLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27838D818;
    v5 = 0;
    AppleAccountLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    __getAAFMIPAuthenticateRequestClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AAFMIPAuthenticateRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAAFMIPAuthenticateRequestClass_block_invoke_cold_1();
  }

  getAAFMIPAuthenticateRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleAccountLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleAccountLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21EC4A1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromWidgetPresentationMode(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Invalid Mode Defined";
  }

  else
  {
    return off_27838DA98[a1];
  }
}

void sub_21EC4BE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_21EC4D728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CSChargePercentageLabelForBattery(void *a1)
{
  v1 = a1;
  v2 = [v1 percentCharge];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (![v1 isInternal])
  {
    v8 = [v1 isCharging];
    v4 = MEMORY[0x277CCACA8];
    if (v8)
    {
      v9 = @"BATTERY_CHARGE_PERCENTAGE";
    }

    else
    {
      v9 = @"BATTERY_CHARGE_REMAINING";
    }

    v5 = [v3 localizedStringForKey:v9 value:&stru_28302FDA0 table:@"CoverSheet"];
    v6 = MEMORY[0x277CF0DA8];
    v7 = v2;
    goto LABEL_9;
  }

  if (v2 == 100 || [v1 sb_supportsDetailedBatteryMetrics])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [v3 localizedStringForKey:@"BATTERY_CHARGE_PERCENTAGE" value:&stru_28302FDA0 table:@"CoverSheet"];
    v6 = MEMORY[0x277CF0DA8];
    v7 = v2;
LABEL_9:
    v10 = [v6 localizedBatteryDetailTextForBatteryLevel:v7];
    v11 = [v4 stringWithFormat:v5, v10];

    goto LABEL_10;
  }

  v11 = [v3 localizedStringForKey:@"BATTERY_CHARGING" value:&stru_28302FDA0 table:@"CoverSheet"];
LABEL_10:

  return v11;
}

id CSSimpleChargePercentageLabelForBattery(void *a1)
{
  v1 = MEMORY[0x277CCABB8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v3 setLocale:v4];

  [v3 setNumberStyle:3];
  v5 = MEMORY[0x277CCABB0];
  v6 = [v2 percentCharge];

  v7 = [v5 numberWithDouble:v6 / 100.0];
  v8 = [v3 stringFromNumber:v7];

  return v8;
}

void sub_21EC53CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EC54974(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __stringsFromTouches(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = MEMORY[0x277CCACA8];
        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = v4;
        v13 = [v11 phase];
        if (v13 >= 8)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unhandled (%ld)", v13];
        }

        else
        {
          v14 = off_27838DC00[v13];
        }

        [v11 force];
        v16 = v15;
        [v11 locationInView:v12];
        v18 = v17;
        v20 = v19;

        v32.x = v18;
        v32.y = v20;
        v21 = NSStringFromCGPoint(v32);
        v22 = [v10 stringWithFormat:@"<UITouch:%p phase:%@ force: %f, loc: %@>", v11, v14, v16, v21];

        [v5 addObject:v22];
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  return v5;
}

void sub_21EC5C0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, id a27, id a28)
{
  objc_destroyWeak(v28 + 8);
  objc_destroyWeak(v28 + 7);
  objc_destroyWeak(v28 + 6);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a27);
  objc_destroyWeak(&a28);
  _Unwind_Resume(a1);
}

void sub_21EC5D830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EC5E79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v30 + 56));
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&a26);
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v31 - 144));
  objc_destroyWeak((v31 - 136));
  _Unwind_Resume(a1);
}

void sub_21EC5F410(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *NSStringForCSPosterSwitcherPresentationNotReadyReason(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown - %lu)", a1];
  }

  else
  {
    v2 = off_27838DF20[a1];
  }

  return v2;
}

void sub_21EC6DBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EC6F720(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21EC6FA04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromCSHostableEntityContentMode(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"None";
  }

  else
  {
    return off_27838E050[a1 - 1];
  }
}

__CFString *NSStringFromCoverSheetActionType(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return @"(unknown)";
  }

  else
  {
    return off_27838E0C0[a1];
  }
}

void sub_21EC73D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double OUTLINED_FUNCTION_18()
{

  return [CSCoverSheetAppearanceResolver _finalizeOffset:v0 referenceFrame:v2];
}

void __getCSProminentLayoutControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCSProminentLayoutControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CSCoverSheetViewController.m" lineNumber:272 description:{@"Unable to find class %s", "CSProminentLayoutController"}];

  __break(1u);
}

void __getCSProminentLayoutControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoverSheetKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CSCoverSheetViewController.m" lineNumber:271 description:{@"%s", *a1}];

  __break(1u);
}

void AppleAccountUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppleAccountUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CSDeviceBlockViewController.m" lineNumber:35 description:{@"%s", *a1}];

  __break(1u);
}

void __getAAUIDeviceLocatorServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAAUIDeviceLocatorServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CSDeviceBlockViewController.m" lineNumber:37 description:{@"Unable to find class %s", "AAUIDeviceLocatorService"}];

  __break(1u);
}

void __getAAUIDeviceLocatorConfirmationUtilitiesContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAAUIDeviceLocatorConfirmationUtilitiesContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CSDeviceBlockViewController.m" lineNumber:39 description:{@"Unable to find class %s", "AAUIDeviceLocatorConfirmationUtilitiesContext"}];

  __break(1u);
}

void __getAAFMIPAuthenticateRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAAFMIPAuthenticateRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CSDeviceBlockViewController.m" lineNumber:40 description:{@"Unable to find class %s", "AAFMIPAuthenticateRequest"}];

  __break(1u);
}

void __getAAFMIPAuthenticateRequestClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppleAccountLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CSDeviceBlockViewController.m" lineNumber:36 description:{@"%s", *a1}];

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

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
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

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}