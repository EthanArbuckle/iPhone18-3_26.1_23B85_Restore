@interface MTColor
+ (id)colorWithCGColor:(CGColor *)color;
+ (id)colorWithDescription:(id)description;
+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
+ (id)colorWithWhite:(double)white alpha:(double)alpha;
- (CAColorMatrix)sourceOverColorMatrix;
- (CGColor)CGColor;
- (MTColor)colorWithAdditionalAlphaComponent:(double)component;
- (MTColor)colorWithAlphaComponent:(double)component;
- (id)_initWithCGColor:(CGColor *)color;
- (id)_initWithDescription:(id)description;
- (id)_rgbColor;
- (id)colorBlendedWithColor:(id)color;
- (id)colorDescription;
- (void)dealloc;
@end

@implementation MTColor

- (void)dealloc
{
  cachedColor = self->_cachedColor;
  if (cachedColor)
  {
    CGColorRelease(cachedColor);
  }

  v4.receiver = self;
  v4.super_class = MTColor;
  [(MTColor *)&v4 dealloc];
}

+ (id)colorWithWhite:(double)white alpha:(double)alpha
{
  v4 = [[MTWhiteColor alloc] initWithWhite:white alpha:alpha];

  return v4;
}

+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v6 = [[MTRGBColor alloc] initWithRed:red green:green blue:blue alpha:alpha];

  return v6;
}

+ (id)colorWithCGColor:(CGColor *)color
{
  if (color)
  {
    ColorSpace = CGColorGetColorSpace(color);
    if (RGBColorSpace_onceToken != -1)
    {
      +[MTColor colorWithCGColor:];
    }

    if (ColorSpace != RGBColorSpace___RGBColorSpace || (v6 = [[MTRGBColor alloc] _initWithCGColor:color]) == 0)
    {
      if (GrayColorSpace_onceToken != -1)
      {
        +[MTColor colorWithCGColor:];
      }

      if (ColorSpace == GrayColorSpace___GrayColorSpace)
      {
        v6 = [[MTWhiteColor alloc] _initWithCGColor:color];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)colorWithDescription:(id)description
{
  descriptionCopy = description;
  v4 = [descriptionCopy objectForKey:@"alpha"];

  if (v4)
  {
    v5 = [descriptionCopy objectForKey:@"white"];

    if (v5)
    {
      v6 = MTWhiteColor;
LABEL_4:
      v4 = [[v6 alloc] _initWithDescription:descriptionCopy];
      goto LABEL_5;
    }

    v4 = [descriptionCopy objectForKey:@"red"];
    if (v4)
    {
      v8 = [descriptionCopy objectForKey:@"green"];
      if (v8)
      {
        v9 = v8;
        v10 = [descriptionCopy objectForKey:@"blue"];

        if (v10)
        {
          v6 = MTRGBColor;
          goto LABEL_4;
        }
      }

      else
      {
      }

      v4 = 0;
    }
  }

LABEL_5:

  return v4;
}

- (id)_initWithCGColor:(CGColor *)color
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:256 description:@"Abstract"];

  return 0;
}

- (id)_initWithDescription:(id)description
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:261 description:@"Abstract"];

  return 0;
}

- (CGColor)CGColor
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:272 description:@"Abstract"];

  return 0;
}

- (id)colorDescription
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:277 description:@"Abstract"];

  return 0;
}

- (MTColor)colorWithAlphaComponent:(double)component
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:282 description:@"Abstract"];

  return 0;
}

- (MTColor)colorWithAdditionalAlphaComponent:(double)component
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:287 description:@"Abstract"];

  return 0;
}

- (id)colorBlendedWithColor:(id)color
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:292 description:@"Abstract"];

  return 0;
}

- (CAColorMatrix)sourceOverColorMatrix
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a3 object:self file:@"MTColor.m" lineNumber:297 description:@"Abstract"];

  v8 = MEMORY[0x1E6979280];
  v9 = *(MEMORY[0x1E6979280] + 48);
  *&retstr->m24 = *(MEMORY[0x1E6979280] + 32);
  *&retstr->m33 = v9;
  *&retstr->m42 = v8[4];
  v10 = v8[1];
  *&retstr->m11 = *v8;
  *&retstr->m15 = v10;
  return result;
}

- (id)_rgbColor
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:302 description:@"Abstract"];

  return 0;
}

@end