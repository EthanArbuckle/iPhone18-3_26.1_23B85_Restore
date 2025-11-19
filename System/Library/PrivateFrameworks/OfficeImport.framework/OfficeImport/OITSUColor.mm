@interface OITSUColor
+ (id)blackColor;
+ (id)blueColor;
+ (id)brownColor;
+ (id)clearColor;
+ (id)colorWithBGR:(unsigned int)a3;
+ (id)colorWithBGRValue:(int64_t)a3;
+ (id)colorWithCGColor:(CGColor *)a3;
+ (id)colorWithCalibratedHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6;
+ (id)colorWithCsColour:(const CsColour *)a3;
+ (id)colorWithDeviceCyan:(double)a3 magenta:(double)a4 yellow:(double)a5 black:(double)a6 alpha:(double)a7;
+ (id)colorWithDeviceHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6;
+ (id)colorWithEshColor:(const EshColor *)a3;
+ (id)colorWithHexString:(id)a3;
+ (id)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6;
+ (id)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7;
+ (id)colorWithPatternImage:(id)a3;
+ (id)colorWithRGBValue:(int64_t)a3;
+ (id)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (id)colorWithSystemColorID:(int)a3;
+ (id)colorWithUIColor:(id)a3;
+ (id)colorWithWhite:(double)a3 alpha:(double)a4;
+ (id)cyanColor;
+ (id)grayColor;
+ (id)greenColor;
+ (id)lightGrayColor;
+ (id)magentaColor;
+ (id)orangeColor;
+ (id)purpleColor;
+ (id)randomColor;
+ (id)redColor;
+ (id)stringForColor:(id)a3;
+ (id)stringForSystemColorID:(int)a3;
+ (id)whiteColor;
+ (id)yellowColor;
- ($14D77461FF5D83CAEC4252578BA76F85)ttColor;
- (BOOL)isAlmostEqualToColor:(id)a3;
- (BOOL)isBlack;
- (BOOL)isEqualWithTolerance:(id)a3;
- (BOOL)isNearlyWhite;
- (BOOL)p_isEqualToColor:(id)a3 withTolerance:(double)a4;
- (BOOL)wantsHighContrastBackgroundForDarkMode:(id)a3;
- (CGColor)CGColor;
- (CGColorSpace)CGColorSpace;
- (CsColour)csColour;
- (EshColor)eshColor;
- (OITSUColor)colorWithAlphaComponent:(double)a3;
- (OITSUColor)colorWithShadeValue:(double)a3;
- (OITSUColor)colorWithTintValue:(double)a3;
- (OITSUColor)initWithCGColor:(CGColor *)a3 colorSpace:(unint64_t)a4;
- (OITSUColor)initWithHexString:(id)a3;
- (OITSUColor)initWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7;
- (OITSUColor)initWithPatternImage:(id)a3;
- (OITSUColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(unint64_t)a7;
- (OITSUColor)initWithUIColor:(id)a3;
- (UIColor)UIColor;
- (double)alphaComponent;
- (double)brightnessComponent;
- (double)hueComponent;
- (double)luminance;
- (double)p_cmykComponentWithIndex:(unsigned __int8)a3;
- (double)p_rgbComponentWithIndex:(unsigned __int8)a3;
- (double)saturationComponent;
- (double)whiteComponent;
- (id)blendedColorWithFraction:(double)a3 ofColor:(id)a4;
- (id)copy;
- (id)grayscaleColor;
- (id)hexString;
- (id)invertedColor;
- (id)newBlendedColorWithFraction:(double)a3 ofColor:(id)a4;
- (int)CGColorSpaceModel;
- (void)dealloc;
- (void)getCyan:(double *)a3 magenta:(double *)a4 yellow:(double *)a5 black:(double *)a6 alpha:(double *)a7;
- (void)getRGBAComponents:(double *)a3;
- (void)getRGBBytes:(char *)a3 green:(char *)a4 blue:(char *)a5;
- (void)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6;
- (void)getWhite:(double *)a3 alpha:(double *)a4;
- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)set;
@end

@implementation OITSUColor

- (CGColor)CGColor
{
  v2 = CGColorRetain(self->mCGColor);

  return CFAutorelease(v2);
}

+ (id)colorWithCGColor:(CGColor *)a3
{
  v3 = [[a1 alloc] initWithCGColor:a3];

  return v3;
}

+ (id)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v6 = [[a1 alloc] initWithRed:a3 green:a4 blue:a5 alpha:a6];

  return v6;
}

