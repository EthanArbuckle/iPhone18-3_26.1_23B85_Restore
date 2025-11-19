@interface CUIPSDGradientColorStop
+ (id)colorStopWithLocation:(double)a3 gradientColor:(_psdGradientColor)a4;
+ (void)initialize;
- (CUIPSDGradientColorStop)initWithCoder:(id)a3;
- (CUIPSDGradientColorStop)initWithLocation:(double)a3 gradientColor:(_psdGradientColor)a4;
- (_psdGradientColor)gradientColor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CUIPSDGradientColorStop

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

+ (id)colorStopWithLocation:(double)a3 gradientColor:(_psdGradientColor)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithLocation:a3 gradientColor:{a4.red, a4.green, a4.blue, a4.alpha}];

  return v4;
}

- (CUIPSDGradientColorStop)initWithLocation:(double)a3 gradientColor:(_psdGradientColor)a4
{
  alpha = a4.alpha;
  blue = a4.blue;
  green = a4.green;
  red = a4.red;
  v9.receiver = self;
  v9.super_class = CUIPSDGradientColorStop;
  result = [(CUIPSDGradientStop *)&v9 initWithLocation:a3];
  if (result)
  {
    result->gradientColor.red = red;
    result->gradientColor.green = green;
    result->gradientColor.blue = blue;
    result->gradientColor.alpha = alpha;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CUIPSDGradientColorStop;
  result = [(CUIPSDGradientStop *)&v6 copyWithZone:a3];
  if (result)
  {
    v5 = *&self->gradientColor.blue;
    *(result + 1) = *&self->gradientColor.red;
    *(result + 2) = v5;
  }

  return result;
}

- (CUIPSDGradientColorStop)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CUIPSDGradientColorStop;
  v4 = [(CUIPSDGradientStop *)&v10 initWithCoder:?];
  if (v4)
  {
    if ([a3 allowsKeyedCoding])
    {
      [a3 decodeDoubleForKey:@"CUIPSDGradientColorStopRed"];
      v4->gradientColor.red = v5;
      [a3 decodeDoubleForKey:@"CUIPSDGradientColorStopGreen"];
      v4->gradientColor.green = v6;
      [a3 decodeDoubleForKey:@"CUIPSDGradientColorStopBlue"];
      v4->gradientColor.blue = v7;
      [a3 decodeDoubleForKey:@"CUIPSDGradientColorStopAlpha"];
      v4->gradientColor.alpha = v8;
    }

    else
    {
      [a3 decodeValuesOfObjCTypes:{"dddd", &v4->gradientColor, &v4->gradientColor.green, &v4->gradientColor.blue, &v4->gradientColor.alpha}];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CUIPSDGradientColorStop;
  [(CUIPSDGradientStop *)&v6 encodeWithCoder:?];
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeInteger:+[CUIPSDGradientColorStop version](CUIPSDGradientColorStop forKey:{"version"), @"CUIPSDGradientColorStopVersion"}];
    p_gradientColor = &self->gradientColor;
    [a3 encodeDouble:@"CUIPSDGradientColorStopRed" forKey:p_gradientColor->red];
    [a3 encodeDouble:@"CUIPSDGradientColorStopGreen" forKey:p_gradientColor->green];
    [a3 encodeDouble:@"CUIPSDGradientColorStopBlue" forKey:p_gradientColor->blue];
    [a3 encodeDouble:@"CUIPSDGradientColorStopAlpha" forKey:p_gradientColor->alpha];
  }

  else
  {
    [a3 encodeValuesOfObjCTypes:{"dddd", &self->gradientColor, &self->gradientColor.green, &self->gradientColor.blue, &self->gradientColor.alpha}];
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