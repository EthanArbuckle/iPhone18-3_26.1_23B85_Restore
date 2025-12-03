@interface CAMSmartStyleUtilities
+ (CGPoint)colorAndToneBiasForSlider2DValue:(CGPoint)value limitRangeForSystemStyles:(BOOL)styles;
+ (CGPoint)slider2DValueForColorBias:(double)bias toneBias:(double)toneBias limitRangeForSystemStyles:(BOOL)styles;
+ (CGPoint)slider2DValueForStyle:(id)style limitRangeForSystemStyles:(BOOL)styles;
+ (double)colorOrToneBiasForSlider2DValue:(double)result limitRangeForSystemStyles:(BOOL)styles;
+ (double)slider2DValueForColorOrToneBias:(double)result limitRangeForSystemStyles:(BOOL)styles;
+ (id)_validatedSystemStyleForStyle:(id)style;
+ (id)readAVCaptureSystemStyleBypassXPC:(BOOL)c allowNil:(BOOL)nil;
+ (void)writeAVCaptureSystemStyle:(id)style;
@end

@implementation CAMSmartStyleUtilities

+ (id)readAVCaptureSystemStyleBypassXPC:(BOOL)c allowNil:(BOOL)nil
{
  if (c)
  {
    AVSmartStyleSettingsGetSystemStyleFast();
  }

  else
  {
    AVSmartStyleSettingsGetSystemStyle();
  }
  identityStyle = ;
  if (!identityStyle && !nil)
  {
    identityStyle = [MEMORY[0x1E6987120] identityStyle];
  }

  v7 = [self _validatedSystemStyleForStyle:identityStyle];

  return v7;
}

+ (void)writeAVCaptureSystemStyle:(id)style
{
  v3 = [self _validatedSystemStyleForStyle:style];
  AVSmartStyleSettingsSetSystemStyle();
}

+ (id)_validatedSystemStyleForStyle:(id)style
{
  v21 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  v4 = styleCopy;
  if (styleCopy)
  {
    v5 = styleCopy;
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
      cast = [v5 cast];
      [v5 intensity];
      v14 = [v12 styleWithCast:cast intensity:? toneBias:? colorBias:?];

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

+ (double)slider2DValueForColorOrToneBias:(double)result limitRangeForSystemStyles:(BOOL)styles
{
  if (styles)
  {
    return result + result;
  }

  return result;
}

+ (double)colorOrToneBiasForSlider2DValue:(double)result limitRangeForSystemStyles:(BOOL)styles
{
  if (styles)
  {
    return result * 0.5;
  }

  return result;
}

+ (CGPoint)slider2DValueForStyle:(id)style limitRangeForSystemStyles:(BOOL)styles
{
  stylesCopy = styles;
  styleCopy = style;
  [styleCopy colorBias];
  [self slider2DValueForColorOrToneBias:stylesCopy limitRangeForSystemStyles:?];
  v8 = v7;
  [styleCopy toneBias];
  v10 = v9;

  [self slider2DValueForColorOrToneBias:stylesCopy limitRangeForSystemStyles:v10];
  v12 = v11;
  v13 = v8;
  result.y = v12;
  result.x = v13;
  return result;
}

+ (CGPoint)slider2DValueForColorBias:(double)bias toneBias:(double)toneBias limitRangeForSystemStyles:(BOOL)styles
{
  stylesCopy = styles;
  [self slider2DValueForColorOrToneBias:bias limitRangeForSystemStyles:?];
  v9 = v8;
  [self slider2DValueForColorOrToneBias:stylesCopy limitRangeForSystemStyles:toneBias];
  v11 = v10;
  v12 = v9;
  result.y = v11;
  result.x = v12;
  return result;
}

+ (CGPoint)colorAndToneBiasForSlider2DValue:(CGPoint)value limitRangeForSystemStyles:(BOOL)styles
{
  stylesCopy = styles;
  y = value.y;
  [self colorOrToneBiasForSlider2DValue:value.x limitRangeForSystemStyles:?];
  v8 = v7;
  [self colorOrToneBiasForSlider2DValue:stylesCopy limitRangeForSystemStyles:y];
  v10 = v9;
  v11 = v8;
  result.y = v10;
  result.x = v11;
  return result;
}

@end