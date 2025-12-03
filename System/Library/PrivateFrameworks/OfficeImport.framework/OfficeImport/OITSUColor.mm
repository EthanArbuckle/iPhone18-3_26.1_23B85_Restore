@interface OITSUColor
+ (id)blackColor;
+ (id)blueColor;
+ (id)brownColor;
+ (id)clearColor;
+ (id)colorWithBGR:(unsigned int)r;
+ (id)colorWithBGRValue:(int64_t)value;
+ (id)colorWithCGColor:(CGColor *)color;
+ (id)colorWithCalibratedHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha;
+ (id)colorWithCsColour:(const CsColour *)colour;
+ (id)colorWithDeviceCyan:(double)cyan magenta:(double)magenta yellow:(double)yellow black:(double)black alpha:(double)alpha;
+ (id)colorWithDeviceHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha;
+ (id)colorWithEshColor:(const EshColor *)color;
+ (id)colorWithHexString:(id)string;
+ (id)colorWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha;
+ (id)colorWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha targetRGBSpace:(unint64_t)space;
+ (id)colorWithPatternImage:(id)image;
+ (id)colorWithRGBValue:(int64_t)value;
+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
+ (id)colorWithSystemColorID:(int)d;
+ (id)colorWithUIColor:(id)color;
+ (id)colorWithWhite:(double)white alpha:(double)alpha;
+ (id)cyanColor;
+ (id)grayColor;
+ (id)greenColor;
+ (id)lightGrayColor;
+ (id)magentaColor;
+ (id)orangeColor;
+ (id)purpleColor;
+ (id)randomColor;
+ (id)redColor;
+ (id)stringForColor:(id)color;
+ (id)stringForSystemColorID:(int)d;
+ (id)whiteColor;
+ (id)yellowColor;
- ($14D77461FF5D83CAEC4252578BA76F85)ttColor;
- (BOOL)isAlmostEqualToColor:(id)color;
- (BOOL)isBlack;
- (BOOL)isEqualWithTolerance:(id)tolerance;
- (BOOL)isNearlyWhite;
- (BOOL)p_isEqualToColor:(id)color withTolerance:(double)tolerance;
- (BOOL)wantsHighContrastBackgroundForDarkMode:(id)mode;
- (CGColor)CGColor;
- (CGColorSpace)CGColorSpace;
- (CsColour)csColour;
- (EshColor)eshColor;
- (OITSUColor)colorWithAlphaComponent:(double)component;
- (OITSUColor)colorWithShadeValue:(double)value;
- (OITSUColor)colorWithTintValue:(double)value;
- (OITSUColor)initWithCGColor:(CGColor *)color colorSpace:(unint64_t)space;
- (OITSUColor)initWithHexString:(id)string;
- (OITSUColor)initWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha targetRGBSpace:(unint64_t)space;
- (OITSUColor)initWithPatternImage:(id)image;
- (OITSUColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(unint64_t)space;
- (OITSUColor)initWithUIColor:(id)color;
- (UIColor)UIColor;
- (double)alphaComponent;
- (double)brightnessComponent;
- (double)hueComponent;
- (double)luminance;
- (double)p_cmykComponentWithIndex:(unsigned __int8)index;
- (double)p_rgbComponentWithIndex:(unsigned __int8)index;
- (double)saturationComponent;
- (double)whiteComponent;
- (id)blendedColorWithFraction:(double)fraction ofColor:(id)color;
- (id)copy;
- (id)grayscaleColor;
- (id)hexString;
- (id)invertedColor;
- (id)newBlendedColorWithFraction:(double)fraction ofColor:(id)color;
- (int)CGColorSpaceModel;
- (void)dealloc;
- (void)getCyan:(double *)cyan magenta:(double *)magenta yellow:(double *)yellow black:(double *)black alpha:(double *)alpha;
- (void)getRGBAComponents:(double *)components;
- (void)getRGBBytes:(char *)bytes green:(char *)green blue:(char *)blue;
- (void)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha;
- (void)getWhite:(double *)white alpha:(double *)alpha;
- (void)paintPath:(CGPath *)path inContext:(CGContext *)context;
- (void)paintRect:(CGRect)rect inContext:(CGContext *)context;
- (void)set;
@end

@implementation OITSUColor

- (CGColor)CGColor
{
  v2 = CGColorRetain(self->mCGColor);

  return CFAutorelease(v2);
}

+ (id)colorWithCGColor:(CGColor *)color
{
  v3 = [[self alloc] initWithCGColor:color];

  return v3;
}

+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v6 = [[self alloc] initWithRed:red green:green blue:blue alpha:alpha];

  return v6;
}