+ (id)colorWithWhite:(double)a3 alpha:(double)a4
{
  v4 = [[a1 alloc] initWithWhite:a3 alpha:a4];

  return v4;
}

+ (id)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6
{
  v6 = [[a1 alloc] initWithHue:a3 saturation:a4 brightness:a5 alpha:a6];

  return v6;
}

+ (id)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7
{
  v7 = [[a1 alloc] initWithHue:a7 saturation:a3 brightness:a4 alpha:a5 targetRGBSpace:a6];

  return v7;
}

+ (id)colorWithPatternImage:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPatternImage:v4];

  return v5;
}

+ (id)colorWithHexString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHexString:v4];

  return v5;
}

+ (id)colorWithUIColor:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithUIColor:v4];

  return v5;
}

+ (id)randomColor
{
  RandomRGB = TSUCGColorCreateRandomRGB();
  v3 = [OITSUColor colorWithCGColor:RandomRGB];
  CGColorRelease(RandomRGB);

  return v3;
}

+ (id)clearColor
{
  v2 = [[a1 alloc] initWithWhite:0.0 alpha:0.0];

  return v2;
}

+ (id)blackColor
{
  v2 = [[a1 alloc] initWithWhite:0.0 alpha:1.0];

  return v2;
}

+ (id)whiteColor
{
  v2 = [[a1 alloc] initWithWhite:1.0 alpha:1.0];

  return v2;
}

+ (id)grayColor
{
  v2 = [[a1 alloc] initWithWhite:0.5 alpha:1.0];

  return v2;
}

+ (id)lightGrayColor
{
  v2 = [[a1 alloc] initWithWhite:0.667 alpha:1.0];

  return v2;
}

+ (id)redColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)greenColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)blueColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)cyanColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)yellowColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)magentaColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)orangeColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.5 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)purpleColor
{
  v2 = [[a1 alloc] initWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];

  return v2;
}

+ (id)brownColor
{
  v2 = [[a1 alloc] initWithRed:0.6 green:0.4 blue:0.2 alpha:1.0];

  return v2;
}

- (OITSUColor)initWithCGColor:(CGColor *)a3 colorSpace:(unint64_t)a4
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor initWithCGColor:colorSpace:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
    [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:150 isFatal:0 description:"invalid nil value for '%{public}s'", "CGColor"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v41.receiver = self;
  v41.super_class = OITSUColor;
  v9 = [(OITSUColor *)&v41 init];
  if (v9)
  {
    if (CGColorGetPattern(a3))
    {
      if (a4 != 2)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor initWithCGColor:colorSpace:]"];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
        [OITSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:232 isFatal:0 description:"If the color has a pattern, its color space should be Unspecified"];
LABEL_7:

        +[OITSUAssertionHandler logBacktraceThrottled];
      }

LABEL_25:
      Copy = CGColorCreateCopy(a3);
      goto LABEL_26;
    }

    ColorSpace = CGColorGetColorSpace(a3);
    Model = CGColorSpaceGetModel(ColorSpace);
    if (a4)
    {
      if (a4 != 2)
      {
        if (a4 != 1)
        {
          goto LABEL_25;
        }

        if (Model != kCGColorSpaceModelRGB)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor initWithCGColor:colorSpace:]"];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
          [OITSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:172 isFatal:0 description:"Color specified as P3 isn't even RGB!"];

          +[OITSUAssertionHandler logBacktraceThrottled];
        }

        v16 = CGColorGetColorSpace(a3);
        v17 = TSUSRGBColorSpace();
        if (!CFEqual(v16, v17))
        {
          v18 = TSUP3ColorSpace();
          if (!CFEqual(v16, v18))
          {
            v19 = TSUDeviceRGBColorSpace();
            if (!CFEqual(v16, v19))
            {
              v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor initWithCGColor:colorSpace:]"];
              v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
              [OITSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:179 isFatal:0 description:"Color specified as P3 isn't P3, sRGB or Device RGB"];
              a4 = 1;
              goto LABEL_7;
            }
          }
        }

        goto LABEL_19;
      }

      v20 = CGColorGetColorSpace(a3);
      v21 = TSUSRGBColorSpace();
      if (!CFEqual(v20, v21))
      {
        v22 = TSUP3ColorSpace();
        if (!CFEqual(v20, v22))
        {
          v38 = CGColorGetColorSpace(a3);
          if (CGColorSpaceGetModel(v38) == kCGColorSpaceModelRGB && CGColorSpaceIsWideGamutRGB(v38))
          {
            a4 = 1;
            v39 = TSUP3ColorSpace();
          }

          else
          {
            v39 = TSUSRGBColorSpace();
            a4 = 0;
          }

          Copy = CGColorCreateCopyByMatchingToColorSpace(v39, kCGRenderingIntentDefault, a3, 0);
          if (Copy)
          {
LABEL_26:
            v9->mCGColor = Copy;
            v9->mColorRGBSpace = a4;
            if (!CGColorGetPattern(Copy))
            {
              Components = CGColorGetComponents(v9->mCGColor);
              NumberOfComponents = CGColorGetNumberOfComponents(v9->mCGColor);
              v31 = (&v40 - ((8 * NumberOfComponents + 15) & 0xFFFFFFFFFFFFFFF0));
              if (NumberOfComponents)
              {
                v32 = (&v40 - ((8 * NumberOfComponents + 15) & 0xFFFFFFFFFFFFFFF0));
                do
                {
                  v33 = *Components++;
                  v34 = v33;
                  *v32++ = v34;
                  --NumberOfComponents;
                }

                while (NumberOfComponents);
              }

              v35 = CGColorGetColorSpace(v9->mCGColor);
              v36 = CGColorCreate(v35, v31);
              CGColorRelease(v9->mCGColor);
              v9->mCGColor = v36;
            }

            return v9;
          }

          goto LABEL_25;
        }

LABEL_19:
        a4 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      if (Model != kCGColorSpaceModelRGB)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor initWithCGColor:colorSpace:]"];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
        [OITSUAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:185 isFatal:0 description:"Color specified as sRGB isn't even RGB!"];

        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      v25 = CGColorGetColorSpace(a3);
      v26 = TSUSRGBColorSpace();
      if (!CFEqual(v25, v26))
      {
        v27 = TSUDeviceRGBColorSpace();
        if (!CFEqual(v25, v27))
        {
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor initWithCGColor:colorSpace:]"];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
          [OITSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:189 isFatal:0 description:"Color specified as sRGB isn't sRGB or Device RGB"];
          a4 = 0;
          goto LABEL_7;
        }
      }
    }

    a4 = 0;
    goto LABEL_25;
  }

  return v9;
}

