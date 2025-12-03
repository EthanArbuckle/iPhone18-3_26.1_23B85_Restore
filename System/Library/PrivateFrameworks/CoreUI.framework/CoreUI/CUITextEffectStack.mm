@interface CUITextEffectStack
- (CGColor)newBackgroundPatternColorWithSize:(CGSize)size contentScale:(double)scale forContext:(CGContext *)context;
- (CGContext)newGlyphMaskContextForBounds:(CGRect)bounds fromContext:(CGContext *)context withScale:(double)scale;
- (CUITextEffectStack)initWithEffectPreset:(id)preset;
- (double)effectiveInteriorFillOpacity;
- (void)_drawShadow:(id *)shadow forGlyphs:(const unsigned __int16 *)glyphs inContext:(CGContext *)context usingFont:(__CTFont *)font atPositions:(const CGPoint *)positions count:(unint64_t)count;
- (void)_drawShadow:(id *)shadow forGlyphs:(const unsigned __int16 *)glyphs inContext:(CGContext *)context usingFont:(__CTFont *)font withAdvances:(const CGSize *)advances count:(unint64_t)count;
- (void)_drawShadow:(id *)shadow usingQuartz:(id)quartz inContext:(CGContext *)context;
- (void)drawGlyphs:(const unsigned __int16 *)glyphs inContext:(CGContext *)context usingFont:(__CTFont *)font atPositions:(const CGPoint *)positions count:(unint64_t)count lineHeight:(double)height inBounds:(CGRect)bounds atScale:(double)self0;
- (void)drawGlyphs:(const unsigned __int16 *)glyphs inContext:(CGContext *)context usingFont:(__CTFont *)font withAdvances:(const CGSize *)advances count:(unint64_t)count lineHeight:(double)height inBounds:(CGRect)bounds atScale:(double)self0;
- (void)drawProcessedMask:(CGContext *)mask atBounds:(CGRect)bounds inContext:(CGContext *)context withScale:(double)scale;
- (void)drawUsingQuartz:(id)quartz inContext:(CGContext *)context inBounds:(CGRect)bounds atScale:(double)scale;
@end

@implementation CUITextEffectStack

- (CUITextEffectStack)initWithEffectPreset:(id)preset
{
  v14.receiver = self;
  v14.super_class = CUITextEffectStack;
  v4 = [(CUIShapeEffectStack *)&v14 initWithEffectPreset:?];
  v5 = v4;
  if (v4)
  {
    if ([(CUIShapeEffectStack *)v4 hasInnerGlow]|| [(CUIShapeEffectStack *)v5 hasInnerShadow]|| [(CUIShapeEffectStack *)v5 hasOuterGlow]|| [(CUIShapeEffectStack *)v5 hasBevelEmboss])
    {
      hasHueSaturation = 1;
    }

    else
    {
      hasHueSaturation = [(CUIShapeEffectStack *)v5 hasHueSaturation];
    }

    *(&v5->super._bypassColorFills + 1) = hasHueSaturation;
    [preset minimumShadowSpread];
    v8 = v7;
    if (!*(&v5->super._bypassColorFills + 1) && [(CUIShapeEffectStack *)v5 engraveShadowCount]&& [(CUIShapeEffectStack *)v5 engraveShadowCount])
    {
      v9 = 0;
      v10 = 20;
      while (*([(CUIShapeEffectStack *)v5 engraveShadow]+ v10) <= v8)
      {
        ++v9;
        v10 += 48;
        if (v9 >= [(CUIShapeEffectStack *)v5 engraveShadowCount])
        {
          goto LABEL_15;
        }
      }

      *(&v5->super._bypassColorFills + 1) = 1;
    }

LABEL_15:
    if (!*(&v5->super._bypassColorFills + 1) && [(CUIShapeEffectStack *)v5 extraShadowCount]&& [(CUIShapeEffectStack *)v5 extraShadowCount])
    {
      v11 = 0;
      for (i = 20; *([(CUIShapeEffectStack *)v5 extraShadow]+ i) <= v8; i += 48)
      {
        if (++v11 >= [(CUIShapeEffectStack *)v5 extraShadowCount])
        {
          return v5;
        }
      }

      *(&v5->super._bypassColorFills + 1) = 1;
    }
  }

  return v5;
}

