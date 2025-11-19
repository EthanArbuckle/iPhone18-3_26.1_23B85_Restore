uint64_t __supportedAnimationPropertyKey(void *a1)
{
  v1 = __supportedAnimationPropertyKey_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    __supportedAnimationPropertyKey_cold_1();
  }

  v3 = [__supportedAnimationPropertyKey___animatableKeys containsObject:v2];

  return v3;
}

__CFString *NSStringFromMTLumaDodgePillStyle(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_27835D320[a1];
  }

  return v2;
}

id MTCoreMaterialVisualStyleForVisualStyle(uint64_t a1)
{
  v2 = a1 + 1;
  if (a1 + 1) <= 0x19 && ((0x3E0007Fu >> v2))
  {
    v3 = **(&unk_27835D538 + v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(uint64_t a1)
{
  v2 = *MEMORY[0x277CFFF88];
  if ((a1 - 1) <= 2)
  {
    v3 = **(&unk_27835D608 + a1 - 1);

    v2 = v3;
  }

  return v2;
}

id MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyleInShadow(uint64_t a1, uint64_t a2, int a3)
{
  v4 = 0;
  switch(a1)
  {
    case 0:
      v5 = MEMORY[0x277CFFF08];
      goto LABEL_29;
    case 1:
    case 2:
    case 3:
      v5 = MEMORY[0x277CFFF70];
      v6 = MEMORY[0x277CFFF68];
      goto LABEL_27;
    case 4:
    case 16:
      v5 = MEMORY[0x277CFFEE8];
      goto LABEL_29;
    case 5:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
      goto LABEL_31;
    case 6:
      v5 = MEMORY[0x277CFFF78];
      goto LABEL_29;
    case 7:
    case 11:
      goto LABEL_8;
    case 8:
      v5 = MEMORY[0x277CFFF00];
      goto LABEL_29;
    case 9:
    case 12:
    case 17:
      v5 = MEMORY[0x277CFFED0];
      v6 = MEMORY[0x277CFFEC8];
      goto LABEL_27;
    case 10:
    case 13:
    case 18:
      v5 = MEMORY[0x277CFFEE0];
      v6 = MEMORY[0x277CFFED8];
      goto LABEL_27;
    case 14:
      v7 = MEMORY[0x277CFFEC0];
      if (a2 != 2 && _os_feature_enabled_impl())
      {
        v7 = MEMORY[0x277CFFEB8];
      }

      v8 = *v7;
      goto LABEL_30;
    case 15:
    case 53:
      v5 = MEMORY[0x277CFFF20];
      v6 = MEMORY[0x277CFFF28];
      goto LABEL_27;
    case 19:
      v5 = MEMORY[0x277CFFEB0];
      v6 = MEMORY[0x277CFFEA8];
      goto LABEL_27;
    case 20:
      v5 = MEMORY[0x277CFFEF0];
      goto LABEL_29;
    case 21:
      v5 = MEMORY[0x277CFFEF8];
      goto LABEL_29;
    case 22:
      v5 = MEMORY[0x277CFFF80];
      goto LABEL_29;
    case 23:
      v5 = MEMORY[0x277CFFEA0];
      goto LABEL_29;
    case 50:
      v5 = MEMORY[0x277CFFF10];
      v6 = MEMORY[0x277CFFF18];
      goto LABEL_27;
    case 51:
      v5 = MEMORY[0x277CFFF58];
      v6 = MEMORY[0x277CFFF60];
      goto LABEL_27;
    case 52:
      v5 = MEMORY[0x277CFFF48];
      v6 = MEMORY[0x277CFFF50];
      goto LABEL_27;
    case 54:
      v5 = MEMORY[0x277CFFF30];
      v6 = MEMORY[0x277CFFF40];
      if (!a3)
      {
        v6 = MEMORY[0x277CFFF38];
      }

LABEL_27:
      if (a2 != 2)
      {
        v5 = v6;
      }

      goto LABEL_29;
    default:
      if (a1 != 101)
      {
        goto LABEL_31;
      }

LABEL_8:
      v5 = MEMORY[0x277CFFF70];
LABEL_29:
      v8 = *v5;
LABEL_30:
      v4 = v8;
LABEL_31:

      return v4;
  }
}

void MTRegisterMaterialKitLogging()
{
  if (MTRegisterMaterialKitLogging_onceToken != -1)
  {
    MTRegisterMaterialKitLogging_cold_1();
  }
}

uint64_t __MTRegisterMaterialKitLogging_block_invoke()
{
  v0 = os_log_create(MTLogSubsystem, "Materials");
  v1 = MTLogMaterials;
  MTLogMaterials = v0;

  MTLogLuma = os_log_create(MTLogSubsystem, "Luma");

  return MEMORY[0x2821F96F8]();
}

void sub_21E603D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MTMaterialRecipeForUIBlurEffectStyle(uint64_t a1)
{
  if ((a1 - 6) > 0xE)
  {
    return 0;
  }

  else
  {
    return qword_21E611EF8[a1 - 6];
  }
}

double _MainScreenReferenceBounds()
{
  if (_MainScreenReferenceBounds___once != -1)
  {
    _MainScreenReferenceBounds_cold_1();
  }

  return *&_MainScreenReferenceBounds___bounds_0;
}

CGColorRef MTCGColorByApplyingCAColorMatrix(CGColor *a1, __int32 *a2, char a3)
{
  v30 = *MEMORY[0x277D85DE8];
  Components = CGColorGetComponents(a1);
  NumberOfComponents = CGColorGetNumberOfComponents(a1);
  if (NumberOfComponents == 2)
  {
    *v8.i32 = Components->f64[0];
    *v9.f32 = vdup_lane_s32(v8, 0);
    v10 = 1;
  }

  else
  {
    if (NumberOfComponents != 4)
    {
      return 0;
    }

    *v9.f32 = vcvt_f32_f64(*Components);
    *v8.i32 = Components[1].f64[0];
    v10 = 3;
  }

  v11 = Components->f64[v10];
  if ((a3 & 1) == 0)
  {
    v9 = vcvtq_f64_f32(*v9.f32);
    v12 = v11;
    if (v11 < 2.22044605e-16)
    {
      v12 = 2.22044605e-16;
    }

    *v9.f32 = vcvt_f32_f64(vdivq_f64(v9, vdupq_lane_s64(*&v12, 0)));
    *v8.i32 = *v8.i32 / v12;
  }

  v9.i32[2] = v8.i32[0];
  v9.f32[3] = Components->f64[v10];
  v13.i32[0] = *a2;
  v14.i32[0] = a2[1];
  v13.i32[1] = a2[5];
  v13.i32[2] = a2[10];
  v13.i32[3] = a2[15];
  v14.i32[1] = a2[6];
  v14.i32[2] = a2[11];
  v14.i32[3] = a2[16];
  v15.i32[0] = a2[2];
  v16.i32[0] = a2[3];
  v15.i32[1] = a2[7];
  v15.i32[2] = a2[12];
  v15.i32[3] = a2[17];
  v16.i32[1] = a2[8];
  v16.i32[2] = a2[13];
  v16.i32[3] = a2[18];
  v17.i32[0] = a2[4];
  v17.i32[1] = a2[9];
  v17.i32[2] = a2[14];
  v17.i32[3] = a2[19];
  v18 = vmaxnmq_f32(vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v9.f32[0]), v14, *v9.f32, 1), v15, v9, 2), v16, v9, 3), v17), 0);
  __asm { FMOV            V1.4S, #1.0 }

  v24 = vminnmq_f32(v18, _Q1);
  v25 = vcvtq_f64_f32(*v24.f32);
  v26 = vcvt_hight_f64_f32(v24);
  v29[0] = v25;
  v29[1] = v26;
  if (NumberOfComponents == 2)
  {
    *(&v29[0] + 1) = *&v26.f64[1];
  }

  ColorSpace = CGColorGetColorSpace(a1);
  return CGColorCreate(ColorSpace, v29);
}

