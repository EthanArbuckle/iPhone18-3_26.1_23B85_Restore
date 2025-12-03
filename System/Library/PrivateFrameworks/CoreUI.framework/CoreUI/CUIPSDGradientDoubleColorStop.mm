@interface CUIPSDGradientDoubleColorStop
+ (id)doubleColorStopWithLocation:(double)location leadInColor:(_psdGradientColor)color leadOutColor:(_psdGradientColor)outColor;
+ (void)initialize;
- (CUIPSDGradientDoubleColorStop)initWithCoder:(id)coder;
- (CUIPSDGradientDoubleColorStop)initWithLocation:(double)location leadInColor:(_psdGradientColor)color leadOutColor:(_psdGradientColor)outColor;
- (_psdGradientColor)leadOutColor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CUIPSDGradientDoubleColorStop

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

+ (id)doubleColorStopWithLocation:(double)location leadInColor:(_psdGradientColor)color leadOutColor:(_psdGradientColor)outColor
{
  v5 = [objc_alloc(objc_opt_class()) initWithLocation:location leadInColor:color.red leadOutColor:{color.green, color.blue, color.alpha, *&outColor.red, *&outColor.green, *&outColor.blue, *&outColor.alpha}];

  return v5;
}

- (CUIPSDGradientDoubleColorStop)initWithLocation:(double)location leadInColor:(_psdGradientColor)color leadOutColor:(_psdGradientColor)outColor
{
  v6.receiver = self;
  v6.super_class = CUIPSDGradientDoubleColorStop;
  result = [(CUIPSDGradientColorStop *)&v6 initWithLocation:location gradientColor:color.red, color.green, color.blue, color.alpha];
  if (result)
  {
    result->leadOutColor = outColor;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CUIPSDGradientDoubleColorStop;
  result = [(CUIPSDGradientColorStop *)&v6 copyWithZone:zone];
  if (result)
  {
    v5 = *&self->leadOutColor.blue;
    *(result + 3) = *&self->leadOutColor.red;
    *(result + 4) = v5;
  }

  return result;
}

- (CUIPSDGradientDoubleColorStop)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CUIPSDGradientDoubleColorStop;
  v4 = [(CUIPSDGradientColorStop *)&v10 initWithCoder:?];
  if (v4)
  {
    if ([coder allowsKeyedCoding])
    {
      [coder decodeDoubleForKey:@"CUIPSDGradientDoubleColorStopRed"];
      v4->leadOutColor.red = v5;
      [coder decodeDoubleForKey:@"CUIPSDGradientDoubleColorStopGreen"];
      v4->leadOutColor.green = v6;
      [coder decodeDoubleForKey:@"CUIPSDGradientDoubleColorStopBlue"];
      v4->leadOutColor.blue = v7;
      [coder decodeDoubleForKey:@"CUIPSDGradientDoubleColorStopAlpha"];
      v4->leadOutColor.alpha = v8;
    }

    else
    {
      [coder decodeValuesOfObjCTypes:{"dddd", &v4->leadOutColor, &v4->leadOutColor.green, &v4->leadOutColor.blue, &v4->leadOutColor.alpha}];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CUIPSDGradientDoubleColorStop;
  [(CUIPSDGradientColorStop *)&v6 encodeWithCoder:?];
  if ([coder allowsKeyedCoding])
  {
    [coder encodeInteger:+[CUIPSDGradientDoubleColorStop version](CUIPSDGradientDoubleColorStop forKey:{"version"), @"CUIPSDGradientDoubleColorStopVersion"}];
    p_leadOutColor = &self->leadOutColor;
    [coder encodeDouble:@"CUIPSDGradientDoubleColorStopRed" forKey:p_leadOutColor->red];
    [coder encodeDouble:@"CUIPSDGradientDoubleColorStopGreen" forKey:p_leadOutColor->green];
    [coder encodeDouble:@"CUIPSDGradientDoubleColorStopBlue" forKey:p_leadOutColor->blue];
    [coder encodeDouble:@"CUIPSDGradientDoubleColorStopAlpha" forKey:p_leadOutColor->alpha];
  }

  else
  {
    [coder encodeValuesOfObjCTypes:{"dddd", &self->leadOutColor, &self->leadOutColor.green, &self->leadOutColor.blue, &self->leadOutColor.alpha}];
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