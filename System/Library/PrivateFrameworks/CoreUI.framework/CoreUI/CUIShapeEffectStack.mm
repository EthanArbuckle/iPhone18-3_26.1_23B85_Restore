@interface CUIShapeEffectStack
+ (CGColor)newColorByAdjustingLightnessOfColor:(CGColor *)color darker:(BOOL)darker;
+ (id)adjustOpacity:(id)opacity by:(float)by;
+ (id)bevelEmbossFrom:(id)from withSize:(unsigned int)size soften:(unsigned int)soften angle:(float)angle altitude:(float)altitude highlightRed:(float)red highlightGreen:(float)green highlightBlue:(float)self0 highlightOpacity:(float)self1 shadowRed:(float)self2 shadowGreen:(float)self3 shadowBlue:(float)self4 shadowOpacity:(float)self5 bevelStyle:(unsigned int)self6;
+ (id)blend:(id)blend over:(id)over blendKind:(unsigned int)kind;
+ (id)blur:(id)blur radius:(float)radius;
+ (id)colorWithGray:(float)gray alpha:(float)alpha;
+ (id)colorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
+ (id)composite:(id)composite atop:(id)atop;
+ (id)composite:(id)composite into:(id)into;
+ (id)composite:(id)composite outOf:(id)of;
+ (id)composite:(id)composite over:(id)over;
+ (id)gradientWithParameters:(id *)parameters inRect:(CGRect)rect;
+ (id)hueSaturationFrom:(id)from withCenterAngle:(double)angle width:(double)width tintRed:(float)red tintGreen:(float)green tintBlue:(float)blue;
+ (id)image:(id)image withOpacity:(float)opacity;
+ (id)imageFromBlendWithMask:(id)mask foreground:(id)foreground background:(id)background;
+ (id)innerGlowFrom:(id)from withRadius:(float)radius red:(float)red green:(float)green blue:(float)blue opacity:(float)opacity;
+ (id)innerShadowFrom:(id)from withOffset:(CGPoint)offset radius:(float)radius red:(float)red green:(float)green blue:(float)blue opacity:(float)opacity;
+ (id)invert:(id)invert;
+ (id)outerGlowFrom:(id)from withSize:(unsigned int)size spread:(unsigned int)spread red:(float)red green:(float)green blue:(float)blue opacity:(float)opacity;
+ (id)outerShadowFrom:(id)from withOffset:(CGPoint)offset size:(unsigned int)size spread:(unsigned int)spread red:(float)red green:(float)green blue:(float)blue opacity:(float)self0;
+ (id)pixelZoomed:(id)zoomed scale:(int)scale about:(CGPoint)about;
+ (id)preferredCIContextOptions;
+ (id)rectangle:(CGRect)rectangle withRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
+ (id)shadowFrom:(id)from red:(float)red green:(float)green blue:(float)blue opacity:(float)opacity;
+ (id)shapeEffectSingleBlurFrom:(id)from withInteriorFill:(id)fill offset:(CGPoint)offset blurSize:(float)size innerGlowRed:(float)red innerGlowGreen:(float)green innerGlowBlue:(float)blue innerGlowOpacity:(float)self0 innerShadowRed:(float)self1 innerShadowGreen:(float)self2 innerShadowBlue:(float)self3 innerShadowOpacity:(float)self4 outerGlowRed:(float)self5 outerGlowGreen:(float)self6 outerGlowBlue:(float)self7 outerGlowOpacity:(float)self8 outerShadowRed:(float)self9 outerShadowGreen:(float)outerShadowGreen outerShadowBlue:(float)outerShadowBlue outerShadowOpacity:(float)outerShadowOpacity hasInsideShadowBlur:(BOOL)blur hasOutsideShadowBlur:(BOOL)shadowBlur;
+ (id)sharedCIContext;
+ (id)unsharpMask:(id)mask radius:(float)radius intensity:(float)intensity;
- ($01BB1521EC52D44A8E7628F5261DCEC8)effectInsetsWithScale:(double)scale;
- (BOOL)anyEffectAllowsTintSubstitution;
- (BOOL)expressableByColorFillCheckingOutputBlending:(BOOL)blending;
- (BOOL)hasColorOverlay;
- (BOOL)hasEffects;
- (BOOL)hasEngraveShadow;
- (BOOL)hasExtraShadow;
- (BOOL)hasInnerGlow;
- (BOOL)hasInnerGradient;
- (BOOL)hasInnerShadow;
- (BOOL)hasOuterGlow;
- (CGImage)_newFlattenedImageFromShapeCGImage:(CGImage *)image withScale:(double)scale ciContext:(id)context blendOverImage:(BOOL)overImage;
- (CGImage)newFlattenedImageFromShapeCGImage:(CGImage *)image withScale:(double)scale cache:(BOOL)cache;
- (CGRect)effectPaddingWithScale:(double)scale;
- (CUIShapeEffectStack)initWithEffectPreset:(id)preset;
- (float)colorOverlayOpacity;
- (float)innerGradientOpacity;
- (id)cacheKey;
- (id)compositeEffectStackWithShapeImage:(id)image withScale:(double)scale blendOntoImage:(BOOL)ontoImage;
- (id)effectPreset;
- (id)image:(id)image withAdjustedOpacity:(float)opacity;
- (id)imageWithBevelEmbossOfImage:(id)image effect:(id *)effect;
- (id)imageWithColorOverlayOfImage:(id)image effect:(id *)effect;
- (id)imageWithEngraveShadowOfImage:(id)image effect:(id *)effect;
- (id)imageWithExtraShadowOfImage:(id)image effect:(id *)effect;
- (id)imageWithHueSaturationOfImage:(id)image effect:(id *)effect;
- (id)imageWithInnerGlowOfImage:(id)image effect:(id *)effect;
- (id)imageWithInnerShadowOfImage:(id)image effect:(id *)effect;
- (id)imageWithInteriorGradientFillOfImage:(id)image effect:(id *)effect;
- (id)imageWithOuterGlowOfImage:(id)image effect:(id *)effect;
- (id)imageWithSingleBlurShapeEffectOfImage:(id)image withInteriorFill:(id)fill;
- (id)optimizedSingleBlurEffectCompositeWithShapeImage:(id)image;
- (id)processedImageFromShapeImage:(id)image withScale:(double)scale invertShadows:(BOOL)shadows;
- (id)standardEffectCompositeWithShapeImage:(id)image blendOntoImage:(BOOL)ontoImage;
- (int)cgBlendModeForOutputBlending;
- (void)_cleanupEffectSettings;
- (void)_normalizeEffectParameters;
- (void)_setBevelEmbossAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5;
- (void)_setColorFillAtIndex:(unint64_t)index FromPreset:(id)preset index:(unsigned int)a5;
- (void)_setEngraveShadowAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5;
- (void)_setExtraShadowAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5;
- (void)_setHueSaturationAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5;
- (void)_setInnerGlowAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5;
- (void)_setInnerShadowAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5;
- (void)_setInteriorGradientAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5;
- (void)_setOuterGlowAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5;
- (void)_updateRenderStrategyFromEffect:(unsigned int)effect;
- (void)adjustEffectColorsToTemperature:(int)temperature onlyTintableColors:(BOOL)colors;
- (void)applyCustomForegroundColor:(CGColor *)color tintEffectColors:(BOOL)colors;
- (void)dealloc;
- (void)scaleBrightnessOfEffectColorsByAmount:(double)amount onlyTintableColors:(BOOL)colors;
- (void)scaleEffectParametersBy:(double)by;
- (void)updateOutputBlendingWithInteriorFillHeuristic;
@end

@implementation CUIShapeEffectStack

- (void)dealloc
{
  [(CUIShapeEffectStack *)self _cleanupEffectSettings];
  v3.receiver = self;
  v3.super_class = CUIShapeEffectStack;
  [(CUIShapeEffectStack *)&v3 dealloc];
}

- (void)_cleanupEffectSettings
{
  self->_hueSaturationCount = 0;
  hueSaturation = self->_hueSaturation;
  if (hueSaturation)
  {
    free(hueSaturation);
    self->_hueSaturation = 0;
  }

  self->_colorOverlayCount = 0;
  colorOverlay = self->_colorOverlay;
  if (colorOverlay)
  {
    free(colorOverlay);
    self->_colorOverlay = 0;
  }

  self->_innerGradientCount = 0;
  innerGradient = self->_innerGradient;
  if (innerGradient)
  {
    free(innerGradient);
    self->_innerGradient = 0;
  }

  self->_innerGlowCount = 0;
  innerGlow = self->_innerGlow;
  if (innerGlow)
  {
    free(innerGlow);
    self->_innerGlow = 0;
  }

  self->_innerShadowCount = 0;
  innerShadow = self->_innerShadow;
  if (innerShadow)
  {
    free(innerShadow);
    self->_innerShadow = 0;
  }

  self->_outerGlowCount = 0;
  outerGlow = self->_outerGlow;
  if (outerGlow)
  {
    free(outerGlow);
    self->_outerGlow = 0;
  }

  self->_engraveShadowCount = 0;
  engraveShadow = self->_engraveShadow;
  if (engraveShadow)
  {
    free(engraveShadow);
    self->_engraveShadow = 0;
  }

  self->_extraShadowCount = 0;
  extraShadow = self->_extraShadow;
  if (extraShadow)
  {
    free(extraShadow);
    self->_extraShadow = 0;
  }

  self->_bevelEmbossCount = 0;
  emboss = self->_emboss;
  if (emboss)
  {
    free(emboss);
    self->_emboss = 0;
  }
}

+ (id)preferredCIContextOptions
{
  if (GetShapeEffectCIContextOptions_onceToken != -1)
  {
    +[CUIShapeEffectStack preferredCIContextOptions];
  }

  return gCIContextOptions;
}

+ (id)sharedCIContext
{
  if (sharedCIContext_gCIContextLock != -1)
  {
    +[CUIShapeEffectStack sharedCIContext];
  }

  return gSharedCIContext;
}

CIContext *__38__CUIShapeEffectStack_sharedCIContext__block_invoke()
{
  result = +[CIContext contextWithOptions:](CIContext, "contextWithOptions:", [objc_opt_class() preferredCIContextOptions]);
  gSharedCIContext = result;
  return result;
}

- (void)_setColorFillAtIndex:(unint64_t)index FromPreset:(id)preset index:(unsigned int)a5
{
  if (self->_colorOverlayCount > index)
  {
    colorOverlay = self->_colorOverlay;
    if (colorOverlay)
    {
      v7 = &colorOverlay[index];
      v8 = a5;
      v7->var0 = [preset valueForParameter:7 inEffectAtIndex:a5];
      v9.i32[0] = [preset valueForParameter:0 inEffectAtIndex:v8];
      v9.i32[1] = v9.i32[0] >> 8;
      *&v7->var1 = vdiv_f32(vcvt_f32_u32(vand_s8(v9, 0xFF000000FFLL)), vdup_n_s32(0x437F0000u));
      v7->var3 = v9.u8[2] / 255.0;
      v10 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v8]);
      v7->var4 = v10;
      v7->var5 = [preset valueForParameter:10 inEffectAtIndex:v8] == 1;
    }
  }
}

- (BOOL)hasColorOverlay
{
  colorOverlayCount = self->_colorOverlayCount;
  if (!colorOverlayCount)
  {
    return 0;
  }

  colorOverlay = self->_colorOverlay;
  if (colorOverlay->var4 > 0.01)
  {
    return 1;
  }

  p_var4 = &colorOverlay[1].var4;
  v6 = 1;
  do
  {
    v7 = v6;
    if (colorOverlayCount == v6)
    {
      break;
    }

    v8 = *p_var4;
    p_var4 += 6;
    ++v6;
  }

  while (v8 <= 0.01);
  return v7 < colorOverlayCount;
}

- (float)colorOverlayOpacity
{
  colorOverlayCount = self->_colorOverlayCount;
  if (!colorOverlayCount)
  {
    return 0.0;
  }

  for (i = &self->_colorOverlay->var4; ; i += 6)
  {
    result = *i;
    if (*i > 0.0)
    {
      break;
    }

    if (!--colorOverlayCount)
    {
      return 0.0;
    }
  }

  return result;
}

- (void)_setInteriorGradientAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5
{
  if (self->_innerGradientCount > index)
  {
    innerGradient = self->_innerGradient;
    if (innerGradient)
    {
      v7 = &innerGradient[index];
      v8 = a5;
      v7->var0 = [preset valueForParameter:7 inEffectAtIndex:a5];
      v9.i32[0] = [preset valueForParameter:0 inEffectAtIndex:v8];
      v9.i32[1] = v9.i32[0] >> 8;
      v10 = vdup_n_s32(0x437F0000u);
      *&v7->var1 = vdiv_f32(vcvt_f32_u32(vand_s8(v9, 0xFF000000FFLL)), v10);
      v7->var3 = v9.u8[2] / 255.0;
      v11.i32[0] = [preset valueForParameter:1 inEffectAtIndex:v8];
      v11.i32[1] = v11.i32[0] >> 8;
      *&v7->var4 = vdiv_f32(vcvt_f32_u32(vand_s8(v11, 0xFF000000FFLL)), v10);
      v7->var6 = v11.u8[2] / 255.0;
      v12 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v8]);
      v14 = 1.0;
      if (v12 != 0.0)
      {
        v13 = v12;
        v14 = v13;
      }

      v7->var7 = v14;
    }
  }
}

- (BOOL)hasInnerGradient
{
  innerGradientCount = self->_innerGradientCount;
  if (!innerGradientCount)
  {
    return 0;
  }

  innerGradient = self->_innerGradient;
  if (innerGradient->var7 > 0.01)
  {
    return 1;
  }

  p_var7 = &innerGradient[1].var7;
  v6 = 1;
  do
  {
    v7 = v6;
    if (innerGradientCount == v6)
    {
      break;
    }

    v8 = *p_var7;
    p_var7 += 8;
    ++v6;
  }

  while (v8 <= 0.01);
  return v7 < innerGradientCount;
}

- (float)innerGradientOpacity
{
  innerGradientCount = self->_innerGradientCount;
  if (!innerGradientCount)
  {
    return 0.0;
  }

  for (i = &self->_innerGradient->var7; ; i += 8)
  {
    result = *i;
    if (*i > 0.0)
    {
      break;
    }

    if (!--innerGradientCount)
    {
      return 0.0;
    }
  }

  return result;
}

- (void)_setInnerGlowAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5
{
  if (self->_innerGlowCount > index)
  {
    innerGlow = self->_innerGlow;
    if (innerGlow)
    {
      v7 = &innerGlow[index];
      v8 = a5;
      v7->var0 = [preset valueForParameter:7 inEffectAtIndex:a5];
      v9.i32[0] = [preset valueForParameter:0 inEffectAtIndex:v8];
      v9.i32[1] = v9.i32[0] >> 8;
      *&v7->var1 = vdiv_f32(vcvt_f32_u32(vand_s8(v9, 0xFF000000FFLL)), vdup_n_s32(0x437F0000u));
      v7->var3 = v9.u8[2] / 255.0;
      v10 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v8]);
      v7->var4 = v10;
      v7->var5 = [preset valueForParameter:4 inEffectAtIndex:v8];
    }
  }
}

- (BOOL)hasInnerGlow
{
  innerGlowCount = self->_innerGlowCount;
  if (!innerGlowCount)
  {
    return 0;
  }

  innerGlow = self->_innerGlow;
  if (innerGlow->var4 > 0.01)
  {
    return 1;
  }

  p_var4 = &innerGlow[1].var4;
  v6 = 1;
  do
  {
    v7 = v6;
    if (innerGlowCount == v6)
    {
      break;
    }

    v8 = *p_var4;
    p_var4 += 6;
    ++v6;
  }

  while (v8 <= 0.01);
  return v7 < innerGlowCount;
}

