double CEKExpandNormalizedPoint(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  MinX = CGRectGetMinX(v14);
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  v12 = MinX + (CGRectGetMaxX(v15) - MinX) * a1;
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  CGRectGetMinY(v16);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  CGRectGetMaxY(v17);
  return v12;
}

uint64_t CEKIsSmallPhone()
{
  if (CEKIsSmallPhone_onceToken != -1)
  {
    CEKIsSmallPhone_cold_1();
  }

  return CEKIsSmallPhone_isSmallPhone;
}

void __CEKIsSmallPhone_block_invoke()
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 _referenceBounds];
  v1 = v0 == 568.0;
  if (v2 != 320.0)
  {
    v1 = 0;
  }

  CEKIsSmallPhone_isSmallPhone = v1;
}

id CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle(uint64_t a1, CGFloat a2, double a3)
{
  v32[5] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69DB900];
  v30[0] = *MEMORY[0x1E69DB908];
  v6 = v30[0];
  v30[1] = v7;
  v31[0] = &unk_1F2FDFD78;
  v31[1] = &unk_1F2FDFD90;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v32[0] = v8;
  v28[0] = v6;
  v28[1] = v7;
  v29[0] = &unk_1F2FDFDA8;
  v29[1] = &unk_1F2FDFDC0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v32[1] = v9;
  v26[0] = v6;
  v26[1] = v7;
  v27[0] = &unk_1F2FDFDA8;
  v27[1] = &unk_1F2FDFDD8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v32[2] = v10;
  v24[0] = v6;
  v24[1] = v7;
  v25[0] = &unk_1F2FDFDA8;
  v25[1] = &unk_1F2FDFDF0;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v32[3] = v11;
  v22[0] = v6;
  v22[1] = v7;
  v23[0] = &unk_1F2FDFE08;
  v23[1] = &unk_1F2FDFE20;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v32[4] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];

  v14 = CEKFontOfSizeWeightStyle(a1, a2, a3);
  v15 = [v14 fontDescriptor];
  v20 = *MEMORY[0x1E69DB8B0];
  v21 = v13;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v17 = [v15 fontDescriptorByAddingAttributes:v16];

  v18 = [MEMORY[0x1E69DB878] fontWithDescriptor:v17 size:a2];

  return v18;
}

id CEKFontOfSizeWeightStyle(uint64_t a1, CGFloat a2, double a3)
{
  if (a1 == 1)
  {
    v5 = _CEKSFCameraFontOfSizeAndWeight(a2, a3);
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = CEKFontOfSizeAndStyle(a2);
    }

    v4 = v7;
  }

  else if (a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E69DB878] systemFontOfSize:*MEMORY[0x1E69DB928] weight:a2 design:?];
  }

  return v4;
}

CTFontRef _CEKSFCameraFontOfSizeAndWeight(CGFloat a1, double a2)
{
  if (UIAccessibilityIsBoldTextEnabled())
  {
    CTFontGetAccessibilityBoldWeightOfWeight();
    a2 = v4;
  }

  v5 = _CEKSFCameraFontNameForWeight(a2);
  v6 = CTFontCreateWithNameAndOptions(v5, a1, 0, 0x400uLL);

  return v6;
}

id _CEKSFCameraFontNameForWeight(double a1)
{
  if (_SFCompactRoundedNamesByWeight_onceToken != -1)
  {
    _CEKSFCameraFontNameForWeight_cold_1();
  }

  v2 = MEMORY[0x1E696AD98];
  v3 = _SFCompactRoundedNamesByWeight_namesByWeight;
  v4 = [v2 numberWithDouble:a1];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

double CEKPixelWidthForView(void *a1)
{
  v1 = [a1 traitCollection];
  [v1 displayScale];
  v3 = 1.0 / v2;

  return v3;
}

uint64_t CEKIsPadLayoutForView(void *a1)
{
  v1 = a1;
  v2 = [v1 window];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v7 = [v1 window];
  v8 = [v7 screen];
  [v8 _referenceBounds];
  v10 = v9;
  v12 = v11;
  v13 = [v1 traitCollection];

  v14 = [v13 userInterfaceIdiom];
  v15 = v14 == 1;
  if (v4 * v6 != 0.0 && v14 == 1)
  {
    v17 = fmin(v4, v6) >= fmin(v10, v12) * 0.8;
    if (fmax(v4, v6) < fmax(v10, v12) * 0.8)
    {
      v17 = 0;
    }

    v15 = v4 >= v6 || v17;
  }

  return v15;
}

double Rotation(float a1, float a2, float a3)
{
  v3 = __PAIR64__(LODWORD(a3), LODWORD(a2));
  v4 = vmulq_f32(v3, v3);
  *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(v5);
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32)));
  v25 = vmulq_n_f32(v3, vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  v6 = __sincosf_stret(a1);
  _Q19 = v25;
  _S5 = (1.0 - v6.__cosval) * v25.f32[0];
  __asm
  {
    FMLA            S7, S5, V19.S[1]
    FMLA            S16, S5, V19.S[2]
  }

  *&v15 = v6.__cosval + (_S5 * v25.f32[0]);
  HIDWORD(v15) = _S7;
  __asm { FMLA            S6, S5, V19.S[1] }

  _S7 = vmuls_lane_f32(1.0 - v6.__cosval, *v25.f32, 1);
  __asm
  {
    FMLA            S16, S7, V19.S[1]
    FMLA            S17, S7, V19.S[2]
    FMLA            S6, S5, V19.S[2]
    FMLA            S0, S7, V19.S[2]
  }

  _S3 = vmuls_lane_f32(1.0 - v6.__cosval, v25, 2);
  __asm { FMLA            S1, S3, V19.S[2] }

  return v15;
}

CGAffineTransform *CubePoints(uint64_t a1, uint64_t a2, float64x2_t *a3, uint64_t *a4, uint64_t a5, CGFloat a6, CGFloat a7)
{
  memset(&v18, 0, sizeof(v18));
  result = CGAffineTransformMakeScale(&v18, a6, a7);
  if (a5 >= 1)
  {
    v13 = *&v18.a;
    v14 = *&v18.c;
    v15 = *&v18.tx;
    do
    {
      v16 = *a4++;
      v17 = (a1 + 16 * *(a2 + 8 * v16));
      *a3++ = vaddq_f64(v15, vmlaq_n_f64(vmulq_n_f64(v14, v17[1]), v13, *v17));
      --a5;
    }

    while (a5);
  }

  return result;
}

CGPath *CreateRoundedPathForConvexPolygon(double *a1, uint64_t a2, double a3)
{
  Mutable = CGPathCreateMutable();
  v7 = Mutable;
  v8 = a1[2];
  v9 = a1[3];
  v10 = *a1 - v8;
  v11 = a1[1] - v9;
  v12 = sqrt(v11 * v11 + v10 * v10);
  v13 = v10 / v12;
  v14 = v12 == 0.0;
  if (v12 == 0.0)
  {
    v13 = 0.0;
  }

  v15 = v11 / v12;
  if (v14)
  {
    v15 = 0.0;
  }

  CGPathMoveToPoint(Mutable, 0, v8 + v10 - v13 * a3, v9 + v11 - v15 * a3);
  if (a2 >= 1)
  {
    v16 = a1 + 1;
    v17 = 1;
    do
    {
      if (v17 == a2)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      ++v17;
      v19 = &a1[2 * v18];
      v20 = &a1[2 * (v17 % a2)];
      v21 = *v19;
      v22 = v19[1];
      v23 = *(v16 - 1);
      v25 = *v20;
      v24 = v20[1];
      v26 = *v19 - v23;
      v27 = v22 - *v16;
      v28 = sqrt(v27 * v27 + v26 * v26);
      v29 = v26 / v28;
      v30 = v28 == 0.0;
      if (v28 == 0.0)
      {
        v29 = 0.0;
      }

      v31 = v27 / v28;
      if (v30)
      {
        v31 = 0.0;
      }

      CGPathAddLineToPoint(v7, 0, v23 + v26 - v29 * a3, *v16 + v27 - v31 * a3);
      if (a3 > 0.0)
      {
        v32 = v21 - v25;
        v33 = v22 - v24;
        v34 = sqrt(v33 * v33 + v32 * v32);
        v35 = (v21 - v25) / v34;
        v36 = v34 == 0.0;
        if (v34 == 0.0)
        {
          v35 = 0.0;
        }

        v37 = v33 / v34;
        if (v36)
        {
          v37 = 0.0;
        }

        CGPathAddQuadCurveToPoint(v7, 0, v21, v22, v25 + v32 - v35 * a3, v24 + v33 - v37 * a3);
      }

      v16 += 2;
    }

    while (v17 - a2 != 1);
  }

  return v7;
}

void sub_1B7E9C8F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

double convertDampingRatioAndResponseToTensionAndFriction(double *a1, double *a2, double result, double a4)
{
  v4 = 6.28318531 / a4 * (6.28318531 / a4);
  if (a1)
  {
    *a1 = v4;
  }

  if (a2)
  {
    v5 = sqrt(v4);
    result = (v5 + v5) * result;
    *a2 = result;
  }

  return result;
}

double convertTensionAndFrictionToDampingRatioAndResponse(double *a1, double *a2, double a3, double a4)
{
  result = sqrt(a3);
  if (a1)
  {
    *a1 = a4 / (result + result);
  }

  if (a2)
  {
    result = 6.28318531 / result;
    *a2 = result;
  }

  return result;
}

double convertDampingMassAndStiffnessToDampingRatioAndResponse(double *a1, double *a2, double result, double a4, double a5)
{
  v5 = sqrt(a5 / a4);
  if (a1)
  {
    result = result / a4 / (v5 + v5);
    *a1 = result;
  }

  if (a2)
  {
    result = 6.28318531 / v5;
    *a2 = 6.28318531 / v5;
  }

  return result;
}

uint64_t CEKHapticsAllowed()
{
  if (CEKHapticsAllowed_onceToken != -1)
  {
    CEKHapticsAllowed_cold_1();
  }

  return CEKHapticsAllowed_allowsHaptics;
}

uint64_t __CEKHapticsAllowed_block_invoke()
{
  result = MGGetBoolAnswer();
  CEKHapticsAllowed_allowsHaptics = result;
  return result;
}

uint64_t CEKIsRetunedHapticDevice()
{
  if (CEKIsRetunedHapticDevice_onceToken != -1)
  {
    CEKIsRetunedHapticDevice_cold_1();
  }

  return CEKIsRetunedHapticDevice_isRetunedDevice;
}

uint64_t __CEKIsRetunedHapticDevice_block_invoke()
{
  result = MGIsDeviceOfType();
  CEKIsRetunedHapticDevice_isRetunedDevice = result;
  return result;
}

void sub_1B7EA5608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

CGColorRef CreateStrokeColor()
{
  v4 = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v3[0] = xmmword_1B7EDA610;
  v3[1] = unk_1B7EDA620;
  v1 = CGColorCreate(DeviceRGB, v3);
  CGColorSpaceRelease(DeviceRGB);
  return v1;
}

