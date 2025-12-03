@interface CUIPSDGradientOpacityStop
+ (id)opacityStopWithLocation:(double)location opacity:(double)opacity;
+ (void)initialize;
- (CUIPSDGradientOpacityStop)initWithCoder:(id)coder;
- (CUIPSDGradientOpacityStop)initWithLocation:(double)location opacity:(double)opacity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CUIPSDGradientOpacityStop

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

+ (id)opacityStopWithLocation:(double)location opacity:(double)opacity
{
  v4 = [objc_alloc(objc_opt_class()) initWithLocation:location opacity:opacity];

  return v4;
}

- (CUIPSDGradientOpacityStop)initWithLocation:(double)location opacity:(double)opacity
{
  v6.receiver = self;
  v6.super_class = CUIPSDGradientOpacityStop;
  result = [(CUIPSDGradientStop *)&v6 initWithLocation:location];
  if (result)
  {
    result->opacity = opacity;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = CUIPSDGradientOpacityStop;
  result = [(CUIPSDGradientStop *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 2) = *&self->opacity;
  }

  return result;
}

- (CUIPSDGradientOpacityStop)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CUIPSDGradientOpacityStop;
  v4 = [(CUIPSDGradientStop *)&v8 initWithCoder:?];
  if (v4)
  {
    if ([coder allowsKeyedCoding])
    {
      [coder decodeDoubleForKey:@"CUIPSDGradientOpacityStopOpacity"];
    }

    else
    {
      v7 = 0.0;
      [coder decodeValueOfObjCType:"d" at:&v7 size:8];
      v5 = v7;
    }

    v4->opacity = v5;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CUIPSDGradientOpacityStop;
  [(CUIPSDGradientStop *)&v7 encodeWithCoder:?];
  opacity = self->opacity;
  v6 = opacity;
  if ([coder allowsKeyedCoding])
  {
    [coder encodeInteger:+[CUIPSDGradientOpacityStop version](CUIPSDGradientOpacityStop forKey:{"version"), @"CUIPSDGradientOpacityStopVersion"}];
    [coder encodeDouble:@"CUIPSDGradientOpacityStopOpacity" forKey:opacity];
  }

  else
  {
    [coder encodeValueOfObjCType:"d" at:&v6];
  }
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CUIPSDGradientOpacityStop;
  v3 = [(CUIPSDGradientOpacityStop *)&v6 description];
  [(CUIPSDGradientStop *)self location];
  return [NSString stringWithFormat:@"%@ - location: %f opacity: %f", v3, v4, *&self->opacity];
}

@end