- (void)_setInnerShadowAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5
{
  if (self->_innerShadowCount > index)
  {
    innerShadow = self->_innerShadow;
    if (innerShadow)
    {
      v7 = &innerShadow[index];
      v8 = a5;
      v7->var0 = [preset valueForParameter:7 inEffectAtIndex:a5];
      v9.i32[0] = [preset valueForParameter:0 inEffectAtIndex:v8];
      v9.i32[1] = v9.i32[0] >> 8;
      *&v7->var1 = vdiv_f32(vcvt_f32_u32(vand_s8(v9, 0xFF000000FFLL)), vdup_n_s32(0x437F0000u));
      v7->var3 = v9.u8[2] / 255.0;
      v10 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v8]);
      v7->var5 = v10;
      v7->var4 = [preset valueForParameter:4 inEffectAtIndex:v8];
      v7->var6 = [preset valueForParameter:5 inEffectAtIndex:v8];
      v11 = [preset valueForParameter:6 inEffectAtIndex:v8] * 0.0174532925;
      v7->var7 = v11;
      v12 = __sincosf_stret(v11);
      var6 = v7->var6;
      v14 = (var6 * v12.__cosval);
      v15 = (var6 * v12.__sinval);
      v7->var8.x = v14;
      v7->var8.y = v15;
      v16 = rint(v14);
      if (vabdd_f64(v16, v14) < 0.001)
      {
        v7->var8.x = v16;
      }

      v17 = rint(v15);
      if (vabdd_f64(v17, v15) < 0.001)
      {
        v7->var8.y = v17;
      }
    }
  }
}

- (BOOL)hasInnerShadow
{
  innerShadowCount = self->_innerShadowCount;
  if (!innerShadowCount)
  {
    return 0;
  }

  innerShadow = self->_innerShadow;
  if (innerShadow->var5 > 0.01)
  {
    return 1;
  }

  p_var5 = &innerShadow[1].var5;
  v6 = 1;
  do
  {
    v7 = v6;
    if (innerShadowCount == v6)
    {
      break;
    }

    v8 = *p_var5;
    p_var5 += 12;
    ++v6;
  }

  while (v8 <= 0.01);
  return v7 < innerShadowCount;
}

- (void)_setOuterGlowAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5
{
  if (self->_outerGlowCount > index)
  {
    outerGlow = self->_outerGlow;
    if (outerGlow)
    {
      v7 = &outerGlow[index];
      v8 = a5;
      v9.i32[0] = [preset valueForParameter:0 inEffectAtIndex:a5];
      v9.i32[1] = v9.i32[0] >> 8;
      *v7 = vdiv_f32(vcvt_f32_u32(vand_s8(v9, 0xFF000000FFLL)), vdup_n_s32(0x437F0000u));
      v7[1].f32[0] = v9.u8[2] / 255.0;
      v10 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v8]);
      v7[1].f32[1] = v10;
      v7[2].f32[0] = [preset valueForParameter:4 inEffectAtIndex:v8];
      v7[2].f32[1] = [preset valueForParameter:9 inEffectAtIndex:v8];
    }
  }
}

- (BOOL)hasOuterGlow
{
  outerGlowCount = self->_outerGlowCount;
  if (!outerGlowCount)
  {
    return 0;
  }

  outerGlow = self->_outerGlow;
  if (outerGlow->var3 > 0.01)
  {
    return 1;
  }

  p_var3 = &outerGlow[1].var3;
  v6 = 1;
  do
  {
    v7 = v6;
    if (outerGlowCount == v6)
    {
      break;
    }

    v8 = *p_var3;
    p_var3 += 6;
    ++v6;
  }

  while (v8 <= 0.01);
  return v7 < outerGlowCount;
}

- (void)_setEngraveShadowAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5
{
  if (self->_engraveShadowCount > index)
  {
    engraveShadow = self->_engraveShadow;
    if (engraveShadow)
    {
      v7 = &engraveShadow[index];
      v8 = a5;
      v9.i32[0] = [preset valueForParameter:0 inEffectAtIndex:a5];
      v9.i32[1] = v9.i32[0] >> 8;
      *&v7->var0 = vdiv_f32(vcvt_f32_u32(vand_s8(v9, 0xFF000000FFLL)), vdup_n_s32(0x437F0000u));
      v7->var2 = v9.u8[2] / 255.0;
      v10 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v8]);
      v7->var3 = v10;
      v7->var4 = [preset valueForParameter:4 inEffectAtIndex:v8];
      v7->var5 = [preset valueForParameter:9 inEffectAtIndex:v8];
      v7->var6 = [preset valueForParameter:5 inEffectAtIndex:v8];
      v11 = [preset valueForParameter:6 inEffectAtIndex:v8] * 0.0174532925;
      v7->var7 = v11;
      v12 = __sincosf_stret(v11);
      var6 = v7->var6;
      v14 = (var6 * v12.__cosval);
      v15 = (var6 * v12.__sinval);
      v7->var8.x = v14;
      v7->var8.y = v15;
      v16 = rint(v14);
      if (vabdd_f64(v16, v14) < 0.001)
      {
        v7->var8.x = v16;
      }

      v17 = rint(v15);
      if (vabdd_f64(v17, v15) < 0.001)
      {
        v7->var8.y = v17;
      }
    }
  }
}

- (BOOL)hasEngraveShadow
{
  engraveShadowCount = self->_engraveShadowCount;
  if (!engraveShadowCount)
  {
    return 0;
  }

  engraveShadow = self->_engraveShadow;
  if (engraveShadow->var3 > 0.01)
  {
    return 1;
  }

  p_var3 = &engraveShadow[1].var3;
  v6 = 1;
  do
  {
    v7 = v6;
    if (engraveShadowCount == v6)
    {
      break;
    }

    v8 = *p_var3;
    p_var3 += 12;
    ++v6;
  }

  while (v8 <= 0.01);
  return v7 < engraveShadowCount;
}

- (void)_setExtraShadowAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5
{
  if (self->_extraShadowCount > index)
  {
    extraShadow = self->_extraShadow;
    if (extraShadow)
    {
      v7 = &extraShadow[index];
      v8 = a5;
      v9.i32[0] = [preset valueForParameter:0 inEffectAtIndex:a5];
      v9.i32[1] = v9.i32[0] >> 8;
      *&v7->var0 = vdiv_f32(vcvt_f32_u32(vand_s8(v9, 0xFF000000FFLL)), vdup_n_s32(0x437F0000u));
      v7->var2 = v9.u8[2] / 255.0;
      v10 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v8]);
      v7->var3 = v10;
      v7->var4 = [preset valueForParameter:4 inEffectAtIndex:v8];
      v7->var5 = [preset valueForParameter:9 inEffectAtIndex:v8];
      v7->var6 = [preset valueForParameter:5 inEffectAtIndex:v8];
      v11 = [preset valueForParameter:6 inEffectAtIndex:v8] * 0.0174532925;
      v7->var7 = v11;
      v12 = __sincosf_stret(v11);
      var6 = v7->var6;
      v14 = (var6 * v12.__cosval);
      v15 = (var6 * v12.__sinval);
      v7->var8.x = v14;
      v7->var8.y = v15;
      v16 = rint(v14);
      if (vabdd_f64(v16, v14) < 0.001)
      {
        v7->var8.x = v16;
      }

      v17 = rint(v15);
      if (vabdd_f64(v17, v15) < 0.001)
      {
        v7->var8.y = v17;
      }
    }
  }
}

- (BOOL)hasExtraShadow
{
  extraShadowCount = self->_extraShadowCount;
  if (!extraShadowCount)
  {
    return 0;
  }

  extraShadow = self->_extraShadow;
  if (extraShadow->var3 > 0.01)
  {
    return 1;
  }

  p_var3 = &extraShadow[1].var3;
  v6 = 1;
  do
  {
    v7 = v6;
    if (extraShadowCount == v6)
    {
      break;
    }

    v8 = *p_var3;
    p_var3 += 12;
    ++v6;
  }

  while (v8 <= 0.01);
  return v7 < extraShadowCount;
}

- (void)_setBevelEmbossAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5
{
  if (self->_bevelEmbossCount > index)
  {
    emboss = self->_emboss;
    if (emboss)
    {
      v7 = &emboss[index];
      v8 = a5;
      v7->f32[0] = [preset valueForParameter:4 inEffectAtIndex:a5];
      v7->f32[1] = [preset valueForParameter:8 inEffectAtIndex:v8];
      v7[1] = 0x41F0000042B40000;
      v9.i32[0] = [preset valueForParameter:0 inEffectAtIndex:v8];
      v9.i32[1] = v9.i32[0] >> 8;
      v10 = vdup_n_s32(0x437F0000u);
      v7[2] = vdiv_f32(vcvt_f32_u32(vand_s8(v9, 0xFF000000FFLL)), v10);
      v7[3].f32[0] = v9.u8[2] / 255.0;
      v11 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v8]);
      v7[3].f32[1] = v11;
      v12.i32[0] = [preset valueForParameter:1 inEffectAtIndex:v8];
      v12.i32[1] = v12.i32[0] >> 8;
      v7[4] = vdiv_f32(vcvt_f32_u32(vand_s8(v12, 0xFF000000FFLL)), v10);
      v7[5].f32[0] = v12.u8[2] / 255.0;
      v13 = COERCE_DOUBLE([preset valueForParameter:3 inEffectAtIndex:v8]);
      v7[5].f32[1] = v13;
      v7[6].i32[0] = [preset valueForParameter:11 inEffectAtIndex:v8];
    }
  }
}

- (BOOL)hasEffects
{
  if ([(CUIShapeEffectStack *)self hasHueSaturation]|| !self->_bypassColorFills && ([(CUIShapeEffectStack *)self hasColorOverlay]|| [(CUIShapeEffectStack *)self hasInnerGradient]) || [(CUIShapeEffectStack *)self hasInnerGlow]|| [(CUIShapeEffectStack *)self hasInnerShadow]|| [(CUIShapeEffectStack *)self hasOuterGlow]|| [(CUIShapeEffectStack *)self hasEngraveShadow]|| [(CUIShapeEffectStack *)self hasExtraShadow])
  {
    return 1;
  }

  return [(CUIShapeEffectStack *)self hasBevelEmboss];
}

- (void)_setHueSaturationAtIndex:(unint64_t)index fromPreset:(id)preset index:(unsigned int)a5
{
  v6 = &self->_hueSaturation[index];
  v7 = a5;
  v8 = [preset valueForParameter:6 inEffectAtIndex:a5] * 0.0174532925;
  v6->f32[0] = v8;
  v9 = [preset valueForParameter:5 inEffectAtIndex:v7] * 0.0174532925;
  v6->f32[1] = v9;
  v10.i32[0] = [preset valueForParameter:0 inEffectAtIndex:v7];
  v10.i32[1] = v10.i32[0] >> 8;
  v6[1] = vdiv_f32(vcvt_f32_u32(vand_s8(v10, 0xFF000000FFLL)), vdup_n_s32(0x437F0000u));
  v6[2].f32[0] = v10.u8[2] / 255.0;
  v6[2].i8[4] = [preset valueForParameter:10 inEffectAtIndex:v7] == 1;
}

- (void)_updateRenderStrategyFromEffect:(unsigned int)effect
{
  if (self->_renderStrategy == 1)
  {
    return;
  }

  v48 = v3;
  if (effect <= 1215653202)
  {
    if (effect <= 1164796530)
    {
      if (effect != 1131375730)
      {
        v8 = 1148350320;
        goto LABEL_17;
      }
    }

    else
    {
      if (effect == 1164796531 || effect == 1180787813)
      {
        goto LABEL_83;
      }

      if (effect != 1198678372)
      {
        return;
      }
    }

    [(CUIShapeEffectStack *)self _precompositeColorOverlayInnerGradient:v4];
    colorOverlayCount = self->_colorOverlayCount;
    if (!colorOverlayCount)
    {
      return;
    }

    colorOverlay = self->_colorOverlay;
    while (1)
    {
      var0 = colorOverlay->var0;
      ++colorOverlay;
      v15 = var0;
      if (var0 != 1852797549 && v15 != 0)
      {
        break;
      }

      if (!--colorOverlayCount)
      {
        return;
      }
    }

    goto LABEL_83;
  }

  if (effect <= 1766288502)
  {
    if (effect != 1215653203 && effect != 1397715043)
    {
      v8 = 1484026465;
      goto LABEL_17;
    }

LABEL_83:
    self->_renderStrategy = 1;
    return;
  }

  if (effect == 1766288503 || effect == 1768837992)
  {
    goto LABEL_18;
  }

  v8 = 1866951799;
LABEL_17:
  if (effect != v8)
  {
    return;
  }

LABEL_18:
  innerGlowCount = self->_innerGlowCount;
  if (innerGlowCount)
  {
    v10 = 0;
    p_var5 = &self->_innerGlow->var5;
    do
    {
      v12 = *p_var5;
      p_var5 += 6;
      if (v12 > 0.0)
      {
        ++v10;
      }

      --innerGlowCount;
    }

    while (innerGlowCount);
  }

  else
  {
    v10 = 0;
  }

  outerGlowCount = self->_outerGlowCount;
  if (outerGlowCount)
  {
    v19 = &self->_outerGlow->var5;
    v20 = 0.0;
    v21 = 0.0;
    do
    {
      v22 = *v19;
      if (*(v19 - 1) > 0.0)
      {
        ++v10;
      }

      if (v22 > *&v21 && v22 > 0.0)
      {
        *&v21 = *v19;
      }

      if (v22 > 0.0)
      {
        v20 = v20 + 1.0;
      }

      v19 += 6;
      --outerGlowCount;
    }

    while (outerGlowCount);
  }

  else
  {
    v21 = 0.0;
    v20 = 0.0;
  }

  innerShadowCount = self->_innerShadowCount;
  if (innerShadowCount)
  {
    p_var4 = &self->_innerShadow->var4;
    do
    {
      v26 = *p_var4;
      p_var4 += 12;
      if (v26 > 0.0)
      {
        ++v10;
      }

      --innerShadowCount;
    }

    while (innerShadowCount);
  }

  engraveShadowCount = self->_engraveShadowCount;
  if (engraveShadowCount)
  {
    v28 = &self->_engraveShadow->var5;
    do
    {
      v29 = *v28;
      if (*(v28 - 1) > 0.0)
      {
        ++v10;
      }

      if (v29 > *&v21 && v29 > 0.0)
      {
        *&v21 = *v28;
      }

      if (v29 > 0.0)
      {
        v20 = v20 + 1.0;
      }

      v28 += 12;
      --engraveShadowCount;
    }

    while (engraveShadowCount);
  }

  bevelEmbossCount = self->_bevelEmbossCount;
  if (bevelEmbossCount)
  {
    emboss = self->_emboss;
    do
    {
      v33 = emboss->var0;
      ++emboss;
      if (v33 > 0.0)
      {
        ++v10;
      }

      --bevelEmbossCount;
    }

    while (bevelEmbossCount);
  }

  extraShadowCount = self->_extraShadowCount;
  if (extraShadowCount)
  {
    v35 = &self->_extraShadow->var5;
    do
    {
      v36 = *v35;
      if (*(v35 - 1) > 0.0)
      {
        ++v10;
      }

      if (v36 > *&v21 && v36 > 0.0)
      {
        *&v21 = *v35;
      }

      if (v36 > 0.0)
      {
        v20 = v20 + 1.0;
      }

      v35 += 12;
      --extraShadowCount;
    }

    while (extraShadowCount);
  }

  if (v10 > 1)
  {
    goto LABEL_83;
  }

  if (v20 > 0.0 || *&v21 > 0.0)
  {
    self->_renderStrategy = 1;
  }

  if ([(CUIShapeEffectStack *)self hasEngraveShadow:v21]&& [(CUIShapeEffectStack *)self hasInnerShadow]|| [(CUIShapeEffectStack *)self hasEngraveShadow]&& [(CUIShapeEffectStack *)self hasExtraShadow]|| [(CUIShapeEffectStack *)self hasInnerShadow]&& [(CUIShapeEffectStack *)self hasExtraShadow])
  {
    goto LABEL_83;
  }

  v38 = self->_innerGlowCount;
  if (v38)
  {
    innerGlow = self->_innerGlow;
    do
    {
      v41 = innerGlow->var0;
      ++innerGlow;
      v40 = v41;
      if (v41 != 1852797549 && v40 != 0)
      {
        goto LABEL_83;
      }
    }

    while (--v38);
  }

  v43 = self->_innerShadowCount;
  if (v43)
  {
    innerShadow = self->_innerShadow;
    while (1)
    {
      v46 = innerShadow->var0;
      ++innerShadow;
      v45 = v46;
      if (v46 != 1852797549 && v45 != 0)
      {
        break;
      }

      if (!--v43)
      {
        return;
      }
    }

    goto LABEL_83;
  }
}