CGGradientRef CreateBackgroundGradient()
{
  v37[11] = *MEMORY[0x1E69E9840];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  __asm { FMOV            V0.2D, #1.0 }

  v18 = _Q0;
  *components = _Q0;
  v19 = CGColorCreate(DeviceGray, components);
  v37[0] = v19;
  *v35 = v18;
  *&v18 = CGColorCreate(DeviceGray, v35);
  v37[1] = v18;
  *v34 = xmmword_1B7EDA4F0;
  v17 = CGColorCreate(DeviceGray, v34);
  v37[2] = v17;
  *v33 = xmmword_1B7EDA500;
  v6 = CGColorCreate(DeviceGray, v33);
  v37[3] = v6;
  *v32 = xmmword_1B7EDA510;
  v7 = CGColorCreate(DeviceGray, v32);
  v37[4] = v7;
  *v31 = xmmword_1B7EDA520;
  v8 = CGColorCreate(DeviceGray, v31);
  v37[5] = v8;
  *v30 = xmmword_1B7EDA530;
  v9 = CGColorCreate(DeviceGray, v30);
  v37[6] = v9;
  *v29 = xmmword_1B7EDA540;
  v10 = CGColorCreate(DeviceGray, v29);
  v37[7] = v10;
  *v28 = xmmword_1B7EDA550;
  v11 = CGColorCreate(DeviceGray, v28);
  v37[8] = v11;
  *v27 = xmmword_1B7EDA560;
  v12 = CGColorCreate(DeviceGray, v27);
  v37[9] = v12;
  *v26 = xmmword_1B7EDA570;
  v13 = CGColorCreate(DeviceGray, v26);
  v37[10] = v13;
  *locations = xmmword_1B7EDA580;
  v21 = xmmword_1B7EDA590;
  v22 = xmmword_1B7EDA5A0;
  v23 = xmmword_1B7EDA5B0;
  v24 = xmmword_1B7EDA5C0;
  v25 = 0x3FF0000000000000;
  v14 = CGGradientCreateWithColors(DeviceGray, [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:11], locations);

  CopyWithAlpha = CubeGradientCreateCopyWithAlpha();
  CGGradientRelease(v14);
  CGColorSpaceRelease(DeviceGray);
  return CopyWithAlpha;
}

CGColorRef CreateFillColor()
{
  v9 = *MEMORY[0x1E69E9840];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  __asm { FMOV            V0.2D, #1.0 }

  *v8 = _Q0;
  v6 = CGColorCreate(DeviceGray, v8);
  CGColorSpaceRelease(DeviceGray);
  return v6;
}

CGGradientRef CreateGlowGradient()
{
  v24 = *MEMORY[0x1E69E9840];
  *components = xmmword_1B7EDA630;
  v23 = unk_1B7EDA640;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v1 = CGColorCreate(DeviceRGB, components);
  CopyWithAlpha = CGColorCreateCopyWithAlpha(v1, 1.0);
  v21[0] = CopyWithAlpha;
  v13 = CGColorCreateCopyWithAlpha(v1, 0.872);
  v21[1] = v13;
  v12 = CGColorCreateCopyWithAlpha(v1, 0.697);
  v21[2] = v12;
  v11 = CGColorCreateCopyWithAlpha(v1, 0.536);
  v21[3] = v11;
  v2 = CGColorCreateCopyWithAlpha(v1, 0.392);
  v21[4] = v2;
  v3 = CGColorCreateCopyWithAlpha(v1, 0.268);
  v21[5] = v3;
  v4 = CGColorCreateCopyWithAlpha(v1, 0.18);
  v21[6] = v4;
  v5 = CGColorCreateCopyWithAlpha(v1, 0.119);
  v21[7] = v5;
  v6 = CGColorCreateCopyWithAlpha(v1, 0.079);
  v21[8] = v6;
  v7 = CGColorCreateCopyWithAlpha(v1, 0.059);
  v21[9] = v7;
  v8 = CGColorCreateCopyWithAlpha(v1, 0.0);
  v21[10] = v8;
  v20 = 0x3FF0000000000000;
  v17 = xmmword_1B7EDA670;
  v18 = unk_1B7EDA680;
  v19 = xmmword_1B7EDA690;
  *locations = xmmword_1B7EDA650;
  v16 = unk_1B7EDA660;
  v9 = CGGradientCreateWithColors(DeviceRGB, [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:11], locations);

  CGColorRelease(v1);
  CGColorSpaceRelease(DeviceRGB);
  return v9;
}

CGGradientRef CreateMaskGradient(CGFloat a1, CGFloat a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  components[0] = 1.0;
  components[1] = a1;
  v5 = CGColorCreate(DeviceGray, components);
  v12[0] = v5;
  v10[0] = 1.0;
  v10[1] = a2;
  v6 = CGColorCreate(DeviceGray, v10);
  v12[1] = v6;
  v9 = xmmword_1B7EDA5D0;
  v7 = CGGradientCreateWithColors(DeviceGray, [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2], &v9);

  CGColorSpaceRelease(DeviceGray);
  return v7;
}

CGGradientRef CubeGradientCreateCopyWithAlpha()
{
  ColorSpace = CGGradientGetColorSpace();
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
  LocationCount = CGGradientGetLocationCount();
  v5 = malloc_type_calloc(8 * NumberOfComponents + 8, LocationCount, 0x7536EC4uLL);
  v6 = malloc_type_calloc(8uLL, LocationCount, 0x246F307AuLL);
  CGGradientApply();
  v3 = CGGradientCreateWithColorComponents(ColorSpace, v5, v6, LocationCount);
  free(v6);
  free(v5);
  return v3;
}

uint64_t _CubeGradientCreateCopyWithAlphaApplier(uint64_t result, uint64_t *a2, double a3)
{
  v3 = *(result + 32);
  v4 = *(result + 8);
  v5 = v3 + v3 * v4;
  v6 = *(result + 16) + 8 * v5;
  if (v4)
  {
    v7 = (*(result + 16) + 8 * v5);
    v8 = a2;
    v9 = *(result + 8);
    do
    {
      v10 = *v8++;
      *v7++ = v10;
      --v9;
    }

    while (v9);
  }

  *(v6 + 8 * v4) = *&a2[v4] * *result;
  *(*(result + 24) + 8 * v3) = a3;
  *(result + 32) = v3 + 1;
  return result;
}

CGColorRef CubeColorCreateInterpolated(CGColorRef color, CGColorRef a2, double a3)
{
  if (!(color | a2))
  {
    return 0;
  }

  if (color)
  {
    if (a2)
    {
      ColorSpace = CGColorGetColorSpace(color);
      v8 = CGColorGetColorSpace(a2);
      Model = CGColorSpaceGetModel(ColorSpace);
      if (Model != CGColorSpaceGetModel(v8))
      {
        abort();
      }

      NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
      Components = CGColorGetComponents(color);
      v12 = CGColorGetComponents(a2);
      v13 = NumberOfComponents + 1;
      v14 = NumberOfComponents == -1;
      v15 = malloc_type_calloc(8 * (NumberOfComponents + 1), 1uLL, 0xB0F97210uLL);
      v16 = v15;
      if (!v14)
      {
        v17 = v15;
        do
        {
          v18 = *Components++;
          v19 = v18;
          v20 = *v12++;
          *v17++ = v19 + (v20 - v19) * a3;
          --v13;
        }

        while (v13);
      }

      v21 = CGColorCreate(ColorSpace, v15);
      free(v16);
      return v21;
    }

    v22 = (1.0 - a3) * CGColorGetAlpha(color);
    v23 = color;
  }

  else
  {
    v22 = CGColorGetAlpha(a2) * a3;
    v23 = a2;
  }

  return CGColorCreateCopyWithAlpha(v23, v22);
}

CGGradientRef CubeGradientCreateInterpolated(uint64_t a1, uint64_t a2, double a3)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  if (a1 && a2)
  {
    LocationCount = CGGradientGetLocationCount();
    if (LocationCount != CGGradientGetLocationCount() || (v6 = CGGradientGetLocationCount(), ColorSpace = CGGradientGetColorSpace(), v8 = CGGradientGetColorSpace(), Model = CGColorSpaceGetModel(ColorSpace), Model != CGColorSpaceGetModel(v8)))
    {
      abort();
    }

    space = ColorSpace;
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
    v11 = 8 * (NumberOfComponents + 1);
    v29 = malloc_type_calloc(v11, v6, 0xDD99F9DBuLL);
    v12 = malloc_type_calloc(v11, v6, 0x74ABDF11uLL);
    v30 = malloc_type_calloc(v11, v6, 0xDE6E50DEuLL);
    v13 = malloc_type_calloc(8uLL, v6, 0x529416E0uLL);
    v14 = malloc_type_calloc(8uLL, v6, 0xBA65605uLL);
    v15 = malloc_type_calloc(8uLL, v6, 0x654424BCuLL);
    CGGradientApply();
    CGGradientApply();
    if (v6)
    {
      v16 = 0;
      v17 = 8 * NumberOfComponents + 8;
      v18 = v30;
      v19 = v12;
      v20 = v29;
      do
      {
        v15[v16] = v13[v16] + (v14[v16] - v13[v16]) * a3;
        v21 = v18;
        v22 = v19;
        v23 = v20;
        v24 = NumberOfComponents + 1;
        if (NumberOfComponents != -1)
        {
          do
          {
            v25 = *v23++;
            v26 = v25;
            v27 = *v22++;
            *v21++ = v26 + (v27 - v26) * a3;
            --v24;
          }

          while (v24);
        }

        ++v16;
        v20 = (v20 + v17);
        v19 = (v19 + v17);
        v18 = (v18 + v17);
      }

      while (v16 != v6);
    }

    v3 = CGGradientCreateWithColorComponents(space, v30, v15, v6);
    free(v13);
    free(v14);
    free(v15);
    free(v29);
    free(v12);
    free(v30);
    return v3;
  }

  return CubeGradientCreateCopyWithAlpha();
}

void *_CubeGradientCreateInterpolatedApplier(void *result, uint64_t *a2, double a3)
{
  v3 = result[3];
  v4 = *result + 1;
  if (*result != -1)
  {
    v5 = (result[1] + 8 * v4 * v3);
    do
    {
      v6 = *a2++;
      *v5++ = v6;
      --v4;
    }

    while (v4);
  }

  *(result[2] + 8 * v3) = a3;
  result[3] = v3 + 1;
  return result;
}

id CEKDeviceRegionCode()
{
  if (CEKDeviceRegionCode_onceToken != -1)
  {
    CEKDeviceRegionCode_cold_1();
  }

  v1 = CEKDeviceRegionCode_regionCode;

  return v1;
}

uint64_t __CEKDeviceRegionCode_block_invoke()
{
  if (MGGetBoolAnswer() && (v0 = CFPreferencesCopyAppValue(@"CAMFeatureDevelopmentDeviceRegionCode", @"com.apple.camera")) != 0)
  {
    v1 = CEKDeviceRegionCode_regionCode;
    CEKDeviceRegionCode_regionCode = v0;
    v5 = v0;

    v3 = v5;
  }

  else
  {
    v2 = MGCopyAnswer();
    v3 = CEKDeviceRegionCode_regionCode;
    CEKDeviceRegionCode_regionCode = v2;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t CEKIsPadLayoutForWindowSizeInScreenSize(uint64_t a1, double a2, double a3, double a4, double a5)
{
  result = a1 == 1;
  if (a2 * a3 != 0.0 && a1 == 1)
  {
    v8 = fmin(a2, a3) >= fmin(a4, a5) * 0.8;
    if (fmax(a2, a3) < fmax(a4, a5) * 0.8)
    {
      v8 = 0;
    }

    return a2 >= a3 || v8;
  }

  return result;
}

uint64_t CEKIsViewInMultitask(void *a1)
{
  v1 = [a1 window];
  v2 = [v1 screen];
  v3 = v2;
  if (v1)
  {
    [v1 bounds];
    v7 = v6;
    v9 = v8;
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    if (!v2)
    {
LABEL_6:
      v12 = 0;
      goto LABEL_10;
    }
  }

  v10 = v7;
  v11 = v9;
  if (CGRectIsEmpty(*&v4))
  {
    goto LABEL_6;
  }

  [v3 _referenceBounds];
  v14 = fmin(v7, v9) != v13;
  v12 = fmax(v7, v9) != v15 || v14;
LABEL_10:

  return v12;
}

double CEKScrollableDistanceInScrollView(void *a1)
{
  v1 = a1;
  [v1 contentInset];
  v3 = v2;
  v5 = v4;
  [v1 contentSize];
  v7 = v6 + v3 + v5;
  [v1 bounds];
  v9 = v8;

  return fmax(v7 - v9, 0.0);
}

uint64_t CEKIsCustomKerningSupportedForLocale(void *a1)
{
  v1 = [a1 languageCode];
  v2 = [v1 isEqualToString:@"ar"];

  return v2 ^ 1u;
}

double CEKProgress(double a1, double a2, double a3)
{
  result = 0.0;
  if (a3 != a2)
  {
    return (a1 - a2) / (a3 - a2);
  }

  return result;
}

double CEKProgressClamped(double a1, double a2, double a3)
{
  v3 = 0.0;
  if (a3 != a2)
  {
    v3 = (a1 - a2) / (a3 - a2);
  }

  return fmax(fmin(v3, 1.0), 0.0);
}

double CEKNormalizePoint(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  MinX = CGRectGetMinX(v15);
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  MaxX = CGRectGetMaxX(v16);
  v13 = 0.0;
  if (MaxX != MinX)
  {
    v13 = (a1 - MinX) / (MaxX - MinX);
  }

  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  CGRectGetMinY(v17);
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  CGRectGetMaxY(v18);
  return v13;
}

double CEKNormalizeSize(double a1, double a2, double a3)
{
  result = a1 / a3;
  if (a3 == 0.0)
  {
    return 0.0;
  }

  return result;
}

double CEKExpandNormalizedContactPoint(double a1, double a2)
{
  if (CEKExpandNormalizedContactPoint_onceToken != -1)
  {
    CEKExpandNormalizedContactPoint_cold_1();
  }

  v4 = *&CEKExpandNormalizedContactPoint_contactFrame_2;
  v5 = *&CEKExpandNormalizedContactPoint_contactFrame_3;

  return CEKExpandNormalizedPoint(a1, a2, 0.0, 0.0, v4, v5);
}

void __CEKExpandNormalizedContactPoint_block_invoke()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 _referenceBounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 scale];
  v9 = MGCopyAnswer();
  v10 = v9;
  if (v9)
  {
    v11 = [MEMORY[0x1E696B098] valueWithBytes:objc_msgSend(v9 objCType:{"bytes"), "{CGRect={CGPoint=dd}{CGSize=dd}}"}];
    [v11 CGRectValue];
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v16 = os_log_create("com.apple.camera", "CameraEditKit");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7E93000, v16, OS_LOG_TYPE_DEFAULT, "No data found for CameraButton MG query", buf, 2u);
    }

    v13 = 0.0;
    v15 = 0.610402524;
  }

  CEKExpandNormalizedPoint(v13, v15, v2, v4, v6, v8);
  UIRectRoundToScale();
  CEKExpandNormalizedContactPoint_contactFrame_2 = v17;
  CEKExpandNormalizedContactPoint_contactFrame_3 = v18;
}

double CEKSizeCeilToScale()
{
  UICeilToScale();
  v1 = v0;
  UICeilToScale();
  return v1;
}

CGFloat CEKRectInsetsInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v18 = a2 - a6;
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  CGRectGetMaxY(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetMaxY(v20);
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  CGRectGetMaxX(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetMaxX(v22);
  return v18;
}

id CEKDisplayStringForSemanticStyleMakerPreset(unint64_t a1)
{
  if (a1 > 9)
  {
    v2 = 0;
  }

  else
  {
    v2 = CEKLocalizedFrameworkString(off_1E7CC67E8[a1], 0);
  }

  return v2;
}

id CEKLocalizedFrameworkString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CEKLocalizedFrameworkString_block_invoke;
  v8[3] = &unk_1E7CC67C8;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [&unk_1F2FE0230 enumerateObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_1B7EACAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CEKFrameworkBundle()
{
  v0 = __CEKFrameworkBundle;
  if (!__CEKFrameworkBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:NSClassFromString(&cfstr_Ceklightingeff.isa)];
    v2 = __CEKFrameworkBundle;
    __CEKFrameworkBundle = v1;

    v0 = __CEKFrameworkBundle;
  }

  return v0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __CEKLocalizedFrameworkString_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = CEKFrameworkBundle();
  v8 = [v7 localizedStringForKey:*(a1 + 32) value:&stru_1F2FD5B58 table:v6];

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  result = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:*(a1 + 32)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

CGImage *CreateMask(int a1, void *a2, double a3, double a4, CGFloat a5)
{
  v9 = a2;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v11 = CGBitmapContextCreate(0, (a3 * a5), (a4 * a5), 8uLL, (a3 * a5), DeviceGray, 0);
  CGContextScaleCTM(v11, a5, a5);
  CGContextTranslateCTM(v11, a3 * 0.5, a4 * 0.5);
  v9[2](v9, v11);

  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  CGColorSpaceRelease(DeviceGray);
  if (!a1)
  {
    return Image;
  }

  Width = CGImageGetWidth(Image);
  Height = CGImageGetHeight(Image);
  BitsPerComponent = CGImageGetBitsPerComponent(Image);
  BitsPerPixel = CGImageGetBitsPerPixel(Image);
  BytesPerRow = CGImageGetBytesPerRow(Image);
  DataProvider = CGImageGetDataProvider(Image);
  v19 = CGImageMaskCreate(Width, Height, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, 0, 0);
  CGImageRelease(Image);
  return v19;
}

void DrawPlaneGlow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, double a8, double a9, double a10, double a11)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __DrawPlaneGlow_block_invoke;
  aBlock[3] = &__block_descriptor_104_e47_v56__0_CGPoint_dd_8_CGPoint_dd_24_CGPoint_dd_40l;
  *&aBlock[4] = a7;
  aBlock[5] = a5;
  aBlock[6] = a1;
  aBlock[7] = a4;
  *&aBlock[8] = a8;
  *&aBlock[9] = a9;
  *&aBlock[10] = a10;
  *&aBlock[11] = a11;
  aBlock[12] = a3;
  v22 = _Block_copy(aBlock);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __DrawPlaneGlow_block_invoke_2;
  v30[3] = &__block_descriptor_104_e61_v72__0_CGPoint_dd_8_CGPoint_dd_24_CGPoint_dd_40_CGPoint_dd_56l;
  *&v30[4] = a7;
  v30[5] = a5;
  v30[6] = a1;
  v30[7] = a4;
  *&v30[8] = a8;
  *&v30[9] = a9;
  *&v30[10] = a10;
  *&v30[11] = a11;
  v30[12] = a3;
  v23 = _Block_copy(v30);
  v24 = 0;
  do
  {
    if (((1 << v24) & a6) != 0)
    {
      ++v24;
    }

    else
    {
      v25 = v24 + 1;
      v23[2](v23, *(a2 + 16 * v24), *(a2 + 16 * v24 + 8), *(a2 + 16 * ((v24 + 1) & 3)), *(a2 + 16 * ((v24 + 1) & 3) + 8), *(a2 + 16 * ((v24 - 1) & 3)), *(a2 + 16 * ((v24 - 1) & 3) + 8), *(a2 + 16 * (v24 ^ 2)), *(a2 + 16 * (v24 ^ 2) + 8));
      v24 = v25;
    }
  }

  while (v24 != 4);
  if (a7 > 0.0)
  {
    v26 = 0;
    v27 = (a2 + 8);
    do
    {
      v28 = v26 + 1;
      if (((1 << v26) & a6) == 0)
      {
        v29 = (a2 + 16 * ((v26 - 1) & 3));
        v22[2](v22, *v29, v29[1], *(v27 - 1), *v27, *(a2 + 16 * (v28 & 3)), *(a2 + 16 * (v28 & 3) + 8));
      }

      v27 += 2;
      v26 = v28;
    }

    while (v28 != 4);
  }
}

void DrawPlaneFill(CGContext *a1, double *a2, CGColor *a3, CGImage *a4, const CGPath *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  Mutable = CGPathCreateMutable();
  v20 = *a2;
  v21 = a2[1];
  v19 = a2 + 3;
  CGPathMoveToPoint(Mutable, 0, v20, v21);
  v22 = 3;
  do
  {
    CGPathAddLineToPoint(Mutable, 0, *(v19 - 1), *v19);
    v19 += 2;
    --v22;
  }

  while (v22);
  CGPathCloseSubpath(Mutable);
  CGContextSetFillColorWithColor(a1, a3);
  if (a4)
  {
    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    CGContextClipToMask(a1, v24, a4);
  }

  if (a5)
  {
    CGContextAddPath(a1, a5);
    CGContextClip(a1);
    CGContextBeginPath(a1);
  }

  CGContextAddPath(a1, Mutable);
  CGContextFillPath(a1);
  CGContextBeginPath(a1);
  CGContextResetClip(a1);

  CGPathRelease(Mutable);
}

