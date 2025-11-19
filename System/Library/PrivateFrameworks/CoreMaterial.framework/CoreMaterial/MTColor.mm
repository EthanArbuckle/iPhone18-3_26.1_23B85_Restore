@interface MTColor
+ (id)colorWithCGColor:(CGColor *)a3;
+ (id)colorWithDescription:(id)a3;
+ (id)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (id)colorWithWhite:(double)a3 alpha:(double)a4;
- (CAColorMatrix)sourceOverColorMatrix;
- (CGColor)CGColor;
- (MTColor)colorWithAdditionalAlphaComponent:(double)a3;
- (MTColor)colorWithAlphaComponent:(double)a3;
- (id)_initWithCGColor:(CGColor *)a3;
- (id)_initWithDescription:(id)a3;
- (id)_rgbColor;
- (id)colorBlendedWithColor:(id)a3;
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

+ (id)colorWithWhite:(double)a3 alpha:(double)a4
{
  v4 = [[MTWhiteColor alloc] initWithWhite:a3 alpha:a4];

  return v4;
}

+ (id)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v6 = [[MTRGBColor alloc] initWithRed:a3 green:a4 blue:a5 alpha:a6];

  return v6;
}

+ (id)colorWithCGColor:(CGColor *)a3
{
  if (a3)
  {
    ColorSpace = CGColorGetColorSpace(a3);
    if (RGBColorSpace_onceToken != -1)
    {
      +[MTColor colorWithCGColor:];
    }

    if (ColorSpace != RGBColorSpace___RGBColorSpace || (v6 = [[MTRGBColor alloc] _initWithCGColor:a3]) == 0)
    {
      if (GrayColorSpace_onceToken != -1)
      {
        +[MTColor colorWithCGColor:];
      }

      if (ColorSpace == GrayColorSpace___GrayColorSpace)
      {
        v6 = [[MTWhiteColor alloc] _initWithCGColor:a3];
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

+ (id)colorWithDescription:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"alpha"];

  if (v4)
  {
    v5 = [v3 objectForKey:@"white"];

    if (v5)
    {
      v6 = MTWhiteColor;
LABEL_4:
      v4 = [[v6 alloc] _initWithDescription:v3];
      goto LABEL_5;
    }

    v4 = [v3 objectForKey:@"red"];
    if (v4)
    {
      v8 = [v3 objectForKey:@"green"];
      if (v8)
      {
        v9 = v8;
        v10 = [v3 objectForKey:@"blue"];

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

- (id)_initWithCGColor:(CGColor *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:256 description:@"Abstract"];

  return 0;
}

- (id)_initWithDescription:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:261 description:@"Abstract"];

  return 0;
}

- (CGColor)CGColor
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:272 description:@"Abstract"];

  return 0;
}

- (id)colorDescription
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:277 description:@"Abstract"];

  return 0;
}

- (MTColor)colorWithAlphaComponent:(double)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:282 description:@"Abstract"];

  return 0;
}

- (MTColor)colorWithAdditionalAlphaComponent:(double)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:287 description:@"Abstract"];

  return 0;
}

- (id)colorBlendedWithColor:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:292 description:@"Abstract"];

  return 0;
}

- (CAColorMatrix)sourceOverColorMatrix
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a3 object:self file:@"MTColor.m" lineNumber:297 description:@"Abstract"];

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"MTColor.m" lineNumber:302 description:@"Abstract"];

  return 0;
}

@end