- (double)effectiveInteriorFillOpacity
{
  v3 = 0.0;
  if ([(CUIShapeEffectStack *)self hasInnerGradient])
  {
    [(CUIShapeEffectStack *)self innerGradientOpacity];
    v3 = v4;
  }

  if (![(CUIShapeEffectStack *)self hasColorOverlay])
  {
    return v3;
  }

  [(CUIShapeEffectStack *)self colorOverlayOpacity];
  return v5 + v3 * (1.0 - v5);
}

- (CGColor)newBackgroundPatternColorWithSize:(CGSize)size contentScale:(double)scale forContext:(CGContext *)context
{
  height = size.height;
  width = size.width;
  v9 = size.width * scale;
  v10 = size.height * scale;
  SRGB = _CUIColorSpaceGetSRGB();
  v14 = CUICGBitmapContextCreate(v9, v10, 8uLL, 0, SRGB, 8194, v12, v13);
  if (v14)
  {
    v15 = v14;
    CGContextScaleCTM(v14, scale, scale);
    if ([(CUIShapeEffectStack *)self hasInnerGradient])
    {
      innerGlowCount = [(CUIShapeEffectStack *)self innerGlowCount];
      if (innerGlowCount)
      {
        v17 = 0;
        do
        {
          components.a = *([(CUIShapeEffectStack *)self innerGradient:v28]+ v17 + 4);
          components.b = *([(CUIShapeEffectStack *)self innerGradient]+ v17 + 8);
          components.c = *([(CUIShapeEffectStack *)self innerGradient]+ v17 + 12);
          components.d = *([(CUIShapeEffectStack *)self innerGradient]+ v17 + 28);
          components.tx = *([(CUIShapeEffectStack *)self innerGradient]+ v17 + 16);
          components.ty = *([(CUIShapeEffectStack *)self innerGradient]+ v17 + 20);
          v32 = *([(CUIShapeEffectStack *)self innerGradient]+ v17 + 24);
          v33 = *([(CUIShapeEffectStack *)self innerGradient]+ v17 + 28);
          v18 = CGGradientCreateWithColorComponents(SRGB, &components.a, 0, 2uLL);
          v29 = 0u;
          v30 = 0u;
          v28 = 0u;
          CGContextGetBaseCTM();
          v34.x = 0.0;
          v35.x = 0.0;
          v35.y = 0.0;
          v34.y = height;
          CGContextDrawLinearGradient(v15, v18, v34, v35, 3u);
          CGGradientRelease(v18);
          v17 += 32;
          --innerGlowCount;
        }

        while (innerGlowCount);
      }
    }

    if ([(CUIShapeEffectStack *)self hasColorOverlay:v28])
    {
      colorOverlayCount = [(CUIShapeEffectStack *)self colorOverlayCount];
      if (colorOverlayCount)
      {
        v22 = colorOverlayCount;
        v23 = 0;
        do
        {
          components.a = *([(CUIShapeEffectStack *)self colorOverlay]+ v23 + 4);
          components.b = *([(CUIShapeEffectStack *)self colorOverlay]+ v23 + 8);
          components.c = *([(CUIShapeEffectStack *)self colorOverlay]+ v23 + 12);
          components.d = *([(CUIShapeEffectStack *)self colorOverlay]+ v23 + 16);
          CGContextSetFillColorSpace(v15, SRGB);
          CGContextSetFillColor(v15, &components.a);
          v36.origin.x = 0.0;
          v36.origin.y = 0.0;
          v36.size.width = width;
          v36.size.height = height;
          CGContextFillRect(v15, v36);
          v23 += 24;
          --v22;
        }

        while (v22);
      }
    }

    Image = CGBitmapContextCreateImage(v15);
    memset(&components, 0, sizeof(components));
    CGAffineTransformMakeScale(&components, 1.0 / scale, 1.0 / scale);
    *(&v28 + 1) = *&components.b;
    v29 = *&components.c;
    v30 = *&components.tx;
    v25 = CGPatternCreateWithImage2();
    Pattern = CGColorSpaceCreatePattern(0);
    *&v28 = 0x3FF0000000000000;
    v20 = CGColorCreateWithPattern(Pattern, v25, &v28);
    CGColorSpaceRelease(Pattern);
    CGPatternRelease(v25);
    CGImageRelease(Image);
    CGContextRelease(v15);
  }

  else
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
    *&components.a = xmmword_18E021E70;
    v20 = CGColorCreate(DeviceGray, &components.a);
    CGColorSpaceRelease(DeviceGray);
  }

  return v20;
}