- (OITSUColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(unint64_t)a7
{
  components[4] = *MEMORY[0x277D85DE8];
  if (!a7 || a7 == 2)
  {
    v13 = TSUSRGBColorSpace();
  }

  else if (a7 == 1)
  {
    v13 = TSUP3ColorSpace();
  }

  else
  {
    v13 = 0;
  }

  components[0] = a3;
  components[1] = a4;
  components[2] = a5;
  components[3] = a6;
  v14 = CGColorCreate(v13, components);
  v15 = [(OITSUColor *)self initWithCGColor:v14 colorSpace:a7];
  CGColorRelease(v14);
  return v15;
}

- (OITSUColor)initWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7
{
  if (a7)
  {
    if (a7 == 1)
    {
      v12 = TSUP3ColorSpace();
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = TSUSRGBColorSpace();
  }

  v13 = TSUCreateCGColorFromHSBInColorSpace(v12, a3, a4, a5, a6);
  v14 = [(OITSUColor *)self initWithCGColor:v13];
  CGColorRelease(v13);
  return v14;
}

- (OITSUColor)initWithPatternImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    memset(&v14, 0, sizeof(v14));
    [v4 scale];
    v7 = 1.0 / v6;
    [v5 scale];
    CGAffineTransformMakeScale(&v14, v7, 1.0 / v8);
    PatternWithImageAndTransform = TSUCGColorCreatePatternWithImageAndTransform([v5 CGImage], &v14);
    v10 = [(OITSUColor *)self initWithCGColor:PatternWithImageAndTransform];
    CGColorRelease(PatternWithImageAndTransform);
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor initWithPatternImage:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
    [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:337 isFatal:0 description:"invalid nil value for '%{public}s'", "patternImage"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v10 = 0;
  }

  return v10;
}

- (OITSUColor)initWithHexString:(id)a3
{
  v4 = a3;
  if ([v4 rangeOfString:@"#[\\dA-F]{6}" options:1024] || v5 != objc_msgSend(v4, "length"))
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor initWithHexString:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
    [OITSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:354 isFatal:0 description:"Invalid hex string: %@", v4];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v12 = 0;
  }

  else
  {
    v6 = [v4 substringWithRange:{1, 2}];
    v7 = __32__OITSUColor_initWithHexString___block_invoke(v6, v6);

    v8 = [v4 substringWithRange:{3, 2}];
    v9 = __32__OITSUColor_initWithHexString___block_invoke(v8, v8);

    v10 = [v4 substringWithRange:{5, 2}];
    v11 = __32__OITSUColor_initWithHexString___block_invoke(v10, v10);

    v12 = [(OITSUColor *)self initWithRed:(v7 / 255.0) green:(v9 / 255.0) blue:(v11 / 255.0) alpha:1.0];
  }

  return v12;
}

