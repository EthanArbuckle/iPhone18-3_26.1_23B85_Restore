@interface CUIPSDGradientStop
+ (void)initialize;
- (CUIPSDGradientStop)initWithCoder:(id)a3;
- (CUIPSDGradientStop)initWithLocation:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CUIPSDGradientStop

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

- (CUIPSDGradientStop)initWithLocation:(double)a3
{
  v10.receiver = self;
  v10.super_class = CUIPSDGradientStop;
  v5 = [(CUIPSDGradientStop *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = 0.0;
    if (fabs(a3) >= 0.00001)
    {
      v7 = a3;
      if (fabs(a3 + -1.0) < 0.00001)
      {
        v7 = 1.0;
      }
    }

    v5->location = v7;
    if (v7 < 0.0 || v7 > 1.0)
    {
      [(CUIPSDGradientStop *)a2 initWithLocation:v5];
    }
  }

  return v6;
}

- (CUIPSDGradientStop)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CUIPSDGradientStop;
  v4 = [(CUIPSDGradientStop *)&v8 init];
  if (v4)
  {
    if ([a3 allowsKeyedCoding])
    {
      [a3 decodeDoubleForKey:@"CUIPSDGradientStopLocation"];
    }

    else
    {
      v7 = 0.0;
      [a3 decodeValueOfObjCType:"d" at:&v7 size:8];
      v5 = v7;
    }

    v4->location = v5;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  location = self->location;
  v5 = location;
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeInteger:+[CUIPSDGradientStop version](CUIPSDGradientStop forKey:{"version"), @"CUIPSDGradientStopVersion"}];

    [a3 encodeDouble:@"CUIPSDGradientStopLocation" forKey:location];
  }

  else
  {
    [a3 encodeValueOfObjCType:"d" at:&v5];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    *(result + 1) = *&self->location;
  }

  return result;
}

@end