- (CUIShapeEffectStack)initWithEffectPreset:(id)preset
{
  v42.receiver = self;
  v42.super_class = CUIShapeEffectStack;
  v4 = [(CUIShapeEffectStack *)&v42 init];
  if (v4)
  {
    [preset effectScale];
    *&v5 = v5;
    v4->_scalefactor = *&v5;
    __asm { FMOV            V0.2S, #1.0 }

    *&v4->_shapeOpacity = _D0;
    v4->_renderStrategy = 2;
    effectCount = [preset effectCount];
    [(CUIShapeEffectStack *)v4 _cleanupEffectSettings];
    if (effectCount)
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = [preset effectTypeAtIndex:v12];
        if (v14 <= 1215653202)
        {
          if (v14 > 1164796530)
          {
            p_bevelEmbossCount = &v4->_bevelEmbossCount;
            if (v14 == 1164796531)
            {
              goto LABEL_17;
            }

            p_bevelEmbossCount = &v4->_innerGradientCount;
            v16 = 1198678372;
          }

          else
          {
            p_bevelEmbossCount = &v4->_colorOverlayCount;
            if (v14 == 1131375730)
            {
              goto LABEL_17;
            }

            p_bevelEmbossCount = &v4->_engraveShadowCount;
            v16 = 1148350320;
          }
        }

        else if (v14 <= 1766288502)
        {
          if (v14 == 1215653203)
          {
            p_bevelEmbossCount = &v4->_hueSaturationCount;
LABEL_17:
            ++*p_bevelEmbossCount;
            goto LABEL_18;
          }

          p_bevelEmbossCount = &v4->_extraShadowCount;
          v16 = 1484026465;
        }

        else
        {
          p_bevelEmbossCount = &v4->_innerGlowCount;
          if (v14 == 1766288503)
          {
            goto LABEL_17;
          }

          p_bevelEmbossCount = &v4->_innerShadowCount;
          if (v14 == 1768837992)
          {
            goto LABEL_17;
          }

          p_bevelEmbossCount = &v4->_outerGlowCount;
          v16 = 1866951799;
        }

        if (v14 == v16)
        {
          goto LABEL_17;
        }

LABEL_18:
        v12 = v13;
        v17 = effectCount > v13++;
      }

      while (v17);
    }

    colorOverlayCount = v4->_colorOverlayCount;
    if (colorOverlayCount)
    {
      v4->_colorOverlay = malloc_type_calloc(colorOverlayCount, 0x18uLL, 0x10000402C707793uLL);
    }

    innerGradientCount = v4->_innerGradientCount;
    if (innerGradientCount)
    {
      v4->_innerGradient = malloc_type_calloc(innerGradientCount, 0x20uLL, 0x1000040E0EAB150uLL);
    }

    innerGlowCount = v4->_innerGlowCount;
    if (innerGlowCount)
    {
      v4->_innerGlow = malloc_type_calloc(innerGlowCount, 0x18uLL, 0x1000040504FFAC1uLL);
    }

    innerShadowCount = v4->_innerShadowCount;
    if (innerShadowCount)
    {
      v4->_innerShadow = malloc_type_calloc(innerShadowCount, 0x30uLL, 0x1000040EED21634uLL);
    }

    outerGlowCount = v4->_outerGlowCount;
    if (outerGlowCount)
    {
      v4->_outerGlow = malloc_type_calloc(outerGlowCount, 0x18uLL, 0x1000040504FFAC1uLL);
    }

    engraveShadowCount = v4->_engraveShadowCount;
    if (engraveShadowCount)
    {
      v4->_engraveShadow = malloc_type_calloc(engraveShadowCount, 0x30uLL, 0x1000040EED21634uLL);
    }

    bevelEmbossCount = v4->_bevelEmbossCount;
    if (bevelEmbossCount)
    {
      v4->_emboss = malloc_type_calloc(bevelEmbossCount, 0x34uLL, 0x10000403884A0CCuLL);
    }

    extraShadowCount = v4->_extraShadowCount;
    if (extraShadowCount)
    {
      v4->_extraShadow = malloc_type_calloc(extraShadowCount, 0x30uLL, 0x1000040EED21634uLL);
    }

    hueSaturationCount = v4->_hueSaturationCount;
    if (hueSaturationCount)
    {
      v4->_hueSaturation = malloc_type_calloc(hueSaturationCount, 0x18uLL, 0x100004020B92A0BuLL);
    }

    if (effectCount)
    {
      v27 = 0;
      v40 = 0;
      v41 = 0;
      v38 = 0;
      v39 = 0;
      v36 = 0;
      v37 = 0;
      v28 = 0;
      v33 = 0;
      v35 = 0;
      v29 = 1;
      while (1)
      {
        v30 = [preset effectTypeAtIndex:{v27, v33}];
        v31 = v30;
        if (v30 > 1215653202)
        {
          break;
        }

        if (v30 > 1164796530)
        {
          switch(v30)
          {
            case 0x456D6273:
              [CUIShapeEffectStack _setBevelEmbossAtIndex:v4 fromPreset:"_setBevelEmbossAtIndex:fromPreset:index:" index:?];
              ++v39;
              break;
            case 0x46616465:
              [(CUIShapeEffectStack *)v4 _setOutputOpacityFromPreset:preset atIndex:v29 - 1];
              break;
            case 0x47726164:
              [CUIShapeEffectStack _setInteriorGradientAtIndex:v4 fromPreset:"_setInteriorGradientAtIndex:fromPreset:index:" index:?];
              ++v35;
              break;
          }

          goto LABEL_66;
        }

        if (v30 != 1131375730)
        {
          if (v30 == 1148350320)
          {
            [CUIShapeEffectStack _setEngraveShadowAtIndex:v4 fromPreset:"_setEngraveShadowAtIndex:fromPreset:index:" index:?];
            ++v38;
          }

          goto LABEL_66;
        }

        [CUIShapeEffectStack _setColorFillAtIndex:v4 FromPreset:"_setColorFillAtIndex:FromPreset:index:" index:?];
        [(CUIShapeEffectStack *)v4 _updateRenderStrategyFromEffect:v31, v34 + 1];
LABEL_67:
        v27 = v29;
        v17 = effectCount > v29++;
        if (!v17)
        {
          return v4;
        }
      }

      if (v30 > 1766288502)
      {
        switch(v30)
        {
          case 0x69476C77:
            [(CUIShapeEffectStack *)v4 _setInnerGlowAtIndex:v28++ fromPreset:preset index:v29 - 1];
            break;
          case 0x696E5368:
            [CUIShapeEffectStack _setInnerShadowAtIndex:v4 fromPreset:"_setInnerShadowAtIndex:fromPreset:index:" index:?];
            ++v36;
            break;
          case 0x6F476C77:
            [CUIShapeEffectStack _setOuterGlowAtIndex:v4 fromPreset:"_setOuterGlowAtIndex:fromPreset:index:" index:?];
            ++v37;
            break;
        }
      }

      else
      {
        switch(v30)
        {
          case 0x48756553:
            [CUIShapeEffectStack _setHueSaturationAtIndex:v4 fromPreset:"_setHueSaturationAtIndex:fromPreset:index:" index:?];
            ++v41;
            break;
          case 0x534F7063:
            [(CUIShapeEffectStack *)v4 _setShapeOpacityFromPreset:preset atIndex:v29 - 1];
            break;
          case 0x58747261:
            [CUIShapeEffectStack _setExtraShadowAtIndex:v4 fromPreset:"_setExtraShadowAtIndex:fromPreset:index:" index:?];
            ++v40;
            break;
        }
      }

LABEL_66:
      [(CUIShapeEffectStack *)v4 _updateRenderStrategyFromEffect:v31, v34];
      goto LABEL_67;
    }
  }

  return v4;
}

- (id)effectPreset
{
  v3 = objc_alloc_init(CUIShapeEffectPreset);
  v10 = v3;
  shapeOpacity = self->_shapeOpacity;
  if (shapeOpacity < 1.0)
  {
    [(CUIShapeEffectPreset *)v3 addShapeOpacityWithOpacity:shapeOpacity];
  }

  if (self->_outputOpacity < 1.0)
  {
    [(CUIShapeEffectPreset *)v10 addOutputOpacityWithOpacity:self->_shapeOpacity];
  }

  if (self->_innerGradientCount)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = &self->_innerGradient[v12];
      LODWORD(v4) = vcvtms_u32_f32(v14->var1 * 255.0);
      LODWORD(v5) = vcvtms_u32_f32(v14->var2 * 255.0);
      LODWORD(v6) = vcvtms_u32_f32(v14->var3 * 255.0);
      LODWORD(v7) = vcvtms_u32_f32(v14->var4 * 255.0);
      LODWORD(v8) = vcvtms_u32_f32(v14->var5 * 255.0);
      LODWORD(v9) = vcvtms_u32_f32(v14->var6 * 255.0);
      LODWORD(v40) = v14->var0;
      [(CUIShapeEffectPreset *)v10 addGradientFillWithTopColorRed:v4 green:v5 blue:v6 bottomColorRed:v7 green:v8 blue:v9 opacity:v14->var7 blendMode:v40];
      ++v13;
      ++v12;
    }

    while (v13 < self->_innerGradientCount);
  }

  if (self->_colorOverlayCount)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = &self->_colorOverlay[v15];
      LODWORD(v4) = vcvtms_u32_f32(v17->var1 * 255.0);
      LODWORD(v5) = vcvtms_u32_f32(v17->var2 * 255.0);
      LODWORD(v6) = vcvtms_u32_f32(v17->var3 * 255.0);
      [(CUIShapeEffectPreset *)v10 addColorFillWithRed:v4 green:v5 blue:v6 opacity:v17->var0 blendMode:v17->var5 tintable:v17->var4];
      ++v16;
      ++v15;
    }

    while (v16 < self->_colorOverlayCount);
  }

  if (self->_hueSaturationCount)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = &self->_hueSaturation[v18];
      LODWORD(v4) = vcvtms_u32_f32(v20->var2 * 255.0);
      LODWORD(v5) = vcvtms_u32_f32(v20->var3 * 255.0);
      LODWORD(v6) = vcvtms_u32_f32(v20->var4 * 255.0);
      [(CUIShapeEffectPreset *)v10 addHueSaturationWithColorRed:v4 green:v5 blue:v6 angle:rint(v20->var0 * 57.2957795) width:rint(v20->var1 * 57.2957795) tintable:v20->var5];
      ++v19;
      ++v18;
    }

    while (v19 < self->_hueSaturationCount);
  }

  if (self->_innerGlowCount)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = &self->_innerGlow[v21];
      LODWORD(v4) = vcvtms_u32_f32(v23->var1 * 255.0);
      LODWORD(v5) = vcvtms_u32_f32(v23->var2 * 255.0);
      LODWORD(v6) = vcvtms_u32_f32(v23->var3 * 255.0);
      [(CUIShapeEffectPreset *)v10 addInnerGlowWithColorRed:v4 green:v5 blue:v6 opacity:v23->var5 blur:v23->var0 blendMode:v23->var4];
      ++v22;
      ++v21;
    }

    while (v22 < self->_innerGlowCount);
  }

  if (self->_innerShadowCount)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = &self->_innerShadow[v24];
      LODWORD(v4) = vcvtms_u32_f32(v26->var1 * 255.0);
      LODWORD(v5) = vcvtms_u32_f32(v26->var2 * 255.0);
      LODWORD(v6) = vcvtms_u32_f32(v26->var3 * 255.0);
      LODWORD(v40) = v26->var0;
      [(CUIShapeEffectPreset *)v10 addInnerShadowWithColorRed:v4 green:v5 blue:v6 opacity:v26->var4 blur:v26->var6 offset:rint(v26->var7 * 57.2957795) angle:v26->var5 blendMode:v40];
      ++v25;
      ++v24;
    }

    while (v25 < self->_innerShadowCount);
  }

  if (self->_outerGlowCount)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = &self->_outerGlow[v27];
      LODWORD(v4) = vcvtms_u32_f32(v29->var0 * 255.0);
      LODWORD(v5) = vcvtms_u32_f32(v29->var1 * 255.0);
      LODWORD(v6) = vcvtms_u32_f32(v29->var2 * 255.0);
      [(CUIShapeEffectPreset *)v10 addOuterGlowWithColorRed:v4 green:v5 blue:v6 opacity:v29->var4 blur:v29->var5 spread:v29->var3];
      ++v28;
      ++v27;
    }

    while (v28 < self->_outerGlowCount);
  }

  if (self->_engraveShadowCount)
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = &self->_engraveShadow[v30];
      LODWORD(v4) = vcvtms_u32_f32(v32->var0 * 255.0);
      LODWORD(v5) = vcvtms_u32_f32(v32->var1 * 255.0);
      LODWORD(v6) = vcvtms_u32_f32(v32->var2 * 255.0);
      LODWORD(v40) = rint(v32->var7 * 57.2957795);
      [(CUIShapeEffectPreset *)v10 addDropShadowWithColorRed:v4 green:v5 blue:v6 opacity:v32->var4 blur:v32->var5 spread:v32->var6 offset:v32->var3 angle:v40];
      ++v31;
      ++v30;
    }

    while (v31 < self->_engraveShadowCount);
  }

  if (self->_bevelEmbossCount)
  {
    v33 = 0;
    v34 = 48;
    do
    {
      v35 = (&self->_emboss->var0 + v34);
      LODWORD(v4) = vcvtms_u32_f32(*(v35 - 8) * 255.0);
      LODWORD(v5) = vcvtms_u32_f32(*(v35 - 7) * 255.0);
      LODWORD(v6) = vcvtms_u32_f32(*(v35 - 6) * 255.0);
      LODWORD(v7) = vcvtms_u32_f32(*(v35 - 4) * 255.0);
      LODWORD(v8) = vcvtms_u32_f32(*(v35 - 3) * 255.0);
      LODWORD(v9) = vcvtms_u32_f32(*(v35 - 2) * 255.0);
      HIDWORD(v41) = *(v35 - 11);
      *&v42 = *v35;
      LODWORD(v41) = *(v35 - 12);
      [(CUIShapeEffectPreset *)v10 addBevelEmbossWithHighlightColorRed:v4 green:v5 blue:v6 opacity:v7 shadowColorRed:v8 green:v9 blue:*(v35 - 5) opacity:*(v35 - 1) blur:v41 soften:v42 bevelStyle:?];
      ++v33;
      v34 += 52;
    }

    while (v33 < self->_bevelEmbossCount);
  }

  if (self->_extraShadowCount)
  {
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = &self->_extraShadow[v36];
      LODWORD(v4) = vcvtms_u32_f32(v38->var0 * 255.0);
      LODWORD(v5) = vcvtms_u32_f32(v38->var1 * 255.0);
      LODWORD(v6) = vcvtms_u32_f32(v38->var2 * 255.0);
      LODWORD(v40) = rint(v38->var7 * 57.2957795);
      [(CUIShapeEffectPreset *)v10 addExtraShadowWithColorRed:v4 green:v5 blue:v6 opacity:v38->var4 blur:v38->var5 spread:v38->var6 offset:v38->var3 angle:v40];
      ++v37;
      ++v36;
    }

    while (v37 < self->_extraShadowCount);
  }

  return v10;
}

+ (id)adjustOpacity:(id)opacity by:(float)by
{
  v6 = [CIFilter filterWithName:@"CUIScaleClampFilter" keysAndValues:@"inputImage", opacity, @"inputScale", [NSNumber numberWithFloat:?], 0];
  if (!v6)
  {
    *&v7 = by;
    v6 = [CIFilter filterWithName:@"CUIScaleClampFilterLocal" keysAndValues:@"inputImage", opacity, @"inputScale", [NSNumber numberWithFloat:v7], 0];
    if (!v6)
    {
      return opacity;
    }
  }

  return [(CIFilter *)v6 valueForKey:@"outputImage"];
}

+ (id)pixelZoomed:(id)zoomed scale:(int)scale about:(CGPoint)about
{
  v5 = [CIFilter filterWithName:@"CIPixelZoom" keysAndValues:@"inputImage", zoomed, @"inputScale", [NSNumber numberWithInt:*&scale], @"inputSourceCenter", [CIVector vectorWithX:about.x Y:about.y], @"inputDestCenter", [CIVector vectorWithX:about.x Y:about.y], 0];

  return [(CIFilter *)v5 valueForKey:@"outputImage"];
}

+ (id)unsharpMask:(id)mask radius:(float)radius intensity:(float)intensity
{
  v7 = [NSNumber numberWithFloat:?];
  *&v8 = intensity;
  v9 = [CIFilter filterWithName:@"CIUnsharpMask" keysAndValues:@"inputImage", mask, @"inputRadius", v7, @"inputIntensity", [NSNumber numberWithFloat:v8], 0];

  return [(CIFilter *)v9 valueForKey:@"outputImage"];
}