uint64_t __32__OITSUColor_initWithHexString___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 substringToIndex:1];
  v4 = [@"0123456789ABCDEF" rangeOfString:v3];
  v5 = [v2 substringFromIndex:1];

  v6 = [@"0123456789ABCDEF" rangeOfString:v5] + 16 * v4;
  return v6;
}

- (OITSUColor)initWithUIColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor initWithUIColor:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:373 isFatal:0 description:"invalid nil value for '%{public}s'", "uiColor"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v7 = [v4 CGColor];
  if (CGColorGetPattern(v7))
  {
    v8 = [(OITSUColor *)self initWithCGColor:v7];
  }

  else
  {
    v9 = TSUP3ColorSpace();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v9, kCGRenderingIntentDefault, v7, 0);
    v11 = TSUSRGBColorSpace();
    v12 = CGColorCreateCopyByMatchingToColorSpace(v11, kCGRenderingIntentDefault, CopyByMatchingToColorSpace, 0);
    v13 = TSUP3ColorSpace();
    v14 = CGColorCreateCopyByMatchingToColorSpace(v13, kCGRenderingIntentDefault, v12, 0);
    v15 = [OITSUColor colorWithCGColor:CopyByMatchingToColorSpace];
    v16 = [OITSUColor colorWithCGColor:v14];
    if ([v15 isEqualWithTolerance:v16])
    {
      v17 = v12;
    }

    else
    {
      v17 = CopyByMatchingToColorSpace;
    }

    v18 = [(OITSUColor *)self initWithCGColor:v17];
    CGColorRelease(CopyByMatchingToColorSpace);
    CGColorRelease(v12);
    CGColorRelease(v14);
    v8 = v18;
  }

  return v8;
}

- (void)dealloc
{
  CGColorRelease(self->mCGColor);
  v3.receiver = self;
  v3.super_class = OITSUColor;
  [(OITSUColor *)&v3 dealloc];
}

- (BOOL)p_isEqualToColor:(id)a3 withTolerance:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && (mColorRGBSpace = self->mColorRGBSpace, mColorRGBSpace == [v6 colorRGBSpace]) && objc_msgSend(v7, "CGColor"))
  {
    v9 = [(OITSUColor *)self CGColor];
    v10 = [v7 CGColor];
    if (v9 == v10)
    {
      v18 = 1;
    }

    else
    {
      v11 = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __45__OITSUColor_p_isEqualToColor_withTolerance___block_invoke;
      aBlock[3] = &__block_descriptor_40_e31_B24__0__CGColor__8__CGColor__16l;
      *&aBlock[4] = a4;
      v12 = _Block_copy(aBlock);
      ColorSpace = CGColorGetColorSpace(v9);
      Model = CGColorSpaceGetModel(ColorSpace);
      v15 = CGColorGetColorSpace(v11);
      if (Model != CGColorSpaceGetModel(v15))
      {
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor p_isEqualToColor:withTolerance:]"];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
        [OITSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:488 isFatal:0 description:"TSUColors should always be RGB! Comparing two with different color models."];

        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      if (CFEqual(ColorSpace, v15))
      {
        v18 = v12[2](v12, v9, v11);
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

BOOL __45__OITSUColor_p_isEqualToColor_withTolerance___block_invoke(uint64_t a1, CGColorRef color, CGColorRef color2)
{
  if (*(a1 + 32) == 0.0)
  {

    return CGColorEqualToColor(color, color2);
  }

  else
  {
    Components = CGColorGetComponents(color);
    v8 = CGColorGetComponents(color2);
    NumberOfComponents = CGColorGetNumberOfComponents(color);
    if (NumberOfComponents != CGColorGetNumberOfComponents(color2))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor p_isEqualToColor:withTolerance:]_block_invoke"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
      [OITSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:473 isFatal:0 description:"Color space dimension mismatch"];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    for (result = 1; NumberOfComponents; --NumberOfComponents)
    {
      result = result && vabdd_f64(*Components++, *v8++) < *(a1 + 32);
    }
  }

  return result;
}

- (BOOL)isAlmostEqualToColor:(id)a3
{
  v4 = a3;
  [(OITSUColor *)self redComponent];
  v6 = v5;
  [v4 redComponent];
  if (vabdd_f64(v6, v7) >= 0.00999999978 || (-[OITSUColor greenComponent](self, "greenComponent"), v9 = v8, [v4 greenComponent], vabdd_f64(v9, v10) >= 0.00999999978) || (-[OITSUColor blueComponent](self, "blueComponent"), v12 = v11, objc_msgSend(v4, "blueComponent"), vabdd_f64(v12, v13) >= 0.00999999978))
  {
    v17 = 0;
  }

  else
  {
    [(OITSUColor *)self alphaComponent];
    v15 = v14;
    [v4 alphaComponent];
    v17 = vabdd_f64(v15, v16) < 0.00999999978;
  }

  return v17;
}

- (BOOL)isEqualWithTolerance:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, v4);

  LOBYTE(self) = [(OITSUColor *)self p_isEqualToColor:v6 withTolerance:0.001953125];
  return self;
}

