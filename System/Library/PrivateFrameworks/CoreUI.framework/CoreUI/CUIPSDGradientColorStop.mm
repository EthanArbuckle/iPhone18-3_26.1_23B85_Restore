@interface CUIPSDGradientColorStop
+ (id)colorStopWithLocation:(double)location gradientColor:(_psdGradientColor)color;
+ (void)initialize;
- (CUIPSDGradientColorStop)initWithCoder:(id)coder;
- (CUIPSDGradientColorStop)initWithLocation:(double)location gradientColor:(_psdGradientColor)color;
- (_psdGradientColor)gradientColor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CUIPSDGradientColorStop

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

+ (id)colorStopWithLocation:(double)location gradientColor:(_psdGradientColor)color
{
  v4 = [objc_alloc(objc_opt_class()) initWithLocation:location gradientColor:{color.red, color.green, color.blue, color.alpha}];

  return v4;
}

- (CUIPSDGradientColorStop)initWithLocation:(double)location gradientColor:(_psdGradientColor)color
{
  alpha = color.alpha;
  blue = color.blue;
  green = color.green;
  red = color.red;
  v9.receiver = self;
  v9.super_class = CUIPSDGradientColorStop;
  result = [(CUIPSDGradientStop *)&v9 initWithLocation:location];
  if (result)
  {
    result->gradientColor.red = red;
    result->gradientColor.green = green;
    result->gradientColor.blue = blue;
    result->gradientColor.alpha = alpha;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CUIPSDGradientColorStop;
  result = [(CUIPSDGradientStop *)&v6 copyWithZone:zone];
  if (result)
  {
    v5 = *&self->gradientColor.blue;
    *(result + 1) = *&self->gradientColor.red;
    *(result + 2) = v5;
  }

  return result;
}

- (CUIPSDGradientColorStop)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CUIPSDGradientColorStop;
  v4 = [(CUIPSDGradientStop *)&v10 initWithCoder:?];
  if (v4)
  {
    if ([coder allowsKeyedCoding])
    {
      [coder decodeDoubleForKey:@"CUIPSDGradientColorStopRed"];
      v4->gradientColor.red = v5;
      [coder decodeDoubleForKey:@"CUIPSDGradientColorStopGreen"];
      v4->gradientColor.green = v6;
      [coder decodeDoubleForKey:@"CUIPSDGradientColorStopBlue"];
      v4->gradientColor.blue = v7;
      [coder decodeDoubleForKey:@"CUIPSDGradientColorStopAlpha"];
      v4->gradientColor.alpha = v8;
    }

    else
    {
      [coder decodeValuesOfObjCTypes:{"dddd", &v4->gradientColor, &v4->gradientColor.green, &v4->gradientColor.blue, &v4->gradientColor.alpha}];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CUIPSDGradientColorStop;
  [(CUIPSDGradientStop *)&v6 encodeWithCoder:?];
  if ([coder allowsKeyedCoding])
  {
    [coder encodeInteger:+[CUIPSDGradientColorStop version](CUIPSDGradientColorStop forKey:{"version"), @"CUIPSDGradientColorStopVersion"}];
    p_gradientColor = &self->gradientColor;
    [coder encodeDouble:@"CUIPSDGradientColorStopRed" forKey:p_gradientColor->red];
    [coder encodeDouble:@"CUIPSDGradientColorStopGreen" forKey:p_gradientColor->green];
    [coder encodeDouble:@"CUIPSDGradientColorStopBlue" forKey:p_gradientColor->blue];
    [coder encodeDouble:@"CUIPSDGradientColorStopAlpha" forKey:p_gradientColor->alpha];
  }

  else
  {
    [coder encodeValuesOfObjCTypes:{"dddd", &self->gradientColor, &self->gradientColor.green, &self->gradientColor.blue, &self->gradientColor.alpha}];
  }
}

- (_psdGradientColor)gradientColor
{
  red = self->gradientColor.red;
  green = self->gradientColor.green;
  blue = self->gradientColor.blue;
  alpha = self->gradientColor.alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CUIPSDGradientColorStop;
  v3 = [(CUIPSDGradientColorStop *)&v6 description];
  [(CUIPSDGradientStop *)self location];
  return [NSString stringWithFormat:@"%@ - location: %f color: (%f, %f, %f, %f) - (%d, %d, %d)", v3, v4, *&self->gradientColor.red, *&self->gradientColor.green, *&self->gradientColor.blue, *&self->gradientColor.alpha, (self->gradientColor.red * 255.0 + 0.5), (self->gradientColor.green * 255.0 + 0.5), (self->gradientColor.blue * 255.0 + 0.5)];
}

@end