- (CGContext)newGlyphMaskContextForBounds:(CGRect)bounds fromContext:(CGContext *)context withScale:(double)scale
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  memset(&v29, 0, sizeof(v29));
  CGContextGetCTM(&v29, context);
  v28 = v29;
  v27 = v29;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v32 = CGRectApplyAffineTransform(v31, &v27);
  v33 = CGRectIntegral(v32);
  v10 = v33.origin.x;
  v11 = v33.origin.y;
  v12 = v33.size.width;
  v13 = v33.size.height;
  SRGB = _CUIColorSpaceGetSRGB();
  v17 = CUICGBitmapContextCreate(v12, v13, 8uLL, vcvtd_n_u64_f64(v12, 2uLL), SRGB, 8194, v15, v16);
  memset(&v27, 0, sizeof(v27));
  CGAffineTransformMakeTranslation(&v27, -v10, -v11);
  t1 = v28;
  v25 = v27;
  memset(&v26, 0, sizeof(v26));
  CGAffineTransformConcat(&v26, &t1, &v25);
  t1 = v26;
  CGContextConcatCTM(v17, &t1);
  TextPosition = CGContextGetTextPosition(context);
  CGContextSetTextPosition(v17, TextPosition.x, TextPosition.y);
  CGContextGetTextMatrix(&t1, context);
  CGContextSetTextMatrix(v17, &t1);
  Font = CGContextGetFont();
  CGContextSetFont(v17, Font);
  CGContextGetFontSize();
  CGContextSetFontSize(v17, v20);
  CGContextGetCharacterSpacing();
  CGContextSetCharacterSpacing(v17, v21);
  CGContextGetFontRenderingStyle();
  CGContextSetFontRenderingStyle();
  CGContextSetShouldSmoothFonts(v17, 0);
  CGContextSetFontAntialiasingStyle();
  CGContextSetGrayFillColor(v17, 0.0, 1.0);
  CGContextSetAlpha(v17, 1.0);
  CGContextSetCompositeOperation();
  DeviceGray = CGColorSpaceCreateDeviceGray();
  *&t1.a = xmmword_18E0249F0;
  v23 = CGColorCreate(DeviceGray, &t1.a);
  CGContextSetFontSmoothingBackgroundColor();
  CGColorRelease(v23);
  CGColorSpaceRelease(DeviceGray);
  return v17;
}

- (void)drawProcessedMask:(CGContext *)mask atBounds:(CGRect)bounds inContext:(CGContext *)context withScale:(double)scale
{
  Width = CGBitmapContextGetWidth(mask);
  Height = CGBitmapContextGetHeight(mask);
  BytesPerRow = CGBitmapContextGetBytesPerRow(mask);
  v13 = [[NSData alloc] initWithBytesNoCopy:CGBitmapContextGetData(mask) length:(Height * BytesPerRow) freeWhenDone:0];
  v14 = kCIFormatBGRA8;
  v15 = [CIImage alloc];
  v45 = kCIImageEdgesAreClear;
  v46 = &__kCFBooleanTrue;
  v16 = [v15 initWithBitmapData:v13 bytesPerRow:BytesPerRow size:v14 format:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary options:{"dictionaryWithObjects:forKeys:count:", &v46, &v45, 1), Width, Height}];

  memset(&v44, 0, sizeof(v44));
  CGContextGetCTM(&v44, mask);
  v17 = [(CUIShapeEffectStack *)self processedImageFromShapeImage:v16 withScale:v44.d > 0.0 invertShadows:scale];
  [(CUIShapeEffectStack *)self effectPaddingWithScale:scale];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [v16 extent];
  v27 = v23 + v26;
  v29 = v25 + v28;
  sharedCIContext = [objc_opt_class() sharedCIContext];
  memset(&v43, 0, sizeof(v43));
  CGContextGetCTM(&v42, mask);
  CGAffineTransformInvert(&v43, &v42);
  v42 = v43;
  v47.origin.x = v19;
  v47.origin.y = v21;
  v47.size.width = v27;
  v47.size.height = v29;
  v48 = CGRectApplyAffineTransform(v47, &v42);
  x = v48.origin.x;
  y = v48.origin.y;
  v33 = v48.size.width;
  v34 = v48.size.height;
  v35 = [sharedCIContext createCGImage:v17 fromRect:{v19, v21, v27, v29}];
  CGContextSaveGState(context);
  memset(&v42, 0, sizeof(v42));
  CGContextGetCTM(&v42, context);
  v40 = v42;
  CGAffineTransformInvert(&transform, &v40);
  CGContextConcatCTM(context, &transform);
  transform = v42;
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = v33;
  v49.size.height = v34;
  v50 = CGRectApplyAffineTransform(v49, &transform);
  v36 = v50.origin.x;
  v37 = v50.origin.y;
  v38 = v50.size.width;
  v39 = v50.size.height;
  if ([(CUIShapeEffectStack *)self outputBlendMode])
  {
    CGContextSetBlendMode(context, [(CUIShapeEffectStack *)self cgBlendModeForOutputBlending]);
  }

  v51.origin.x = v36;
  v51.origin.y = v37;
  v51.size.width = v38;
  v51.size.height = v39;
  CGContextDrawImage(context, v51, v35);
  CGContextRestoreGState(context);
  CGImageRelease(v35);
}

