@interface NTKRing
+ (id)_fillFractionStringForFillFraction:(float)a3 withFormatter:(id)a4;
+ (id)fillFractionStringForFillFraction:(float)a3;
+ (id)fillFractionStringWithSymbolForFillFraction:(float)a3;
- (NTKRing)initWithFillFraction:(double)a3 style:(int64_t)a4 radius:(double)a5 strokeWidth:(double)a6;
- (double)_validFillFraction:(double)a3;
- (id)fillFractionString;
- (id)fillFractionStringWithSymbol;
- (id)ringImage;
@end

@implementation NTKRing

- (NTKRing)initWithFillFraction:(double)a3 style:(int64_t)a4 radius:(double)a5 strokeWidth:(double)a6
{
  v14.receiver = self;
  v14.super_class = NTKRing;
  v10 = [(NTKRing *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(NTKRing *)v10 _validFillFraction:a3];
    v11->_ringStyle = a4;
    v11->_radius = a5;
    v11->_fillFraction = v12;
    v11->_strokeWidth = a6;
    v11->_backgroundRingAlpha = 0.18;
  }

  return v11;
}

- (id)ringImage
{
  fillFraction = self->_fillFraction;
  radius = self->_radius;
  v5 = radius + self->_strokeWidth * -0.5;
  v6 = (fillFraction + fillFraction) * 3.14159265 + -1.57079633;
  ringStyle = self->_ringStyle;
  v8 = fillFraction * 5.65486678 + 1.88495559;
  if (ringStyle == 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (ringStyle == 1)
  {
    v10 = 1.88495559;
  }

  else
  {
    v10 = -1.57079633;
  }

  v11 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  v12 = [v11 device];

  [v12 screenScale];
  v14 = v13;
  v22.width = radius + radius;
  v22.height = radius + radius;
  UIGraphicsBeginImageContextWithOptions(v22, 0, v14);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineWidth(CurrentContext, self->_strokeWidth);
  v16 = [MEMORY[0x277D75348] blackColor];
  [v16 setStroke];

  CGContextAddArc(CurrentContext, radius, radius, v5, v10, v9, 0);
  CGContextStrokePath(CurrentContext);
  if (self->_fillFraction != 1.0)
  {
    v17 = dbl_22DCE8D10[ringStyle == 1];
    v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:self->_backgroundRingAlpha];
    [v18 setStroke];

    CGContextAddArc(CurrentContext, radius, radius, v5, v9, v17, 0);
    CGContextStrokePath(CurrentContext);
  }

  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

- (id)fillFractionString
{
  fillFraction = self->_fillFraction;
  *&fillFraction = fillFraction;
  return [NTKRing fillFractionStringForFillFraction:fillFraction];
}

- (id)fillFractionStringWithSymbol
{
  fillFraction = self->_fillFraction;
  *&fillFraction = fillFraction;
  return [NTKRing fillFractionStringWithSymbolForFillFraction:fillFraction];
}

- (double)_validFillFraction:(double)a3
{
  v3 = 1.0;
  if (a3 <= 1.0)
  {
    v3 = a3;
  }

  v4 = a3 < 0.0;
  result = 0.0;
  if (!v4)
  {
    return v3;
  }

  return result;
}

+ (id)fillFractionStringForFillFraction:(float)a3
{
  v3 = a3;
  if (fillFractionStringForFillFraction__onceToken != -1)
  {
    +[NTKRing fillFractionStringForFillFraction:];
  }

  v5 = fillFractionStringForFillFraction__percentageFormatter;
  a3 = v3;

  return [a1 _fillFractionStringForFillFraction:v5 withFormatter:*&a3];
}

uint64_t __45__NTKRing_fillFractionStringForFillFraction___block_invoke()
{
  v0 = objc_opt_new();
  v1 = fillFractionStringForFillFraction__percentageFormatter;
  fillFractionStringForFillFraction__percentageFormatter = v0;

  [fillFractionStringForFillFraction__percentageFormatter setNumberStyle:3];
  v2 = fillFractionStringForFillFraction__percentageFormatter;

  return [v2 setPercentSymbol:&stru_284110E98];
}

+ (id)fillFractionStringWithSymbolForFillFraction:(float)a3
{
  v3 = a3;
  if (fillFractionStringWithSymbolForFillFraction__onceToken != -1)
  {
    +[NTKRing fillFractionStringWithSymbolForFillFraction:];
  }

  v5 = fillFractionStringWithSymbolForFillFraction__percentageFormatter;
  a3 = v3;

  return [a1 _fillFractionStringForFillFraction:v5 withFormatter:*&a3];
}

uint64_t __55__NTKRing_fillFractionStringWithSymbolForFillFraction___block_invoke()
{
  v0 = objc_opt_new();
  v1 = fillFractionStringWithSymbolForFillFraction__percentageFormatter;
  fillFractionStringWithSymbolForFillFraction__percentageFormatter = v0;

  v2 = fillFractionStringWithSymbolForFillFraction__percentageFormatter;

  return [v2 setNumberStyle:3];
}

+ (id)_fillFractionStringForFillFraction:(float)a3 withFormatter:(id)a4
{
  if (a3 == -1.0)
  {
    v5 = @"--";
  }

  else
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = a4;
    *&v8 = a3;
    v9 = [v6 numberWithFloat:v8];
    v10 = [v7 stringFromNumber:v9];

    v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [v10 stringByTrimmingCharactersInSet:v11];
  }

  return v5;
}

@end