void __DrawPlaneGlow_block_invoke(uint64_t a1, double a2, double a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v12 = atan2(a5 - a3, a4 - a2) + -1.57079633;
  v13 = atan2(a5 - a7, a4 - a6) + 1.57079633;
  v14 = __sincos_stret(v12);
  v15 = *(a1 + 32);
  v16 = __sincos_stret(v13);
  v17 = v15 * v16.__cosval;
  v18 = v15 * v16.__sinval;
  v19 = a4 + v14.__cosval * v15;
  v20 = a5 + v14.__sinval * v15;
  v21 = a4 + v17;
  v22 = a5 + v18;
  v23 = v19 + v17;
  v24 = v20 + v18;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, a4, a5);
  CGPathAddLineToPoint(Mutable, 0, v19, v20);
  CGPathAddLineToPoint(Mutable, 0, v23, v24);
  CGPathAddLineToPoint(Mutable, 0, v21, v22);
  CGPathCloseSubpath(Mutable);
  v26 = *(a1 + 40);
  if (v26)
  {
    CGContextAddPath(*(a1 + 48), v26);
    CGContextClip(*(a1 + 48));
    CGContextBeginPath(*(a1 + 48));
  }

  v27 = *(a1 + 56);
  if (v27)
  {
    CGContextClipToMask(*(a1 + 48), *(a1 + 64), v27);
  }

  CGContextAddPath(*(a1 + 48), Mutable);
  CGContextClip(*(a1 + 48));
  CGContextBeginPath(*(a1 + 48));
  v29.x = a4;
  v29.y = a5;
  v30.x = a4;
  v30.y = a5;
  CGContextDrawRadialGradient(*(a1 + 48), *(a1 + 96), v29, 0.0, v30, *(a1 + 32), 0);
  CGContextResetClip(*(a1 + 48));

  CGPathRelease(Mutable);
}

void __DrawPlaneGlow_block_invoke_2(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9)
{
  v17 = atan2(a5 - a3, a4 - a2) + -1.57079633;
  v18 = *(a1 + 32);
  v35 = v17;
  if (v18 <= 0.0)
  {
    v23 = atan2(a3 - a7, a2 - a6);
    v24 = atan2(a5 - a9, a4 - a8);
    v25 = __sincos_stret(v23);
    xa = a2 + v25.__cosval * v18;
    v22 = a3 + v25.__sinval * v18;
    v26 = __sincos_stret(v24);
    cosval = v26.__cosval;
    sinval = v26.__sinval;
  }

  else
  {
    v21 = __sincos_stret(v17);
    cosval = v21.__cosval;
    sinval = v21.__sinval;
    xa = a2 + v21.__cosval * v18;
    v22 = a3 + v21.__sinval * v18;
  }

  v27 = a4 + cosval * v18;
  v28 = a5 + sinval * v18;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, a2, a3);
  CGPathAddLineToPoint(Mutable, 0, a4, a5);
  CGPathAddLineToPoint(Mutable, 0, v27, v28);
  CGPathAddLineToPoint(Mutable, 0, xa, v22);
  CGPathCloseSubpath(Mutable);
  v30 = *(a1 + 40);
  if (v30)
  {
    CGContextAddPath(*(a1 + 48), v30);
    CGContextClip(*(a1 + 48));
    CGContextBeginPath(*(a1 + 48));
  }

  v31 = *(a1 + 56);
  if (v31)
  {
    CGContextClipToMask(*(a1 + 48), *(a1 + 64), v31);
  }

  v32 = __sincos_stret(v35);
  CGContextAddPath(*(a1 + 48), Mutable);
  CGContextClip(*(a1 + 48));
  CGContextBeginPath(*(a1 + 48));
  v37.x = (a2 + a4) * 0.5;
  v37.y = (a3 + a5) * 0.5;
  v38.x = v37.x + v32.__cosval * v18;
  v38.y = v37.y + v32.__sinval * v18;
  CGContextDrawLinearGradient(*(a1 + 48), *(a1 + 96), v37, v38, 0);
  CGContextResetClip(*(a1 + 48));

  CGPathRelease(Mutable);
}

__CFString *CEKStringFromAnimationUpdateMode(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unspecified";
  }

  else
  {
    return off_1E7CC6988[a1 - 1];
  }
}

id _CEKModifyFrameRateForAnimationBlockFromSettings(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _Block_copy(v3);
  [v4 frameRateRange];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v4 highFrameRateReason];

  v23.minimum = v7;
  v23.maximum = v9;
  v23.preferred = v11;
  if (!CAFrameRateRangeIsEqualToRange(v23, *MEMORY[0x1E69792B8]))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___CEKModifyFrameRateForAnimationBlockFromSettings_block_invoke;
    aBlock[3] = &unk_1E7CC68F0;
    v18 = v7;
    v19 = v9;
    v20 = v11;
    v21 = v12;
    v17 = v3;
    v13 = _Block_copy(aBlock);

    v5 = v13;
  }

  v14 = _Block_copy(v5);

  return v14;
}

void sub_1B7EB0D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B7EB116C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B7EB139C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B7EB1840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B7EB61D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B7EB9FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CEKDefaultSliderPositionDriver()
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"systemOverlay.alternateScrollModel", @"com.apple.camera", 0);
  v1 = &off_1E7CC5F40;
  if (AppBooleanValue)
  {
    v1 = off_1E7CC5F38;
  }

  v2 = objc_alloc_init(*v1);

  return v2;
}

void sub_1B7EBD428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t CEKDeviceRegionPrefersSmartStyleUT6()
{
  v0 = CEKDeviceRegionCode();
  v1 = [&unk_1F2FE02A8 containsObject:v0];

  return v1;
}

__CFString *CEKDebugStringForSmartStylePresetType(unint64_t a1)
{
  if (a1 > 0x10)
  {
    return 0;
  }

  else
  {
    return off_1E7CC6E08[a1];
  }
}

__CFString *CEKDebugStringForSmartStyleCastType(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return 0;
  }

  else
  {
    return off_1E7CC6C78[a1];
  }
}

void sub_1B7EC1CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B7EC1F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B7EC27F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B7EC6788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

double sub_1B7EC7E0C(uint64_t a1, void *a2, double *a3, void *a4)
{
  if (*a2 != -1)
  {
    v5 = a4;
    v6 = a3;
    swift_once();
    a3 = v6;
    a4 = v5;
  }

  result = *a3;
  *a4 = *a3;
  return result;
}

double sub_1B7EC7E84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a3 == -1)
  {
    return *a4;
  }

  swift_once();
  return *a4;
}

void sub_1B7EC7F30(void *a1)
{
  *(v1 + OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_distanceTraveled) = 0;
  *(v1 + OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_distanceToDecelerate) = 0;
  *(v1 + OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_liftoffDidFlickUp) = 0;
  *(v1 + OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_liftoffDidFlickDown) = 0;
  if (qword_1EBA647C0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B7ED3BC0();
  __swift_project_value_buffer(v3, qword_1EBA64ED8);
  [a1 _timestamp];
  sub_1B7ECA040(v4, 0, 0, 0);
}

void sub_1B7EC8054(void *a1)
{
  v3 = [a1 _contact];
  if (v3)
  {
    v4 = v3;
    v15 = v3;
    if ((*(v1 + OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_acceptsLowConfidenceScrolling) & 1) == 0 && (v5 = [v3 touchPositionHints], v4 = v15, (v5 & 0x100) != 0))
    {
      v12 = 0;
    }

    else
    {
      v6 = [v4 touchPositionHints];
      v7 = 0.0;
      if ((v6 & 0x18) == 0)
      {
        [v15 positionDelta];
        CEKExpandNormalizedContactPoint(v8, v9);
        v7 = -v10;
      }

      *&v11 = v7 * *(v1 + OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_scrollMultiplier);
      *(v1 + OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_distanceTraveled) = *&v11 + *(v1 + OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_distanceTraveled);
      v12 = v11;
    }

    if (qword_1EBA647C0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B7ED3BC0();
    __swift_project_value_buffer(v13, qword_1EBA64ED8);
    [a1 _timestamp];
    sub_1B7ECA040(v14, v12, 0, 1u);
  }
}

void sub_1B7EC822C(void *a1)
{
  v2 = v1;
  v4 = sub_1B7ED3BC0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0.0;
  v9 = 0.0;
  if (a1)
  {
    v10 = [a1 _contact];
    if (v10)
    {
      v11 = v10;
      [v10 positionDelta];
      CEKExpandNormalizedContactPoint(0.0, v12);
      v14 = v13;

      v9 = -v14;
    }
  }

  *(v2 + OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_liftoffVelocity) = v9;
  if (fabs(v9) > 0.6)
  {
    v8 = -(v9 * 0.001 - dbl_1B7EDA930[v9 * 0.001 < 0.0]) / log(*MEMORY[0x1E69DE3A0]) * *(v2 + OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_velocityMultiplier);
  }

  v15 = OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_distanceToDecelerate;
  *(v2 + OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_distanceToDecelerate) = v8;
  if (qword_1EBA647C0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_1EBA64ED8);
  (*(v5 + 16))(v7, v16, v4);
  if (a1)
  {
    [a1 _timestamp];
    sub_1B7ECA040(v17, 0, *(v2 + v15), 2u);
    (*(v5 + 8))(v7, v4);
    v18 = [a1 _contact];
    if (v18)
    {
      v19 = v18;
      if (qword_1EBA647B8 != -1)
      {
        swift_once();
      }

      if (!qword_1EBA64ED0 || (v20 = sub_1B7ECA828(), v20 == 2) || (v20 & 1) != 0)
      {
        v21 = [v19 touchPositionHints];
        *(v2 + OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_liftoffDidFlickUp) = (v21 & 0x80) != 0;
        v22 = [v19 touchPositionHints];

        *(v2 + OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_liftoffDidFlickDown) = (v22 & 0x40) != 0;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1B7ECA040(0, 1, *(v2 + v15), 2u);
    (*(v5 + 8))(v7, v4);
  }
}

id sub_1B7EC85C4()
{
  *&v0[OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_distanceTraveled] = 0;
  *&v0[OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_distanceToDecelerate] = 0;
  *&v0[OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_liftoffVelocity] = 0;
  v0[OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_liftoffDidFlickUp] = 0;
  v0[OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_liftoffDidFlickDown] = 0;
  v1 = OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_scrollMultiplier;
  if (qword_1EBA64780 != -1)
  {
    swift_once();
  }

  *&v0[v1] = qword_1EBA64EB0;
  v2 = OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_velocityMultiplier;
  if (qword_1EBA64788 != -1)
  {
    swift_once();
  }

  *&v0[v2] = qword_1EBA64EB8;
  v0[OBJC_IVAR____TtC13CameraEditKit34HIDPassthroughSliderPositionDriver_acceptsLowConfidenceScrolling] = 1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HIDPassthroughSliderPositionDriver();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1B7EC86F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HIDPassthroughSliderPositionDriver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void type metadata accessor for CGColor()
{
  if (!qword_1EBA64818)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBA64818);
    }
  }
}

void sub_1B7EC87F4()
{
  v0 = [objc_opt_self() secondaryLabelColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_1EBA648E8 = v1;
}

id sub_1B7EC8874(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void CEKColoredPaletteSlider.colors.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CEKColoredPaletteSlider_colors;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1B7EC8BA0();
}

void sub_1B7EC8A98(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 colors];
  if (v3)
  {
    v4 = v3;
    sub_1B7EC9FD0(0, &qword_1EBA64920);
    v5 = sub_1B7ED3C20();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1B7EC8B18(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_1B7EC9FD0(0, &qword_1EBA64920);
    v3 = sub_1B7ED3C10();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setColors_];
}

void sub_1B7EC8BA0()
{
  v1 = OBJC_IVAR___CEKColoredPaletteSlider_trackLayer;
  [*&v0[OBJC_IVAR___CEKColoredPaletteSlider_trackLayer] removeFromSuperlayer];
  v2 = OBJC_IVAR___CEKColoredPaletteSlider_colors;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    if (v3 >> 62)
    {
      v4 = sub_1B7ED3D40();
      if (v4 >= 2)
      {
LABEL_4:
        v21 = v0;
        v5 = objc_allocWithZone(MEMORY[0x1E6979380]);

        v6 = [v5 init];
        [v6 setStartPoint_];
        [v6 setEndPoint_];
        v24 = MEMORY[0x1E69E7CC0];
        sub_1B7ECBE28(0, v4, 0);
        v7 = 0;
        v8 = v24;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1B8CB3FA0](v7, v3);
          }

          else
          {
            v9 = *(v3 + 8 * v7 + 32);
          }

          v10 = v9;
          v11 = [v9 CGColor];
          type metadata accessor for CGColor();
          v23 = v12;

          *&v22 = v11;
          v24 = v8;
          v14 = *(v8 + 16);
          v13 = *(v8 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_1B7ECBE28((v13 > 1), v14 + 1, 1);
            v8 = v24;
          }

          ++v7;
          *(v8 + 16) = v14 + 1;
          sub_1B7ECA018(&v22, (v8 + 32 * v14 + 32));
        }

        while (v4 != v7);

        v15 = sub_1B7ED3C10();

        [v6 setColors_];
        v0 = v21;
        goto LABEL_23;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 >= 2)
      {
        goto LABEL_4;
      }
    }
  }

  if (qword_1EBA647A0 != -1)
  {
    swift_once();
  }

  v15 = [qword_1EBA648F0 CGColor];
  v16 = *&v0[v2];
  if (!v16)
  {
    goto LABEL_22;
  }

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_22:
    v6 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    [v6 setBackgroundColor_];
LABEL_23:

    v19 = *&v0[v1];
    *&v0[v1] = v6;

    v20 = [v0 layer];
    [v20 insertSublayer:*&v0[v1] atIndex:1];

    return;
  }

  if (!sub_1B7ED3D40())
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((v16 & 0xC000000000000001) != 0)
  {

    v17 = MEMORY[0x1B8CB3FA0](0, v16);

    goto LABEL_21;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v16 + 32);
LABEL_21:
    v18 = [v17 CGColor];

    v15 = v18;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_1B7EC8F1C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___CEKColoredPaletteSlider_colors] = 0;
  *&v4[OBJC_IVAR___CEKColoredPaletteSlider_boundsHeight] = 0;
  v9 = OBJC_IVAR___CEKColoredPaletteSlider_backgroundLayer;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v10 = OBJC_IVAR___CEKColoredPaletteSlider_trackLayer;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v33.receiver = v4;
  v33.super_class = CEKColoredPaletteSlider;
  v11 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1B7EC9370();
  [v11 addTarget:v11 action:sel_valueChanged_ forControlEvents:4096];
  v12 = OBJC_IVAR___CEKColoredPaletteSlider_backgroundLayer;
  v13 = qword_1EBA64798;
  v14 = *&v11[OBJC_IVAR___CEKColoredPaletteSlider_backgroundLayer];
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = [qword_1EBA648E8 CGColor];
  [v14 setBackgroundColor_];

  v16 = [v11 layer];
  [v16 insertSublayer:*&v11[v12] atIndex:0];

  v17 = OBJC_IVAR___CEKColoredPaletteSlider_trackLayer;
  v18 = qword_1EBA647A0;
  v19 = *&v11[OBJC_IVAR___CEKColoredPaletteSlider_trackLayer];
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = [qword_1EBA648F0 CGColor];
  [v19 setBackgroundColor_];

  v21 = [v11 layer];
  [v21 insertSublayer:*&v11[v17] atIndex:1];

  [v11 bounds];
  Height = CGRectGetHeight(v34);
  [v11 bounds];
  v23 = CGRectGetHeight(v35) + -4.0;
  v24 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B7ECA038;
  *(v26 + 24) = v25;
  v32[4] = sub_1B7ECA03C;
  v32[5] = v26;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 1107296256;
  v32[2] = sub_1B7EC97B0;
  v32[3] = &block_descriptor_14;
  v27 = _Block_copy(v32);

  v28 = [v24 imageWithActions_];

  _Block_release(v27);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  else
  {
    v30 = sub_1B7EC94D0(1);
    [v11 setThumbImage:v28 forState:0];
    v31 = v30;
    [v11 setThumbImage:v31 forState:1];
    [v11 setThumbImage:v31 forState:4];

    return v11;
  }

  return result;
}

void sub_1B7EC9370()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setTintColor_];

  v3 = [v1 clearColor];
  [v0 setMaximumTrackTintColor_];

  v4 = [v1 clearColor];
  [v0 setMinimumTrackTintColor_];

  v5 = [v1 clearColor];
  [v0 setBackgroundColor_];

  v6 = [v1 clearColor];
  [v0 setThumbTintColor_];
}