- (void)_drawShadow:(id *)shadow forGlyphs:(const unsigned __int16 *)glyphs inContext:(CGContext *)context usingFont:(__CTFont *)font withAdvances:(const CGSize *)advances count:(unint64_t)count
{
  SRGB = _CUIColorSpaceGetSRGB();
  v12 = vcvtq_f64_f32(*&shadow->var0);
  v13 = vcvtq_f64_f32(*&shadow->var2);
  *components = v12;
  v32 = v13;
  v12.f64[0] = shadow->var8.x;
  v23 = v12;
  v12.f64[0] = shadow->var8.y;
  v21 = v12;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  CGContextGetBaseCTM();
  *v14.i64 = -(*v21.i64 * 0.0) - 0.0 * *v23.i64;
  v15.i64[0] = v14.i64[0];
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v17 = vnegq_f64(v16);
  *&v24 = vbslq_s8(v17, v23, v14).u64[0];
  *&v22 = vbslq_s8(v17, v21, v15).u64[0];
  if (shadow->var4 <= 0.0)
  {
    CGContextSetFillColorSpace(context, SRGB);
    CGContextSetFillColor(context, components);
    memset(&v27, 0, sizeof(v27));
    CGContextGetCTM(&v27, context);
    v25 = v27;
    CGAffineTransformInvert(&transform, &v25);
    CGContextConcatCTM(context, &transform);
    CGContextGetBaseCTM();
    CGContextConcatCTM(context, &transform);
    CGContextTranslateCTM(context, v24, v22);
    CGContextGetBaseCTM();
    CGAffineTransformInvert(&transform, &v25);
    CGContextConcatCTM(context, &transform);
    transform = v27;
    CGContextConcatCTM(context, &transform);
    CGContextTranslateCTM(context, v24, v22);
    TextPosition = CGContextGetTextPosition(context);
    CTFontDrawGlyphsWithAdvances();
    transform = v27;
    CGContextSetCTM();
    CGContextSetTextPosition(context, TextPosition.x, TextPosition.y);
  }

  else
  {
    v32.f64[1] = shadow->var3;
    v18 = CGColorCreate(SRGB, components);
    CGStyleCreateShadow2();
    Style = CGContextGetStyle();
    if ([(CUIShapeEffectStack *)self hasEngraveShadow])
    {
      if (Style)
      {
        CTFontDrawGlyphsWithAdvances();
      }
    }

    CGContextSetStyle();
    v32.f64[1] = shadow->var3;
    CGContextSetFillColorSpace(context, SRGB);
    CGContextSetFillColor(context, components);
    CGStyleRelease();
    CGColorRelease(v18);
  }
}