+ (id)composite:(id)composite over:(id)over
{
  v4 = [CIFilter filterWithName:@"CISourceOverCompositing" keysAndValues:@"inputImage", composite, @"inputBackgroundImage", over, 0];

  return [(CIFilter *)v4 valueForKey:@"outputImage"];
}

+ (id)composite:(id)composite into:(id)into
{
  v4 = [CIFilter filterWithName:@"CISourceInCompositing" keysAndValues:@"inputImage", composite, @"inputBackgroundImage", into, 0];

  return [(CIFilter *)v4 valueForKey:@"outputImage"];
}

+ (id)composite:(id)composite outOf:(id)of
{
  v4 = [CIFilter filterWithName:@"CISourceOutCompositing" keysAndValues:@"inputImage", composite, @"inputBackgroundImage", of, 0];

  return [(CIFilter *)v4 valueForKey:@"outputImage"];
}

+ (id)composite:(id)composite atop:(id)atop
{
  v4 = [CIFilter filterWithName:@"CISourceAtopCompositing" keysAndValues:@"inputImage", composite, @"inputBackgroundImage", atop, 0];

  return [(CIFilter *)v4 valueForKey:@"outputImage"];
}

+ (id)blend:(id)blend over:(id)over blendKind:(unsigned int)kind
{
  if (blend)
  {
    blendCopy = blend;
    if (over)
    {
      if (kind > 1749903735)
      {
        if (kind <= 1852797548)
        {
          if (kind <= 1818518630)
          {
            if (kind <= 1768188277)
            {
              v18 = @"CIHueBlendMode";
              if (kind != 1752524064)
              {
                v18 = 0;
              }

              if (kind == 1749903736)
              {
                blend = @"CIHardMixBlendMode";
              }

              else
              {
                blend = v18;
              }
            }

            else if (kind == 1768188278)
            {
              blend = @"CIColorBurnBlendMode";
            }

            else if (kind == 1816947060)
            {
              blend = @"CILinearLightBlendMode";
            }

            else
            {
              blend = 0;
              if (kind == 1818391150)
              {
                blend = @"CILinearBurnBlendMode";
              }
            }

            goto LABEL_69;
          }

          if (kind > 1818850404)
          {
            if (kind == 1818850405)
            {
              blend = @"CILightenBlendMode";
            }

            else if (kind == 1819634976)
            {
              blend = @"CILuminosityBlendMode";
            }

            else
            {
              blend = 0;
              if (kind == 1836411936)
              {
                blend = @"CIMultiplyBlendMode";
              }
            }

            goto LABEL_69;
          }

          if (kind == 1818518631)
          {
            blend = @"CILinearDodgeBlendMode";
            goto LABEL_69;
          }

          blend = 0;
          v14 = 1818706796;
LABEL_66:
          if (kind != v14)
          {
            goto LABEL_69;
          }

          goto LABEL_67;
        }

        if (kind > 1935766559)
        {
          if (kind <= 1984719219)
          {
            if (kind == 1935766560)
            {
              blend = @"CISaturationBlendMode";
            }

            else if (kind == 1935897198)
            {
              blend = @"CIScreenBlendMode";
            }

            else
            {
              blend = 0;
              if (kind == 1936553316)
              {
                blend = @"CIExclusionBlendMode";
              }
            }

            goto LABEL_69;
          }

          if (kind == 1984719220)
          {
            blend = @"CIVividLightBlendMode";
            goto LABEL_69;
          }

          if (kind == 1986227573)
          {
            goto LABEL_68;
          }

          blend = 0;
          if (kind == 1986229103)
          {
            goto LABEL_68;
          }

LABEL_69:
          v19 = [CIFilter filterWithName:blend keysAndValues:@"inputImage", blendCopy, @"inputBackgroundImage", over, 0];

          return [(CIFilter *)v19 valueForKey:@"outputImage"];
        }

        if (kind <= 1884055923)
        {
          if (kind != 1852797549)
          {
            v10 = kind == 1870030194;
            v11 = @"CIOverlayBlendMode";
LABEL_74:
            if (v10)
            {
              blend = v11;
            }

            else
            {
              blend = 0;
            }

            goto LABEL_69;
          }

LABEL_68:
          blend = @"CISourceOverCompositing";
          goto LABEL_69;
        }

        if (kind == 1884055924)
        {
          blend = @"CIPinLightBlendMode";
          goto LABEL_69;
        }

        if (kind != 1885434739)
        {
          blend = 0;
          if (kind == 1934387572)
          {
            blend = @"CISoftLightBlendMode";
          }

          goto LABEL_69;
        }
      }

      else
      {
        if (kind <= 25)
        {
          if (kind <= 18)
          {
            if (kind - 16 >= 2)
            {
              if (kind)
              {
                v10 = kind == 18;
                v11 = @"CISourceInCompositing";
                goto LABEL_74;
              }

              goto LABEL_68;
            }

            goto LABEL_67;
          }

          if (kind - 21 < 5)
          {
            goto LABEL_67;
          }

          v15 = @"CISourceOutCompositing";
          v16 = @"CISourceAtopCompositing";
          if (kind != 20)
          {
            v16 = 0;
          }

          v17 = kind == 19;
          goto LABEL_80;
        }

        if (kind <= 1684632434)
        {
          if (kind > 1668246641)
          {
            if (kind == 1668246642)
            {
              blend = @"CIColorBlendMode";
            }

            else if (kind == 1684107883)
            {
              blend = @"CIDarkenBlendMode";
            }

            else
            {
              blend = 0;
              if (kind == 1684629094)
              {
                blend = @"CIDifferenceBlendMode";
              }
            }

            goto LABEL_69;
          }

          v15 = @"CIPlusDarkerCompositing";
          v16 = @"CIAdditionCompositing";
          if (kind != 27)
          {
            v16 = 0;
          }

          v17 = kind == 26;
LABEL_80:
          if (v17)
          {
            blend = v15;
          }

          else
          {
            blend = v16;
          }

          goto LABEL_69;
        }

        if (kind > 1717856629)
        {
          if (kind != 1717856630)
          {
            if (kind == 1718842722)
            {
              blend = @"CISubtractBlendMode";
            }

            else
            {
              blend = 0;
              if (kind == 1749838196)
              {
                blend = @"CIHardLightBlendMode";
              }
            }

            goto LABEL_69;
          }

          goto LABEL_67;
        }

        if (kind != 1684632435)
        {
          if (kind == 1684633120)
          {
            blend = @"CIColorDodgeBlendMode";
            goto LABEL_69;
          }

          blend = 0;
          v14 = 1684751212;
          goto LABEL_66;
        }
      }

LABEL_67:
      _CUILog(4, "CUIShapeEffectStack: Unsupported blend mode %d encountered. Using SourceOver instead.", blend, over, *&kind, v5, v6, v7, *&kind);
      goto LABEL_68;
    }

    overCopy = blend;
  }

  else
  {
    overCopy = over;
  }

  return overCopy;
}

+ (id)image:(id)image withOpacity:(float)opacity
{
  v4 = [CIFilter filterWithName:@"CIOpacity" keysAndValues:@"inputImage", image, @"inputOpacity", [NSNumber numberWithFloat:?], 0];

  return [(CIFilter *)v4 valueForKey:@"outputImage"];
}

+ (id)invert:(id)invert
{
  v3 = [CIFilter filterWithName:@"CIColorInvert" keysAndValues:@"inputImage", invert, 0];

  return [(CIFilter *)v3 valueForKey:@"outputImage"];
}

+ (id)blur:(id)blur radius:(float)radius
{
  v4 = [CIFilter filterWithName:@"CIGaussianBlur" keysAndValues:@"inputImage", blur, @"inputRadius", [NSNumber numberWithFloat:?], 0];

  return [(CIFilter *)v4 valueForKey:@"outputImage"];
}

+ (id)colorWithGray:(float)gray alpha:(float)alpha
{
  v4 = [CIFilter filterWithName:@"CIConstantColorGenerator" keysAndValues:@"inputColor", [CIColor colorWithSRGBRed:gray green:gray blue:gray alpha:alpha], 0];

  return [(CIFilter *)v4 valueForKey:@"outputImage"];
}

+ (id)colorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  v6 = [CIFilter filterWithName:@"CIConstantColorGenerator" keysAndValues:@"inputColor", [CIColor colorWithSRGBRed:red green:green blue:blue alpha:alpha], 0];

  return [(CIFilter *)v6 valueForKey:@"outputImage"];
}

+ (id)rectangle:(CGRect)rectangle withRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  v11 = [CIColor colorWithSRGBRed:red green:green blue:blue alpha:alpha];
  v12 = [CIVector vectorWithX:x Y:y Z:width W:height];
  LODWORD(v13) = 1.0;
  v14 = [CIFilter filterWithName:@"CIRectangleGenerator" keysAndValues:@"inputColor", v11, @"inputRectangle", v12, @"inputEdgeBlur", [NSNumber numberWithFloat:v13], 0];

  return [(CIFilter *)v14 valueForKey:@"outputImage"];
}

+ (id)gradientWithParameters:(id *)parameters inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MaxY = CGRectGetMaxY(rect);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v10 = [CIFilter filterWithName:@"CILinearGradient" keysAndValues:@"inputColor0", [CIColor colorWithSRGBRed:parameters->var1 green:parameters->var2 blue:parameters->var3 alpha:parameters->var7], @"inputColor1", [CIColor colorWithSRGBRed:parameters->var4 green:parameters->var5 blue:parameters->var6 alpha:parameters->var7], @"inputPoint0", [CIVector vectorWithX:0.0 Y:MaxY], @"inputPoint1", [CIVector vectorWithX:0.0 Y:CGRectGetMinY(v13)], 0];

  return [(CIFilter *)v10 valueForKey:@"outputImage"];
}

+ (id)shadowFrom:(id)from red:(float)red green:(float)green blue:(float)blue opacity:(float)opacity
{
  v12 = [CIFilter filterWithName:@"CIMakeShadowMask"];
  [(CIFilter *)v12 setValue:from forKey:@"inputImage"];
  [(CIFilter *)v12 setValue:[CIColor forKey:"colorWithSRGBRed:green:blue:alpha:" colorWithSRGBRed:red green:green blue:blue alpha:1.0], @"inputColor"];
  *&v13 = opacity;
  [(CIFilter *)v12 setValue:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v13], @"inputOpacity"];

  return [(CIFilter *)v12 valueForKey:@"outputImage"];
}

+ (id)imageFromBlendWithMask:(id)mask foreground:(id)foreground background:(id)background
{
  v8 = [CIFilter filterWithName:@"CIBlendWithAlphaMask"];
  [(CIFilter *)v8 setValue:mask forKey:@"inputMaskImage"];
  [(CIFilter *)v8 setValue:foreground forKey:@"inputImage"];
  [(CIFilter *)v8 setValue:background forKey:@"inputBackgroundImage"];

  return [(CIFilter *)v8 valueForKey:@"outputImage"];
}

+ (id)innerGlowFrom:(id)from withRadius:(float)radius red:(float)red green:(float)green blue:(float)blue opacity:(float)opacity
{
  v14 = [CIFilter filterWithName:@"CUIInnerGlowOrShadowFilter"];
  if (!v14)
  {
    v14 = [CIFilter filterWithName:@"CUIInnerGlowOrShadowFilterLocal"];
    if (!v14)
    {
      return from;
    }
  }

  v15 = v14;
  [(CIFilter *)v14 setValue:from forKey:@"inputImage"];
  *&v16 = radius;
  [(CIFilter *)v15 setValue:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v16], @"inputRadius"];
  LODWORD(v17) = 0.5;
  [(CIFilter *)v15 setValue:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v17], @"inputRange"];
  [(CIFilter *)v15 setValue:[CIColor forKey:"colorWithSRGBRed:green:blue:alpha:" colorWithSRGBRed:red green:green blue:blue alpha:opacity], @"inputColor"];

  return [(CIFilter *)v15 valueForKey:@"outputImage"];
}

+ (id)innerShadowFrom:(id)from withOffset:(CGPoint)offset radius:(float)radius red:(float)red green:(float)green blue:(float)blue opacity:(float)opacity
{
  y = offset.y;
  x = offset.x;
  v17 = [CIFilter filterWithName:@"CUIInnerGlowOrShadowFilter"];
  LODWORD(v18) = 1.0;
  [(CIFilter *)v17 setValue:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v18], @"inputRange"];
  if (!v17)
  {
    v17 = [CIFilter filterWithName:@"CUIInnerGlowOrShadowFilterLocal"];
    LODWORD(v19) = 1.0;
    [(CIFilter *)v17 setValue:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v19], @"inputRange"];
    if (!v17)
    {
      return from;
    }
  }

  [(CIFilter *)v17 setValue:from forKey:@"inputImage"];
  [(CIFilter *)v17 setValue:[CIVector forKey:"vectorWithX:Y:" vectorWithX:y Y:?], @"inputOffset"];
  *&v20 = radius;
  [(CIFilter *)v17 setValue:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v20], @"inputRadius"];
  [(CIFilter *)v17 setValue:[CIColor forKey:"colorWithSRGBRed:green:blue:alpha:" colorWithSRGBRed:red green:green blue:blue alpha:opacity], @"inputColor"];

  return [(CIFilter *)v17 valueForKey:@"outputImage"];
}

+ (id)outerGlowFrom:(id)from withSize:(unsigned int)size spread:(unsigned int)spread red:(float)red green:(float)green blue:(float)blue opacity:(float)opacity
{
  v13 = *&spread;
  v14 = *&size;
  v16 = [CIFilter filterWithName:@"CUIOuterGlowOrShadowFilter"];
  if (!v16)
  {
    v16 = [CIFilter filterWithName:@"CUIOuterGlowOrShadowFilterLocal"];
    if (!v16)
    {
      return from;
    }
  }

  v17 = v16;
  if ([(NSDictionary *)[(CIFilter *)v16 attributes] valueForKey:@"inputSpread"])
  {
    [(CIFilter *)v17 setValue:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v14], @"inputSize"];
    v19 = [NSNumber numberWithUnsignedInt:v13];
    v20 = @"inputSpread";
  }

  else
  {
    *&v18 = v14 / 2.853;
    v19 = [NSNumber numberWithFloat:v18];
    v20 = @"inputRadius";
  }

  [(CIFilter *)v17 setValue:v19 forKey:v20];
  [(CIFilter *)v17 setValue:from forKey:@"inputImage"];
  LODWORD(v21) = 0.5;
  [(CIFilter *)v17 setValue:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v21], @"inputRange"];
  [(CIFilter *)v17 setValue:[CIColor forKey:"colorWithSRGBRed:green:blue:alpha:" colorWithSRGBRed:red green:green blue:blue alpha:opacity], @"inputColor"];

  return [(CIFilter *)v17 valueForKey:@"outputImage"];
}

+ (id)outerShadowFrom:(id)from withOffset:(CGPoint)offset size:(unsigned int)size spread:(unsigned int)spread red:(float)red green:(float)green blue:(float)blue opacity:(float)self0
{
  v14 = *&spread;
  v15 = *&size;
  y = offset.y;
  x = offset.x;
  v19 = [CIFilter filterWithName:@"CUIOuterGlowOrShadowFilter"];
  if (!v19)
  {
    v19 = [CIFilter filterWithName:@"CUIOuterGlowOrShadowFilterLocal"];
    if (!v19)
    {
      return from;
    }
  }

  v21 = v19;
  LODWORD(v20) = 1.0;
  [(CIFilter *)v19 setValue:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v20], @"inputRange"];
  if ([(NSDictionary *)[(CIFilter *)v21 attributes] valueForKey:@"inputSpread"])
  {
    [(CIFilter *)v21 setValue:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v15], @"inputSize"];
    v23 = [NSNumber numberWithUnsignedInt:v14];
    v24 = @"inputSpread";
  }

  else
  {
    *&v22 = v15 / 2.853;
    v23 = [NSNumber numberWithFloat:v22];
    v24 = @"inputRadius";
  }

  [(CIFilter *)v21 setValue:v23 forKey:v24];
  [(CIFilter *)v21 setValue:from forKey:@"inputImage"];
  [(CIFilter *)v21 setValue:[CIVector forKey:"vectorWithX:Y:" vectorWithX:y Y:?], @"inputOffset"];
  [(CIFilter *)v21 setValue:[CIColor forKey:"colorWithSRGBRed:green:blue:alpha:" colorWithSRGBRed:red green:green blue:blue alpha:opacity], @"inputColor"];

  return [(CIFilter *)v21 valueForKey:@"outputImage"];
}