+ (id)colorWithWhite:(double)white alpha:(double)alpha
{
  v4 = [[self alloc] initWithWhite:white alpha:alpha];

  return v4;
}

+ (id)colorWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha
{
  v6 = [[self alloc] initWithHue:hue saturation:saturation brightness:brightness alpha:alpha];

  return v6;
}

+ (id)colorWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha targetRGBSpace:(unint64_t)space
{
  v7 = [[self alloc] initWithHue:space saturation:hue brightness:saturation alpha:brightness targetRGBSpace:alpha];

  return v7;
}

+ (id)colorWithPatternImage:(id)image
{
  imageCopy = image;
  v5 = [[self alloc] initWithPatternImage:imageCopy];

  return v5;
}

+ (id)colorWithHexString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithHexString:stringCopy];

  return v5;
}

+ (id)colorWithUIColor:(id)color
{
  colorCopy = color;
  v5 = [[self alloc] initWithUIColor:colorCopy];

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
  v2 = [[self alloc] initWithWhite:0.0 alpha:0.0];

  return v2;
}

+ (id)blackColor
{
  v2 = [[self alloc] initWithWhite:0.0 alpha:1.0];

  return v2;
}

+ (id)whiteColor
{
  v2 = [[self alloc] initWithWhite:1.0 alpha:1.0];

  return v2;
}

+ (id)grayColor
{
  v2 = [[self alloc] initWithWhite:0.5 alpha:1.0];

  return v2;
}

+ (id)lightGrayColor
{
  v2 = [[self alloc] initWithWhite:0.667 alpha:1.0];

  return v2;
}

+ (id)redColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)greenColor
{
  v2 = [[self alloc] initWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)blueColor
{
  v2 = [[self alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)cyanColor
{
  v2 = [[self alloc] initWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)yellowColor
{
  v2 = [[self alloc] initWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)magentaColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)orangeColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.5 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)purpleColor
{
  v2 = [[self alloc] initWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];

  return v2;
}

+ (id)brownColor
{
  v2 = [[self alloc] initWithRed:0.6 green:0.4 blue:0.2 alpha:1.0];

  return v2;
}

- (OITSUColor)initWithCGColor:(CGColor *)color colorSpace:(unint64_t)space
{
  v42 = *MEMORY[0x277D85DE8];
  if (!color)
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
    if (CGColorGetPattern(color))
    {
      if (space != 2)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor initWithCGColor:colorSpace:]"];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
        [OITSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:232 isFatal:0 description:"If the color has a pattern, its color space should be Unspecified"];
LABEL_7:

        +[OITSUAssertionHandler logBacktraceThrottled];
      }

LABEL_25:
      Copy = CGColorCreateCopy(color);
      goto LABEL_26;
    }

    ColorSpace = CGColorGetColorSpace(color);
    Model = CGColorSpaceGetModel(ColorSpace);
    if (space)
    {
      if (space != 2)
      {
        if (space != 1)
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

        v16 = CGColorGetColorSpace(color);
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
              space = 1;
              goto LABEL_7;
            }
          }
        }

        goto LABEL_19;
      }

      v20 = CGColorGetColorSpace(color);
      v21 = TSUSRGBColorSpace();
      if (!CFEqual(v20, v21))
      {
        v22 = TSUP3ColorSpace();
        if (!CFEqual(v20, v22))
        {
          v38 = CGColorGetColorSpace(color);
          if (CGColorSpaceGetModel(v38) == kCGColorSpaceModelRGB && CGColorSpaceIsWideGamutRGB(v38))
          {
            space = 1;
            v39 = TSUP3ColorSpace();
          }

          else
          {
            v39 = TSUSRGBColorSpace();
            space = 0;
          }

          Copy = CGColorCreateCopyByMatchingToColorSpace(v39, kCGRenderingIntentDefault, color, 0);
          if (Copy)
          {
LABEL_26:
            v9->mCGColor = Copy;
            v9->mColorRGBSpace = space;
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
        space = 1;
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

      v25 = CGColorGetColorSpace(color);
      v26 = TSUSRGBColorSpace();
      if (!CFEqual(v25, v26))
      {
        v27 = TSUDeviceRGBColorSpace();
        if (!CFEqual(v25, v27))
        {
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor initWithCGColor:colorSpace:]"];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
          [OITSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:189 isFatal:0 description:"Color specified as sRGB isn't sRGB or Device RGB"];
          space = 0;
          goto LABEL_7;
        }
      }
    }

    space = 0;
    goto LABEL_25;
  }

  return v9;
}