- (void)drawGlyphs:(const unsigned __int16 *)glyphs inContext:(CGContext *)context usingFont:(__CTFont *)font withAdvances:(const CGSize *)advances count:(unint64_t)count lineHeight:(double)height inBounds:(CGRect)bounds atScale:(double)self0
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(CUIShapeEffectStack *)self scalefactor];
  if (v21 != scale)
  {
    [(CUIShapeEffectStack *)self scaleEffectParametersBy:scale];
  }

  if ([(CUITextEffectStack *)self useCoreImageRendering])
  {
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    v56 = CGRectInset(v55, -2.0, -2.0);
    v22 = v56.origin.x;
    v23 = v56.origin.y;
    v24 = v56.size.width;
    v25 = v56.size.height;
    v26 = [CUITextEffectStack newGlyphMaskContextForBounds:"newGlyphMaskContextForBounds:fromContext:withScale:" fromContext:context withScale:?];
    CTFontDrawGlyphsWithAdvances();
    [(CUITextEffectStack *)self drawProcessedMask:v26 atBounds:context inContext:v22 withScale:v23, v24, v25, scale];

    CGContextRelease(v26);
  }

  else
  {
    scale = [(CUITextEffectStack *)self newBackgroundPatternColorWithSize:context contentScale:10.0 forContext:height, scale];
    CGContextSaveGState(context);
    if ([(CUIShapeEffectStack *)self hasEngraveShadow])
    {
      engraveShadowCount = [(CUIShapeEffectStack *)self engraveShadowCount];
      if (engraveShadowCount)
      {
        v29 = engraveShadowCount;
        v30 = 0;
        do
        {
          engraveShadow = [(CUIShapeEffectStack *)self engraveShadow];
          v32 = *&engraveShadow[v30].var0;
          var8 = engraveShadow[v30].var8;
          *&v52.c = *&engraveShadow[v30].var4;
          *&v52.tx = var8;
          *&v52.a = v32;
          [(CUITextEffectStack *)self _drawShadow:&v52 forGlyphs:glyphs inContext:context usingFont:font withAdvances:advances count:count];
          ++v30;
          --v29;
        }

        while (v29);
      }
    }

    if ([(CUIShapeEffectStack *)self hasExtraShadow])
    {
      extraShadowCount = [(CUIShapeEffectStack *)self extraShadowCount];
      if (extraShadowCount)
      {
        v35 = extraShadowCount;
        v36 = 0;
        do
        {
          extraShadow = [(CUIShapeEffectStack *)self extraShadow];
          v38 = *&extraShadow[v36].var0;
          v39 = extraShadow[v36].var8;
          *&v52.c = *&extraShadow[v36].var4;
          *&v52.tx = v39;
          *&v52.a = v38;
          [(CUITextEffectStack *)self _drawShadow:&v52 forGlyphs:glyphs inContext:context usingFont:font withAdvances:advances count:count];
          ++v36;
          --v35;
        }

        while (v35);
      }
    }

    memset(&v52, 0, sizeof(v52));
    CGContextGetCTM(&v52, context);
    d = v52.d;
    v41 = fabs(v52.d);
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    MinX = CGRectGetMinX(v57);
    v43 = x;
    v44 = y;
    v45 = width;
    heightCopy = height;
    if (d >= v41)
    {
      MinY = CGRectGetMinY(*&v43);
    }

    else
    {
      MinY = CGRectGetMaxY(*&v43);
    }

    v48 = v52.tx + MinY * v52.c + v52.a * MinX;
    v49 = v52.ty + MinY * v52.d + v52.b * MinX;
    CGContextGetBaseCTM();
    CGAffineTransformInvert(&v51, &v50);
    v54.height = v51.ty + v49 * v51.d + v51.b * v48;
    v54.width = 0.0;
    CGContextSetPatternPhase(context, v54);
    CGContextSetFillColorWithColor(context, scale);
    if ([(CUIShapeEffectStack *)self outputBlendMode])
    {
      CGContextSetBlendMode(context, [(CUIShapeEffectStack *)self cgBlendModeForOutputBlending]);
    }

    CTFontDrawGlyphsWithAdvances();
    CGColorRelease(scale);
    CGContextRestoreGState(context);
  }
}

- (void)_drawShadow:(id *)shadow forGlyphs:(const unsigned __int16 *)glyphs inContext:(CGContext *)context usingFont:(__CTFont *)font atPositions:(const CGPoint *)positions count:(unint64_t)count
{
  SRGB = _CUIColorSpaceGetSRGB();
  v12 = vcvtq_f64_f32(*&shadow->var2);
  *components = vcvtq_f64_f32(*&shadow->var0);
  v26 = v12;
  txa = shadow->var8.x;
  v15 = -shadow->var8.y;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  CGContextGetBaseCTM();
  memset(&v20, 0, sizeof(v20));
  memset(&v21, 0, sizeof(v21));
  CGAffineTransformInvert(&v21, &v20);
  tx = vmlsq_lane_f64(vmulq_n_f64(*&v21.c, v15), *&v21.a, txa, 0);
  if (shadow->var4 <= 0.0)
  {
    CGContextSetFillColorSpace(context, SRGB);
    CGContextSetFillColor(context, components);
    memset(&v20, 0, sizeof(v20));
    CGContextGetCTM(&v20, context);
    v18 = v20;
    CGAffineTransformInvert(&transform, &v18);
    CGContextConcatCTM(context, &transform);
    CGContextGetBaseCTM();
    CGContextConcatCTM(context, &transform);
    CGContextTranslateCTM(context, tx.f64[0], tx.f64[1]);
    CGContextGetBaseCTM();
    CGAffineTransformInvert(&transform, &v18);
    CGContextConcatCTM(context, &transform);
    transform = v20;
    CGContextConcatCTM(context, &transform);
    CTFontDrawGlyphsAtPositions();
    transform = v20;
    CGContextSetCTM();
  }

  else
  {
    v26.f64[1] = shadow->var3;
    v13 = CGColorCreate(SRGB, components);
    CGStyleCreateShadow2();
    Style = CGContextGetStyle();
    if ([(CUIShapeEffectStack *)self hasEngraveShadow])
    {
      if (Style)
      {
        CTFontDrawGlyphsAtPositions();
      }
    }

    CGContextSetStyle();
    v26.f64[1] = shadow->var3;
    CGContextSetFillColorSpace(context, SRGB);
    CGContextSetFillColor(context, components);
    CGStyleRelease();
    CGColorRelease(v13);
  }
}

