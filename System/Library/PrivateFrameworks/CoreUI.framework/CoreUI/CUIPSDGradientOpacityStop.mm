@interface CUIPSDGradientOpacityStop
+ (id)opacityStopWithLocation:(double)a3 opacity:(double)a4;
+ (void)initialize;
- (CUIPSDGradientOpacityStop)initWithCoder:(id)a3;
- (CUIPSDGradientOpacityStop)initWithLocation:(double)a3 opacity:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CUIPSDGradientOpacityStop

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

+ (id)opacityStopWithLocation:(double)a3 opacity:(double)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithLocation:a3 opacity:a4];

  return v4;
}

- (CUIPSDGradientOpacityStop)initWithLocation:(double)a3 opacity:(double)a4
{
  v6.receiver = self;
  v6.super_class = CUIPSDGradientOpacityStop;
  result = [(CUIPSDGradientStop *)&v6 initWithLocation:a3];
  if (result)
  {
    result->opacity = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = CUIPSDGradientOpacityStop;
  result = [(CUIPSDGradientStop *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 2) = *&self->opacity;
  }

  return result;
}

- (CUIPSDGradientOpacityStop)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CUIPSDGradientOpacityStop;
  v4 = [(CUIPSDGradientStop *)&v8 initWithCoder:?];
  if (v4)
  {
    if ([a3 allowsKeyedCoding])
    {
      [a3 decodeDoubleForKey:@"CUIPSDGradientOpacityStopOpacity"];
    }

    else
    {
      v7 = 0.0;
      [a3 decodeValueOfObjCType:"d" at:&v7 size:8];
      v5 = v7;
    }

    v4->opacity = v5;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CUIPSDGradientOpacityStop;
  [(CUIPSDGradientStop *)&v7 encodeWithCoder:?];
  opacity = self->opacity;
  v6 = opacity;
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeInteger:+[CUIPSDGradientOpacityStop version](CUIPSDGradientOpacityStop forKey:{"version"), @"CUIPSDGradientOpacityStopVersion"}];
    [a3 encodeDouble:@"CUIPSDGradientOpacityStopOpacity" forKey:opacity];
  }

  else
  {
    [a3 encodeValueOfObjCType:"d" at:&v6];
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