__CFString *NSStringFromMTLumaDodgePillBackgroundLuminance(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_27835D348[a1];
  }

  return v2;
}

__CFString *NSStringFromMTLumaDodgeGraphicsQuality(uint64_t a1)
{
  if (a1)
  {
    if (a1 == -100)
    {
      v2 = @"low";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%li)", a1];
    }
  }

  else
  {
    v2 = @"high";
  }

  return v2;
}

uint64_t ____supportedAnimationPropertyKey_block_invoke()
{
  __supportedAnimationPropertyKey___animatableKeys = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"filters.homeAffordanceBase.inputAddWhite", @"filters.homeAffordanceBase.inputAmount", @"filters.homeAffordanceBase.inputOverlayOpacity", @"filters.gaussianBlur.inputRadius", @"filters.colorBrightness.inputAmount", @"filters.colorSaturate.inputAmount", @"filters.colorMatrix.inputColorMatrix", 0}];

  return MEMORY[0x2821F96F8]();
}

uint64_t MTIsValidBlurInputQuality(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"default"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"low") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"medium"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"high"];
  }

  return v2;
}

uint64_t MTCompareBlurInputQualities(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (!MTIsValidBlurInputQuality(v4) || (MTIsValidBlurInputQuality(v3) & 1) == 0)
  {
    MTCompareBlurInputQualities_cold_1();
  }

  if ([(__CFString *)v4 isEqualToString:@"default"])
  {
    v5 = @"medium";
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  if ([(__CFString *)v3 isEqualToString:@"default"])
  {
    v7 = @"medium";
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  if (([(__CFString *)v6 isEqualToString:v8]& 1) != 0)
  {
    v9 = 0;
  }

  else if (([(__CFString *)v6 isEqualToString:@"low"]& 1) != 0)
  {
    v9 = -1;
  }

  else if (([(__CFString *)v6 isEqualToString:@"high"]& 1) != 0)
  {
    v9 = 1;
  }

  else if ([(__CFString *)v8 isEqualToString:@"low"])
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_21E60D328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *MTStringFromMaterialRecipe(uint64_t a1)
{
  result = @"[Undefined]";
  switch(a1)
  {
    case 0:
      result = @"MTMaterialRecipeNone";
      break;
    case 1:
      result = @"MTMaterialRecipeNotifications";
      break;
    case 2:
      result = @"MTMaterialRecipeWidgetHosts";
      break;
    case 3:
      result = @"MTMaterialRecipeWidgets";
      break;
    case 4:
      result = @"MTMaterialRecipeControlCenterModules";
      break;
    case 5:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
      return result;
    case 6:
      result = @"MTMaterialRecipePreviewBackground";
      break;
    case 7:
      goto LABEL_4;
    case 8:
      result = @"MTMaterialRecipeControlCenterModulesSheer";
      break;
    case 9:
      result = @"MTMaterialRecipeSiriPlatter";
      break;
    case 10:
      result = @"MTMaterialRecipeSiriPlatterSheer";
      break;
    case 11:
      result = @"MTMaterialRecipeSiriDialogue";
      break;
    case 12:
      result = @"MTMaterialRecipeSpotlightPlatter";
      break;
    case 13:
      result = @"MTMaterialRecipeSpotlightPlatterSheer";
      break;
    case 14:
      result = @"MTMaterialRecipeSpotlightBackground";
      break;
    case 15:
      result = @"MTMaterialRecipeCarPlayNotifications";
      break;
    case 16:
      result = @"MTMaterialRecipeSiriBackground";
      break;
    case 17:
      result = @"MTMaterialRecipeSleepPlatter";
      break;
    case 18:
      result = @"MTMaterialRecipeSleepPlatterSheer";
      break;
    case 19:
      result = @"MTMaterialRecipeDock";
      break;
    case 20:
      result = @"MTMaterialRecipeControlCenterBackground";
      break;
    case 21:
      result = @"MTMaterialRecipeControlCenterBackgroundSheer";
      break;
    case 22:
      result = @"MTMaterialRecipeSessions";
      break;
    case 23:
      result = @"MTMaterialRecipeActivityAmbientCompact";
      break;
    case 50:
      result = @"MTMaterialRecipeSystemChromeBackground";
      break;
    case 51:
      result = @"MTMaterialRecipeSystemVibrantBackgroundUltraThin";
      break;
    case 52:
      result = @"MTMaterialRecipeSystemVibrantBackgroundThin";
      break;
    case 53:
      result = @"MTMaterialRecipeSystemVibrantBackgroundRegular";
      break;
    case 54:
      result = @"MTMaterialRecipeSystemVibrantBackgroundThick";
      break;
    default:
      if (a1 == 101)
      {
LABEL_4:
        result = @"MTMaterialRecipeNotificationsDark";
      }

      break;
  }

  return result;
}

uint64_t _MTInternalVibrancyEffectStyleForPublicStyle(uint64_t result)
{
  if (result > 5)
  {
    if ((result - 101) > 0x13 || ((1 << (result - 101)) & 0x80E0F) == 0)
    {
      v7 = 120;
      if (result != 7)
      {
        v7 = 0;
      }

      if (result == 6)
      {
        return 112;
      }

      else
      {
        return v7;
      }
    }
  }

  else
  {
    v1 = 104;
    v2 = 110;
    v3 = 111;
    if (result != 5)
    {
      v3 = 0;
    }

    if (result != 4)
    {
      v2 = v3;
    }

    if (result != 3)
    {
      v1 = v2;
    }

    v4 = 101;
    v5 = 102;
    v6 = 103;
    if (result != 2)
    {
      v6 = 0;
    }

    if (result != 1)
    {
      v5 = v6;
    }

    if (result)
    {
      v4 = v5;
    }

    if (result <= 2)
    {
      return v4;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

id _MTCoreMaterialRecipeNameForSystemColorCompatibleWithTraitCollection(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277CFFF08];
  if ((a1 - 20) <= 4)
  {
    v5 = MTCoreMaterialVisualStyleForVisualStyle(a1);
    if (v5)
    {
      v6 = [v3 userInterfaceStyle];
      v7 = MEMORY[0x277CFFFB8];
      if (v6 != 2)
      {
        v7 = MEMORY[0x277CFFFC0];
      }

      if (*v7)
      {
        v8 = MTCoreMaterialRecipeForVisualStyleFromStyleWithName();

        v4 = v8;
      }
    }
  }

  return v4;
}

id MTCoreMaterialPlatformColorsStyleNameForUserInterfaceStyle(uint64_t a1)
{
  v1 = MEMORY[0x277CFFFB8];
  if (a1 != 2)
  {
    v1 = MEMORY[0x277CFFFC0];
  }

  return *v1;
}

id _MTCoreMaterialRecipeNameForSystemColor(uint64_t a1)
{
  v2 = [MEMORY[0x277D75C80] currentTraitCollection];
  v3 = _MTCoreMaterialRecipeNameForSystemColorCompatibleWithTraitCollection(a1, v2);

  return v3;
}

void MTCompareBlurInputQualities_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSComparisonResult MTCompareBlurInputQualities(NSString *__strong, NSString *__strong)"}];
  [v1 handleFailureInFunction:v0 file:@"MTUtilities.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"MTIsValidBlurInputQuality(inputQuality1) && MTIsValidBlurInputQuality(inputQuality2)"}];
}