- (double)p_rgbComponentWithIndex:(unsigned __int8)a3
{
  v3 = a3;
  Components = CGColorGetComponents([(OITSUColor *)self CGColor]);
  ColorSpace = CGColorGetColorSpace([(OITSUColor *)self CGColor]);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == kCGColorSpaceModelMonochrome)
  {
    return *Components;
  }

  if (Model == kCGColorSpaceModelCMYK)
  {
    return 1.0 - fmin(Components[3] + Components[v3] * (1.0 - Components[3]), 1.0);
  }

  result = 0.0;
  if (Model == kCGColorSpaceModelRGB)
  {
    return Components[v3];
  }

  return result;
}

- (double)alphaComponent
{
  v2 = [(OITSUColor *)self CGColor];

  return CGColorGetAlpha(v2);
}

- (void)getRGBAComponents:(double *)a3
{
  if (a3)
  {
    [(OITSUColor *)self redComponent];
    *a3 = v5;
    [(OITSUColor *)self greenComponent];
    *(a3 + 1) = v6;
    [(OITSUColor *)self blueComponent];
    *(a3 + 2) = v7;
    [(OITSUColor *)self alphaComponent];
    *(a3 + 3) = v8;
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor getRGBAComponents:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:552 isFatal:0 description:"rgbaComponents is NULL!"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }
}

- (double)hueComponent
{
  v10 = 0;
  v11 = 0.0;
  v9 = 0;
  [(OITSUColor *)self redComponent];
  v4 = v3;
  [(OITSUColor *)self greenComponent];
  v6 = v5;
  [(OITSUColor *)self blueComponent];
  TSURGBToHSB(&v11, &v10, &v9, v4, v6, v7);
  return v11;
}

- (double)saturationComponent
{
  v10 = 0.0;
  v11 = 0;
  v9 = 0;
  [(OITSUColor *)self redComponent];
  v4 = v3;
  [(OITSUColor *)self greenComponent];
  v6 = v5;
  [(OITSUColor *)self blueComponent];
  TSURGBToHSB(&v11, &v10, &v9, v4, v6, v7);
  return v10;
}

- (double)brightnessComponent
{
  v10 = 0;
  v11 = 0;
  v9 = 0.0;
  [(OITSUColor *)self redComponent];
  v4 = v3;
  [(OITSUColor *)self greenComponent];
  v6 = v5;
  [(OITSUColor *)self blueComponent];
  TSURGBToHSB(&v11, &v10, &v9, v4, v6, v7);
  return v9;
}

- (UIColor)UIColor
{
  v2 = MEMORY[0x277D75348];
  v3 = [(OITSUColor *)self CGColor];

  return [v2 colorWithCGColor:v3];
}

- (id)grayscaleColor
{
  Components = CGColorGetComponents([(OITSUColor *)self CGColor]);
  ColorSpace = CGColorGetColorSpace([(OITSUColor *)self CGColor]);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model)
  {
    if (Model == kCGColorSpaceModelRGB)
    {
      v6 = [OITSUColor colorWithWhite:Components[1] * 0.59 + *Components * 0.3 + Components[2] * 0.11 alpha:Components[3]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = self;
  }

  return v6;
}

- (id)invertedColor
{
  if (CGColorGetNumberOfComponents([(OITSUColor *)self CGColor]) != 4)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor invertedColor]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
    [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:629 isFatal:0 description:"Wrong number of components while inverting color. %zi instead of 4", CGColorGetNumberOfComponents([(OITSUColor *)self CGColor])];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  Components = CGColorGetComponents([(OITSUColor *)self CGColor]);
  v6 = 1.0 - *Components;
  v7 = 1.0 - Components[1];
  v8 = Components[3];
  v9 = 1.0 - Components[2];

  return [OITSUColor colorWithRed:v6 green:v7 blue:v9 alpha:v8];
}

