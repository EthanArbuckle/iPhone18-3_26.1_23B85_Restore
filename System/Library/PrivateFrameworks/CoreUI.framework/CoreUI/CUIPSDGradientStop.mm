@interface CUIPSDGradientStop
+ (void)initialize;
- (CUIPSDGradientStop)initWithCoder:(id)coder;
- (CUIPSDGradientStop)initWithLocation:(double)location;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CUIPSDGradientStop

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

- (CUIPSDGradientStop)initWithLocation:(double)location
{
  v10.receiver = self;
  v10.super_class = CUIPSDGradientStop;
  v5 = [(CUIPSDGradientStop *)&v10 init];
  v6 = v5;
  if (v5)
  {
    locationCopy = 0.0;
    if (fabs(location) >= 0.00001)
    {
      locationCopy = location;
      if (fabs(location + -1.0) < 0.00001)
      {
        locationCopy = 1.0;
      }
    }

    v5->location = locationCopy;
    if (locationCopy < 0.0 || locationCopy > 1.0)
    {
      [(CUIPSDGradientStop *)a2 initWithLocation:v5];
    }
  }

  return v6;
}

- (CUIPSDGradientStop)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CUIPSDGradientStop;
  v4 = [(CUIPSDGradientStop *)&v8 init];
  if (v4)
  {
    if ([coder allowsKeyedCoding])
    {
      [coder decodeDoubleForKey:@"CUIPSDGradientStopLocation"];
    }

    else
    {
      v7 = 0.0;
      [coder decodeValueOfObjCType:"d" at:&v7 size:8];
      v5 = v7;
    }

    v4->location = v5;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  location = self->location;
  v5 = location;
  if ([coder allowsKeyedCoding])
  {
    [coder encodeInteger:+[CUIPSDGradientStop version](CUIPSDGradientStop forKey:{"version"), @"CUIPSDGradientStopVersion"}];

    [coder encodeDouble:@"CUIPSDGradientStopLocation" forKey:location];
  }

  else
  {
    [coder encodeValueOfObjCType:"d" at:&v5];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (result)
  {
    *(result + 1) = *&self->location;
  }

  return result;
}

@end