+ (id)bevelEmbossFrom:(id)from withSize:(unsigned int)size soften:(unsigned int)soften angle:(float)angle altitude:(float)altitude highlightRed:(float)red highlightGreen:(float)green highlightBlue:(float)self0 highlightOpacity:(float)self1 shadowRed:(float)self2 shadowGreen:(float)self3 shadowBlue:(float)self4 shadowOpacity:(float)self5 bevelStyle:(unsigned int)self6
{
  if (style > 1)
  {
    switch(style)
    {
      case 2u:
        v19 = "Emboss bevel style isn't yet implemented";
        goto LABEL_18;
      case 3u:
        v19 = "Pillow emboss bevel style isn't yet implemented";
        goto LABEL_18;
      case 4u:
        v19 = "Stroke emboss bevel style isn't yet implemented";
LABEL_18:
        _CUILog(4, v19, from, *&size, *&soften, *&style, v16, v17, v37);
        return from;
    }

LABEL_17:
    v19 = "unrecognized bevel style";
    goto LABEL_18;
  }

  v27 = *&soften;
  v28 = *&size;
  if (!style)
  {
    shadowBlueCopy2 = shadowBlue;
    v29 = [CIFilter filterWithName:@"CUIOuterBevelEmbossFilter"];
    if (v29)
    {
      goto LABEL_15;
    }

    v30 = @"CUIOuterBevelEmbossFilterLocal";
    goto LABEL_14;
  }

  if (style != 1)
  {
    goto LABEL_17;
  }

  shadowBlueCopy2 = shadowBlue;
  v29 = [CIFilter filterWithName:@"CUIInnerBevelEmbossFilter"];
  if (!v29)
  {
    v30 = @"CUIInnerBevelEmbossFilterLocal";
LABEL_14:
    v29 = [CIFilter filterWithName:v30];
    if (!v29)
    {
      return from;
    }
  }

LABEL_15:
  v31 = v29;
  [(CIFilter *)v29 setValue:from forKey:@"inputImage"];
  if ([(NSDictionary *)[(CIFilter *)v31 attributes] valueForKey:@"inputSize"])
  {
    [(CIFilter *)v31 setValue:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v28], @"inputSize"];
    v33 = [NSNumber numberWithUnsignedInt:v27];
  }

  else
  {
    *&v32 = v28 / 2.853;
    [(CIFilter *)v31 setValue:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v32], @"inputRadius"];
    *&v35 = v27 / 2.853;
    v33 = [NSNumber numberWithFloat:v35];
  }

  [(CIFilter *)v31 setValue:v33 forKey:@"inputSoften"];
  *&v36 = angle;
  [(CIFilter *)v31 setValue:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v36], @"inputAngle"];
  [(CIFilter *)v31 setValue:[CIColor forKey:"colorWithSRGBRed:green:blue:alpha:" colorWithSRGBRed:red green:green blue:blue alpha:opacity], @"inputHighlightColor"];
  [(CIFilter *)v31 setValue:[CIColor forKey:"colorWithSRGBRed:green:blue:alpha:" colorWithSRGBRed:shadowRed green:shadowGreen blue:shadowBlueCopy2 alpha:shadowOpacity], @"inputShadowColor"];

  return [(CIFilter *)v31 valueForKey:@"outputImage"];
}

+ (id)hueSaturationFrom:(id)from withCenterAngle:(double)angle width:(double)width tintRed:(float)red tintGreen:(float)green tintBlue:(float)blue
{
  v14 = [CIFilter filterWithName:@"CUIHueSaturationFilter"];
  if (!v14)
  {
    v14 = [CIFilter filterWithName:@"CUIHueSaturationFilterLocal"];
    if (!v14)
    {
      return from;
    }
  }

  v15 = v14;
  [(CIFilter *)v14 setValue:from forKey:@"inputImage"];
  [(CIFilter *)v15 setValue:[CIColor forKey:"colorWithSRGBRed:green:blue:" colorWithSRGBRed:red green:green blue:blue], @"inputTintColor"];
  [(CIFilter *)v15 setValue:[NSNumber forKey:"numberWithDouble:" numberWithDouble:angle], @"inputCenterAngle"];
  [(CIFilter *)v15 setValue:[NSNumber forKey:"numberWithDouble:" numberWithDouble:width], @"inputAngleWidth"];

  return [(CIFilter *)v15 valueForKey:@"outputImage"];
}

+ (id)shapeEffectSingleBlurFrom:(id)from withInteriorFill:(id)fill offset:(CGPoint)offset blurSize:(float)size innerGlowRed:(float)red innerGlowGreen:(float)green innerGlowBlue:(float)blue innerGlowOpacity:(float)self0 innerShadowRed:(float)self1 innerShadowGreen:(float)self2 innerShadowBlue:(float)self3 innerShadowOpacity:(float)self4 outerGlowRed:(float)self5 outerGlowGreen:(float)self6 outerGlowBlue:(float)self7 outerGlowOpacity:(float)self8 outerShadowRed:(float)self9 outerShadowGreen:(float)outerShadowGreen outerShadowBlue:(float)outerShadowBlue outerShadowOpacity:(float)outerShadowOpacity hasInsideShadowBlur:(BOOL)blur hasOutsideShadowBlur:(BOOL)shadowBlur
{
  shadowBlurCopy = shadowBlur;
  blurCopy = blur;
  y = offset.y;
  x = offset.x;
  v35 = [CIFilter filterWithName:@"CUIShapeEffectBlur1"];
  if (!v35)
  {
    v35 = [CIFilter filterWithName:@"CUIShapeEffectBlur1Local"];
    if (!v35)
    {
      return from;
    }
  }

  v36 = v35;
  [(CIFilter *)v35 setValue:from forKey:@"inputImage"];
  [(CIFilter *)v36 setValue:fill forKey:@"inputFill"];
  [(CIFilter *)v36 setValue:[CIVector forKey:"vectorWithX:Y:" vectorWithX:y Y:?], @"inputOffset"];
  *&v37 = size;
  [(CIFilter *)v36 setValue:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v37], @"inputRadius"];
  [(CIFilter *)v36 setValue:[CIColor forKey:"colorWithSRGBRed:green:blue:alpha:" colorWithSRGBRed:red green:green blue:blue alpha:opacity], @"inputGlowColorInner"];
  [(CIFilter *)v36 setValue:[CIColor forKey:"colorWithSRGBRed:green:blue:alpha:" colorWithSRGBRed:glowRed green:glowGreen blue:glowBlue alpha:glowOpacity], @"inputGlowColorOuter"];
  [(CIFilter *)v36 setValue:[CIColor forKey:"colorWithSRGBRed:green:blue:alpha:" colorWithSRGBRed:outerShadowRed green:outerShadowGreen blue:outerShadowBlue alpha:outerShadowOpacity], @"inputShadowColorOuter"];
  [(CIFilter *)v36 setValue:[CIColor forKey:"colorWithSRGBRed:green:blue:alpha:" colorWithSRGBRed:shadowRed green:shadowGreen blue:shadowBlue alpha:shadowOpacity], @"inputShadowColorInner"];
  [(CIFilter *)v36 setValue:[NSNumber forKey:"numberWithBool:" numberWithBool:blurCopy], @"inputShadowBlurInner"];
  [(CIFilter *)v36 setValue:[NSNumber forKey:"numberWithBool:" numberWithBool:shadowBlurCopy], @"inputShadowBlurOuter"];

  return [(CIFilter *)v36 valueForKey:@"outputImage"];
}

- (id)imageWithSingleBlurShapeEffectOfImage:(id)image withInteriorFill:(id)fill
{
  hasInnerShadow = [(CUIShapeEffectStack *)self hasInnerShadow];
  if ([(CUIShapeEffectStack *)self hasEngraveShadow])
  {
    v8 = 128;
LABEL_5:
    v15 = *(&self->super.isa + v8);
    v10 = *v15;
    v11 = *(v15 + 1);
    v12 = *(v15 + 2);
    v13 = *(v15 + 3);
    v14 = v15[4];
    v57 = v15[6];
    goto LABEL_6;
  }

  hasExtraShadow = [(CUIShapeEffectStack *)self hasExtraShadow];
  v10 = 0.0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0.0;
  v57 = 0.0;
  if (hasExtraShadow)
  {
    v8 = 144;
    goto LABEL_5;
  }

LABEL_6:
  v54 = v12;
  v55 = v11;
  v56 = LODWORD(v10);
  v16 = ([(CUIShapeEffectStack *)self hasEngraveShadow]|| [(CUIShapeEffectStack *)self hasExtraShadow]) && v14 > 0.0;
  hasInnerGlow = [(CUIShapeEffectStack *)self hasInnerGlow];
  var1 = 0.0;
  var2 = 0.0;
  var3 = 0.0;
  var4 = 0.0;
  var5 = 0.0;
  if (hasInnerGlow)
  {
    innerGlow = self->_innerGlow;
    var1 = innerGlow->var1;
    var2 = innerGlow->var2;
    var3 = innerGlow->var3;
    var4 = innerGlow->var4;
    var5 = innerGlow->var5;
  }

  v48 = var4;
  v49 = var3;
  v50 = var2;
  v51 = var1;
  v53 = v13;
  if ([(CUIShapeEffectStack *)self hasInnerShadow])
  {
    innerShadow = self->_innerShadow;
    v52 = innerShadow->var1;
    v25 = innerShadow->var4;
    v46 = innerShadow->var3;
    v47 = innerShadow->var2;
    v45 = innerShadow->var5;
    y = innerShadow->var8.y;
  }

  else
  {
    v52 = 0.0;
    y = NSZeroPoint.y;
    v46 = 0.0;
    v47 = 0.0;
    v25 = 0.0;
    v45 = 0.0;
  }

  hasOuterGlow = [(CUIShapeEffectStack *)self hasOuterGlow];
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v38 = 0.0;
  if (hasOuterGlow)
  {
    outerGlow = self->_outerGlow;
    *&v34 = outerGlow->var0;
    v35 = outerGlow->var1;
    v36 = outerGlow->var2;
    v37 = outerGlow->var3;
    v38 = outerGlow->var4;
  }

  v44 = LODWORD(v34);
  *&v34 = v57;
  if (v57 <= 0.0)
  {
    [(CUIShapeEffectStack *)self hasEngraveShadow];
  }

  if (y <= 0.0)
  {
    [(CUIShapeEffectStack *)self hasInnerShadow];
  }

  if (v14 != v25)
  {
    [(CUIShapeEffectStack *)self hasInnerShadow];
  }

  if (var5 != v38 && [(CUIShapeEffectStack *)self hasInnerGlow])
  {
    [(CUIShapeEffectStack *)self hasOuterGlow];
  }

  if (y >= v57)
  {
    v40 = y;
  }

  else
  {
    v40 = v57;
  }

  if (v14 <= v25)
  {
    v41 = v25;
  }

  else
  {
    v41 = v14;
  }

  if (v41 <= var5)
  {
    v41 = var5;
  }

  if (v41 <= v38)
  {
    v41 = v38;
  }

  *&v28 = v41 / 2.853;
  LODWORD(v43) = v53;
  *&v30 = v50;
  *&v29 = v51;
  *&v32 = v48;
  *&v31 = v49;
  *&v33 = v52;
  return [CUIShapeEffectStack shapeEffectSingleBlurFrom:image withInteriorFill:fill offset:hasInnerShadow blurSize:v16 innerGlowRed:0.0 innerGlowGreen:v40 innerGlowBlue:v28 innerGlowOpacity:v29 innerShadowRed:v30 innerShadowGreen:v31 innerShadowBlue:v32 innerShadowOpacity:v33 outerGlowRed:__PAIR64__(LODWORD(v46) outerGlowGreen:LODWORD(v47)) outerGlowBlue:__PAIR64__(v44 outerGlowOpacity:LODWORD(v45)) outerShadowRed:__PAIR64__(LODWORD(v36) outerShadowGreen:LODWORD(v35)) outerShadowBlue:__PAIR64__(v56 outerShadowOpacity:LODWORD(v37)) hasInsideShadowBlur:__PAIR64__(v54 hasOutsideShadowBlur:v55), v43];
}

- (id)imageWithInnerGlowOfImage:(id)image effect:(id *)effect
{
  *&v8 = effect->var4;
  *&v4 = effect->var5 / 2.853;
  *&v5 = effect->var1;
  *&v6 = effect->var2;
  *&v7 = effect->var3;
  return [CUIShapeEffectStack innerGlowFrom:image withRadius:v4 red:v5 green:v6 blue:v7 opacity:v8];
}

- (id)imageWithInnerShadowOfImage:(id)image effect:(id *)effect
{
  *&v7 = effect->var3;
  *&v4 = effect->var4 / 2.853;
  *&v5 = effect->var1;
  *&v6 = effect->var2;
  *&v8 = effect->var5;
  return [CUIShapeEffectStack innerShadowFrom:image withOffset:-effect->var8.x radius:-effect->var8.y red:v4 green:v5 blue:v6 opacity:v7, v8];
}

- (id)image:(id)image withAdjustedOpacity:(float)opacity
{
  if (opacity >= 1.0)
  {
    return image;
  }

  else
  {
    return [CUIShapeEffectStack adjustOpacity:image by:?];
  }
}

- (id)imageWithColorOverlayOfImage:(id)image effect:(id *)effect
{
  *&v4 = effect->var1;
  *&v5 = effect->var2;
  *&v6 = effect->var3;
  *&v7 = effect->var4;
  v10 = [CUIShapeEffectStack colorWithRed:v4 green:v5 blue:v6 alpha:v7];
  var0 = effect->var0;

  return [CUIShapeEffectStack blend:v10 over:image blendKind:var0];
}

- (id)imageWithHueSaturationOfImage:(id)image effect:(id *)effect
{
  if (!effect->var6)
  {
    return image;
  }

  *&v4 = effect->var2;
  *&v5 = effect->var3;
  *&v6 = effect->var4;
  return [CUIShapeEffectStack hueSaturationFrom:image withCenterAngle:effect->var0 width:effect->var1 tintRed:v4 tintGreen:v5 tintBlue:v6];
}

- (id)imageWithInteriorGradientFillOfImage:(id)image effect:(id *)effect
{
  [image extent];
  v6 = [CUIShapeEffectStack gradientWithParameters:effect inRect:?];
  var0 = effect->var0;

  return [CUIShapeEffectStack blend:v6 over:image blendKind:var0];
}

- (id)imageWithOuterGlowOfImage:(id)image effect:(id *)effect
{
  *&v4 = effect->var0;
  *&v5 = effect->var1;
  *&v6 = effect->var2;
  *&v7 = effect->var3;
  return [CUIShapeEffectStack outerGlowFrom:image withSize:effect->var4 spread:effect->var5 red:v4 green:v5 blue:v6 opacity:v7];
}

- (id)imageWithEngraveShadowOfImage:(id)image effect:(id *)effect
{
  *&v4 = effect->var0;
  *&v5 = effect->var1;
  *&v6 = effect->var2;
  *&v7 = effect->var3;
  return [CUIShapeEffectStack outerShadowFrom:image withOffset:effect->var4 size:effect->var5 spread:-effect->var8.x red:-effect->var8.y green:v4 blue:v5 opacity:v6, v7];
}

- (id)imageWithExtraShadowOfImage:(id)image effect:(id *)effect
{
  *&v4 = effect->var0;
  *&v5 = effect->var1;
  *&v6 = effect->var2;
  *&v7 = effect->var3;
  return [CUIShapeEffectStack outerShadowFrom:image withOffset:effect->var4 size:effect->var5 spread:-effect->var8.x red:-effect->var8.y green:v4 blue:v5 opacity:v6, v7];
}

- (id)imageWithBevelEmbossOfImage:(id)image effect:(id *)effect
{
  *&v4 = effect->var2;
  *&v5 = effect->var3;
  *&v6 = effect->var4;
  *&v7 = effect->var5;
  *&v8 = effect->var6;
  *&v9 = effect->var7;
  *&v10 = effect->var8;
  *&v11 = effect->var9;
  return [CUIShapeEffectStack bevelEmbossFrom:image withSize:effect->var0 soften:effect->var1 angle:effect->var12 altitude:v4 highlightRed:v5 highlightGreen:v6 highlightBlue:v7 highlightOpacity:v8 shadowRed:v9 shadowGreen:v10 shadowBlue:v11 shadowOpacity:*&effect->var10 bevelStyle:?];
}