- (OITSUColor)colorWithAlphaComponent:(double)a3
{
  CopyWithAlpha = CGColorCreateCopyWithAlpha(self->mCGColor, a3);
  v4 = [OITSUColor colorWithCGColor:CopyWithAlpha];
  CGColorRelease(CopyWithAlpha);

  return v4;
}

- (double)luminance
{
  if (CGColorGetNumberOfComponents([(OITSUColor *)self CGColor]) != 4)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor luminance]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
    [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:644 isFatal:0 description:"Wrong number of components to calculate luminance. %zi instead of 4", CGColorGetNumberOfComponents([(OITSUColor *)self CGColor])];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  Components = CGColorGetComponents([(OITSUColor *)self CGColor]);
  result = fmax(Components[1] * 0.715200007 + *Components * 0.212599993 + Components[2] * 0.0722000003 * Components[3], 0.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)isNearlyWhite
{
  v10 = 0.0;
  v11 = 0;
  v9 = 0.0;
  [(OITSUColor *)self redComponent];
  v4 = v3;
  [(OITSUColor *)self greenComponent];
  v6 = v5;
  [(OITSUColor *)self blueComponent];
  TSURGBToHSB(&v11, &v9, &v10, v4, v6, v7);
  return v9 < 0.05 && v10 > 0.9;
}

- (BOOL)wantsHighContrastBackgroundForDarkMode:(id)a3
{
  v4 = a3;
  [(OITSUColor *)self luminance];
  v6 = v5;
  [v4 luminance];
  v8 = v7;

  return (v6 + 0.05) / (v8 + 0.05) < 1.3;
}

- (id)blendedColorWithFraction:(double)a3 ofColor:(id)a4
{
  v4 = [(OITSUColor *)self newBlendedColorWithFraction:a4 ofColor:a3];

  return v4;
}

- (id)newBlendedColorWithFraction:(double)a3 ofColor:(id)a4
{
  v6 = a4;
  v7 = [OITSUColor alloc];
  [(OITSUColor *)self redComponent];
  v9 = v8;
  [v6 redComponent];
  v11 = TSUMix(v9, v10, a3);
  [(OITSUColor *)self greenComponent];
  v13 = v12;
  [v6 greenComponent];
  v15 = TSUMix(v13, v14, a3);
  [(OITSUColor *)self blueComponent];
  v17 = v16;
  [v6 blueComponent];
  v19 = TSUMix(v17, v18, a3);
  [(OITSUColor *)self alphaComponent];
  v21 = v20;
  [v6 alphaComponent];
  v23 = v22;

  v24 = TSUMix(v21, v23, a3);

  return [(OITSUColor *)v7 initWithRed:v11 green:v15 blue:v19 alpha:v24];
}

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CGContextSaveGState(a4);
  CGContextSetFillColorWithColor(a4, self->mCGColor);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGContextFillRect(a4, v11);

  CGContextRestoreGState(a4);
}

- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  CGContextSaveGState(a4);
  CGContextSetFillColorWithColor(a4, self->mCGColor);
  CGContextAddPath(a4, a3);
  CGContextFillPath(a4);

  CGContextRestoreGState(a4);
}

- (id)hexString
{
  v3 = MEMORY[0x277CCACA8];
  [(OITSUColor *)self redComponent];
  v5 = (v4 * 255.0);
  [(OITSUColor *)self greenComponent];
  v7 = (v6 * 255.0);
  [(OITSUColor *)self blueComponent];
  return [v3 stringWithFormat:@"#%02X%02X%02X", v5, v7, (v8 * 255.0)];
}

- ($14D77461FF5D83CAEC4252578BA76F85)ttColor
{
  [(OITSUColor *)self redComponent];
  v4 = (v3 * 255.0);
  [(OITSUColor *)self greenComponent];
  v6 = (v5 * 255.0);
  [(OITSUColor *)self blueComponent];
  v8 = (v7 * 255.0);
  [(OITSUColor *)self alphaComponent];
  return ((v8 << 16) | ((v9 * 255.0) << 24) | (v6 << 8) | v4);
}