uint64_t sub_1B7EC94D0(char a1)
{
  [v1 bounds];
  Height = CGRectGetHeight(v14);
  if (a1)
  {
    v4 = 4.0;
  }

  else
  {
    v4 = -4.0;
  }

  if (a1)
  {
    v5 = Height + 4.0;
  }

  else
  {
    v5 = Height;
  }

  [v1 bounds];
  v6 = CGRectGetHeight(v15) + v4;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B7ECA038;
  *(v9 + 24) = v8;
  v13[4] = sub_1B7ECA03C;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B7EC97B0;
  v13[3] = &block_descriptor_25;
  v10 = _Block_copy(v13);

  v11 = [v7 imageWithActions_];

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

void sub_1B7EC96A4(void *a1, char a2, CGFloat a3)
{
  v6 = [a1 CGContext];
  if (qword_1EBA64790 != -1)
  {
    swift_once();
  }

  if (a2)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 2.0;
  }

  v8 = [qword_1EBA648E0 CGColor];
  CGContextSetFillColorWithColor(v6, v8);

  v9 = [a1 CGContext];
  v11.origin.x = v7;
  v11.origin.y = v7;
  v11.size.width = a3;
  v11.size.height = a3;
  CGContextFillEllipseInRect(v9, v11);
}

void sub_1B7EC97B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

Swift::Void __swiftcall CEKColoredPaletteSlider.layoutSubviews()()
{
  v1 = OBJC_IVAR___CEKColoredPaletteSlider_boundsHeight;
  v2 = *&v0[OBJC_IVAR___CEKColoredPaletteSlider_boundsHeight];
  [v0 bounds];
  if (v2 != CGRectGetHeight(v52))
  {
    [v0 bounds];
    Height = CGRectGetHeight(v53);
    [v0 bounds];
    v4 = CGRectGetHeight(v54) + -4.0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = v4;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1B7EC9CD4;
    *(v7 + 24) = v6;
    aBlock[4] = sub_1B7EC9CE0;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B7EC97B0;
    aBlock[3] = &block_descriptor;
    v8 = _Block_copy(aBlock);

    v9 = [v5 imageWithActions_];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
      return;
    }

    v10 = sub_1B7EC94D0(1);
    [v0 setThumbImage:v9 forState:0];
    v11 = v10;
    [v0 setThumbImage:v11 forState:1];
    [v0 setThumbImage:v11 forState:4];

    [v0 bounds];
    *&v0[v1] = CGRectGetHeight(v55);
  }

  v50.receiver = v0;
  v50.super_class = CEKColoredPaletteSlider;
  objc_msgSendSuper2(&v50, sel_layoutSubviews);
  v12 = *&v0[OBJC_IVAR___CEKColoredPaletteSlider_backgroundLayer];
  [v0 bounds];
  [v12 setFrame_];
  [v12 bounds];
  [v12 setCornerRadius_];
  v13 = OBJC_IVAR___CEKColoredPaletteSlider_trackLayer;
  v14 = *&v0[OBJC_IVAR___CEKColoredPaletteSlider_trackLayer];
  [v0 bounds];
  [v14 setCornerRadius_];

  v15 = objc_opt_self();
  [v15 begin];
  [v15 setDisableActions_];
  [v0 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v0 bounds];
  [v0 trackRectForBounds_];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [v0 value];
  LODWORD(v49) = v32;
  [v0 thumbRectForBounds:v17 trackRect:v19 value:{v21, v23, v25, v27, v29, v31, v49}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = *&v0[v13];
  v58.origin.x = v34;
  v58.origin.y = v36;
  v58.size.width = v38;
  v58.size.height = v40;
  MidX = CGRectGetMidX(v58);
  [v0 bounds];
  v43 = MidX + CGRectGetHeight(v59) * 0.5;
  [v0 bounds];
  [v41 setFrame_];

  v44 = *&v0[v13];
  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (v45)
  {
    v46 = v45;
    v47 = v44;
    [v0 bounds];
    Width = CGRectGetWidth(v61);
    v62.origin.x = v34;
    v62.origin.y = v36;
    v62.size.width = v38;
    v62.size.height = v40;
    [v46 setEndPoint_];
  }

  [v15 commit];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Bool __swiftcall CEKColoredPaletteSlider.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  y = inside.y;
  x = inside.x;
  [v2 bounds];
  v8 = CGRectInset(v7, -10.0, -10.0);
  v6.x = x;
  v6.y = y;
  return CGRectContainsPoint(v8, v6);
}

id CEKColoredPaletteSlider.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void _sSo23CEKColoredPaletteSliderC13CameraEditKitE5coderABSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___CEKColoredPaletteSlider_colors) = 0;
  *(v0 + OBJC_IVAR___CEKColoredPaletteSlider_boundsHeight) = 0;
  v1 = OBJC_IVAR___CEKColoredPaletteSlider_backgroundLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v2 = OBJC_IVAR___CEKColoredPaletteSlider_trackLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  sub_1B7ED3D30();
  __break(1u);
}

uint64_t sub_1B7EC9FD0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_1B7ECA018(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1B7ECA040(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (qword_1EBA647C8 != -1)
  {
    v30 = a3;
    swift_once();
    a3 = v30;
  }

  if (byte_1EBA64EF0 == 1)
  {
    v32 = 0x3A22657361685022;
    v33 = 0xE900000000000022;
    v6 = a3;
    if (a4)
    {
      if (a4 == 1)
      {
        v7 = 0x64657461647055;
      }

      else
      {
        v7 = 0x6465646E45;
      }

      if (a4 == 1)
      {
        v8 = 0xE700000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }
    }

    else
    {
      v8 = 0xE500000000000000;
      v7 = 0x6E61676542;
    }

    MEMORY[0x1B8CB3E80](v7, v8);

    MEMORY[0x1B8CB3E80](34, 0xE100000000000000);
    MEMORY[0x1B8CB3E80](8236, 0xE200000000000000);
    if (a4 >= 2u && (a2 & 1) != 0)
    {
      v9 = 0xE400000000000000;
      v10 = 1819047278;
    }

    else
    {
      sub_1B7ED3C60();
      v10 = 0;
      v9 = 0xE000000000000000;
    }

    strcpy(v31, "Timestamp:");
    BYTE5(v31[1]) = 0;
    HIWORD(v31[1]) = -5120;
    MEMORY[0x1B8CB3E80](v10, v9);

    MEMORY[0x1B8CB3E80](v31[0], v31[1]);

    v12 = v32;
    v11 = v33;

    if (a4)
    {
      if (a4 == 1)
      {
        sub_1B7ECAA3C();
        v13 = sub_1B7ED3BA0();
        v14 = sub_1B7ED3C80();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v32 = v16;
          *v15 = 136446722;
          v17 = sub_1B7ECAA44(v12, v11, &v32);

          *(v15 + 4) = v17;
          *(v15 + 12) = 1040;
          *(v15 + 14) = 3;
          *(v15 + 18) = 2050;
          *(v15 + 20) = a2;
          _os_log_impl(&dword_1B7E93000, v13, v14, "{%{public}s), ScrollTravel: %{public}+.*f)}", v15, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x1B8CB4FC0](v16, -1, -1);
          MEMORY[0x1B8CB4FC0](v15, -1, -1);
        }

        else
        {
        }

        return;
      }

      sub_1B7ECAA3C();
      v18 = sub_1B7ED3BA0();
      v28 = sub_1B7ED3C80();

      if (os_log_type_enabled(v18, v28))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v32 = v21;
        *v20 = 136446722;
        v29 = sub_1B7ECAA44(v12, v11, &v32);

        *(v20 + 4) = v29;
        *(v20 + 12) = 1040;
        *(v20 + 14) = 3;
        *(v20 + 18) = 2050;
        *(v20 + 20) = v6;
        v23 = "{%{public}s), DecelerationDistance: %{public}+.*f)}";
        v24 = v28;
        v25 = v18;
        v26 = v20;
        v27 = 28;
        goto LABEL_24;
      }
    }

    else
    {
      v18 = sub_1B7ED3BA0();
      v19 = sub_1B7ED3C80();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v32 = v21;
        *v20 = 136446210;
        v22 = sub_1B7ECAA44(v12, v11, &v32);

        *(v20 + 4) = v22;
        v23 = "{%{public}s)}";
        v24 = v19;
        v25 = v18;
        v26 = v20;
        v27 = 12;
LABEL_24:
        _os_log_impl(&dword_1B7E93000, v25, v24, v23, v26, v27);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x1B8CB4FC0](v21, -1, -1);
        MEMORY[0x1B8CB4FC0](v20, -1, -1);
LABEL_26:

        return;
      }
    }

    goto LABEL_26;
  }
}

void sub_1B7ECA4C4()
{
  if (qword_1EBA647B8 != -1)
  {
    swift_once();
  }

  v0 = 0x3FF999999999999ALL;
  if (qword_1EBA64ED0)
  {
    v1 = qword_1EBA64ED0;
    v2 = sub_1B7ECA570();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      v0 = v2;
    }
  }

  qword_1EBA64EC0 = v0;
}

uint64_t sub_1B7ECA570()
{
  v1 = sub_1B7ED3BE0();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1B7ED3C90();
    swift_unknownObjectRelease();
    sub_1B7ECA018(&v7, v8);
    sub_1B7ECA778(v8);
    v3 = sub_1B7ED3BE0();
    [v0 doubleForKey_];
    v5 = v4;

    return v5;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    sub_1B7ECA778(v8);
    return 0;
  }
}

void sub_1B7ECA65C()
{
  if (qword_1EBA647B8 != -1)
  {
    swift_once();
  }

  v0 = 0x3FF999999999999ALL;
  if (qword_1EBA64ED0)
  {
    v1 = qword_1EBA64ED0;
    v2 = sub_1B7ECA570();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      v0 = v2;
    }
  }

  qword_1EBA64EC8 = v0;
}

void sub_1B7ECA708()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1B7ED3BE0();
  v2 = [v0 initWithSuiteName_];

  qword_1EBA64ED0 = v2;
}

uint64_t sub_1B7ECA778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B7ECA828()
{
  v1 = sub_1B7ED3BE0();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1B7ED3C90();
    swift_unknownObjectRelease();
    sub_1B7ECA018(&v6, v7);
    sub_1B7ECA778(v7);
    v3 = sub_1B7ED3BE0();
    v4 = [v0 BOOLForKey_];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    sub_1B7ECA778(v7);
    return 2;
  }

  return v4;
}

uint64_t sub_1B7ECA904()
{
  v0 = sub_1B7ED3BC0();
  __swift_allocate_value_buffer(v0, qword_1EBA64ED8);
  __swift_project_value_buffer(v0, qword_1EBA64ED8);
  return sub_1B7ED3BB0();
}

void sub_1B7ECA984()
{
  if (qword_1EBA647B8 != -1)
  {
    swift_once();
  }

  if (qword_1EBA64ED0)
  {
    v0 = qword_1EBA64ED0;
    v1 = sub_1B7ED3BE0();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 0;
  }

  byte_1EBA64EF0 = v2;
}

unint64_t sub_1B7ECAA44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B7ECAB10(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B7ECB038(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1B7ECAB10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B7ECAC1C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B7ED3D20();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B7ECAC1C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B7ECAC68(a1, a2);
  sub_1B7ECAD98(&unk_1F2FD5490);
  return v3;
}

uint64_t sub_1B7ECAC68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B7ECAE84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B7ED3D20();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B7ED3C00();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B7ECAE84(v10, 0);
        result = sub_1B7ED3CF0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B7ECAD98(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B7ECAEF8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B7ECAE84(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA64930);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B7ECAEF8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA64930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1B7ECB038(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1B7ECB158()
{
  v1 = *(*v0 + 80);

  v2 = sub_1B7ED3C30();

  if (v2 < 1)
  {
    return MEMORY[0x1B8CB3F40](v1);
  }

  sub_1B7ED3CC0();
  sub_1B7ED3C40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64A60);
  swift_getWitnessTable();
  sub_1B7ECC17C(&qword_1EBA64A68, &qword_1EBA64A60);
  sub_1B7ED3BD0();
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64A70);
  sub_1B7ECC17C(&qword_1EBA64A78, &qword_1EBA64A70);
  sub_1B7ED3BD0();
  swift_getWitnessTable();
  sub_1B7ED3C70();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1B7ECB37C()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1B7ECB3CC()
{
  sub_1B7ECB158();
  v0 = sub_1B7ED3CA0();
  swift_unknownObjectRelease();
  return v0;
}

void sub_1B7ECB450()
{
  *(v0 + OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_translation) = 0;
  v1 = *(v0 + OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_allSamples);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_1B7ED0A58(0, *(v3 + 16));
  }

  else
  {
    *(v1 + 16) = sub_1B7ECEEFC(0, *(v3 + 24) >> 1);
  }

  *(v1 + 24) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_validSamples);

  v5 = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + 16);
  if (v5)
  {
    sub_1B7ED0A58(0, *(v6 + 16));
  }

  else
  {
    *(v4 + 16) = sub_1B7ECEEFC(0, *(v6 + 24) >> 1);
  }

  *(v4 + 24) = 0;

  *(v0 + OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_lastUpdateTime) = CACurrentMediaTime();
}