- (int)cgBlendModeForOutputBlending
{
  outputBlendMode = [(CUIShapeEffectStack *)self outputBlendMode];

  return [CUIShapeEffectPreset cgBlendModeFromCUIEffectBlendMode:outputBlendMode];
}

- (void)updateOutputBlendingWithInteriorFillHeuristic
{
  colorOverlayCount = self->_colorOverlayCount;
  if (colorOverlayCount)
  {
    colorOverlay = self->_colorOverlay;
    while (1)
    {
      var0 = colorOverlay->var0;
      ++colorOverlay;
      v4 = var0;
      if (var0)
      {
        break;
      }

      if (!--colorOverlayCount)
      {
        return;
      }
    }

    self->_outputBlendMode = v4;
  }
}

- (void)scaleEffectParametersBy:(double)by
{
  if (self->_scalefactor != by)
  {
    innerGlowCount = self->_innerGlowCount;
    if (innerGlowCount)
    {
      p_var5 = &self->_innerGlow->var5;
      do
      {
        byCopy = by;
        *p_var5 = (*p_var5 / self->_scalefactor) * byCopy;
        p_var5 += 6;
        --innerGlowCount;
      }

      while (innerGlowCount);
    }

    innerShadowCount = self->_innerShadowCount;
    if (innerShadowCount)
    {
      byCopy2 = by;
      p_var6 = &self->_innerShadow->var6;
      do
      {
        *(p_var6 - 2) = (*(p_var6 - 2) / self->_scalefactor) * byCopy2;
        v11 = p_var6[1];
        v12 = (*p_var6 / self->_scalefactor) * byCopy2;
        *p_var6 = v12;
        v13 = __sincosf_stret(v11);
        *(p_var6 + 1) = (v13.__cosval * v12);
        *(p_var6 + 2) = (v13.__sinval * v12);
        p_var6 += 12;
        --innerShadowCount;
      }

      while (innerShadowCount);
    }

    outerGlowCount = self->_outerGlowCount;
    if (outerGlowCount)
    {
      p_var4 = &self->_outerGlow->var4;
      do
      {
        byCopy3 = by;
        *p_var4 = (*p_var4 / self->_scalefactor) * byCopy3;
        p_var4 += 6;
        --outerGlowCount;
      }

      while (outerGlowCount);
    }

    engraveShadowCount = self->_engraveShadowCount;
    if (engraveShadowCount)
    {
      byCopy4 = by;
      v19 = &self->_engraveShadow->var6;
      do
      {
        *(v19 - 2) = (*(v19 - 2) / self->_scalefactor) * byCopy4;
        v20 = v19[1];
        v21 = (*v19 / self->_scalefactor) * byCopy4;
        *v19 = v21;
        v22 = __sincosf_stret(v20);
        *(v19 + 1) = (v22.__cosval * v21);
        *(v19 + 2) = (v22.__sinval * v21);
        v19 += 12;
        --engraveShadowCount;
      }

      while (engraveShadowCount);
    }

    bevelEmbossCount = self->_bevelEmbossCount;
    if (bevelEmbossCount)
    {
      byCopy6 = by;
      p_var1 = &self->_emboss->var1;
      do
      {
        v26 = *p_var1;
        *(p_var1 - 1) = (*(p_var1 - 1) / self->_scalefactor) * byCopy6;
        *p_var1 = (v26 / self->_scalefactor) * byCopy6;
        p_var1 += 13;
        --bevelEmbossCount;
      }

      while (bevelEmbossCount);
    }

    else
    {
      byCopy6 = by;
    }

    self->_scalefactor = byCopy6;

    [(CUIShapeEffectStack *)self _updateRenderStrategyFromEffect:1148350320];
  }
}

- (void)_normalizeEffectParameters
{
  innerGlowCount = self->_innerGlowCount;
  if (innerGlowCount)
  {
    p_var5 = &self->_innerGlow->var5;
    do
    {
      v4 = *p_var5;
      if (*p_var5 == 2.0)
      {
        v4 = 1.0;
      }

      *p_var5 = v4;
      p_var5 += 6;
      --innerGlowCount;
    }

    while (innerGlowCount);
  }

  outerGlowCount = self->_outerGlowCount;
  if (outerGlowCount)
  {
    p_var4 = &self->_outerGlow->var4;
    do
    {
      v7 = *p_var4;
      if (*p_var4 == 2.0)
      {
        v7 = 1.0;
      }

      *p_var4 = v7;
      p_var4 += 6;
      --outerGlowCount;
    }

    while (outerGlowCount);
  }

  bevelEmbossCount = self->_bevelEmbossCount;
  if (bevelEmbossCount)
  {
    emboss = self->_emboss;
    __asm { FMOV            V1.2S, #1.0 }

    do
    {
      *emboss = vbsl_s8(vceq_f32(*emboss, 0x4000000040000000), _D1, *emboss);
      emboss = (emboss + 52);
      --bevelEmbossCount;
    }

    while (bevelEmbossCount);
  }
}

- (BOOL)anyEffectAllowsTintSubstitution
{
  colorOverlayCount = self->_colorOverlayCount;
  if (colorOverlayCount)
  {
    p_var5 = &self->_colorOverlay->var5;
    while (1)
    {
      v4 = *p_var5;
      p_var5 += 24;
      if (v4)
      {
        break;
      }

      if (!--colorOverlayCount)
      {
        goto LABEL_5;
      }
    }

    LOBYTE(hueSaturationCount) = 1;
  }

  else
  {
LABEL_5:
    hueSaturationCount = self->_hueSaturationCount;
    if (hueSaturationCount)
    {
      v6 = hueSaturationCount - 1;
      v7 = &self->_hueSaturation->var5;
      do
      {
        v8 = *v7;
        v7 += 24;
        LOBYTE(hueSaturationCount) = v8;
        if (v8)
        {
          break;
        }
      }

      while (v6--);
    }
  }

  return hueSaturationCount & 1;
}

- (void)applyCustomForegroundColor:(CGColor *)color tintEffectColors:(BOOL)colors
{
  colorsCopy = colors;
  ColorSpace = CGColorGetColorSpace(color);
  if (ColorSpace)
  {
    Model = CGColorSpaceGetModel(ColorSpace);
    if (Model)
    {
      if (Model == kCGColorSpaceModelRGB)
      {
        Components = CGColorGetComponents(color);
        v11 = *Components;
        v10 = Components[1];
        v12 = Components[2];
        Alpha = CGColorGetAlpha(color);
      }

      else
      {
        SRGB = _CUIColorSpaceGetSRGB();
        MEMORY[0x193AC52E0](SRGB, 0);
        v15 = CGColorTransformConvertColor();
        CGColorTransformRelease();
        if (!v15)
        {
          return;
        }

        v16 = CGColorGetComponents(v15);
        v11 = *v16;
        v10 = v16[1];
        v12 = v16[2];
        Alpha = CGColorGetAlpha(v15);
        CGColorRelease(v15);
      }
    }

    else
    {
      v12 = *CGColorGetComponents(color);
      Alpha = CGColorGetAlpha(color);
      v10 = v12;
      v11 = v12;
    }

    anyEffectAllowsTintSubstitution = [(CUIShapeEffectStack *)self anyEffectAllowsTintSubstitution];
    if (colorsCopy)
    {
      if (anyEffectAllowsTintSubstitution)
      {
        colorOverlayCount = self->_colorOverlayCount;
        if (colorOverlayCount)
        {
          p_var5 = &self->_colorOverlay->var5;
          do
          {
            if (*p_var5)
            {
              v19 = v11;
              *(p_var5 - 4) = v19;
              v20 = v10;
              *(p_var5 - 3) = v20;
              v23 = *(p_var5 - 1);
              if (v23 <= 0.0)
              {
                v24 = Alpha;
              }

              else
              {
                v24 = Alpha * v23;
              }

              v25 = v24;
              v21 = v12;
              *(p_var5 - 2) = v21;
              *(p_var5 - 1) = v25;
            }

            p_var5 += 24;
            --colorOverlayCount;
          }

          while (colorOverlayCount);
        }

        hueSaturationCount = self->_hueSaturationCount;
        if (hueSaturationCount)
        {
          p_var3 = &self->_hueSaturation->var3;
          do
          {
            if (*(p_var3 + 8) == 1 && (vabdd_f64(v11, *(p_var3 - 1)) > 0.00000011920929 || vabdd_f64(v10, *p_var3) > 0.00000011920929 || vabdd_f64(v12, p_var3[1]) > 0.00000011920929))
            {
              v27 = v11;
              *(p_var3 - 1) = v27;
              v28 = v10;
              *p_var3 = v28;
              v29 = v12;
              p_var3[1] = v29;
              *(p_var3 + 9) = 1;
            }

            p_var3 += 6;
            --hueSaturationCount;
          }

          while (hueSaturationCount);
        }
      }

      else
      {
        v31 = Alpha;
        self->_outputOpacity = v31;
        v32 = self->_colorOverlayCount;
        if (v32)
        {
          p_var4 = &self->_colorOverlay->var4;
          do
          {
            v33 = v11;
            *(p_var4 - 3) = v33;
            v34 = v10;
            *(p_var4 - 2) = v34;
            v35 = v12;
            *(p_var4 - 1) = v35;
            *p_var4 = v31;
            p_var4 += 6;
            --v32;
          }

          while (v32);
        }

        innerGlowCount = self->_innerGlowCount;
        if (innerGlowCount)
        {
          v41 = &self->_innerGlow->var3;
          do
          {
            v38 = v11;
            *(v41 - 2) = v38;
            v39 = v10;
            *(v41 - 1) = v39;
            v40 = v12;
            *v41 = v40;
            v41 += 6;
            --innerGlowCount;
          }

          while (innerGlowCount);
        }

        innerShadowCount = self->_innerShadowCount;
        if (innerShadowCount)
        {
          v46 = &self->_innerShadow->var3;
          do
          {
            v43 = v11;
            *(v46 - 2) = v43;
            v44 = v10;
            *(v46 - 1) = v44;
            v45 = v12;
            *v46 = v45;
            v46 += 12;
            --innerShadowCount;
          }

          while (innerShadowCount);
        }

        outerGlowCount = self->_outerGlowCount;
        if (outerGlowCount)
        {
          p_var2 = &self->_outerGlow->var2;
          do
          {
            v48 = v11;
            *(p_var2 - 2) = v48;
            v49 = v10;
            *(p_var2 - 1) = v49;
            v50 = v12;
            *p_var2 = v50;
            p_var2 += 6;
            --outerGlowCount;
          }

          while (outerGlowCount);
        }

        engraveShadowCount = self->_engraveShadowCount;
        if (engraveShadowCount)
        {
          v56 = &self->_engraveShadow->var2;
          do
          {
            v53 = v11;
            *(v56 - 2) = v53;
            v54 = v10;
            *(v56 - 1) = v54;
            v55 = v12;
            *v56 = v55;
            v56 += 12;
            --engraveShadowCount;
          }

          while (engraveShadowCount);
        }

        extraShadowCount = self->_extraShadowCount;
        if (extraShadowCount)
        {
          v61 = &self->_extraShadow->var2;
          do
          {
            v58 = v11;
            *(v61 - 2) = v58;
            v59 = v10;
            *(v61 - 1) = v59;
            v60 = v12;
            *v61 = v60;
            v61 += 12;
            --extraShadowCount;
          }

          while (extraShadowCount);
        }
      }
    }

    if ((anyEffectAllowsTintSubstitution & 1) == 0)
    {
      if ([(CUIShapeEffectStack *)self hasInnerGradient])
      {
        innerGradientCount = self->_innerGradientCount;
        if (innerGradientCount)
        {
          v65 = &self->_innerGradient->var5;
          do
          {
            v66 = v65[2];
            v63.f64[1] = (1.0 - Alpha) * v11;
            v63.f64[0] = (1.0 - Alpha) * v12;
            v64.f64[1] = (1.0 - Alpha) * v10;
            v64.f64[0] = v63.f64[1];
            *(v65 - 1) = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(v64, vcvtq_f64_f32(*(v65 - 4)), v66)), vmlaq_n_f64(v63, vcvt_hight_f64_f32(*(v65 - 4)), v66));
            v67 = v65[1];
            v68 = v64.f64[1] + v66 * *v65;
            *v65 = v68;
            v69.f64[0] = v63.f64[0] + v66 * v67;
            v69.f64[1] = 1.0 - Alpha + v66;
            *(v65 + 1) = vcvt_f32_f64(v69);
            v65 += 8;
            --innerGradientCount;
          }

          while (innerGradientCount);
        }
      }

      else if ([(CUIShapeEffectStack *)self hasColorOverlay])
      {
        v70 = self->_colorOverlayCount;
        if (v70)
        {
          v71 = &self->_colorOverlay->var2;
          do
          {
            v72 = v71[2];
            v73.f64[0] = (1.0 - Alpha) * v11 + v72 * *(v71 - 1);
            v74.f64[0] = (1.0 - Alpha) * v12 + v72 * v71[1];
            v73.f64[1] = (1.0 - Alpha) * v10 + v72 * *v71;
            v74.f64[1] = 1.0 - Alpha + v72;
            *(v71 - 1) = vcvt_hight_f32_f64(vcvt_f32_f64(v73), v74);
            v71 += 6;
            --v70;
          }

          while (v70);
        }
      }

      else
      {
        self->_colorOverlayCount = 1;
        v75 = malloc_type_calloc(1uLL, 0x18uLL, 0x10000402C707793uLL);
        self->_colorOverlay = v75;
        v76 = v11;
        v77 = v10;
        v75->var1 = v76;
        v75->var2 = v77;
        v78 = v12;
        v79 = Alpha;
        v75->var3 = v78;
        v75->var4 = v79;
      }
    }
  }
}

- (void)scaleBrightnessOfEffectColorsByAmount:(double)amount onlyTintableColors:(BOOL)colors
{
  if (vabdd_f64(1.0, amount) > 0.00000011920929)
  {
    colorsCopy = colors;
    colorOverlayCount = self->_colorOverlayCount;
    if (colorOverlayCount)
    {
      v8 = 0;
      for (i = 0; i < colorOverlayCount; ++i)
      {
        colorOverlay = self->_colorOverlay;
        if (!colorsCopy || colorOverlay[v8].var5)
        {
          v27 = 0.0;
          v28 = 0.0;
          v25 = 0.0;
          v26 = 0.0;
          v23 = 0.0;
          v24 = 0.0;
          p_var0 = &colorOverlay[v8].var0;
          _CUIRGBToHSB(&v28, &v27, &v26, colorOverlay[v8].var1, colorOverlay[v8].var2, colorOverlay[v8].var3);
          v26 = v26 * amount;
          _CUIHSBToRGB(&v25, &v24, &v23, v28, v27, v26);
          v12 = v25;
          p_var0[1] = v12;
          v13 = v24;
          p_var0[2] = v13;
          v14 = v23;
          p_var0[3] = v14;
          colorOverlayCount = self->_colorOverlayCount;
        }

        ++v8;
      }
    }

    hueSaturationCount = self->_hueSaturationCount;
    if (hueSaturationCount)
    {
      v16 = 0;
      for (j = 0; j < hueSaturationCount; ++j)
      {
        hueSaturation = self->_hueSaturation;
        if (!colorsCopy || hueSaturation[v16].var5)
        {
          v27 = 0.0;
          v28 = 0.0;
          v25 = 0.0;
          v26 = 0.0;
          v23 = 0.0;
          v24 = 0.0;
          v19 = &hueSaturation[v16];
          _CUIRGBToHSB(&v28, &v27, &v26, hueSaturation[v16].var2, hueSaturation[v16].var3, hueSaturation[v16].var4);
          v26 = v26 * amount;
          _CUIHSBToRGB(&v25, &v24, &v23, v28, v27, v26);
          v20 = v25;
          v19->var2 = v20;
          v21 = v24;
          v19->var3 = v21;
          v22 = v23;
          v19->var4 = v22;
          v19->var6 = 1;
          hueSaturationCount = self->_hueSaturationCount;
        }

        ++v16;
      }
    }
  }
}