+ (id)colorWithCalibratedHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6
{
  v6 = TSUCreateCGColorFromHSB(a3, a4, a5, a6);
  v7 = [OITSUColor colorWithCGColor:v6];
  CGColorRelease(v6);
  return v7;
}

+ (id)colorWithDeviceHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6
{
  v6 = TSUCreateCGColorFromHSB(a3, a4, a5, a6);
  v7 = [OITSUColor colorWithCGColor:v6];
  CGColorRelease(v6);
  return v7;
}

+ (id)colorWithDeviceCyan:(double)a3 magenta:(double)a4 yellow:(double)a5 black:(double)a6 alpha:(double)a7
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v7 = TSUDeviceCMYKColorSpace();
  v8 = CGColorCreate(v7, &v11);
  v9 = [OITSUColor colorWithCGColor:v8, *&v11, *&v12, *&v13, *&v14, *&v15, v16];
  CGColorRelease(v8);
  return v9;
}

- (void)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6
{
  if (a3)
  {
    [(OITSUColor *)self redComponent];
    *a3 = v11;
  }

  if (a4)
  {
    [(OITSUColor *)self greenComponent];
    *a4 = v12;
  }

  if (a5)
  {
    [(OITSUColor *)self blueComponent];
    *a5 = v13;
  }

  if (a6)
  {
    [(OITSUColor *)self alphaComponent];
    *a6 = v14;
  }
}

- (double)whiteComponent
{
  Components = CGColorGetComponents([(OITSUColor *)self CGColor]);
  ColorSpace = CGColorGetColorSpace([(OITSUColor *)self CGColor]);
  if (CGColorSpaceGetModel(ColorSpace))
  {
    return NAN;
  }

  else
  {
    return *Components;
  }
}

- (void)getWhite:(double *)a3 alpha:(double *)a4
{
  if (a3)
  {
    [(OITSUColor *)self whiteComponent];
    *a3 = v7;
  }

  if (a4)
  {
    [(OITSUColor *)self alphaComponent];
    *a4 = v8;
  }
}

- (double)p_cmykComponentWithIndex:(unsigned __int8)a3
{
  v3 = a3;
  Components = CGColorGetComponents([(OITSUColor *)self CGColor]);
  ColorSpace = CGColorGetColorSpace([(OITSUColor *)self CGColor]);
  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelCMYK)
  {
    return Components[v3];
  }

  else
  {
    return NAN;
  }
}

- (void)getCyan:(double *)a3 magenta:(double *)a4 yellow:(double *)a5 black:(double *)a6 alpha:(double *)a7
{
  if (a3)
  {
    [(OITSUColor *)self cyanComponent];
    *a3 = v13;
  }

  if (a4)
  {
    [(OITSUColor *)self magentaComponent];
    *a4 = v14;
  }

  if (a5)
  {
    [(OITSUColor *)self yellowComponent];
    *a5 = v15;
  }

  if (a6)
  {
    [(OITSUColor *)self blackComponent];
    *a6 = v16;
  }

  if (a7)
  {
    [(OITSUColor *)self alphaComponent];
    *a7 = v17;
  }
}

- (CGColorSpace)CGColorSpace
{
  v2 = [(OITSUColor *)self CGColor];

  return CGColorGetColorSpace(v2);
}

- (int)CGColorSpaceModel
{
  v2 = [(OITSUColor *)self CGColorSpace];

  return CGColorSpaceGetModel(v2);
}

- (id)copy
{
  v3 = [OITSUColor alloc];
  v4 = [(OITSUColor *)self CGColor];

  return [(OITSUColor *)v3 initWithCGColor:v4];
}

+ (id)colorWithBGR:(unsigned int)a3
{
  v3 = a3 / 255.0;
  v4 = BYTE1(a3) / 255.0;
  v5 = BYTE2(a3) / 255.0;
  return [OITSUColor colorWithCalibratedRed:v3 green:v4 blue:v5 alpha:1.0];
}

+ (id)colorWithSystemColorID:(int)a3
{
  if ((a3 - 1) > 0x23)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_25D6FABE8[a3 - 1];
  }

  return [a1 colorWithCalibratedRed:HIWORD(v3) / 255.0 green:BYTE1(v3) / 255.0 blue:v3 / 255.0 alpha:1.0];
}

+ (id)stringForSystemColorID:(int)a3
{
  if (a3 > 0x25)
  {
    return @"unknown";
  }

  else
  {
    return off_2799C76F8[a3];
  }
}