- (OITSUColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(unint64_t)space
{
  components[4] = *MEMORY[0x277D85DE8];
  if (!space || space == 2)
  {
    v13 = TSUSRGBColorSpace();
  }

  else if (space == 1)
  {
    v13 = TSUP3ColorSpace();
  }

  else
  {
    v13 = 0;
  }

  components[0] = red;
  components[1] = green;
  components[2] = blue;
  components[3] = alpha;
  v14 = CGColorCreate(v13, components);
  v15 = [(OITSUColor *)self initWithCGColor:v14 colorSpace:space];
  CGColorRelease(v14);
  return v15;
}

- (OITSUColor)initWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha targetRGBSpace:(unint64_t)space
{
  if (space)
  {
    if (space == 1)
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

  v13 = TSUCreateCGColorFromHSBInColorSpace(v12, hue, saturation, brightness, alpha);
  v14 = [(OITSUColor *)self initWithCGColor:v13];
  CGColorRelease(v13);
  return v14;
}

- (OITSUColor)initWithPatternImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (imageCopy)
  {
    memset(&v14, 0, sizeof(v14));
    [imageCopy scale];
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

- (OITSUColor)initWithHexString:(id)string
{
  stringCopy = string;
  if ([stringCopy rangeOfString:@"#[\\dA-F]{6}" options:1024] || v5 != objc_msgSend(stringCopy, "length"))
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor initWithHexString:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
    [OITSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:354 isFatal:0 description:"Invalid hex string: %@", stringCopy];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v12 = 0;
  }

  else
  {
    v6 = [stringCopy substringWithRange:{1, 2}];
    v7 = __32__OITSUColor_initWithHexString___block_invoke(v6, v6);

    v8 = [stringCopy substringWithRange:{3, 2}];
    v9 = __32__OITSUColor_initWithHexString___block_invoke(v8, v8);

    v10 = [stringCopy substringWithRange:{5, 2}];
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

- (OITSUColor)initWithUIColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUColor initWithUIColor:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColor.m"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:373 isFatal:0 description:"invalid nil value for '%{public}s'", "uiColor"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  cGColor = [colorCopy CGColor];
  if (CGColorGetPattern(cGColor))
  {
    v8 = [(OITSUColor *)self initWithCGColor:cGColor];
  }

  else
  {
    v9 = TSUP3ColorSpace();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v9, kCGRenderingIntentDefault, cGColor, 0);
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

- (BOOL)p_isEqualToColor:(id)color withTolerance:(double)tolerance
{
  colorCopy = color;
  v7 = colorCopy;
  if (colorCopy && (mColorRGBSpace = self->mColorRGBSpace, mColorRGBSpace == [colorCopy colorRGBSpace]) && objc_msgSend(v7, "CGColor"))
  {
    cGColor = [(OITSUColor *)self CGColor];
    cGColor2 = [v7 CGColor];
    if (cGColor == cGColor2)
    {
      v18 = 1;
    }

    else
    {
      v11 = cGColor2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __45__OITSUColor_p_isEqualToColor_withTolerance___block_invoke;
      aBlock[3] = &__block_descriptor_40_e31_B24__0__CGColor__8__CGColor__16l;
      *&aBlock[4] = tolerance;
      v12 = _Block_copy(aBlock);
      ColorSpace = CGColorGetColorSpace(cGColor);
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
        v18 = v12[2](v12, cGColor, v11);
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

- (BOOL)isAlmostEqualToColor:(id)color
{
  colorCopy = color;
  [(OITSUColor *)self redComponent];
  v6 = v5;
  [colorCopy redComponent];
  if (vabdd_f64(v6, v7) >= 0.00999999978 || (-[OITSUColor greenComponent](self, "greenComponent"), v9 = v8, [colorCopy greenComponent], vabdd_f64(v9, v10) >= 0.00999999978) || (-[OITSUColor blueComponent](self, "blueComponent"), v12 = v11, objc_msgSend(colorCopy, "blueComponent"), vabdd_f64(v12, v13) >= 0.00999999978))
  {
    v17 = 0;
  }

  else
  {
    [(OITSUColor *)self alphaComponent];
    v15 = v14;
    [colorCopy alphaComponent];
    v17 = vabdd_f64(v15, v16) < 0.00999999978;
  }

  return v17;
}

- (BOOL)isEqualWithTolerance:(id)tolerance
{
  toleranceCopy = tolerance;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, toleranceCopy);

  LOBYTE(self) = [(OITSUColor *)self p_isEqualToColor:v6 withTolerance:0.001953125];
  return self;
}

- (double)p_rgbComponentWithIndex:(unsigned __int8)index
{
  indexCopy = index;
  Components = CGColorGetComponents([(OITSUColor *)self CGColor]);
  ColorSpace = CGColorGetColorSpace([(OITSUColor *)self CGColor]);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == kCGColorSpaceModelMonochrome)
  {
    return *Components;
  }

  if (Model == kCGColorSpaceModelCMYK)
  {
    return 1.0 - fmin(Components[3] + Components[indexCopy] * (1.0 - Components[3]), 1.0);
  }

  result = 0.0;
  if (Model == kCGColorSpaceModelRGB)
  {
    return Components[indexCopy];
  }

  return result;
}

- (double)alphaComponent
{
  cGColor = [(OITSUColor *)self CGColor];

  return CGColorGetAlpha(cGColor);
}

- (void)getRGBAComponents:(double *)components
{
  if (components)
  {
    [(OITSUColor *)self redComponent];
    *components = v5;
    [(OITSUColor *)self greenComponent];
    *(components + 1) = v6;
    [(OITSUColor *)self blueComponent];
    *(components + 2) = v7;
    [(OITSUColor *)self alphaComponent];
    *(components + 3) = v8;
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
  cGColor = [(OITSUColor *)self CGColor];

  return [v2 colorWithCGColor:cGColor];
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
      selfCopy = [OITSUColor colorWithWhite:Components[1] * 0.59 + *Components * 0.3 + Components[2] * 0.11 alpha:Components[3]];
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
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

- (OITSUColor)colorWithAlphaComponent:(double)component
{
  CopyWithAlpha = CGColorCreateCopyWithAlpha(self->mCGColor, component);
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

- (BOOL)wantsHighContrastBackgroundForDarkMode:(id)mode
{
  modeCopy = mode;
  [(OITSUColor *)self luminance];
  v6 = v5;
  [modeCopy luminance];
  v8 = v7;

  return (v6 + 0.05) / (v8 + 0.05) < 1.3;
}

- (id)blendedColorWithFraction:(double)fraction ofColor:(id)color
{
  v4 = [(OITSUColor *)self newBlendedColorWithFraction:color ofColor:fraction];

  return v4;
}

- (id)newBlendedColorWithFraction:(double)fraction ofColor:(id)color
{
  colorCopy = color;
  v7 = [OITSUColor alloc];
  [(OITSUColor *)self redComponent];
  v9 = v8;
  [colorCopy redComponent];
  v11 = TSUMix(v9, v10, fraction);
  [(OITSUColor *)self greenComponent];
  v13 = v12;
  [colorCopy greenComponent];
  v15 = TSUMix(v13, v14, fraction);
  [(OITSUColor *)self blueComponent];
  v17 = v16;
  [colorCopy blueComponent];
  v19 = TSUMix(v17, v18, fraction);
  [(OITSUColor *)self alphaComponent];
  v21 = v20;
  [colorCopy alphaComponent];
  v23 = v22;

  v24 = TSUMix(v21, v23, fraction);

  return [(OITSUColor *)v7 initWithRed:v11 green:v15 blue:v19 alpha:v24];
}

- (void)paintRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(context);
  CGContextSetFillColorWithColor(context, self->mCGColor);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGContextFillRect(context, v11);

  CGContextRestoreGState(context);
}

- (void)paintPath:(CGPath *)path inContext:(CGContext *)context
{
  CGContextSaveGState(context);
  CGContextSetFillColorWithColor(context, self->mCGColor);
  CGContextAddPath(context, path);
  CGContextFillPath(context);

  CGContextRestoreGState(context);
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

+ (id)colorWithCalibratedHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha
{
  v6 = TSUCreateCGColorFromHSB(hue, saturation, brightness, alpha);
  v7 = [OITSUColor colorWithCGColor:v6];
  CGColorRelease(v6);
  return v7;
}

+ (id)colorWithDeviceHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha
{
  v6 = TSUCreateCGColorFromHSB(hue, saturation, brightness, alpha);
  v7 = [OITSUColor colorWithCGColor:v6];
  CGColorRelease(v6);
  return v7;
}

+ (id)colorWithDeviceCyan:(double)cyan magenta:(double)magenta yellow:(double)yellow black:(double)black alpha:(double)alpha
{
  v16 = *MEMORY[0x277D85DE8];
  cyanCopy = cyan;
  magentaCopy = magenta;
  yellowCopy = yellow;
  blackCopy = black;
  alphaCopy = alpha;
  v7 = TSUDeviceCMYKColorSpace();
  v8 = CGColorCreate(v7, &cyanCopy);
  v9 = [OITSUColor colorWithCGColor:v8, *&cyanCopy, *&magentaCopy, *&yellowCopy, *&blackCopy, *&alphaCopy, v16];
  CGColorRelease(v8);
  return v9;
}

- (void)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha
{
  if (red)
  {
    [(OITSUColor *)self redComponent];
    *red = v11;
  }

  if (green)
  {
    [(OITSUColor *)self greenComponent];
    *green = v12;
  }

  if (blue)
  {
    [(OITSUColor *)self blueComponent];
    *blue = v13;
  }

  if (alpha)
  {
    [(OITSUColor *)self alphaComponent];
    *alpha = v14;
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

- (void)getWhite:(double *)white alpha:(double *)alpha
{
  if (white)
  {
    [(OITSUColor *)self whiteComponent];
    *white = v7;
  }

  if (alpha)
  {
    [(OITSUColor *)self alphaComponent];
    *alpha = v8;
  }
}

- (double)p_cmykComponentWithIndex:(unsigned __int8)index
{
  indexCopy = index;
  Components = CGColorGetComponents([(OITSUColor *)self CGColor]);
  ColorSpace = CGColorGetColorSpace([(OITSUColor *)self CGColor]);
  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelCMYK)
  {
    return Components[indexCopy];
  }

  else
  {
    return NAN;
  }
}

- (void)getCyan:(double *)cyan magenta:(double *)magenta yellow:(double *)yellow black:(double *)black alpha:(double *)alpha
{
  if (cyan)
  {
    [(OITSUColor *)self cyanComponent];
    *cyan = v13;
  }

  if (magenta)
  {
    [(OITSUColor *)self magentaComponent];
    *magenta = v14;
  }

  if (yellow)
  {
    [(OITSUColor *)self yellowComponent];
    *yellow = v15;
  }

  if (black)
  {
    [(OITSUColor *)self blackComponent];
    *black = v16;
  }

  if (alpha)
  {
    [(OITSUColor *)self alphaComponent];
    *alpha = v17;
  }
}

- (CGColorSpace)CGColorSpace
{
  cGColor = [(OITSUColor *)self CGColor];

  return CGColorGetColorSpace(cGColor);
}

- (int)CGColorSpaceModel
{
  cGColorSpace = [(OITSUColor *)self CGColorSpace];

  return CGColorSpaceGetModel(cGColorSpace);
}

- (id)copy
{
  v3 = [OITSUColor alloc];
  cGColor = [(OITSUColor *)self CGColor];

  return [(OITSUColor *)v3 initWithCGColor:cGColor];
}

+ (id)colorWithBGR:(unsigned int)r
{
  v3 = r / 255.0;
  v4 = BYTE1(r) / 255.0;
  v5 = BYTE2(r) / 255.0;
  return [OITSUColor colorWithCalibratedRed:v3 green:v4 blue:v5 alpha:1.0];
}

+ (id)colorWithSystemColorID:(int)d
{
  if ((d - 1) > 0x23)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_25D6FABE8[d - 1];
  }

  return [self colorWithCalibratedRed:HIWORD(v3) / 255.0 green:BYTE1(v3) / 255.0 blue:v3 / 255.0 alpha:1.0];
}

+ (id)stringForSystemColorID:(int)d
{
  if (d > 0x25)
  {
    return @"unknown";
  }

  else
  {
    return off_2799C76F8[d];
  }
}

+ (id)stringForColor:(id)color
{
  v4 = MEMORY[0x277CCACA8];
  [color redComponent];
  v6 = v5;
  [color greenComponent];
  v8 = v7;
  [color blueComponent];
  v10 = v9;
  [color alphaComponent];
  return [v4 stringWithFormat:@"RGB (%g %g %g %g)", v6, v8, v10, v11];
}

- (OITSUColor)colorWithTintValue:(double)value
{
  if (![OITSUColor(TCColorAdditions) colorWithTintValue:]::whiteRGBColor)
  {
    [OITSUColor(TCColorAdditions) colorWithTintValue:]::whiteRGBColor = [OITSUColor colorWithCalibratedRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v5 = [OITSUColor(TCColorAdditions) colorWithTintValue:]::whiteRGBColor;
  }

  return [(OITSUColor *)self blendedColorWithFraction:1.0 - value ofColor:?];
}

- (OITSUColor)colorWithShadeValue:(double)value
{
  if (![OITSUColor(TCColorAdditions) colorWithShadeValue:]::blackRGBColor)
  {
    [OITSUColor(TCColorAdditions) colorWithShadeValue:]::blackRGBColor = [OITSUColor colorWithCalibratedRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v5 = [OITSUColor(TCColorAdditions) colorWithShadeValue:]::blackRGBColor;
  }

  return [(OITSUColor *)self blendedColorWithFraction:1.0 - value ofColor:?];
}

- (void)set
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetFillColorWithColor(CurrentContext, [(OITSUColor *)self CGColor]);
  cGColor = [(OITSUColor *)self CGColor];

  CGContextSetStrokeColorWithColor(CurrentContext, cGColor);
}

+ (id)colorWithCsColour:(const CsColour *)colour
{
  LOWORD(v3) = colour->var1;
  LOWORD(v4) = colour->var2;
  LOWORD(v5) = colour->var3;
  LOWORD(v6) = colour->var0;
  return [OITSUColor colorWithCalibratedRed:(v3 / 255.0) green:(v4 / 255.0) blue:(v5 / 255.0) alpha:(v6 / 255.0)];
}

- (CsColour)csColour
{
  v3 = v2;
  ttColor = [(OITSUColor *)self ttColor];
  *v3 = HIBYTE(*&ttColor.var0);
  v3[1] = LOBYTE(ttColor.var0);
  v3[2] = HIBYTE(ttColor.var0);
  v3[3] = LOBYTE(ttColor.var1);
  return ttColor;
}

+ (id)colorWithEshColor:(const EshColor *)color
{
  v4 = (EshColor::getRed(color) / 255.0);
  v5 = (EshColor::getGreen(color) / 255.0);
  v6 = (EshColor::getBlue(color) / 255.0);

  return [OITSUColor colorWithCalibratedRed:v4 green:v5 blue:v6 alpha:1.0];
}

- (EshColor)eshColor
{
  v3 = v2;
  LODWORD(v7) = 0;
  ttColor = [(OITSUColor *)self ttColor];
  v6 = EshColor::RGB::create(ttColor, SBYTE1(ttColor), SBYTE2(ttColor), &v7 + 4, v5);
  *v3 = v7;
  return v6;
}

- (void)getRGBBytes:(char *)bytes green:(char *)green blue:(char *)blue
{
  [(OITSUColor *)self redComponent];
  *bytes = (v9 * 255.0 + 0.5);
  [(OITSUColor *)self greenComponent];
  *green = (v10 * 255.0 + 0.5);
  [(OITSUColor *)self blueComponent];
  *blue = (v11 * 255.0 + 0.5);
}

+ (id)colorWithBGRValue:(int64_t)value
{
  v3 = BYTE2(value) / 255.0;
  v4 = BYTE1(value) / 255.0;
  v5 = value / 255.0;
  return [OITSUColor colorWithCalibratedRed:v5 green:v4 blue:v3 alpha:1.0];
}

+ (id)colorWithRGBValue:(int64_t)value
{
  v3 = BYTE2(value) / 255.0;
  v4 = BYTE1(value) / 255.0;
  v5 = value / 255.0;
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