- (void)adjustEffectColorsToTemperature:(int)temperature onlyTintableColors:(BOOL)colors
{
  if (temperature != 6500)
  {
    v27[9] = v4;
    v27[10] = v5;
    if ((temperature - 1000) <= 0x9858)
    {
      colorsCopy = colors;
      v26 = 0.0;
      v27[0] = 0.0;
      v25 = 0.0;
      colorOverlayCount = self->_colorOverlayCount;
      if (colorOverlayCount)
      {
        v10 = 0;
        for (i = 0; i < colorOverlayCount; ++i)
        {
          colorOverlay = self->_colorOverlay;
          if (!colorsCopy || colorOverlay[v10].var5)
          {
            p_var0 = &colorOverlay[v10].var0;
            _CUICreateColorByAdjustingTemperature(temperature, v27, &v26, &v25, colorOverlay[v10].var1, colorOverlay[v10].var2, colorOverlay[v10].var3);
            v14 = v27[0];
            v15 = v26;
            p_var0[1] = v14;
            p_var0[2] = v15;
            v16 = v25;
            p_var0[3] = v16;
            colorOverlayCount = self->_colorOverlayCount;
          }

          ++v10;
        }
      }

      hueSaturationCount = self->_hueSaturationCount;
      if (hueSaturationCount)
      {
        v18 = 0;
        for (j = 0; j < hueSaturationCount; ++j)
        {
          hueSaturation = self->_hueSaturation;
          if (!colorsCopy || hueSaturation[v18].var5)
          {
            v21 = &hueSaturation[v18];
            _CUICreateColorByAdjustingTemperature(temperature, v27, &v26, &v25, hueSaturation[v18].var2, hueSaturation[v18].var3, hueSaturation[v18].var4);
            v22 = v27[0];
            v23 = v26;
            v21->var2 = v22;
            v21->var3 = v23;
            v24 = v25;
            v21->var4 = v24;
            v21->var6 = 1;
            hueSaturationCount = self->_hueSaturationCount;
          }

          ++v18;
        }
      }
    }
  }
}

- (id)standardEffectCompositeWithShapeImage:(id)image blendOntoImage:(BOOL)ontoImage
{
  ontoImageCopy = ontoImage;
  if (standardEffectCompositeWithShapeImage_blendOntoImage__once_token != -1)
  {
    [CUIShapeEffectStack standardEffectCompositeWithShapeImage:blendOntoImage:];
  }

  v8 = standardEffectCompositeWithShapeImage_blendOntoImage__blendWithMaskAvailable;
  *&v4 = self->_shapeOpacity;
  v9 = [(CUIShapeEffectStack *)self image:image withAdjustedOpacity:v4];
  if ([(CUIShapeEffectStack *)self hasEffects])
  {
    v11 = +[CIImage emptyImage];
    if (ontoImageCopy)
    {
      v11 = [CUIShapeEffectStack composite:image over:v11];
    }

    if (!self->_bypassColorFills)
    {
      if (self->_innerGradientCount)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = &self->_innerGradient[v12];
          v15 = *&v14->var4;
          v66 = *&v14->var0;
          v67 = v15;
          v16 = [(CUIShapeEffectStack *)self imageWithInteriorGradientFillOfImage:v9 effect:&v66];
          ++v13;
          ++v12;
        }

        while (v13 < self->_innerGradientCount);
        v11 = v16;
      }

      if (self->_colorOverlayCount)
      {
        v17 = 0;
        v18 = 0;
        do
        {
          v19 = &self->_colorOverlay[v17];
          v20 = *&v19->var0;
          *&v67 = *&v19->var4;
          v66 = v20;
          v11 = [(CUIShapeEffectStack *)self imageWithColorOverlayOfImage:v11 effect:&v66];
          ++v18;
          ++v17;
        }

        while (v18 < self->_colorOverlayCount);
      }
    }

    if (self->_hueSaturationCount)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = &self->_hueSaturation[v21];
        v24 = *&v23->var0;
        *&v67 = *&v23->var4;
        v66 = v24;
        v25 = [(CUIShapeEffectStack *)self imageWithHueSaturationOfImage:v9 effect:&v66];
        ++v22;
        ++v21;
      }

      while (v22 < self->_hueSaturationCount);
      v11 = v25;
      v8 = 0;
    }

    if (self->_innerGlowCount)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = &self->_innerGlow[v26];
        v29 = *&v28->var0;
        *&v67 = *&v28->var4;
        v66 = v29;
        v11 = [CUIShapeEffectStack blend:[(CUIShapeEffectStack *)self imageWithInnerGlowOfImage:v9 effect:&v66] over:v11 blendKind:self->_innerGlow[v26].var0];
        ++v27;
        ++v26;
      }

      while (v27 < self->_innerGlowCount);
    }

    if (self->_innerShadowCount)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = &self->_innerShadow[v30];
        v33 = *&v32->var0;
        var8 = v32->var8;
        v67 = *&v32->var4;
        v68 = var8;
        v66 = v33;
        v11 = [CUIShapeEffectStack blend:[(CUIShapeEffectStack *)self imageWithInnerShadowOfImage:v9 effect:&v66] over:v11 blendKind:self->_innerShadow[v30].var0];
        ++v31;
        ++v30;
      }

      while (v31 < self->_innerShadowCount);
    }

    bevelEmbossCount = self->_bevelEmbossCount;
    if (bevelEmbossCount)
    {
      v36 = 0;
      for (i = 0; i < bevelEmbossCount; ++i)
      {
        v38 = &self->_emboss[v36];
        if (v38->var12 == 1)
        {
          v39 = *&v38->var0;
          v40 = *&v38->var4;
          v41 = *&v38->var8;
          var12 = v38->var12;
          v67 = v40;
          v68 = v41;
          v66 = v39;
          v11 = [CUIShapeEffectStack composite:[(CUIShapeEffectStack *)self imageWithBevelEmbossOfImage:v9 effect:&v66] over:v11];
          bevelEmbossCount = self->_bevelEmbossCount;
        }

        ++v36;
      }
    }

    if ((standardEffectCompositeWithShapeImage_blendOntoImage__blendWithMaskAvailable & 1) == 0)
    {
      v11 = [CUIShapeEffectStack composite:v11 into:v9];
    }

    v42 = +[CIImage emptyImage];
    if (self->_outerGlowCount)
    {
      v43 = 0;
      v44 = 0;
      do
      {
        v45 = &self->_outerGlow[v43];
        v46 = *&v45->var0;
        *&v67 = *&v45->var4;
        v66 = v46;
        v42 = [CUIShapeEffectStack composite:[(CUIShapeEffectStack *)self imageWithOuterGlowOfImage:v9 effect:&v66] over:v42];
        ++v44;
        ++v43;
      }

      while (v44 < self->_outerGlowCount);
    }

    if (self->_engraveShadowCount)
    {
      v47 = 0;
      v48 = 0;
      do
      {
        v49 = &self->_engraveShadow[v47];
        v50 = *&v49->var0;
        v51 = v49->var8;
        v67 = *&v49->var4;
        v68 = v51;
        v66 = v50;
        v42 = [CUIShapeEffectStack composite:[(CUIShapeEffectStack *)self imageWithEngraveShadowOfImage:v9 effect:&v66] over:v42];
        ++v48;
        ++v47;
      }

      while (v48 < self->_engraveShadowCount);
    }

    if (self->_extraShadowCount)
    {
      v52 = 0;
      v53 = 0;
      do
      {
        v54 = &self->_extraShadow[v52];
        v55 = *&v54->var0;
        v56 = v54->var8;
        v67 = *&v54->var4;
        v68 = v56;
        v66 = v55;
        v42 = [CUIShapeEffectStack composite:[(CUIShapeEffectStack *)self imageWithExtraShadowOfImage:v9 effect:&v66] over:v42];
        ++v53;
        ++v52;
      }

      while (v53 < self->_extraShadowCount);
    }

    v57 = self->_bevelEmbossCount;
    if (v57)
    {
      v58 = 0;
      for (j = 0; j < v57; ++j)
      {
        v60 = &self->_emboss[v58];
        if (v60->var12 != 1)
        {
          v61 = *&v60->var0;
          v62 = *&v60->var4;
          v63 = *&v60->var8;
          var12 = v60->var12;
          v67 = v62;
          v68 = v63;
          v66 = v61;
          v42 = [CUIShapeEffectStack composite:[(CUIShapeEffectStack *)self imageWithBevelEmbossOfImage:v9 effect:&v66] over:v42];
          v57 = self->_bevelEmbossCount;
        }

        ++v58;
      }
    }

    if (v8)
    {
      v64 = [CUIShapeEffectStack imageFromBlendWithMask:image foreground:v11 background:v42];
    }

    else
    {
      v64 = [CUIShapeEffectStack composite:v11 over:v42];
    }

    v9 = v64;
  }

  *&v10 = self->_outputOpacity;
  return [(CUIShapeEffectStack *)self image:v9 withAdjustedOpacity:v10];
}

CIFilter *__76__CUIShapeEffectStack_standardEffectCompositeWithShapeImage_blendOntoImage___block_invoke()
{
  result = [CIFilter filterWithName:@"CIBlendWithAlphaMask"];
  standardEffectCompositeWithShapeImage_blendOntoImage__blendWithMaskAvailable = result != 0;
  return result;
}

- (id)optimizedSingleBlurEffectCompositeWithShapeImage:(id)image
{
  v5 = +[CIImage emptyImage];
  if ([(CUIShapeEffectStack *)self hasInnerGradient])
  {
    innerGradient = self->_innerGradient;
    v7 = *&innerGradient->var4;
    v11 = *&innerGradient->var0;
    v12 = v7;
    v5 = [(CUIShapeEffectStack *)self imageWithInteriorGradientFillOfImage:image effect:&v11];
  }

  if ([(CUIShapeEffectStack *)self hasColorOverlay])
  {
    colorOverlay = self->_colorOverlay;
    v9 = *&colorOverlay->var0;
    *&v12 = *&colorOverlay->var4;
    v11 = v9;
    v5 = [(CUIShapeEffectStack *)self imageWithColorOverlayOfImage:v5 effect:&v11];
  }

  return [(CUIShapeEffectStack *)self imageWithSingleBlurShapeEffectOfImage:image withInteriorFill:v5];
}

- (id)compositeEffectStackWithShapeImage:(id)image withScale:(double)scale blendOntoImage:(BOOL)ontoImage
{
  ontoImageCopy = ontoImage;
  if (self->_scalefactor != scale)
  {
    [(CUIShapeEffectStack *)self scaleEffectParametersBy:?];
  }

  [(CUIShapeEffectStack *)self _normalizeEffectParameters];
  if (_CUIDebugUseStandardRendering())
  {
    self->_renderStrategy = 1;
LABEL_10:

    return [(CUIShapeEffectStack *)self standardEffectCompositeWithShapeImage:image blendOntoImage:ontoImageCopy];
  }

  renderStrategy = self->_renderStrategy;
  if (renderStrategy == 1)
  {
    goto LABEL_10;
  }

  if (renderStrategy != 2)
  {
    return 0;
  }

  return [(CUIShapeEffectStack *)self optimizedSingleBlurEffectCompositeWithShapeImage:image];
}

