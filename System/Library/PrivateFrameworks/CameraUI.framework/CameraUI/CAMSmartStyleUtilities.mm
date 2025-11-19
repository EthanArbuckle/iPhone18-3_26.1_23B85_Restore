@interface CAMSmartStyleUtilities
+ (CGPoint)colorAndToneBiasForSlider2DValue:(CGPoint)a3 limitRangeForSystemStyles:(BOOL)a4;
+ (CGPoint)slider2DValueForColorBias:(double)a3 toneBias:(double)a4 limitRangeForSystemStyles:(BOOL)a5;
+ (CGPoint)slider2DValueForStyle:(id)a3 limitRangeForSystemStyles:(BOOL)a4;
+ (double)colorOrToneBiasForSlider2DValue:(double)result limitRangeForSystemStyles:(BOOL)a4;
+ (double)slider2DValueForColorOrToneBias:(double)result limitRangeForSystemStyles:(BOOL)a4;
+ (id)_validatedSystemStyleForStyle:(id)a3;
+ (id)readAVCaptureSystemStyleBypassXPC:(BOOL)a3 allowNil:(BOOL)a4;
+ (void)writeAVCaptureSystemStyle:(id)a3;
@end

@implementation CAMSmartStyleUtilities

+ (id)readAVCaptureSystemStyleBypassXPC:(BOOL)a3 allowNil:(BOOL)a4
{
  if (a3)
  {
    AVSmartStyleSettingsGetSystemStyleFast();
  }

  else
  {
    AVSmartStyleSettingsGetSystemStyle();
  }
  v6 = ;
  if (!v6 && !a4)
  {
    v6 = [MEMORY[0x1E6987120] identityStyle];
  }

  v7 = [a1 _validatedSystemStyleForStyle:v6];

  return v7;
}

+ (void)writeAVCaptureSystemStyle:(id)a3
{
  v3 = [a1 _validatedSystemStyleForStyle:a3];
  AVSmartStyleSettingsSetSystemStyle();
}

+ (id)_validatedSystemStyleForStyle:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    [v5 toneBias];
    v7 = fmaxf(fminf(v6, 0.5), -0.5);
    [v5 colorBias];
    v9 = fmaxf(fminf(v8, 0.5), -0.5);
    [v5 toneBias];
    if (v7 == v10 && ([v5 colorBias], v9 == v11))
    {
      v14 = v5;
    }

    else
    {
      v12 = MEMORY[0x1E6987120];
      v13 = [v5 cast];
      [v5 intensity];
      v14 = [v12 styleWithCast:v13 intensity:? toneBias:? colorBias:?];

      v15 = os_log_create("com.apple.camera", "SmartStyle");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543618;
        v18 = v5;
        v19 = 2114;
        v20 = v14;
        _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "System style exceeded allowed range limits. Clamping from %{public}@ to %{public}@", &v17, 0x16u);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (double)slider2DValueForColorOrToneBias:(double)result limitRangeForSystemStyles:(BOOL)a4
{
  if (a4)
  {
    return result + result;
  }

  return result;
}

+ (double)colorOrToneBiasForSlider2DValue:(double)result limitRangeForSystemStyles:(BOOL)a4
{
  if (a4)
  {
    return result * 0.5;
  }

  return result;
}

+ (CGPoint)slider2DValueForStyle:(id)a3 limitRangeForSystemStyles:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 colorBias];
  [a1 slider2DValueForColorOrToneBias:v4 limitRangeForSystemStyles:?];
  v8 = v7;
  [v6 toneBias];
  v10 = v9;

  [a1 slider2DValueForColorOrToneBias:v4 limitRangeForSystemStyles:v10];
  v12 = v11;
  v13 = v8;
  result.y = v12;
  result.x = v13;
  return result;
}

+ (CGPoint)slider2DValueForColorBias:(double)a3 toneBias:(double)a4 limitRangeForSystemStyles:(BOOL)a5
{
  v5 = a5;
  [a1 slider2DValueForColorOrToneBias:a3 limitRangeForSystemStyles:?];
  v9 = v8;
  [a1 slider2DValueForColorOrToneBias:v5 limitRangeForSystemStyles:a4];
  v11 = v10;
  v12 = v9;
  result.y = v11;
  result.x = v12;
  return result;
}

+ (CGPoint)colorAndToneBiasForSlider2DValue:(CGPoint)a3 limitRangeForSystemStyles:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  [a1 colorOrToneBiasForSlider2DValue:a3.x limitRangeForSystemStyles:?];
  v8 = v7;
  [a1 colorOrToneBiasForSlider2DValue:v4 limitRangeForSystemStyles:y];
  v10 = v9;
  v11 = v8;
  result.y = v10;
  result.x = v11;
  return result;
}

@end