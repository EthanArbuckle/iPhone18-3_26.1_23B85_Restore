@interface CUIPSDGradientDoubleColorStop
+ (id)doubleColorStopWithLocation:(double)a3 leadInColor:(_psdGradientColor)a4 leadOutColor:(_psdGradientColor)a5;
+ (void)initialize;
- (CUIPSDGradientDoubleColorStop)initWithCoder:(id)a3;
- (CUIPSDGradientDoubleColorStop)initWithLocation:(double)a3 leadInColor:(_psdGradientColor)a4 leadOutColor:(_psdGradientColor)a5;
- (_psdGradientColor)leadOutColor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CUIPSDGradientDoubleColorStop

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

+ (id)doubleColorStopWithLocation:(double)a3 leadInColor:(_psdGradientColor)a4 leadOutColor:(_psdGradientColor)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithLocation:a3 leadInColor:a4.red leadOutColor:{a4.green, a4.blue, a4.alpha, *&a5.red, *&a5.green, *&a5.blue, *&a5.alpha}];

  return v5;
}

- (CUIPSDGradientDoubleColorStop)initWithLocation:(double)a3 leadInColor:(_psdGradientColor)a4 leadOutColor:(_psdGradientColor)a5
{
  v6.receiver = self;
  v6.super_class = CUIPSDGradientDoubleColorStop;
  result = [(CUIPSDGradientColorStop *)&v6 initWithLocation:a3 gradientColor:a4.red, a4.green, a4.blue, a4.alpha];
  if (result)
  {
    result->leadOutColor = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CUIPSDGradientDoubleColorStop;
  result = [(CUIPSDGradientColorStop *)&v6 copyWithZone:a3];
  if (result)
  {
    v5 = *&self->leadOutColor.blue;
    *(result + 3) = *&self->leadOutColor.red;
    *(result + 4) = v5;
  }

  return result;
}

- (CUIPSDGradientDoubleColorStop)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CUIPSDGradientDoubleColorStop;
  v4 = [(CUIPSDGradientColorStop *)&v10 initWithCoder:?];
  if (v4)
  {
    if ([a3 allowsKeyedCoding])
    {
      [a3 decodeDoubleForKey:@"CUIPSDGradientDoubleColorStopRed"];
      v4->leadOutColor.red = v5;
      [a3 decodeDoubleForKey:@"CUIPSDGradientDoubleColorStopGreen"];
      v4->leadOutColor.green = v6;
      [a3 decodeDoubleForKey:@"CUIPSDGradientDoubleColorStopBlue"];
      v4->leadOutColor.blue = v7;
      [a3 decodeDoubleForKey:@"CUIPSDGradientDoubleColorStopAlpha"];
      v4->leadOutColor.alpha = v8;
    }

    else
    {
      [a3 decodeValuesOfObjCTypes:{"dddd", &v4->leadOutColor, &v4->leadOutColor.green, &v4->leadOutColor.blue, &v4->leadOutColor.alpha}];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CUIPSDGradientDoubleColorStop;
  [(CUIPSDGradientColorStop *)&v6 encodeWithCoder:?];
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeInteger:+[CUIPSDGradientDoubleColorStop version](CUIPSDGradientDoubleColorStop forKey:{"version"), @"CUIPSDGradientDoubleColorStopVersion"}];
    p_leadOutColor = &self->leadOutColor;
    [a3 encodeDouble:@"CUIPSDGradientDoubleColorStopRed" forKey:p_leadOutColor->red];
    [a3 encodeDouble:@"CUIPSDGradientDoubleColorStopGreen" forKey:p_leadOutColor->green];
    [a3 encodeDouble:@"CUIPSDGradientDoubleColorStopBlue" forKey:p_leadOutColor->blue];
    [a3 encodeDouble:@"CUIPSDGradientDoubleColorStopAlpha" forKey:p_leadOutColor->alpha];
  }

  else
  {
    [a3 encodeValuesOfObjCTypes:{"dddd", &self->leadOutColor, &self->leadOutColor.green, &self->leadOutColor.blue, &self->leadOutColor.alpha}];
  }
}

- (_psdGradientColor)leadOutColor
{
  red = self->leadOutColor.red;
  green = self->leadOutColor.green;
  blue = self->leadOutColor.blue;
  alpha = self->leadOutColor.alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIPSDGradientDoubleColorStop;
  return [NSString stringWithFormat:@"%@ lead-out color: (%f, %f, %f, %f) - (%d, %d, %d)", [(CUIPSDGradientColorStop *)&v3 description], *&self->leadOutColor.red, *&self->leadOutColor.green, *&self->leadOutColor.blue, *&self->leadOutColor.alpha, (self->leadOutColor.red * 255.0 + 0.5), (self->leadOutColor.green * 255.0 + 0.5), (self->leadOutColor.blue * 255.0 + 0.5)];
}

@end