id sub_1B7ECB554()
{
  *&v0[OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_translation] = 0;
  *&v0[OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_decelerationTarget] = 0;
  v1 = OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_allSamples;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64A58);
  v2 = swift_allocObject();
  *(v2 + 24) = xmmword_1B7EDA9C0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = sub_1B7ED2330(0, 14, 0, v3);
  *&v0[v1] = v2;
  v4 = OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_validSamples;
  v5 = swift_allocObject();
  *(v5 + 24) = xmmword_1B7EDA9D0;
  *(v5 + 16) = v3;
  v6 = sub_1B7ED2330(0, 6, 0, v3);
  *&v0[v4] = v5;
  *(v5 + 16) = v6;
  *&v0[OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_lastUpdateTime] = 0x10000000000000;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for BetterSliderPositionDriver();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1B7ECB698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BetterSliderPositionDriver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B7ECB798()
{
  v0 = CACurrentMediaTime();

  sub_1B7ECDE68();
  v2 = v1;
  v4 = v3;
  v6 = v5;

  v8 = v6 >> 1;
  if (__OFSUB__(v6 >> 1, v4))
  {
    __break(1u);
  }

  else
  {
    if (((v6 >> 1) - v4) < 1)
    {
      return swift_unknownObjectRelease();
    }

    v9 = 0.0;
    if (v4 == v8)
    {
      return swift_unknownObjectRelease();
    }

    if (v4 < v8)
    {
      v10 = (v2 + 24 * v4 + 16);
      v11 = (v6 >> 1) - v4;
      do
      {
        v12 = *(v10 - 2);
        v13 = *v10;
        v14 = v0 - *(v10 - 1);
        v15 = 0.0;
        if (v14 < 0.18)
        {
          v15 = pow(v14 / -0.18 + 1.0, 6.0);
        }

        v9 = v9 + v12 / v13 * v15 * 0.83;
        v10 += 3;
        --v11;
      }

      while (v11);
      return swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7ECB93C(void *a1)
{
  v2 = v1;
  result = [a1 _contact];
  if (result)
  {
    v4 = result;
    v5 = [result touchPositionHints];
    if ((v5 & 8) != 0 || (v5 & 0x10) != 0)
    {

      v10 = 0.0;
    }

    else
    {
      [v4 positionDelta];
      CEKExpandNormalizedContactPoint(v6, v7);
      v9 = v8;

      v10 = -v9;
    }

    *(v2 + OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_translation) = v10 * 2.58 + *(v2 + OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_translation);
    v11 = CACurrentMediaTime();
    v12 = OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_lastUpdateTime;
    v13 = v11 - *(v2 + OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_lastUpdateTime);

    sub_1B7ECDBD0(v10, v11, v13);

    result = BSFloatIsZero();
    if ((result & 1) == 0)
    {

      sub_1B7ECDBD0(v10, v11, v13);
    }

    *(v2 + v12) = v11;
  }

  return result;
}

uint64_t sub_1B7ECBAD8()
{

  v0 = sub_1B7ECDE68();
  v2 = v1;
  v4 = v3;
  v6 = v5;

  if (__OFSUB__(v6 >> 1, v4))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (((v6 >> 1) - v4) < 1)
  {
LABEL_8:
    swift_unknownObjectRelease();
    return 0;
  }

  result = sub_1B7ECBDD0(6, v0, v2, v4, v6);
  v11 = (v10 >> 1) - v9;
  if (v10 >> 1 == v9)
  {
    swift_unknownObjectRetain();
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  if ((v10 >> 1) <= v9)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v14 = v8;
  v15 = v9;
  swift_unknownObjectRetain();
  v16 = (v14 + 24 * v15 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  do
  {
    v20 = *(v16 - 2);
    v21 = *(v16 - 1);
    v22 = *v16;
    if ((BSFloatIsZero() & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B7ECBE48(0, *(v12 + 16) + 1, 1);
      }

      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B7ECBE48((v17 > 1), v18 + 1, 1);
      }

      *(v12 + 16) = v18 + 1;
      v19 = (v12 + 24 * v18);
      v19[4] = v20;
      v19[5] = v21;
      v19[6] = v22;
    }

    v16 += 3;
    --v11;
  }

  while (v11);
LABEL_5:
  v13 = *(v12 + 16);

  if (v13)
  {
    if (v13 > 2)
    {
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    sub_1B7ECB798();
    v24 = v23;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return CGFAbs(v24) <= 90.0;
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BetterSliderPositionDriver.DeltaSample(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BetterSliderPositionDriver.DeltaSample(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1B7ECBDD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = a5 >> 1;
  v6 = a4 - (a5 >> 1);
  if (__OFSUB__(a4, a5 >> 1))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 > -result && v6 < 1)
  {
    v8 = a4;
  }

  else
  {
    v8 = v5 - result;
  }

  if (v5 < v8)
  {
    goto LABEL_14;
  }

  if (v8 >= a4)
  {
    return a2;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1B7ECBE28(char *a1, int64_t a2, char a3)
{
  result = sub_1B7ECBE68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B7ECBE48(char *a1, int64_t a2, char a3)
{
  result = sub_1B7ECBF78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B7ECBE68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA64A80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7ECBF78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

uint64_t sub_1B7ECC094()
{
  sub_1B7ECB798();
  v2 = v1;
  result = sub_1B7ECBAD8();
  v4 = 0.0;
  if ((result & 1) == 0 && fabs(v2) > 0.6)
  {
    v5 = log(*MEMORY[0x1E69DE3A0]);
    result = sub_1B7ECB798();
    v4 = -(v6 * 0.001 - dbl_1B7EDA930[v6 * 0.001 < 0.0]) / v5;
  }

  *(v0 + OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_decelerationTarget) = v4;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B7ECC17C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7ECC1F4(uint64_t a1)
{
  result = sub_1B7ECC21C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B7ECC21C()
{
  result = qword_1EBA64A90;
  if (!qword_1EBA64A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA64A90);
  }

  return result;
}

void *sub_1B7ECC454(void *result, double a2)
{
  v3 = *(v2 + *result);
  *(v2 + *result) = a2;
  if (v3 != a2)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result tickMarksModelDidChangeWidthForTickMarkCountWithModel_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_1B7ECC5A4(void *result, void *a2)
{
  v3 = *(v2 + *a2);
  *(v2 + *a2) = result;
  if (v3 != result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result tickMarksModelDidChangeWidthForTickMarkCountWithModel_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1B7ECC778(uint64_t result, void *a2, SEL *a3)
{
  v4 = *(v3 + *a2);
  *(v3 + *a2) = result;
  if (v4 != (result & 1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result *a3];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1B7ECC838()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel__primaryTickMarkColor);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel__primaryTickMarkColor);
  }

  else if (*(v0 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_useTickMarkLegibilityShadows) == 1)
  {
    v2 = [objc_opt_self() labelColor];
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v7[4] = sub_1B7ECCBA4;
    v7[5] = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1B7ECD4FC;
    v7[3] = &block_descriptor_7;
    v4 = _Block_copy(v7);
    v2 = [v3 initWithDynamicProvider_];
    _Block_release(v4);
  }

  v5 = v1;
  return v2;
}

id sub_1B7ECC9FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel__secondaryTickMarkColor);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel__secondaryTickMarkColor);
  }

  else if (*(v0 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_useTickMarkLegibilityShadows) == 1)
  {
    v3 = [objc_opt_self() labelColor];
    v2 = [v3 colorWithAlphaComponent_];
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v8[4] = sub_1B7ECCBB4;
    v8[5] = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1B7ECD4FC;
    v8[3] = &block_descriptor_0;
    v5 = _Block_copy(v8);
    v2 = [v4 initWithDynamicProvider_];
    _Block_release(v5);
  }

  v6 = v1;
  return v2;
}

id sub_1B7ECCBC8(void *a1, SEL *a2, double a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);

    return [v5 initWithWhite:a3 alpha:1.0];
  }

  else
  {
    v7 = [objc_opt_self() *a2];

    return v7;
  }
}

void sub_1B7ECCC8C()
{
  if (*(v0 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_logarithmic) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount);
    if (v1)
    {
      v2 = v1 - 1;
      if (v2)
      {
        log10(1.0 / v2 * 9.0 + 1.0);
      }
    }
  }
}

void sub_1B7ECCD64()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount);
  if (v1)
  {
    v2 = v1 - 1;
    if (v2)
    {
      log10(1.0 / v2 * 9.0 + 1.0);
    }
  }
}

void sub_1B7ECCDEC(unint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_logarithmic) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount);
    if (v2)
    {
      v3 = v2 - 1;
      if (v3)
      {
        log10(a1 / v3 * 9.0 + 1.0);
      }

      sub_1B7ECCD64();
    }
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong alignmentRectInsets];
      swift_unknownObjectRelease();
    }
  }
}

double sub_1B7ECCF2C(double a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong alignmentRectInsets];
    v5 = v4;
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0.0;
  }

  sub_1B7ECCC8C();
  v7 = *(v1 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth);
  if (*(v1 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_logarithmic) == 1)
  {
    v8 = 0.0;
    if (a1 >= 0.0)
    {
      v9 = a1 * 9.0 + 1.0;
      v10 = v6;
      v8 = log10(v9);
      v6 = v10;
    }
  }

  else
  {
    v8 = a1;
  }

  return v5 + (v6 - v7) * v8;
}

void sub_1B7ECD0CC(double a1)
{
  sub_1B7ECCC8C();
  v4 = v3 - *(v1 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth);
  if (v4 > 0.0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong alignmentRectInsets];
      v7 = v6;
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0.0;
    }

    v8 = OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount;
    v9 = *(v1 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount);
    v10 = v9 - 1;
    if (!v9)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v11 = *(v1 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_logarithmic);
    v12 = CEKClamp((a1 - v7) / v4, 0.0, 1.0);
    if (v11 == 1)
    {
      v12 = (__exp10(v12) + -1.0) / 9.0;
    }

    v13 = *(v1 + v8);
    v14 = v13 != 0;
    v15 = v13 - 1;
    if (!v14)
    {
      goto LABEL_16;
    }

    v16 = CEKClamp(v12 * v10, 0.0, v15);
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v16 <= -1.0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v16 >= 1.84467441e19)
    {
LABEL_19:
      __break(1u);
    }
  }
}

BOOL sub_1B7ECD25C(_BOOL8 result)
{
  if (*(v1 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_endTickMarksProminent) == 1)
  {
    if (!result)
    {
      return 1;
    }

    v2 = result + 1;
    if (__OFADD__(result, 1))
    {
      goto LABEL_17;
    }

    if ((v2 & 0x8000000000000000) == 0 && v2 == *(v1 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount))
    {
      return 1;
    }
  }

  v3 = *(v1 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_mainTickMarkOffset);
  v4 = __OFADD__(result, v3);
  v5 = result + v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_mainTickMarkInterval);
    if (v6)
    {
      if (v5 != 0x8000000000000000 || v6 != -1)
      {
        return v5 % v6 == 0;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

id sub_1B7ECD320()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount] = 0;
  *&v0[OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkSpacing] = 0x402E000000000000;
  *&v0[OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_mainTickMarkInterval] = 3;
  *&v0[OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_mainTickMarkOffset] = 0;
  v0[OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_logarithmic] = 0;
  v0[OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_endTickMarksProminent] = 0;
  v0[OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_useTickMarkLegibilityShadows] = 0;
  *&v0[OBJC_IVAR____TtC13CameraEditKit14TickMarksModel__primaryTickMarkColor] = 0;
  *&v0[OBJC_IVAR____TtC13CameraEditKit14TickMarksModel__secondaryTickMarkColor] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1B7ECD434()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B7ECD4FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void *sub_1B7ECD564(void *a1, void *a2)
{
  v3 = *(v2 + *a2);
  *(v2 + *a2) = a1;
  v4 = a1;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result tickMarksModelDidChangeAppearanceWithModel_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1B7ECD660()
{
  v1 = (v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_latestSample);
  result = 0.0;
  if ((*(v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_latestSample + 24) & 1) == 0)
  {
    v3 = v1[2];
    if (v3 <= 0.0025)
    {
      v3 = 0.0025;
    }

    result = *v1 / v3;
  }

  v4 = (v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_previousSample);
  if ((*(v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_previousSample + 24) & 1) == 0)
  {
    v5 = v4[2];
    if (v5 <= 0.0025)
    {
      v5 = 0.0025;
    }

    return result * 0.2 + *v4 / v5 * 0.8;
  }

  return result;
}

void sub_1B7ECD740(void *a1)
{
  v2 = [a1 _contact];
  if (v2)
  {
    v3 = v2;
    v4 = 0.0;
    if (([v2 touchPositionHints] & 0x18) == 0)
    {
      [v3 positionDelta];
      CEKExpandNormalizedContactPoint(v5, v6);
      v4 = -v7;
    }

    *(v1 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_distanceTraveled) = v4 + *(v1 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_distanceTraveled);
    Current = CFAbsoluteTimeGetCurrent();

    v9 = v1 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_latestSample;
    v10 = *(v1 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_latestSample + 24);
    v11 = v1 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_previousSample;
    v12 = *(v1 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_latestSample + 8);
    *v11 = *(v1 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_latestSample);
    *(v11 + 8) = v12;
    *(v11 + 24) = v10;
    if (v10)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = Current - *&v12;
    }

    *v9 = v4;
    *(v9 + 8) = Current;
    *(v9 + 16) = v13;
    *(v9 + 24) = 0;
  }
}

long double sub_1B7ECD8A8()
{
  v1 = (v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_latestSample);
  v2 = 0.0;
  if ((*(v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_latestSample + 24) & 1) == 0)
  {
    v3 = v1[2];
    if (v3 <= 0.0025)
    {
      v3 = 0.0025;
    }

    v2 = *v1 / v3;
  }

  v4 = (v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_previousSample);
  if ((*(v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_previousSample + 24) & 1) == 0)
  {
    v5 = v4[2];
    if (v5 <= 0.0025)
    {
      v5 = 0.0025;
    }

    v2 = v2 * 0.2 + *v4 / v5 * 0.8;
  }

  return -(v2 * 0.001 - dbl_1B7EDA930[v2 * 0.001 < 0.0]) / log(*MEMORY[0x1E69DE3A0]);
}

id sub_1B7ECDA08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BasicSliderPositionDriver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B7ECDA70()
{
  *(v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_distanceTraveled) = 0;
  *(v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_distanceToDecelerate) = 0;
  v1 = v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_latestSample;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  *(v1 + 24) = 1;
  v2 = v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_previousSample;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 24) = 1;
  Current = CFAbsoluteTimeGetCurrent();
  v4 = *(v1 + 24);
  v5 = *(v1 + 8);
  *v2 = *v1;
  *(v2 + 8) = v5;
  *(v2 + 24) = v4;
  if (v4)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = Current - *&v5;
  }

  *v1 = 0;
  *(v1 + 8) = Current;
  *(v1 + 16) = v6;
  *(v1 + 24) = 0;
}

void sub_1B7ECDB14()
{
  v1 = (v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_latestSample);
  v2 = 0.0;
  if ((*(v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_latestSample + 24) & 1) == 0)
  {
    v3 = v1[2];
    if (v3 <= 0.0025)
    {
      v3 = 0.0025;
    }

    v2 = *v1 / v3;
  }

  v4 = (v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_previousSample);
  if ((*(v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_previousSample + 24) & 1) == 0)
  {
    v5 = v4[2];
    if (v5 <= 0.0025)
    {
      v5 = 0.0025;
    }

    v2 = v2 * 0.2 + *v4 / v5 * 0.8;
  }

  v6 = fabs(v2);
  v7 = 0.0;
  if (v6 > 0.6)
  {
    v7 = sub_1B7ECD8A8();
  }

  *(v0 + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_distanceToDecelerate) = v7;
}