- (void)drawGlyphs:(const unsigned __int16 *)glyphs inContext:(CGContext *)context usingFont:(__CTFont *)font atPositions:(const CGPoint *)positions count:(unint64_t)count lineHeight:(double)height inBounds:(CGRect)bounds atScale:(double)self0
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(CUIShapeEffectStack *)self scalefactor];
  if (v21 != scale)
  {
    [(CUIShapeEffectStack *)self scaleEffectParametersBy:scale];
  }

  SymbolicTraits = CTFontGetSymbolicTraits(font);
  if ((SymbolicTraits & 0x2000) != 0)
  {
    [(CUIShapeEffectStack *)self setInnerGradientCount:0];
    [(CUIShapeEffectStack *)self setInnerShadowCount:0];
    [(CUIShapeEffectStack *)self setInnerGlowCount:0];
    [(CUIShapeEffectStack *)self setColorOverlayCount:0];
    if ([(CUIShapeEffectStack *)self hasEngraveShadow])
    {
      engraveShadowCount = [(CUIShapeEffectStack *)self engraveShadowCount];
      if (engraveShadowCount)
      {
        v24 = engraveShadowCount;
        v25 = 28;
        while (fabs(*([(CUIShapeEffectStack *)self engraveShadow]+ v25) + -1.57079633) <= 0.00100000005)
        {
          v25 += 48;
          if (!--v24)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        [(CUIShapeEffectStack *)self setEngraveShadowCount:0];
      }
    }

    [(CUIShapeEffectStack *)self _updateRenderStrategyFromEffect:1148350320];
  }

  if ([(CUITextEffectStack *)self useCoreImageRendering])
  {
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = width;
    v60.size.height = height;
    v61 = CGRectInset(v60, -2.0, -2.0);
    v26 = v61.origin.x;
    v27 = v61.origin.y;
    v28 = v61.size.width;
    v29 = v61.size.height;
    v30 = [CUITextEffectStack newGlyphMaskContextForBounds:"newGlyphMaskContextForBounds:fromContext:withScale:" fromContext:context withScale:?];
    CTFontDrawGlyphsAtPositions();
    [(CUITextEffectStack *)self drawProcessedMask:v30 atBounds:context inContext:v26 withScale:v27, v28, v29, scale];
    CGContextRelease(v30);
    if ((SymbolicTraits & 0x2000) != 0)
    {

      CTFontDrawGlyphs(font, glyphs, positions, count, context);
    }
  }

  else
  {
    if ([(CUIShapeEffectStack *)self hasInnerGradient])
    {
      FillColorAsColor = [(CUITextEffectStack *)self newBackgroundPatternColorWithSize:context contentScale:10.0 forContext:height, scale];
    }

    else
    {
      FillColorAsColor = CGContextGetFillColorAsColor();
      CGColorRetain(FillColorAsColor);
      if ([(CUIShapeEffectStack *)self hasColorOverlay])
      {
        v32 = [(CUIShapeEffectStack *)self newColorByProcessingColor:FillColorAsColor];
        if (v32)
        {
          v33 = v32;
          CGColorRelease(FillColorAsColor);
          FillColorAsColor = v33;
        }
      }
    }

    CGContextSaveGState(context);
    if (_CUIDebugUseSimplifiedTextAntialiasing())
    {
      CGContextSetShouldSmoothFonts(context, 0);
      CGContextSetFontAntialiasingStyle();
      DeviceGray = CGColorSpaceCreateDeviceGray();
      *&components.a = xmmword_18E0249F0;
      v35 = CGColorCreate(DeviceGray, &components.a);
      CGContextSetFontSmoothingBackgroundColor();
      CGColorRelease(v35);
      CGColorSpaceRelease(DeviceGray);
    }

    [(CUIShapeEffectStack *)self outputOpacity];
    if (v36 < 1.0)
    {
      [(CUIShapeEffectStack *)self outputOpacity];
      CGContextSetAlpha(context, v37);
    }

    if ([(CUIShapeEffectStack *)self hasEngraveShadow])
    {
      engraveShadowCount2 = [(CUIShapeEffectStack *)self engraveShadowCount];
      if (engraveShadowCount2)
      {
        v39 = engraveShadowCount2;
        v40 = 0;
        do
        {
          engraveShadow = [(CUIShapeEffectStack *)self engraveShadow];
          v42 = *&engraveShadow[v40].var0;
          var8 = engraveShadow[v40].var8;
          *&components.c = *&engraveShadow[v40].var4;
          *&components.tx = var8;
          *&components.a = v42;
          [(CUITextEffectStack *)self _drawShadow:&components forGlyphs:glyphs inContext:context usingFont:font atPositions:positions count:count];
          ++v40;
          --v39;
        }

        while (v39);
      }
    }

    if ([(CUIShapeEffectStack *)self hasExtraShadow])
    {
      extraShadowCount = [(CUIShapeEffectStack *)self extraShadowCount];
      if (extraShadowCount)
      {
        v45 = extraShadowCount;
        v46 = 0;
        do
        {
          extraShadow = [(CUIShapeEffectStack *)self extraShadow];
          v48 = *&extraShadow[v46].var0;
          v49 = extraShadow[v46].var8;
          *&components.c = *&extraShadow[v46].var4;
          *&components.tx = v49;
          *&components.a = v48;
          [(CUITextEffectStack *)self _drawShadow:&components forGlyphs:glyphs inContext:context usingFont:font atPositions:positions count:count];
          ++v46;
          --v45;
        }

        while (v45);
      }
    }

    memset(&components, 0, sizeof(components));
    CGContextGetCTM(&components, context);
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    MinX = CGRectGetMinX(v62);
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    MinY = CGRectGetMinY(v63);
    v52 = components.tx + MinY * components.c + components.a * MinX;
    v53 = components.ty + MinY * components.d + components.b * MinX;
    CGContextGetBaseCTM();
    CGAffineTransformInvert(&v56, &v55);
    v59.height = v56.ty + v53 * v56.d + v56.b * v52;
    v59.width = 0.0;
    CGContextSetPatternPhase(context, v59);
    CGContextSetFillColorWithColor(context, FillColorAsColor);
    if ([(CUIShapeEffectStack *)self outputBlendMode]&& (CGContextSetBlendMode(context, [(CUIShapeEffectStack *)self cgBlendModeForOutputBlending]), FontSmoothingStyle = CGContextGetFontSmoothingStyle(), CGContextGetShouldSmoothFonts()) && FontSmoothingStyle >= 0x11)
    {
      CGContextBeginTransparencyLayer(context, 0);
      CTFontDrawGlyphsAtPositions();
      CGContextEndTransparencyLayer(context);
    }

    else
    {
      CTFontDrawGlyphsAtPositions();
    }

    CGColorRelease(FillColorAsColor);
    CGContextRestoreGState(context);
  }
}