+ (id)stringForColor:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  [a3 redComponent];
  v6 = v5;
  [a3 greenComponent];
  v8 = v7;
  [a3 blueComponent];
  v10 = v9;
  [a3 alphaComponent];
  return [v4 stringWithFormat:@"RGB (%g %g %g %g)", v6, v8, v10, v11];
}

- (OITSUColor)colorWithTintValue:(double)a3
{
  if (![OITSUColor(TCColorAdditions) colorWithTintValue:]::whiteRGBColor)
  {
    [OITSUColor(TCColorAdditions) colorWithTintValue:]::whiteRGBColor = [OITSUColor colorWithCalibratedRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v5 = [OITSUColor(TCColorAdditions) colorWithTintValue:]::whiteRGBColor;
  }

  return [(OITSUColor *)self blendedColorWithFraction:1.0 - a3 ofColor:?];
}

- (OITSUColor)colorWithShadeValue:(double)a3
{
  if (![OITSUColor(TCColorAdditions) colorWithShadeValue:]::blackRGBColor)
  {
    [OITSUColor(TCColorAdditions) colorWithShadeValue:]::blackRGBColor = [OITSUColor colorWithCalibratedRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v5 = [OITSUColor(TCColorAdditions) colorWithShadeValue:]::blackRGBColor;
  }

  return [(OITSUColor *)self blendedColorWithFraction:1.0 - a3 ofColor:?];
}

- (void)set
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetFillColorWithColor(CurrentContext, [(OITSUColor *)self CGColor]);
  v4 = [(OITSUColor *)self CGColor];

  CGContextSetStrokeColorWithColor(CurrentContext, v4);
}

+ (id)colorWithCsColour:(const CsColour *)a3
{
  LOWORD(v3) = a3->var1;
  LOWORD(v4) = a3->var2;
  LOWORD(v5) = a3->var3;
  LOWORD(v6) = a3->var0;
  return [OITSUColor colorWithCalibratedRed:(v3 / 255.0) green:(v4 / 255.0) blue:(v5 / 255.0) alpha:(v6 / 255.0)];
}

- (CsColour)csColour
{
  v3 = v2;
  v4 = [(OITSUColor *)self ttColor];
  *v3 = HIBYTE(*&v4.var0);
  v3[1] = LOBYTE(v4.var0);
  v3[2] = HIBYTE(v4.var0);
  v3[3] = LOBYTE(v4.var1);
  return v4;
}

+ (id)colorWithEshColor:(const EshColor *)a3
{
  v4 = (EshColor::getRed(a3) / 255.0);
  v5 = (EshColor::getGreen(a3) / 255.0);
  v6 = (EshColor::getBlue(a3) / 255.0);

  return [OITSUColor colorWithCalibratedRed:v4 green:v5 blue:v6 alpha:1.0];
}

- (EshColor)eshColor
{
  v3 = v2;
  LODWORD(v7) = 0;
  v4 = [(OITSUColor *)self ttColor];
  v6 = EshColor::RGB::create(v4, SBYTE1(v4), SBYTE2(v4), &v7 + 4, v5);
  *v3 = v7;
  return v6;
}

- (void)getRGBBytes:(char *)a3 green:(char *)a4 blue:(char *)a5
{
  [(OITSUColor *)self redComponent];
  *a3 = (v9 * 255.0 + 0.5);
  [(OITSUColor *)self greenComponent];
  *a4 = (v10 * 255.0 + 0.5);
  [(OITSUColor *)self blueComponent];
  *a5 = (v11 * 255.0 + 0.5);
}

+ (id)colorWithBGRValue:(int64_t)a3
{
  v3 = BYTE2(a3) / 255.0;
  v4 = BYTE1(a3) / 255.0;
  v5 = a3 / 255.0;
  return [OITSUColor colorWithCalibratedRed:v5 green:v4 blue:v3 alpha:1.0];
}

+ (id)colorWithRGBValue:(int64_t)a3
{
  v3 = BYTE2(a3) / 255.0;
  v4 = BYTE1(a3) / 255.0;
  v5 = a3 / 255.0;
  return [OITSUColor colorWithCalibratedRed:v3 green:v4 blue:v5 alpha:1.0];
}

- (BOOL)isBlack
{
  [(OITSUColor *)self redComponent];
  if (v3 != 0.0)
  {
    return 0;
  }

  [(OITSUColor *)self greenComponent];
  if (v4 != 0.0)
  {
    return 0;
  }

  [(OITSUColor *)self blueComponent];
  if (v5 != 0.0)
  {
    return 0;
  }

  [(OITSUColor *)self alphaComponent];
  return v6 == 1.0;
}

@end