uint64_t sub_1B7ECDBD0(double a1, double a2, double a3)
{
  v7 = v3[2];
  v8 = *(v7 + 16);
  if (v8 >= v3[4])
  {
    v11 = v3[3];
    result = swift_isUniquelyReferenced_nonNull_native();
    v3[2] = v7;
    if (result)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = sub_1B7ED2654(v7);
      v7 = result;
      if ((v11 & 0x8000000000000000) == 0)
      {
LABEL_8:
        if (v11 < *(v7 + 16))
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v3[2] = v7;
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    v8 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      result = sub_1B7ED2330((v10 > 1), v11 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v8;
LABEL_9:
    v12 = (v7 + 24 * v11);
    v12[4] = a1;
    v12[5] = a2;
    v12[6] = a3;
    v3[2] = v7;
    v13 = v3[3];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
      goto LABEL_15;
    }

    v16 = v3[4];
    if (v16)
    {
      break;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    result = sub_1B7ED2330(0, v8 + 1, 1, v7);
    v7 = result;
    v3[2] = result;
  }

  if (v15 != 0x8000000000000000 || v16 != -1)
  {
    v3[3] = v15 % v16;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B7ECDD1C(double a1, double a2, double a3, double a4)
{
  v9 = v4[2];
  v10 = *(v9 + 16);
  if (v10 >= v4[4])
  {
    v13 = v4[3];
    result = swift_isUniquelyReferenced_nonNull_native();
    v4[2] = v9;
    if (result)
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = sub_1B7ED2668(v9);
      v9 = result;
      if ((v13 & 0x8000000000000000) == 0)
      {
LABEL_8:
        if (v13 < *(v9 + 16))
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v4[2] = v9;
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = *(v9 + 16);
    v12 = *(v9 + 24);
    v10 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      result = sub_1B7ED244C((v12 > 1), v13 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v10;
LABEL_9:
    v14 = (v9 + 32 * v13);
    v14[4] = a1;
    v14[5] = a2;
    v14[6] = a3;
    v14[7] = a4;
    v4[2] = v9;
    v15 = v4[3];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      __break(1u);
      goto LABEL_15;
    }

    v18 = v4[4];
    if (v18)
    {
      break;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    result = sub_1B7ED244C(0, v10 + 1, 1, v9);
    v9 = result;
    v4[2] = result;
  }

  if (v17 != 0x8000000000000000 || v18 != -1)
  {
    v4[3] = v17 % v18;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

void (*sub_1B7ECDE80(void (*result)(uint64_t, uint64_t, void, uint64_t)))(uint64_t, uint64_t, void, uint64_t)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *(v1 + 24);
  if (v3 < v4)
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = result;
    v7 = *(v1 + 16);
    v6 = (2 * v4) | 1;
    swift_bridgeObjectRetain_n();
    v5(v2, v2 + 32, 0, v6);

    return v7;
  }

  __break(1u);
  return result;
}

void sub_1B7ECDF44(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = *(v2 + 16);
  if (!v3)
  {
    v11 = 0uLL;
    v12 = 0uLL;
    goto LABEL_10;
  }

  v4 = v1[3];
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v1[4];
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 == -1 && v8 == 0x8000000000000000)
  {
    goto LABEL_15;
  }

  v9 = v8 % v6;
  if (v9 < v3)
  {
    v10 = v2 + 32 * v9;
    v11 = *(v10 + 32);
    v12 = *(v10 + 48);
LABEL_10:
    *a1 = v11;
    *(a1 + 16) = v12;
    *(a1 + 32) = v3 == 0;
    return;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1B7ECDFCC()
{
  sub_1B7ED3D00();
  MEMORY[0x1B8CB3E80](540700732, 0xE400000000000000);
  v0 = sub_1B7ED3C50();
  MEMORY[0x1B8CB3E80](v0);

  MEMORY[0x1B8CB3E80](0x203A5064203BLL, 0xE600000000000000);
  v1 = sub_1B7ED3C50();
  MEMORY[0x1B8CB3E80](v1);

  MEMORY[0x1B8CB3E80](0x203A5464203BLL, 0xE600000000000000);
  sub_1B7ED3C60();
  MEMORY[0x1B8CB3E80](0x203A76203BLL, 0xE500000000000000);
  v2 = sub_1B7ED3C50();
  MEMORY[0x1B8CB3E80](v2);

  MEMORY[0x1B8CB3E80](62, 0xE100000000000000);
  return 0;
}

void sub_1B7ECE1A0(void *a1)
{
  v2 = [a1 _contact];
  if (v2)
  {
    v13 = v2;
    [v2 position];
    v5 = CEKExpandNormalizedContactPoint(v3, v4);
    v7 = -v6;
    [a1 _timestamp];
    v9 = v8;
    sub_1B7ECDF44(v14);
    if (v16)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v9 - v15;
    }

    sub_1B7ECDD1C(v7, 0.0, v9, v10);
    if (qword_1EBA647C0 != -1)
    {
      swift_once();
    }

    v11 = sub_1B7ED3BC0();
    __swift_project_value_buffer(v11, qword_1EBA64ED8);
    [a1 _timestamp];
    sub_1B7ECA040(v12, 0, 0, 0);
  }
}

void sub_1B7ECE358(void *a1)
{
  v3 = [a1 _contact];
  if (!v3)
  {
    return;
  }

  v33 = v3;
  v4 = 0.0;
  if (([v3 touchPositionHints] & 0x18) == 0)
  {
    [v33 positionDelta];
    CEKExpandNormalizedContactPoint(v5, v6);
    v4 = -v7;
  }

  if (qword_1EBA647A8 != -1)
  {
    swift_once();
  }

  v8 = v4 * *&qword_1EBA64EC0;
  [a1 _timestamp];
  v10 = v9;
  v11 = OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_distanceTraveled;
  *(v1 + OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_distanceTraveled) = v8 + *(v1 + OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_distanceTraveled);
  if (qword_1EBA647C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1B7ED3BC0();
  __swift_project_value_buffer(v12, qword_1EBA64ED8);
  sub_1B7ECA040(*&v10, *&v8, 0, 1u);
  if (*(v1 + v11) == 0.0)
  {
    goto LABEL_29;
  }

  sub_1B7ECDF44(v34);
  if (v35)
  {
    goto LABEL_29;
  }

  v13 = *&v34[2];
  v14 = *v34;
  [v33 position];
  CEKExpandNormalizedContactPoint(v15, v16);
  v18 = -v17;
  sub_1B7ECEB44();
  v20 = v19;
  v21 = v1 + OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_deadZoneSample;
  v22 = *(v1 + OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_deadZoneSample + 32);
  if (([v33 touchPositionHints] & 0x18) != 0 || !(((objc_msgSend(v33, sel_touchPositionHints) & 4) == 0) | v22 & 1))
  {
    sub_1B7ECEA20();
    v26 = 0.0;
  }

  else
  {
    v23 = v18 - v14;
    v24 = (([v33 touchPositionHints] & 4) != 0) & v22;
    v25 = (v10 - v13) * v20;
    if (fabs(v25) >= fabs(v23))
    {
      v25 = v23;
    }

    if (v24 == 1)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }
  }

  sub_1B7ECDF44(v36);
  if (v38)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v10 - v37;
  }

  sub_1B7ECDD1C(v18, v26, v10, v27);
  v28 = 0.00001;
  if (v27 > 0.00001)
  {
    v28 = v27;
  }

  v29 = v26 / v28;
  if (fabs(v29) < 50.0 || v20 * v29 < 0.0 || [a1 _stage] == 4)
  {
    if (v22)
    {
      *v21 = v18;
      *(v21 + 8) = v26;
      *(v21 + 16) = v10;
      *(v21 + 24) = v27;
      *(v21 + 32) = 0;
      sub_1B7ECEA20();
    }

    goto LABEL_29;
  }

  if (v22)
  {
LABEL_29:

    return;
  }

  v30 = *v21;
  v31 = *(v21 + 16);
  v32 = *(v21 + 32);

  if ((v32 & 1) == 0 && v10 - v31 > 0.05 && vabdd_f64(v18, v30) > 10.0)
  {
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 1;
  }
}

uint64_t sub_1B7ECE734(void *a1)
{
  v3 = sub_1B7ED3BC0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 _contact];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 touchPositionHints];
    v10 = (v9 & 8) == 0 && (v9 & 0x10) == 0;
  }

  else
  {
    v10 = 0;
  }

  sub_1B7ECEB44();
  v12 = 0.0;
  if (v10 && fabs(v11) > 0.6 && *(v1 + OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_deadZoneSample + 32) == 1)
  {
    v13 = log(*MEMORY[0x1E69DE3A0]);
    sub_1B7ECEB44();
    v15 = -(v14 * 0.001 - dbl_1B7EDA930[v14 * 0.001 < 0.0]) / v13;
    if (qword_1EBA647B0 != -1)
    {
      swift_once();
    }

    v12 = v15 * *&qword_1EBA64EC8;
  }

  v16 = OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_distanceToDecelerate;
  *(v1 + OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_distanceToDecelerate) = v12;
  if (qword_1EBA647C0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_1EBA64ED8);
  (*(v4 + 16))(v6, v17, v3);
  if (a1)
  {
    [a1 _timestamp];
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  sub_1B7ECA040(v19, a1 == 0, *(v1 + v16), 2u);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B7ECEA20()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_samples);
  sub_1B7ECDE80(sub_1B7ED0764);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    result = sub_1B7ED0B2C(0, *(v9 + 16), sub_1B7ED244C, sub_1B7ED0A84);
  }

  else
  {
    *(v1 + 16) = sub_1B7ECEF8C(0, *(v9 + 24) >> 1);
  }

  *(v1 + 24) = 0;
  v11 = __OFSUB__(v7 >> 1, v5);
  v12 = (v7 >> 1) - v5;
  if (v12)
  {
    if ((v12 < 0) ^ v11 | (v12 == 0))
    {
      __break(1u);
      return result;
    }

    v13 = (v3 + 32 * v5 + 24);
    do
    {
      sub_1B7ECDD1C(*(v13 - 3), 0.0, *(v13 - 1), *v13);
      v13 += 4;
      --v12;
    }

    while (v12);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1B7ECEB44()
{
  result = sub_1B7ECDE80(sub_1B7ED0764);
  v4 = v2;
  v5 = v3 >> 1;
  v6 = 0.0;
  v7 = (v3 >> 1) - v2;
  if (v3 >> 1 == v2)
  {
    goto LABEL_16;
  }

  if ((v3 >> 1) <= v2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v7 <= 1)
  {
    v8 = v2;
LABEL_12:
    v13 = v5 - v8;
    v14 = (v1 + 32 * v8 + 24);
    do
    {
      v15 = *(v14 - 2);
      v16 = *v14;
      v14 += 4;
      v17 = v16;
      if (v16 <= 0.00001)
      {
        v17 = 0.00001;
      }

      v6 = v6 + v15 / v17;
      --v13;
    }

    while (v13);
    goto LABEL_16;
  }

  v8 = v2 + (v7 & 0xFFFFFFFFFFFFFFFELL);
  v9 = (v1 + 32 * v2 + 40);
  v10 = v7 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v11 = *(v9 - 2);
    v12 = v9[2];
    if (v11 <= 0.00001)
    {
      v11 = 0.00001;
    }

    if (v12 <= 0.00001)
    {
      v12 = 0.00001;
    }

    v6 = v6 + *(v9 - 4) / v11 + *v9 / v12;
    v9 += 8;
    v10 -= 2;
  }

  while (v10);
  if (v7 != (v7 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_12;
  }

LABEL_16:
  result = swift_unknownObjectRelease();
  if (__OFSUB__(v5, v4))
  {
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

double sub_1B7ECEC60()
{
  *(v0 + OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_distanceTraveled) = 0;
  *(v0 + OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_distanceToDecelerate) = 0;
  v1 = *(v0 + OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_samples);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_1B7ED0B2C(0, *(v3 + 16), sub_1B7ED244C, sub_1B7ED0A84);
  }

  else
  {
    *(v1 + 16) = sub_1B7ECEF8C(0, *(v3 + 24) >> 1);
  }

  *(v1 + 24) = 0;
  v4 = v0 + OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_deadZoneSample;
  result = 0.0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  return result;
}

id sub_1B7ECED34()
{
  *&v0[OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_distanceTraveled] = 0;
  *&v0[OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_distanceToDecelerate] = 0;
  v1 = OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_samples;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64BB0);
  v2 = swift_allocObject();
  *(v2 + 24) = xmmword_1B7EDA9D0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = sub_1B7ED244C(0, 6, 0, v3);
  *&v0[v1] = v2;
  v4 = &v0[OBJC_IVAR____TtC13CameraEditKit32ContactAwareSliderPositionDriver_deadZoneSample];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ContactAwareSliderPositionDriver();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1B7ECEE2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactAwareSliderPositionDriver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B7ECEEA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7ECEEC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void *sub_1B7ECEEFC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64A50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1B7ECEF8C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64BA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_1B7ECF010(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_1B7ED3D80();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 24 * v6 + 24 * v7 != v9 + 24 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_1B7ECEEFC(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + 24 * v14), 24 * (v4 - v14));
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 24 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B7ECF198(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_1B7ED3D80();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 32 * v6 + 32 * v7 != v9 + 32 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_1B7ECEF8C(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + 32 * v14), 32 * (v4 - v14));
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 32 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B7ECF310(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_35;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v30 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v30)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v30 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v30)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v37 = v16;
  v17 = (v10 + 32);
  v18 = v10 + 32 + 24 * a2;
  __dst = (v18 + 24 * a3);
  result = sub_1B7ECFBF0(result);
  if (result)
  {
    v19 = result;
    v35 = v10;
    v20 = v4[2];
    v21 = (v4[1] + 24 * v20);
    v22 = &v21[24 * a2];
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 24 * a2);
    }

    a4(v18, a3);
    v24 = &v22[24 * v37];
    if (__dst != v24 || __dst >= &v24[24 * v14])
    {
      memmove(__dst, v24, 24 * v14);
    }

    *(v19 + 16) = 0;

    v10 = v35;
  }

  else
  {
    v20 = v4[2];
    v26 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v26 < v20)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (__OFSUB__(v26, v20))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v27 = v4[1];
    memcpy((v10 + 32), (v27 + 24 * v20), 24 * a2);
    result = (a4)(&v17[24 * a2], a3);
    v28 = v26 + v37;
    if (__OFADD__(v26, v37))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v29 = v4[3] >> 1;
    v30 = __OFSUB__(v29, v28);
    v31 = v29 < v28;
    v32 = v29 - v28;
    if (v31)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v30)
    {
LABEL_48:
      __break(1u);
      return result;
    }

    memcpy(__dst, (v27 + 24 * v28), 24 * v32);
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_39;
  }

  v33 = *(v10 + 16);
  v30 = __OFADD__(v20, v33);
  v34 = v20 + v33;
  if (v30)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v34 < v20)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v34 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *v4 = v10;
  v4[1] = &v17[-24 * v20];
  v4[2] = v20;
  v4[3] = (2 * v34) | 1;
}

uint64_t sub_1B7ECF558(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v30 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v30)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v38 = v16;
  v18 = (v10 + 32);
  v19 = v10 + 32 + 32 * a2;
  v36 = v10;
  v37 = (v19 + 32 * a3);
  result = sub_1B7ECFD6C(result);
  if (result)
  {
    v20 = result;
    v35 = a4;
    v21 = v4[2];
    v22 = (v4[1] + 32 * v21);
    v23 = &v22[32 * a2];
    if (v18 != v22 || v18 >= v23)
    {
      memmove(v18, v22, 32 * a2);
    }

    v35(v19, a3);
    v24 = &v23[32 * v38];
    if (v37 != v24 || v37 >= &v24[32 * v14])
    {
      memmove(v37, v24, 32 * v14);
    }

    *(v20 + 16) = 0;
  }

  else
  {
    v21 = v4[2];
    v26 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v26 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v27 = v4[1];
    memcpy(v18, (v27 + 32 * v21), 32 * a2);
    result = (a4)(&v18[32 * a2], a3);
    v28 = v26 + v38;
    if (__OFADD__(v26, v38))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v29 = v4[3] >> 1;
    v30 = __OFSUB__(v29, v28);
    v31 = v29 < v28;
    v32 = v29 - v28;
    if (v31)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v30)
    {
LABEL_45:
      __break(1u);
      return result;
    }

    memcpy(v37, (v27 + 32 * v28), 32 * v32);
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  result = v36;
  v33 = *(v36 + 16);
  v30 = __OFADD__(v21, v33);
  v34 = v21 + v33;
  if (v30)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v34 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v34 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v36;
  v4[1] = &v18[-32 * v21];
  v4[2] = v21;
  v4[3] = (2 * v34) | 1;
}