- (void)_drawShadow:(id *)shadow usingQuartz:(id)quartz inContext:(CGContext *)context
{
  SRGB = _CUIColorSpaceGetSRGB();
  *components = vcvtq_f64_f32(*&shadow->var0);
  var2 = shadow->var2;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  CGContextGetBaseCTM();
  memset(&v12, 0, sizeof(v12));
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformInvert(&v13, &v12);
  var3 = shadow->var3;
  v10 = CGColorCreate(SRGB, components);
  CGStyleCreateShadow2();
  Style = CGContextGetStyle();
  if ([(CUIShapeEffectStack *)self hasEngraveShadow]&& Style)
  {
    (*(quartz + 2))(quartz, context);
  }

  CGContextSetStyle();
  var3 = shadow->var3;
  CGContextSetFillColorSpace(context, SRGB);
  CGContextSetFillColor(context, components);
  CGContextSetStrokeColorSpace(context, SRGB);
  CGContextSetStrokeColor(context, components);
  CGStyleRelease();
  CGColorRelease(v10);
}

- (void)drawUsingQuartz:(id)quartz inContext:(CGContext *)context inBounds:(CGRect)bounds atScale:(double)scale
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(CUITextEffectStack *)self useCoreImageRendering])
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v44 = CGRectInset(v43, -2.0, -2.0);
    v14 = v44.origin.x;
    v15 = v44.origin.y;
    v16 = v44.size.width;
    v17 = v44.size.height;
    v18 = [CUITextEffectStack newGlyphMaskContextForBounds:"newGlyphMaskContextForBounds:fromContext:withScale:" fromContext:context withScale:?];
    (*(quartz + 2))(quartz, v18);
    [(CUITextEffectStack *)self drawProcessedMask:v18 atBounds:context inContext:v14 withScale:v15, v16, v17, scale];
    CGContextBeginPath(context);

    CGContextRelease(v18);
  }

  else
  {
    if ([(CUIShapeEffectStack *)self hasInnerGradient])
    {
      FillColorAsColor = [(CUITextEffectStack *)self newBackgroundPatternColorWithSize:context contentScale:10.0 forContext:height, scale];
    }

    else
    {
      FillColorAsColor = CGContextGetFillColorAsColor();
      CGColorRetain(FillColorAsColor);
      if ([(CUIShapeEffectStack *)self hasColorOverlay])
      {
        v20 = [(CUIShapeEffectStack *)self newColorByProcessingColor:FillColorAsColor];
        if (v20)
        {
          v21 = v20;
          CGColorRelease(FillColorAsColor);
          FillColorAsColor = v21;
        }
      }
    }

    CGContextSaveGState(context);
    if ([(CUIShapeEffectStack *)self hasEngraveShadow])
    {
      engraveShadowCount = [(CUIShapeEffectStack *)self engraveShadowCount];
      if (engraveShadowCount)
      {
        v23 = engraveShadowCount;
        v24 = 0;
        do
        {
          engraveShadow = [(CUIShapeEffectStack *)self engraveShadow];
          v26 = *&engraveShadow[v24].var0;
          var8 = engraveShadow[v24].var8;
          *&v40.c = *&engraveShadow[v24].var4;
          *&v40.tx = var8;
          *&v40.a = v26;
          [(CUITextEffectStack *)self _drawShadow:&v40 usingQuartz:quartz inContext:context];
          ++v24;
          --v23;
        }

        while (v23);
      }
    }

    if ([(CUIShapeEffectStack *)self hasExtraShadow])
    {
      extraShadowCount = [(CUIShapeEffectStack *)self extraShadowCount];
      if (extraShadowCount)
      {
        v29 = extraShadowCount;
        v30 = 0;
        do
        {
          extraShadow = [(CUIShapeEffectStack *)self extraShadow];
          v32 = *&extraShadow[v30].var0;
          v33 = extraShadow[v30].var8;
          *&v40.c = *&extraShadow[v30].var4;
          *&v40.tx = v33;
          *&v40.a = v32;
          [(CUITextEffectStack *)self _drawShadow:&v40 usingQuartz:quartz inContext:context];
          ++v30;
          --v29;
        }

        while (v29);
      }
    }

    memset(&v40, 0, sizeof(v40));
    CGContextGetCTM(&v40, context);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    MinX = CGRectGetMinX(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    MinY = CGRectGetMinY(v46);
    v36 = v40.tx + MinY * v40.c + v40.a * MinX;
    v37 = v40.ty + MinY * v40.d + v40.b * MinX;
    CGContextGetBaseCTM();
    CGAffineTransformInvert(&v39, &v38);
    v42.height = v39.ty + v37 * v39.d + v39.b * v36;
    v42.width = 0.0;
    CGContextSetPatternPhase(context, v42);
    CGContextSetFillColorWithColor(context, FillColorAsColor);
    CGContextSetStrokeColorWithColor(context, FillColorAsColor);
    if ([(CUIShapeEffectStack *)self outputBlendMode])
    {
      CGContextSetBlendMode(context, [(CUIShapeEffectStack *)self cgBlendModeForOutputBlending]);
    }

    (*(quartz + 2))(quartz, context);
    CGColorRelease(FillColorAsColor);
    CGContextRestoreGState(context);
  }
}

@end