- (CGRect)effectPaddingWithScale:(double)scale
{
  if (self->_scalefactor != scale)
  {
    [(CUIShapeEffectStack *)self scaleEffectParametersBy:?];
  }

  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  [(CUIShapeEffectStack *)self _normalizeEffectParameters];
  v7 = height;
  v8 = width;
  v9 = y;
  x = CGRectZero.origin.x;
  if ([(CUIShapeEffectStack *)self hasOuterGlow])
  {
    v7 = height;
    v8 = width;
    v9 = y;
    x = CGRectZero.origin.x;
    if (self->_outerGlowCount)
    {
      v11 = 0;
      v12 = 16;
      x = CGRectZero.origin.x;
      v9 = y;
      v8 = width;
      v7 = height;
      do
      {
        v24.origin.x = x;
        v24.origin.y = v9;
        v24.size.width = v8;
        v24.size.height = v7;
        v13 = -*(&self->_outerGlow->var0 + v12);
        v25 = CGRectInset(v24, v13, v13);
        x = v25.origin.x;
        v9 = v25.origin.y;
        v8 = v25.size.width;
        v7 = v25.size.height;
        ++v11;
        v12 += 24;
      }

      while (v11 < self->_outerGlowCount);
    }
  }

  if ([(CUIShapeEffectStack *)self hasBevelEmboss]&& self->_bevelEmbossCount)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v26.origin.x = CGRectZero.origin.x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v16 = -(self->_emboss[v14].var0 + self->_emboss[v14].var1);
      v34 = CGRectInset(v26, v16, v16);
      v27.origin.x = x;
      v27.origin.y = v9;
      v27.size.width = v8;
      v27.size.height = v7;
      v28 = CGRectUnion(v27, v34);
      x = v28.origin.x;
      v9 = v28.origin.y;
      v8 = v28.size.width;
      v7 = v28.size.height;
      ++v15;
      ++v14;
    }

    while (v15 < self->_bevelEmbossCount);
  }

  if ([(CUIShapeEffectStack *)self hasEngraveShadow]&& self->_engraveShadowCount)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v29.origin.x = CGRectZero.origin.x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v19 = -self->_engraveShadow[v17].var4;
      v30 = CGRectInset(v29, v19, v19);
      v35 = CGRectOffset(v30, -self->_engraveShadow[v17].var8.x, -self->_engraveShadow[v17].var8.y);
      v31.origin.x = x;
      v31.origin.y = v9;
      v31.size.width = v8;
      v31.size.height = v7;
      v32 = CGRectUnion(v31, v35);
      x = v32.origin.x;
      v9 = v32.origin.y;
      v8 = v32.size.width;
      v7 = v32.size.height;
      ++v18;
      ++v17;
    }

    while (v18 < self->_engraveShadowCount);
  }

  v20 = x;
  v21 = v9;
  v22 = v8;
  v23 = v7;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)effectInsetsWithScale:(double)scale
{
  [(CUIShapeEffectStack *)self effectPaddingWithScale:scale];
  v4 = v3;
  v6 = v5;
  v8 = -(v7 + v3);
  v10 = -(v9 + v5);
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.var3 = v13;
  result.var2 = v12;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (id)processedImageFromShapeImage:(id)image withScale:(double)scale invertShadows:(BOOL)shadows
{
  if (shadows)
  {
    innerShadowCount = self->_innerShadowCount;
    if (innerShadowCount)
    {
      p_y = &self->_innerShadow->var8.y;
      do
      {
        *p_y = -*p_y;
        p_y += 6;
        --innerShadowCount;
      }

      while (innerShadowCount);
    }

    engraveShadowCount = self->_engraveShadowCount;
    if (engraveShadowCount)
    {
      v8 = &self->_engraveShadow->var8.y;
      do
      {
        *v8 = -*v8;
        v8 += 6;
        --engraveShadowCount;
      }

      while (engraveShadowCount);
    }

    extraShadowCount = self->_extraShadowCount;
    if (extraShadowCount)
    {
      v10 = &self->_extraShadow->var8.y;
      do
      {
        *v10 = -*v10;
        v10 += 6;
        --extraShadowCount;
      }

      while (extraShadowCount);
    }
  }

  return [(CUIShapeEffectStack *)self compositeEffectStackWithShapeImage:image withScale:0 blendOntoImage:scale];
}

- (CGImage)newFlattenedImageFromShapeCGImage:(CGImage *)image withScale:(double)scale cache:(BOOL)cache
{
  cacheCopy = cache;
  [(CUIShapeEffectStack *)self cacheKey];
  Property = CGImageGetProperty();
  if (!Property || (v10 = Property, Property == image))
  {
    v11 = [[CIImage alloc] initWithCGImage:image];
    v12 = [(CUIShapeEffectStack *)self compositeEffectStackWithShapeImage:v11 withScale:0 blendOntoImage:scale];
    [v12 extent];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    SRGB = _CUIColorSpaceGetSRGB();
    sharedCIContext = [objc_opt_class() sharedCIContext];
    v10 = [sharedCIContext createCGImage:v12 fromRect:objc_msgSend(sharedCIContext format:"workingFormat") colorSpace:SRGB deferred:{1, v14, v16, v18, v20}];

    if (cacheCopy)
    {
      CGImageSetProperty();
    }
  }

  else
  {
    CGImageRetain(Property);
  }

  return v10;
}

- (CGImage)_newFlattenedImageFromShapeCGImage:(CGImage *)image withScale:(double)scale ciContext:(id)context blendOverImage:(BOOL)overImage
{
  overImageCopy = overImage;
  v10 = [[CIImage alloc] initWithCGImage:image options:&unk_1F00F7FB8];
  v11 = [(CUIShapeEffectStack *)self compositeEffectStackWithShapeImage:v10 withScale:overImageCopy blendOntoImage:scale];
  [v10 extent];
  v13 = v12;
  v15 = v14;
  [(CUIShapeEffectStack *)self effectPaddingWithScale:scale];
  v17 = v16;
  v19 = v18;
  v21 = v13 + v20;
  v23 = v15 + v22;
  SRGB = _CUIColorSpaceGetSRGB();
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  Data = CGBitmapAllocateData();
  [context render:v11 toBitmap:Data rowBytes:AlignedBytesPerRow bounds:kCIFormatBGRA8 format:SRGB colorSpace:{v17, v19, v21, v23}];
  v27 = CGDataProviderCreateWithData(0, Data, (v23 * AlignedBytesPerRow), CGBitmapDataProviderReleaseData);
  v28 = CGImageCreate(v21, v23, 8uLL, 0x20uLL, AlignedBytesPerRow, SRGB, 0x2002u, v27, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v27);

  return v28;
}

- (BOOL)expressableByColorFillCheckingOutputBlending:(BOOL)blending
{
  v3 = 0;
  innerGlowCount = self->_innerGlowCount;
  v14[0] = self->_innerGradientCount;
  v14[1] = innerGlowCount;
  outerGlowCount = self->_outerGlowCount;
  v14[2] = self->_innerShadowCount;
  v14[3] = outerGlowCount;
  extraShadowCount = self->_extraShadowCount;
  v14[4] = self->_engraveShadowCount;
  v14[5] = extraShadowCount;
  v14[6] = self->_bevelEmbossCount;
  do
  {
    if (v14[v3])
    {
      return 0;
    }

    ++v3;
  }

  while (v3 != 7);
  if (blending)
  {
    colorOverlayCount = self->_colorOverlayCount;
    if (colorOverlayCount)
    {
      colorOverlay = self->_colorOverlay;
      do
      {
        result = 0;
        var0 = colorOverlay->var0;
        ++colorOverlay;
        v10 = var0;
        if (var0 > 1986227572)
        {
          if (v10 != 1986229103 && v10 != 1986227573)
          {
            return result;
          }
        }

        else
        {
          if (v10)
          {
            v12 = v10 == 1852797549;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            return result;
          }
        }

        --colorOverlayCount;
      }

      while (colorOverlayCount);
    }
  }

  return 1;
}

+ (CGColor)newColorByAdjustingLightnessOfColor:(CGColor *)color darker:(BOOL)darker
{
  if (!color)
  {
    return 0;
  }

  darkerCopy = darker;
  CopyByMatchingToColorSpace = color;
  SRGB = _CUIColorSpaceGetSRGB();
  CGColorGetColorSpace(CopyByMatchingToColorSpace);
  if (!CGColorSpaceEqualToColorSpace())
  {
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(SRGB, kCGRenderingIntentRelativeColorimetric, CopyByMatchingToColorSpace, 0);
    if (CopyByMatchingToColorSpace)
    {
      goto LABEL_5;
    }

    return 0;
  }

  CGColorRetain(CopyByMatchingToColorSpace);
LABEL_5:
  v7 = CGColorGetComponents(CopyByMatchingToColorSpace);
  v8 = *v7;
  v9 = v7[1];
  v31 = v9;
  v32 = v8;
  v10 = v7[2];
  v11 = v7[3];
  v30 = v10;
  v28 = 0.0;
  v29 = 0.0;
  v27 = 0.0;
  if (darkerCopy)
  {
    v26 = v11;
    _CUIRGBToHSB(&v29, &v28, &v27, v8, v9, v10);
    *v12.i64 = v29 + 0.5;
    *v13.i64 = v29 + 0.5 - trunc(v29 + 0.5);
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    *&v29 = vbslq_s8(vnegq_f64(v14), v13, v12).u64[0];
    _CUIHSBToRGB(&v32, &v31, &v30, v29, v28, v27);
    v15 = vmulq_n_f64(xmmword_18E024A70, v31);
    __asm { FMOV            V4.2D, #1.0 }

    *components = vaddq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v15, xmmword_18E024A80, v32), vdupq_n_s64(0xBFB6C8B439581062), v30), 0, v26), _Q4);
    v34 = v15.f64[0] + v32 * 0.03 + v30 * -0.89 + v26 * 0.0 + 1.0;
    v35 = v26 + v31 * 0.0 + v32 * 0.0 + v30 * 0.0 + 0.0;
  }

  else
  {
    v35 = v9 * 0.0 + v8 * 0.0 + v10 * 0.0 + v11 + 0.0;
    v31 = v9 * -1.347 + v8 * -0.049 + v10 * 0.146 + v11 * 0.0 + 1.25;
    v32 = v9 * -0.097 + v8 * -1.3 + v10 * 0.147 + v11 * 0.0 + 1.25;
    v30 = v9 * -0.097 + v8 * -0.049 + v10 * -1.104 + v11 * 0.0 + 1.25;
    _CUIRGBToHSB(&v29, &v28, &v27, v32, v31, v30);
    *v22.i64 = v29 + 0.5;
    *v23.i64 = v29 + 0.5 - trunc(v29 + 0.5);
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    *&v29 = vbslq_s8(vnegq_f64(v24), v23, v22).u64[0];
    _CUIHSBToRGB(&v32, &v31, &v30, v29, v28, v27);
    components[0] = v32;
    components[1] = v31;
    v34 = v30;
  }

  v21 = CGColorCreate(SRGB, components);
  CGColorRelease(CopyByMatchingToColorSpace);
  return v21;
}

- (id)cacheKey
{
  v2 = (self->_scalefactor << (self->_scalefactor & 7)) + 83 * ((self->_outputBlendMode << (self->_outputBlendMode & 7)) + 83 * (((self->_outputOpacity * 100.0) << ((self->_outputOpacity * 100.0) & 7)) + 83 * ((self->_shapeOpacity * 100.0) << ((self->_shapeOpacity * 100.0) & 7)))) + 47458321;
  innerGradientCount = self->_innerGradientCount;
  if (innerGradientCount)
  {
    p_var4 = &self->_innerGradient->var4;
    do
    {
      v5 = (*(p_var4 - 3) * 255.0);
      v6 = p_var4[2];
      v7 = (p_var4[1] * 255.0);
      v8 = *(p_var4 - 4);
      v9 = p_var4[3] * 100.0;
      v2 = (v9 << (v9 & 7)) + 83 * (((v6 * 255.0) << ((v6 * 255.0) & 7)) + 83 * ((v7 << (v7 & 7)) + 83 * (((*p_var4 * 255.0) << ((*p_var4 * 255.0) & 7)) + 83 * (((*(p_var4 - 1) * 255.0) << ((*(p_var4 - 1) * 255.0) & 7)) + 83 * (((*(p_var4 - 2) * 255.0) << ((*(p_var4 - 2) * 255.0) & 7)) + 83 * ((v5 << (v5 & 7)) + 83 * ((v8 << (v8 & 7)) + 6889 * v2))))))) - 0x57DF3F949DCCE1C0;
      p_var4 += 8;
      --innerGradientCount;
    }

    while (innerGradientCount);
  }

  colorOverlayCount = self->_colorOverlayCount;
  if (colorOverlayCount)
  {
    p_var3 = &self->_colorOverlay->var3;
    do
    {
      v12 = *(p_var3 - 3);
      v2 = (*(p_var3 + 8) << *(p_var3 + 8)) + 83 * (((p_var3[1] * 100.0) << ((p_var3[1] * 100.0) & 7)) + 83 * (((*p_var3 * 255.0) << ((*p_var3 * 255.0) & 7)) + 83 * (((*(p_var3 - 1) * 255.0) << ((*(p_var3 - 1) * 255.0) & 7)) + 83 * (((*(p_var3 - 2) * 255.0) << ((*(p_var3 - 2) * 255.0) & 7)) + 83 * ((v12 << (v12 & 7)) + 6889 * v2))))) + 0x3527352730804F88;
      p_var3 += 6;
      --colorOverlayCount;
    }

    while (colorOverlayCount);
  }

  hueSaturationCount = self->_hueSaturationCount;
  if (hueSaturationCount)
  {
    v14 = &self->_hueSaturation->var3;
    do
    {
      v15 = *(v14 - 3) * 57.2957795;
      v2 = (*(v14 + 9) << *(v14 + 9)) + 83 * ((*(v14 + 8) << *(v14 + 8)) + 83 * (((v14[1] * 255.0) << ((v14[1] * 255.0) & 7)) + 83 * (((*v14 * 255.0) << ((*v14 * 255.0) & 7)) + 83 * (((*(v14 - 1) * 255.0) << ((*(v14 - 1) * 255.0) & 7)) + 83 * ((*(v14 - 2) << (*(v14 - 2) & 7)) + 83 * ((v15 << (v15 & 7)) + 6889 * v2)))))) + 0x46BEAB24AB6CC108;
      v14 += 6;
      --hueSaturationCount;
    }

    while (hueSaturationCount);
  }

  innerGlowCount = self->_innerGlowCount;
  if (innerGlowCount)
  {
    v17 = &self->_innerGlow->var3;
    do
    {
      v18 = (*(v17 - 2) * 255.0);
      v2 = (v17[2] << (v17[2] & 7)) + 83 * (((v17[1] * 100.0) << ((v17[1] * 100.0) & 7)) + 83 * (((*v17 * 255.0) << ((*v17 * 255.0) & 7)) + 83 * (((*(v17 - 1) * 255.0) << ((*(v17 - 1) * 255.0) & 7)) + 83 * ((v18 << (v18 & 7)) + 83 * ((*(v17 - 3) << (*(v17 - 3) & 7)) + 6889 * v2))))) + 0x299C35185859F80;
      v17 += 6;
      --innerGlowCount;
    }

    while (innerGlowCount);
  }

  innerShadowCount = self->_innerShadowCount;
  if (innerShadowCount)
  {
    p_var5 = &self->_innerShadow->var5;
    do
    {
      v21 = (*(p_var5 - 4) * 255.0);
      v22 = (p_var5[1] << (p_var5[1] & 7)) + 83 * (((*p_var5 * 100.0) << ((*p_var5 * 100.0) & 7)) + 83 * ((*(p_var5 - 1) << (*(p_var5 - 1) & 7)) + 83 * (((*(p_var5 - 2) * 255.0) << ((*(p_var5 - 2) * 255.0) & 7)) + 83 * (((*(p_var5 - 3) * 255.0) << ((*(p_var5 - 3) * 255.0) & 7)) + 83 * ((v21 << (v21 & 7)) + 83 * ((*(p_var5 - 5) << (*(p_var5 - 5) & 7)) + 6889 * v2))))));
      v23 = (p_var5[2] * 57.2957795);
      v2 = (*(p_var5 + 5) << (*(p_var5 + 5) & 7)) + 83 * ((*(p_var5 + 3) << (*(p_var5 + 3) & 7)) + 83 * ((v23 << (v23 & 7)) + 83 * v22)) - 0x173702E434C82958;
      p_var5 += 12;
      --innerShadowCount;
    }

    while (innerShadowCount);
  }

  bevelEmbossCount = self->_bevelEmbossCount;
  if (bevelEmbossCount)
  {
    p_var6 = &self->_emboss->var6;
    do
    {
      v26 = *(p_var6 - 6);
      v27 = (*(p_var6 - 4) * 57.2957795);
      v28 = *(p_var6 - 3);
      v29 = (*(p_var6 - 2) * 255.0);
      v30 = (*(p_var6 - 1) * 255.0);
      v31 = (*p_var6 * 255.0);
      v32 = (p_var6[1] * 100.0);
      v33 = (p_var6[2] * 255.0);
      v34 = (p_var6[3] * 255.0);
      v2 = ((p_var6[5] * 100.0) << ((p_var6[5] * 100.0) & 7)) + 83 * (((p_var6[4] * 255.0) << ((p_var6[4] * 255.0) & 7)) + 83 * ((v34 << (v34 & 7)) + 83 * ((v33 << (v33 & 7)) + 83 * ((v32 << (v32 & 7)) + 83 * ((v31 << (v31 & 7)) + 83 * ((v30 << (v30 & 7)) + 83 * ((v29 << (v29 & 7)) + 83 * ((v28 << (v28 & 7)) + 83 * ((v27 << (v27 & 7)) + 83 * ((*(p_var6 - 5) << (*(p_var6 - 5) & 7)) + 83 * ((v26 << (v26 & 7)) + 83 * ((*(p_var6 + 6) << (p_var6[6] & 7)) + 6889 * v2)))))))))))) + 0x60D4F8F84CF55FC8;
      p_var6 += 13;
      --bevelEmbossCount;
    }

    while (bevelEmbossCount);
  }

  outerGlowCount = self->_outerGlowCount;
  if (outerGlowCount)
  {
    v36 = &self->_outerGlow->var3;
    do
    {
      v37 = (*(v36 - 3) * 255.0);
      v2 = (v36[2] << (v36[2] & 7)) + 83 * ((v36[1] << (v36[1] & 7)) + 83 * (((*v36 * 100.0) << ((*v36 * 100.0) & 7)) + 83 * (((*(v36 - 1) * 255.0) << ((*(v36 - 1) * 255.0) & 7)) + 83 * (((*(v36 - 2) * 255.0) << ((*(v36 - 2) * 255.0) & 7)) + 83 * ((v37 << (v37 & 7)) + 6889 * v2))))) + 0x601857BC85859F80;
      v36 += 6;
      --outerGlowCount;
    }

    while (outerGlowCount);
  }

  engraveShadowCount = self->_engraveShadowCount;
  if (engraveShadowCount)
  {
    v39 = &self->_engraveShadow->var5;
    do
    {
      v40 = (*(v39 - 5) * 255.0);
      v41 = (*(v39 - 3) * 255.0);
      v42 = *(v39 - 1);
      v43 = (*(v39 - 2) * 100.0);
      v44 = *v39;
      v45 = v39[2];
      v46 = v39[1];
      v47 = *(v39 + 5);
      v2 = (v47 << (v47 & 7)) + 83 * ((*(v39 + 3) << (*(v39 + 3) & 7)) + 83 * (((v45 * 57.2957795) << ((v45 * 57.2957795) & 7)) + 83 * ((v46 << (v46 & 7)) + 83 * ((v44 << (v44 & 7)) + 83 * ((v43 << (v43 & 7)) + 83 * ((v42 << (v42 & 7)) + 83 * ((v41 << (v41 & 7)) + 83 * (((*(v39 - 4) * 255.0) << ((*(v39 - 4) * 255.0) & 7)) + 83 * ((v40 << (v40 & 7)) + 6889 * v2))))))))) - 0x4B7B6CDC8A65A510;
      v39 += 12;
      --engraveShadowCount;
    }

    while (engraveShadowCount);
  }

  extraShadowCount = self->_extraShadowCount;
  if (extraShadowCount)
  {
    v49 = &self->_extraShadow->var5;
    do
    {
      v50 = (*(v49 - 5) * 255.0);
      v51 = (*(v49 - 3) * 255.0);
      v52 = *(v49 - 1);
      v53 = (*(v49 - 2) * 100.0);
      v54 = *v49;
      v55 = v49[2];
      v56 = v49[1];
      v57 = *(v49 + 5);
      v2 = (v57 << (v57 & 7)) + 83 * ((*(v49 + 3) << (*(v49 + 3) & 7)) + 83 * (((v55 * 57.2957795) << ((v55 * 57.2957795) & 7)) + 83 * ((v56 << (v56 & 7)) + 83 * ((v54 << (v54 & 7)) + 83 * ((v53 << (v53 & 7)) + 83 * ((v52 << (v52 & 7)) + 83 * ((v51 << (v51 & 7)) + 83 * (((*(v49 - 4) * 255.0) << ((*(v49 - 4) * 255.0) & 7)) + 83 * ((v50 << (v50 & 7)) + 6889 * v2))))))))) + 0x7196D2C630712CD2;
      v49 += 12;
      --extraShadowCount;
    }

    while (extraShadowCount);
  }

  return [@"com.apple.CoreUI.ShapeEffectStack." stringByAppendingFormat:@"%lu", v2];
}

@end