uint64_t sub_1B7ECF78C(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_1B7ED3D80();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_1B7ECF844(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1B7ED3D80();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 24 * a5 + 24 * v8;
  if (v13 == v11 + 24 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 24 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 24 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_1B7ECEEFC(v6, v25);
}

void *sub_1B7ECFA10(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1B7ED3D80();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 32 * a5 + 32 * v8;
  if (v13 == v11 + 32 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 32 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 32 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_1B7ECEF8C(v6, v25);
}

uint64_t sub_1B7ECFBF0(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v1[1];
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1B7ED3D80();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 24 * v6 + 24 * v7 != v9 + 24 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_1B7ED3D80();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v15 = (v8 + 24 * v6 - result - 32) / 24;
  v14 = __OFADD__(v7, v15);
  v5 = v7 + v15;
  if (v14)
  {
    goto LABEL_18;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_19:
    v16 = result;
    sub_1B7ED09A0(v5, v4, 0);
    return v16;
  }

  return result;
}

uint64_t sub_1B7ECFD6C(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[1] + 32 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1B7ED3D80();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 32 * v7 != v9 + 32 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_1B7ED3D80();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v15 = v8 - result - 1;
  if (v8 - result - 32 >= 0)
  {
    v15 = v8 - result - 32;
  }

  v14 = __OFADD__(v7, v15 >> 5);
  v5 = v7 + (v15 >> 5);
  if (v14)
  {
    goto LABEL_20;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_21:
    v16 = result;
    sub_1B7ED0A84(v5, v4, 0);
    return v16;
  }

  return result;
}

void *sub_1B7ECFECC(void *result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    goto LABEL_52;
  }

  v5 = result[4];
  v35 = result[3] >> 1;
  if (v5 != v35)
  {
    v34 = result[2];
    if (v5 < v34 || v5 >= v35)
    {
      goto LABEL_53;
    }

    v7 = result[1];
    v8 = v5 + 1;
    v9 = (v7 + 24 * v5);
    v10 = *(v9 + 2);
    v11 = *v9;
    v33 = v7 + 16;
    while (!__OFADD__(v4, 1))
    {
      v37 = v11;
      v39 = sub_1B7ECF844(v4, v4 + 1, *v1, v1[1], v3, v2);
      v13 = sub_1B7ECFBD0();
      sub_1B7ECF310(&v39, v4, 0, v13);

      v3 = v1[2];
      v2 = v1[3];
      v14 = (v2 >> 1) - v3;
      if (__OFSUB__(v2 >> 1, v3))
      {
        goto LABEL_46;
      }

      v15 = v1[1];
      v36 = v2 >> 1;
      if (v2)
      {
        sub_1B7ED3D80();
        swift_unknownObjectRetain();
        v16 = swift_dynamicCastClass();
        if (!v16)
        {
          swift_unknownObjectRelease();
          v16 = MEMORY[0x1E69E7CC0];
        }

        v17 = *(v16 + 16);
        if (v15 + 24 * v3 + 24 * v14 == v16 + 24 * v17 + 32)
        {
          v19 = *(v16 + 24);

          v20 = (v19 >> 1) - v17;
          v21 = __OFADD__(v14, v20);
          v18 = v14 + v20;
          if (v21)
          {
            goto LABEL_51;
          }
        }

        else
        {

          v18 = (v2 >> 1) - v3;
        }
      }

      else
      {
        v18 = (v2 >> 1) - v3;
      }

      v11 = v37;
      if (v4 >= v18)
      {
        v12 = 0;
        v24 = v4 - v14;
        if (__OFSUB__(v4, v14))
        {
          goto LABEL_47;
        }
      }

      else
      {
        v22 = v15 + 24 * v3 + 24 * v4;
        *v22 = v37;
        *(v22 + 16) = v10;
        v23 = v4 + 1;
        if (v8 == v35)
        {
          v10 = 0;
          v11 = 0uLL;
          v12 = 1;
          v8 = v35;
          ++v4;
          v24 = v23 - v14;
          if (__OFSUB__(v23, v14))
          {
            goto LABEL_47;
          }
        }

        else
        {
          v25 = 0;
          v26 = (v15 + 24 * v3 + 24 * v4 + 40);
          v27 = (v33 + 24 * v8);
          while (1)
          {
            if (v8 < v34 || (v28 = v25, v8 + v25 >= v35))
            {
              __break(1u);
              goto LABEL_45;
            }

            v10 = *v27;
            v11 = *(v27 - 1);
            if (!(v23 - v18 + v25))
            {
              break;
            }

            *(v26 - 1) = v11;
            *v26 = v10;
            v26 += 3;
            ++v25;
            v27 += 3;
            if (!(v8 - v35 + v28 + 1))
            {
              v10 = 0;
              v4 = v23 + v25;
              v11 = 0uLL;
              v8 = v35;
              goto LABEL_35;
            }
          }

          v8 += v25 + 1;
          v4 = v18;
LABEL_35:
          v12 = v23 + v28 < v18;
          v24 = v4 - v14;
          if (__OFSUB__(v4, v14))
          {
            goto LABEL_47;
          }
        }
      }

      if (v24)
      {
        v29 = v12;
        v38 = v11;
        sub_1B7ED3D80();
        swift_unknownObjectRetain();
        result = swift_dynamicCastClass();
        if (!result)
        {
          swift_unknownObjectRelease();
          result = MEMORY[0x1E69E7CC0];
        }

        v30 = result[2];
        v21 = __OFADD__(v30, v24);
        v31 = v30 + v24;
        if (v21)
        {
          goto LABEL_48;
        }

        result[2] = v31;

        v32 = v36 + v24;
        if (__OFADD__(v36, v24))
        {
          goto LABEL_49;
        }

        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        v2 = v2 & 1 | (2 * v32);
        v1[3] = v2;
        v11 = v38;
        v12 = v29;
      }

      if (v12)
      {
        return result;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  return result;
}

void *sub_1B7ED0214(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = result;
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  sub_1B7ED3D80();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);
  if (v12 + 24 * v8 + 24 * v9 != v13 + 24 * v14 + 32)
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < result)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = 2 * v15;
    if (v19 > result)
    {
      result = v19;
    }
  }

  result = sub_1B7ECF010(result);
  v21 = v4[2];
  v20 = v4[3];
  v22 = (v20 >> 1) - v21;
  if (__OFSUB__(v20 >> 1, v21))
  {
    goto LABEL_37;
  }

  v23 = (v4[1] + 24 * v21 + 24 * v22);
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v26 = v22;
    goto LABEL_23;
  }

  sub_1B7ED3D80();
  swift_unknownObjectRetain();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);
  if (v23 != (v24 + 24 * v25 + 32))
  {

    goto LABEL_21;
  }

  v27 = *(v24 + 24);

  v28 = (v27 >> 1) - v25;
  v18 = __OFADD__(v22, v28);
  v26 = v22 + v28;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v29 = v26 - v22;
  if (__OFSUB__(v26, v22))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v29 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = memcpy(v23, (a2 + 24 * a3), 24 * v6);
  if (v6 > 0)
  {
    result = (v22 + v6);
    if (__OFADD__(v22, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_1B7ECF78C(result);
  }

LABEL_31:
  if (v6 == v29)
  {
    v32[0] = v30;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = v5;
    return sub_1B7ECFECC(v32);
  }

  return result;
}

void *sub_1B7ED0464(void *result)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    goto LABEL_49;
  }

  v5 = result[4];
  v6 = result[3] >> 1;
  if (v5 == v6)
  {
    return result;
  }

  if (v5 < result[2] || v5 >= v6)
  {
    goto LABEL_50;
  }

  v8 = v1;
  v37 = result[2];
  v38 = result[3] >> 1;
  v9 = v5 + 1;
  v10 = (result[1] + 32 * v5);
  v11 = v10[1];
  v39 = *v10;
  v35 = -v6;
  v36 = result[1];
  while (!__OFADD__(v4, 1))
  {
    v42 = v11;
    v44 = sub_1B7ECFA10(v4, v4 + 1, *v8, v8[1], v3, v2);
    v12 = sub_1B7ECFBD0();
    v13 = v8;
    sub_1B7ECF558(&v44, v4, 0, v12);

    v3 = v8[2];
    v14 = v8[3];
    v15 = (v14 >> 1) - v3;
    if (__OFSUB__(v14 >> 1, v3))
    {
      goto LABEL_44;
    }

    v40 = v14 >> 1;
    v41 = v8[3];
    v16 = v8[1];
    v17 = v16 + 32 * v3;
    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_1B7ED3D80();
    swift_unknownObjectRetain();
    v18 = swift_dynamicCastClass();
    if (!v18)
    {
      swift_unknownObjectRelease();
      v18 = MEMORY[0x1E69E7CC0];
    }

    v19 = *(v18 + 16);
    if (v17 + 32 * v15 != v18 + 32 * v19 + 32)
    {

LABEL_19:
      v20 = v15;
      goto LABEL_22;
    }

    v21 = *(v18 + 24);

    v22 = (v21 >> 1) - v19;
    v23 = __OFADD__(v15, v22);
    v20 = v15 + v22;
    if (v23)
    {
      goto LABEL_48;
    }

    v8 = v13;
LABEL_22:
    v11 = v42;
    if (v4 >= v20)
    {
      v25 = 0;
    }

    else
    {
      v24 = (v17 + 32 * v4);
      *v24 = v39;
      v24[1] = v42;
      v39 = 0u;
      if (v9 != v38)
      {
        v26 = 0;
        while (v9 >= v37 && v9 + v26 < v38)
        {
          v27 = (v36 + 32 * v9 + 32 * v26);
          v28 = *v27;
          v11 = v27[1];
          if (!(v4 - v20 + 1 + v26))
          {
            v25 = 0;
            v9 += v26 + 1;
            v4 = v20;
            v39 = *v27;
            goto LABEL_34;
          }

          v29 = (v16 + 32 * v4 + 32 * v3 + 32 + 32 * v26);
          *v29 = v28;
          v29[1] = v11;
          ++v26;
          if (!(v35 + v9 + v26))
          {
            v30 = v4 + v26;
            v25 = v30 < v20;
            v4 = v30 + 1;
            goto LABEL_32;
          }
        }

        goto LABEL_42;
      }

      ++v4;
      v25 = 1;
LABEL_32:
      v9 = v38;
      v11 = 0uLL;
    }

LABEL_34:
    v23 = __OFSUB__(v4, v15);
    v31 = v4 - v15;
    v2 = v41;
    if (v23)
    {
      goto LABEL_45;
    }

    if (v31)
    {
      v43 = v11;
      sub_1B7ED3D80();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x1E69E7CC0];
      }

      v32 = result[2];
      v23 = __OFADD__(v32, v31);
      v33 = v32 + v31;
      if (v23)
      {
        goto LABEL_46;
      }

      result[2] = v33;

      v34 = v40 + v31;
      if (__OFADD__(v40, v31))
      {
        goto LABEL_47;
      }

      if ((v34 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v2 = v41 & 1 | (2 * v34);
      v8[3] = v2;
      v11 = v43;
    }

    if (v25)
    {
      return result;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void *sub_1B7ED0764(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = result;
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  sub_1B7ED3D80();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);
  if (v12 + 32 * v8 + 32 * v9 != v13 + 32 * v14 + 32)
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < result)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = 2 * v15;
    if (v19 > result)
    {
      result = v19;
    }
  }

  result = sub_1B7ECF198(result);
  v21 = v4[2];
  v20 = v4[3];
  v22 = (v20 >> 1) - v21;
  if (__OFSUB__(v20 >> 1, v21))
  {
    goto LABEL_37;
  }

  v23 = (v4[1] + 32 * v21 + 32 * v22);
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v26 = v22;
    goto LABEL_23;
  }

  sub_1B7ED3D80();
  swift_unknownObjectRetain();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);
  if (v23 != (v24 + 32 * v25 + 32))
  {

    goto LABEL_21;
  }

  v27 = *(v24 + 24);

  v28 = (v27 >> 1) - v25;
  v18 = __OFADD__(v22, v28);
  v26 = v22 + v28;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v29 = v26 - v22;
  if (__OFSUB__(v26, v22))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v29 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = memcpy(v23, (a2 + 32 * a3), 32 * v6);
  if (v6 > 0)
  {
    result = (v22 + v6);
    if (__OFADD__(v22, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_1B7ECF78C(result);
  }

LABEL_31:
  if (v6 == v29)
  {
    v32[0] = v30;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = v5;
    return sub_1B7ED0464(v32);
  }

  return result;
}

unint64_t sub_1B7ED09A0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B7ED0A84(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 32 * result + 32 * a3;
  v10 = (v6 + 32 + 32 * a2);
  if (result != v10 || result >= v10 + 32 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 32 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7ED0B2C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

void sub_1B7ED0CB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CameraEditKit24TickMarksVisibilityModel_model);
  v2 = OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount;
  if (!*(v1 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount))
  {
    return;
  }

  v3 = OBJC_IVAR____TtC13CameraEditKit24TickMarksVisibilityModel_overlappingSections;
  swift_beginAccess();
  *(v0 + v3) = MEMORY[0x1E69E7CD0];

  v4 = OBJC_IVAR____TtC13CameraEditKit24TickMarksVisibilityModel_visibleSectionIndices;
  swift_beginAccess();
  *(v0 + v4) = MEMORY[0x1E69E7CC8];

  v5 = *(v1 + v2);
  v6 = v5 - 1;
  if (v5 == 1)
  {
    return;
  }

  if (!v5)
  {
    goto LABEL_61;
  }

  v7 = 0;
  v44 = 0;
  v8 = 0;
  v9 = OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_endTickMarksProminent;
  v10 = OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_mainTickMarkOffset;
  v11 = OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_mainTickMarkInterval;
  v49 = OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_logarithmic;
  v48 = OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkSpacing;
  v12 = 1;
  v46 = OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_mainTickMarkInterval;
  v47 = OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth;
  v45 = OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_mainTickMarkOffset;
LABEL_5:
  v13 = v8;
  v14 = v8;
  v8 = v12;
  while ((v8 & 0x8000000000000000) == 0)
  {
    if (*(v1 + v9) == 1)
    {
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v8 + 1 == *(v1 + v2))
      {
LABEL_45:
        if (v7)
        {
          if (v8 < v44)
          {
            goto LABEL_62;
          }

          swift_beginAccess();
          sub_1B7ED2740(&v50, v44, v8);
          swift_endAccess();
          v10 = v45;
          v11 = v46;
          if (v6 == v8)
          {
            return;
          }
        }

        else if (v6 == v8)
        {
          return;
        }

        v7 = 0;
        v44 = v8;
LABEL_53:
        v12 = v8 + 1;
        if (v8 + 1 < v5)
        {
          goto LABEL_5;
        }

LABEL_54:
        __break(1u);
        return;
      }
    }

    v15 = *(v1 + v10);
    v16 = __OFADD__(v8, v15);
    v17 = v8 + v15;
    if (v16)
    {
      goto LABEL_57;
    }

    v18 = *(v1 + v11);
    if (!v18)
    {
      goto LABEL_58;
    }

    if (v17 == 0x8000000000000000 && v18 == -1)
    {
      goto LABEL_60;
    }

    if (!(v17 % v18))
    {
      goto LABEL_45;
    }

    if (v13 != v8)
    {
      if (v13 >= v8)
      {
        goto LABEL_49;
      }

      if (*(v1 + v49) == 1)
      {
        v20 = *(v1 + v2);
        if (!v20)
        {
          v32 = *(v1 + v47) + 0.0;
LABEL_29:
          if (v32 + 0.6666667 < 0.0)
          {
            goto LABEL_49;
          }

          goto LABEL_42;
        }

        v21 = v20 - 1;
        if (v21)
        {
          v22 = v21;
          v23 = log10(v14 / v21 * 9.0 + 1.0);
          v24 = *(v1 + v48);
          v25 = log10(1.0 / v22 * 9.0 + 1.0);
          v11 = v46;
          v26 = v24 / v25;
          v27 = *(v1 + v47);
          v28 = v26 + v27;
        }

        else
        {
          v28 = *(v1 + v47);
          v23 = 0.0;
          v27 = v28;
        }

        v32 = v23 * (v28 - v27) + v27;
        v33 = *(v1 + v2);
        if (!v33)
        {
          goto LABEL_29;
        }

LABEL_35:
        v37 = v33 - 1;
        if (v37)
        {
          v38 = v37;
          v39 = log10(v8 / v37 * 9.0 + 1.0);
          v40 = *(v1 + v48);
          v41 = log10(1.0 / v38 * 9.0 + 1.0);
          v11 = v46;
          v42 = v27 + v40 / v41;
        }

        else
        {
          v39 = 0.0;
          v42 = v27;
        }

        v43 = (v42 - v27) * v39;
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong alignmentRectInsets];
          v31 = v30;
          swift_unknownObjectRelease();
        }

        else
        {
          v31 = 0.0;
        }

        v27 = *(v1 + v47);
        v32 = v31 + *(v1 + v48) * v14 + v27;
        if (*(v1 + v49))
        {
          v10 = v45;
          v11 = v46;
          v33 = *(v1 + v2);
          if (!v33)
          {
            goto LABEL_29;
          }

          goto LABEL_35;
        }

        v34 = swift_unknownObjectWeakLoadStrong();
        if (v34)
        {
          [v34 alignmentRectInsets];
          v36 = v35;
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0.0;
        }

        v11 = v46;
        v43 = v36 + *(v1 + v48) * v8;
        v10 = v45;
      }

      if (v43 > v32 + 0.6666667)
      {
LABEL_49:
        if (v6 == v8)
        {
          return;
        }

        goto LABEL_53;
      }
    }

LABEL_42:
    if (v6 == v8)
    {
      return;
    }

    ++v8;
    v7 = 1;
    if (v8 >= v5)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

uint64_t sub_1B7ED1158(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13CameraEditKit24TickMarksVisibilityModel_needsRebuild;
  if (*(v1 + OBJC_IVAR____TtC13CameraEditKit24TickMarksVisibilityModel_needsRebuild) == 1)
  {
    sub_1B7ED0CB8();
    *(v1 + v4) = 0;
  }

  v5 = OBJC_IVAR____TtC13CameraEditKit24TickMarksVisibilityModel_overlappingSections;
  result = swift_beginAccess();
  v7 = 0;
  v8 = *(v2 + v5);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = v7;
LABEL_12:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = (*(v8 + 48) + ((v13 << 10) | (16 * v14)));
    v16 = *v15;
    v17 = v15[1];
    if (*v15 <= a1 && v17 > a1)
    {
      if (v16 == a1)
      {
        return 0;
      }

      v19 = OBJC_IVAR____TtC13CameraEditKit24TickMarksVisibilityModel_visibleSectionIndices;
      swift_beginAccess();
      v20 = *(v2 + v19);
      if (*(v20 + 16) && (v21 = sub_1B7ED2690(v16), (v22 & 1) != 0))
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        swift_endAccess();
        v24 = *(v23 + 16);
        v25 = (v23 + 32);
        do
        {
          result = v24 == 0;
          if (!v24)
          {
            break;
          }

          v26 = *v25++;
          --v24;
        }

        while (v26 != a1);
      }

      else
      {
        swift_endAccess();
        sub_1B7ED1440(v16, v17);
        if (v16)
        {
          sub_1B7ED1C20(v16, v17, v27);
          v29 = v28;
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = *(v2 + v19);
          *(v2 + v19) = 0x8000000000000000;
          sub_1B7ED322C(v29, v16, isUniquelyReferenced_nonNull_native);
          *(v2 + v19) = v42;
          swift_endAccess();
          v31 = *(v29 + 16);
          v32 = 32;
          do
          {
            v33 = v31 == 0;
            if (!v31)
            {
              break;
            }

            v34 = *(v29 + v32);
            v32 += 8;
            --v31;
          }

          while (v34 != a1);
        }

        else
        {
          v35 = sub_1B7ED17E0(0, v17);
          swift_beginAccess();

          v36 = swift_isUniquelyReferenced_nonNull_native();
          v43 = *(v2 + v19);
          *(v2 + v19) = 0x8000000000000000;
          sub_1B7ED322C(v35, 0, v36);
          *(v2 + v19) = v43;
          swift_endAccess();
          v37 = *(v35 + 16);
          v38 = 32;
          do
          {
            v39 = v37-- != 0;
            v33 = v39;
            if (!v39)
            {
              break;
            }

            v40 = *(v35 + v38);
            v38 += 8;
          }

          while (v40 != a1);
        }

        v41 = v33;

        return v41;
      }

      return result;
    }
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      return 0;
    }

    v11 = *(v8 + 56 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1B7ED1440(unint64_t a1, unint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = a1;
  if (a2 < a1)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v5 = 0;
  v6 = OBJC_IVAR____TtC13CameraEditKit24TickMarksVisibilityModel_model;
  v7 = a1;
  v35 = v2;
  do
  {
    if (v4 >= a2)
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v4 == v7)
    {
      goto LABEL_5;
    }

    if (!v4 || v7 >= v4)
    {
LABEL_4:
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_42;
      }

LABEL_5:
      v7 = v4;
      goto LABEL_6;
    }

    v9 = *(v2 + v6);
    v10 = OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_logarithmic;
    if (*(v9 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_logarithmic) == 1)
    {
      v11 = *(v9 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount);
      if (v11)
      {
        v12 = v11 - 1;
        if (v12)
        {
          v13 = v12;
          v14 = log10(v7 / v12 * 9.0 + 1.0);
          v15 = *(v9 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkSpacing);
          v16 = log10(1.0 / v13 * 9.0 + 1.0);
          v17 = *(v9 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth);
          v18 = v15 / v16 + v17;
        }

        else
        {
          v18 = *(v9 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth);
          v14 = 0.0;
          v17 = v18;
        }

        v22 = v14 * (v18 - v17);
      }

      else
      {
        v22 = 0.0;
      }

      v23 = *(v9 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth);
      v24 = v22 + v23;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong alignmentRectInsets];
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0.0;
      }

      v23 = *(v9 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth);
      v24 = v21 + *(v9 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkSpacing) * v7 + v23;
      if ((*(v9 + v10) & 1) == 0)
      {
        v25 = swift_unknownObjectWeakLoadStrong();
        if (v25)
        {
          [v25 alignmentRectInsets];
          v27 = v26;
          swift_unknownObjectRelease();
        }

        else
        {
          v27 = 0.0;
        }

        v34 = v27 + *(v9 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkSpacing) * v4;
        v2 = v35;
        goto LABEL_35;
      }

      v2 = v35;
    }

    v28 = *(v9 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount);
    if (!v28)
    {
      if (v24 + 0.6666667 < 0.0)
      {
        goto LABEL_4;
      }

      goto LABEL_6;
    }

    v29 = v28 - 1;
    if (v29)
    {
      v30 = v29;
      v31 = log10(v4 / v29 * 9.0 + 1.0);
      v32 = *(v9 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkSpacing);
      v33 = v23 + v32 / log10(1.0 / v30 * 9.0 + 1.0);
    }

    else
    {
      v31 = 0.0;
      v33 = v23;
    }

    v34 = (v33 - v23) * v31;
LABEL_35:
    if (v34 > v24 + 0.6666667)
    {
      goto LABEL_4;
    }

LABEL_6:
    ++v4;
  }

  while (a2 != v4);
  if (v7 != a2 && v7 < a2)
  {
    sub_1B7ECCDEC(v7);
    sub_1B7ECCDEC(a2);
  }
}

unint64_t sub_1B7ED17E0(unint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = (a2 - result) < 0;
  if (a2 < result)
  {
    v4 = (result - a2) < 0;
    if ((result - a2) >= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    __break(1u);
  }

  if (v4)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (a2 == result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a2 - 1;
  if (!a2)
  {
    goto LABEL_54;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    return result;
  }

  v41 = MEMORY[0x1E69E7CC0];
  if (v5 <= result)
  {
    goto LABEL_50;
  }

  if (a2 == 1)
  {
    goto LABEL_50;
  }

  v6 = a2 - 2;
  if (a2 - 2 < result)
  {
    goto LABEL_50;
  }

  v41 = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtC13CameraEditKit24TickMarksVisibilityModel_model;
  do
  {
    v8 = v5;
    v9 = v6;
    while (1)
    {
      if (v5 == v9)
      {
        goto LABEL_40;
      }

      if (v9 >= v5)
      {
        goto LABEL_43;
      }

      v10 = *(v2 + v7);
      v11 = OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_logarithmic;
      if (*(v10 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_logarithmic) != 1)
      {
        break;
      }

      v12 = *(v10 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount);
      if (v12)
      {
        v13 = v12 - 1;
        if (v13)
        {
          v14 = v13;
          v15 = log10(v9 / v13 * 9.0 + 1.0);
          v16 = *(v10 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkSpacing);
          v17 = log10(1.0 / v14 * 9.0 + 1.0);
          v18 = *(v10 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth);
          v19 = v16 / v17 + v18;
        }

        else
        {
          v19 = *(v10 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth);
          v15 = 0.0;
          v18 = v19;
        }

        v23 = v15 * (v19 - v18);
      }

      else
      {
        v23 = 0.0;
      }

      v24 = *(v10 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth);
      v25 = v23 + v24;
LABEL_30:
      v29 = *(v10 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount);
      if (v29)
      {
        v30 = v29 - 1;
        if (v30)
        {
          v31 = v30;
          v32 = log10(v8 / v30 * 9.0 + 1.0);
          v33 = *(v10 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkSpacing);
          v34 = v24 + v33 / log10(1.0 / v31 * 9.0 + 1.0);
        }

        else
        {
          v32 = 0.0;
          v34 = v24;
        }

        v35 = (v34 - v24) * v32;
        goto LABEL_39;
      }

      if (v25 + 0.6666667 < 0.0)
      {
        goto LABEL_43;
      }

LABEL_40:
      v36 = v9-- < 1;
      if (v36 || v9 < v3)
      {
        goto LABEL_50;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong alignmentRectInsets];
      v22 = v21;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0.0;
    }

    v24 = *(v10 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth);
    v25 = v22 + *(v10 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkSpacing) * v9 + v24;
    if (*(v10 + v11))
    {
      goto LABEL_30;
    }

    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      [v26 alignmentRectInsets];
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0.0;
    }

    v35 = v28 + *(v10 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkSpacing) * v8;
LABEL_39:
    if (v35 <= v25 + 0.6666667)
    {
      goto LABEL_40;
    }

LABEL_43:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B7ED2550(0, *(v41 + 2) + 1, 1, v41);
    }

    v38 = *(v41 + 2);
    v37 = *(v41 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v40 = sub_1B7ED2550((v37 > 1), v38 + 1, 1, v41);
      v39 = v38 + 1;
      v41 = v40;
    }

    *(v41 + 2) = v39;
    *&v41[8 * v38 + 32] = v5;
    v6 = v9 - 1;
    if (v9 < 1)
    {
      break;
    }

    if (v6 < v3)
    {
      break;
    }

    v5 = v9;
  }

  while (v9 > v3);
LABEL_50:

  return sub_1B7ED2278(v41);
}

void sub_1B7ED1C20(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = v3;
    v6 = a1;
    v7 = a2 - a1;
    if (a2 < a1)
    {
      if ((a1 - a2) < 0)
      {
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      v7 = a2 - a1;
LABEL_14:
      v9 = a3 + 1;
      if (a3 != -1)
      {
        if (v9 >= 2)
        {
          v10 = 0;
          v11 = v7 / (a3 + 1.0);
          v12 = a1;
          v13 = OBJC_IVAR____TtC13CameraEditKit24TickMarksVisibilityModel_model;
          v41 = MEMORY[0x1E69E7CC0];
          v14 = 1;
          v42 = a3 + 1;
          while (1)
          {
            v16 = v11 * v14 + v12;
            v17 = floor(v16);
            if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_97;
            }

            if (v17 <= -1.0)
            {
              goto LABEL_98;
            }

            if (v17 >= 1.84467441e19)
            {
              goto LABEL_99;
            }

            v18 = ceil(v16);
            if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_100;
            }

            if (v18 <= -1.0)
            {
              goto LABEL_101;
            }

            if (v18 >= 1.84467441e19)
            {
              goto LABEL_102;
            }

            v15 = v17;
            v19 = v18;
            if (v6 == v17)
            {
              if (v6 == v19)
              {
                v15 = v6;
                goto LABEL_18;
              }

              if (!v19)
              {
                if (!v6)
                {
                  v15 = 0;
                  goto LABEL_18;
                }

                if ((v10 & 1) == 0)
                {
LABEL_87:
                  if (a3 == v14)
                  {
                    return;
                  }

                  v10 = 0;
                  goto LABEL_89;
                }

LABEL_78:
                v19 = 0;
LABEL_80:
                v35 = v41;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v35 = sub_1B7ED2550(0, *(v41 + 2) + 1, 1, v41);
                }

                v37 = *(v35 + 2);
                v36 = *(v35 + 3);
                if (v37 >= v36 >> 1)
                {
                  v35 = sub_1B7ED2550((v36 > 1), v37 + 1, 1, v35);
                }

                v9 = v42;
                *(v35 + 2) = v37 + 1;
                v41 = v35;
                *&v35[8 * v37 + 32] = v19;
                if (a3 == v14)
                {
                  return;
                }

                v10 = 0;
                v6 = v19;
                goto LABEL_19;
              }

              if (v6 >= v19)
              {
                if ((v10 & 1) == 0)
                {
                  goto LABEL_87;
                }

                goto LABEL_80;
              }

              v20 = 1;
            }

            else
            {
              if (v15)
              {
                v21 = v6 >= v15;
              }

              else
              {
                v21 = 1;
              }

              if (v21)
              {
                if (v6 == v19)
                {
                  if (v10)
                  {
                    if (a3 == v14)
                    {
                      return;
                    }

                    v10 = 1;
LABEL_89:
                    v9 = v42;
                    goto LABEL_19;
                  }

                  goto LABEL_90;
                }

                if (!v19)
                {
                  if (!v15)
                  {
                    goto LABEL_69;
                  }

                  if (v10)
                  {
                    goto LABEL_78;
                  }

                  goto LABEL_90;
                }

                if (v6 >= v19)
                {
                  if (v15 == v19)
                  {
                    goto LABEL_69;
                  }

                  if (v10)
                  {
                    goto LABEL_80;
                  }

                  goto LABEL_90;
                }

                v20 = 0;
              }

              else
              {
                v22 = *(v4 + v13);
                sub_1B7ECCDEC(v6);
                v24 = v23 + *(v22 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth);
                sub_1B7ECCDEC(v15);
                v20 = v25 <= v24 + 0.6666667;
                if (v6 == v19)
                {
                  if (v10)
                  {
                    v9 = v42;
                    if (a3 == v14)
                    {
                      return;
                    }

                    v10 = 1;
                    goto LABEL_19;
                  }

LABEL_86:
                  if (v25 <= v24 + 0.6666667)
                  {
                    goto LABEL_87;
                  }

                  goto LABEL_90;
                }

                if (v19)
                {
                  v26 = v6 >= v19;
                }

                else
                {
                  v26 = 1;
                }

                if (v26)
                {
                  if (v15 == v19)
                  {
LABEL_68:
                    if (v20)
                    {
                      v15 = v6;
                      v9 = v42;
                    }

                    else
                    {
LABEL_69:
                      v32 = v41;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v32 = sub_1B7ED2550(0, *(v41 + 2) + 1, 1, v41);
                      }

                      v34 = *(v32 + 2);
                      v33 = *(v32 + 3);
                      v41 = v32;
                      v9 = v42;
                      if (v34 >= v33 >> 1)
                      {
                        v41 = sub_1B7ED2550((v33 > 1), v34 + 1, 1, v32);
                      }

                      *(v41 + 2) = v34 + 1;
                      *&v41[8 * v34 + 32] = v15;
                    }

LABEL_18:
                    v6 = v15;
                    if (a3 == v14)
                    {
                      return;
                    }

                    goto LABEL_19;
                  }

                  if (v10)
                  {
                    goto LABEL_80;
                  }

                  goto LABEL_86;
                }
              }
            }

            v27 = *(v4 + v13);
            sub_1B7ECCDEC(v6);
            v29 = v28;
            v30 = *(v27 + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth);
            sub_1B7ECCDEC(v19);
            if (v15 == v19)
            {
              goto LABEL_68;
            }

            if (v10)
            {
              if (v31 > v29 + v30 + 0.6666667)
              {
                goto LABEL_80;
              }

LABEL_50:
              if (a3 == v14)
              {
                return;
              }

              ++v14;
              v9 = v42;
              if (v14 >= v42)
              {
                break;
              }
            }

            else
            {
              if (v20)
              {
                goto LABEL_50;
              }

LABEL_90:
              v38 = v41;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v38 = sub_1B7ED2550(0, *(v41 + 2) + 1, 1, v41);
              }

              v40 = *(v38 + 2);
              v39 = *(v38 + 3);
              if (v40 >= v39 >> 1)
              {
                v38 = sub_1B7ED2550((v39 > 1), v40 + 1, 1, v38);
              }

              v9 = v42;
              *(v38 + 2) = v40 + 1;
              v41 = v38;
              *&v38[8 * v40 + 32] = v15;
              if (a3 == v14)
              {
                return;
              }

              v10 = 1;
              v6 = v15;
LABEL_19:
              if (++v14 >= v9)
              {
                break;
              }
            }
          }
        }

        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
      }

      __break(1u);
      goto LABEL_104;
    }

    if ((a2 - a1) < 0)
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if (v7 != 10)
    {
      goto LABEL_14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64BE8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B7EDAC90;
    if (v6 >= 0xFFFFFFFFFFFFFFFELL)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    *(v8 + 32) = v6 + 2;
    if (v6 >= 0xFFFFFFFFFFFFFFFCLL)
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    *(v8 + 40) = v6 + 4;
    if (v6 >= 0xFFFFFFFFFFFFFFFALL)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    *(v8 + 48) = v6 + 6;
    if (v6 >= 0xFFFFFFFFFFFFFFF8)
    {
LABEL_109:
      __break(1u);
      return;
    }

    *(v8 + 56) = v6 + 8;
  }
}

uint64_t sub_1B7ED2278(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B7ED267C(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

char *sub_1B7ED2330(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_1B7ED244C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64BA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1B7ED2550(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64BE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_1B7ED2690(uint64_t a1)
{
  v2 = sub_1B7ED3DB0();

  return sub_1B7ED26D4(a1, v2);
}

unint64_t sub_1B7ED26D4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1B7ED2740(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B7ED3DC0();
  MEMORY[0x1B8CB4060](a2);
  MEMORY[0x1B8CB4060](a3);
  v8 = sub_1B7ED3DE0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == a2 && v13 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1B7ED2AC4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_1B7ED285C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64BE0);
  result = sub_1B7ED3CE0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1B7ED3DC0();
      MEMORY[0x1B8CB4060](v18);
      MEMORY[0x1B8CB4060](v19);
      result = sub_1B7ED3DE0();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1B7ED2AC4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_1B7ED285C();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1B7ED2C40();
      a3 = v9;
      goto LABEL_15;
    }

    sub_1B7ED2D84();
  }

  v10 = *v4;
  sub_1B7ED3DC0();
  MEMORY[0x1B8CB4060](v6);
  MEMORY[0x1B8CB4060](a2);
  result = sub_1B7ED3DE0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v6 && v14 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v6;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64BD8);
  result = sub_1B7ED3D90();
  __break(1u);
  return result;
}

void *sub_1B7ED2C40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64BE0);
  v2 = *v0;
  v3 = sub_1B7ED3CD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B7ED2D84()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA64BE0);
  result = sub_1B7ED3CE0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1B7ED3DC0();
      MEMORY[0x1B8CB4060](v17);
      MEMORY[0x1B8CB4060](v18);
      result = sub_1B7ED3DE0();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B7ED2FBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA64BF0);
  result = sub_1B7ED3D60();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1B7ED3DB0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1B7ED322C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1B7ED2690(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1B7ED2FBC(v14, a3 & 1);
      result = sub_1B7ED2690(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1B7ED3DA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1B7ED3378();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void *sub_1B7ED3378()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA64BF0);
  v2 = *v0;
  v3 = sub_1B7ED3D50();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B7ED34D4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA64BF0);
  v3 = sub_1B7ED3D70();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1B7ED2690(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1B7ED2690(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}