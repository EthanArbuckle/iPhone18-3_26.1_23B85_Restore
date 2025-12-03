@interface CUIPSDGradientDoubleOpacityStop
+ (id)doubleOpacityStopWithLocation:(double)location leadInOpacity:(double)opacity leadOutOpacity:(double)outOpacity;
+ (void)initialize;
- (CUIPSDGradientDoubleOpacityStop)initWithCoder:(id)coder;
- (CUIPSDGradientDoubleOpacityStop)initWithLocation:(double)location leadInOpacity:(double)opacity leadOutOpacity:(double)outOpacity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CUIPSDGradientDoubleOpacityStop

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

+ (id)doubleOpacityStopWithLocation:(double)location leadInOpacity:(double)opacity leadOutOpacity:(double)outOpacity
{
  v5 = [objc_alloc(objc_opt_class()) initWithLocation:location leadInOpacity:opacity leadOutOpacity:outOpacity];

  return v5;
}

- (CUIPSDGradientDoubleOpacityStop)initWithLocation:(double)location leadInOpacity:(double)opacity leadOutOpacity:(double)outOpacity
{
  v7.receiver = self;
  v7.super_class = CUIPSDGradientDoubleOpacityStop;
  result = [(CUIPSDGradientOpacityStop *)&v7 initWithLocation:location opacity:opacity];
  if (result)
  {
    result->leadOutOpacity = outOpacity;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = CUIPSDGradientDoubleOpacityStop;
  result = [(CUIPSDGradientOpacityStop *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 3) = *&self->leadOutOpacity;
  }

  return result;
}

- (CUIPSDGradientDoubleOpacityStop)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CUIPSDGradientDoubleOpacityStop;
  v4 = [(CUIPSDGradientOpacityStop *)&v8 initWithCoder:?];
  if (v4)
  {
    if ([coder allowsKeyedCoding])
    {
      [coder decodeDoubleForKey:@"CUIPSDGradientDoubleOpacityStopOpacity"];
    }

    else
    {
      v7 = 0.0;
      [coder decodeValueOfObjCType:"d" at:&v7 size:8];
      v5 = v7;
    }

    v4->leadOutOpacity = v5;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CUIPSDGradientDoubleOpacityStop;
  [(CUIPSDGradientOpacityStop *)&v7 encodeWithCoder:?];
  leadOutOpacity = self->leadOutOpacity;
  v6 = leadOutOpacity;
  if ([coder allowsKeyedCoding])
  {
    [coder encodeInteger:+[CUIPSDGradientDoubleOpacityStop version](CUIPSDGradientDoubleOpacityStop forKey:{"version"), @"CUIPSDGradientDoubleOpacityStopVersion"}];
    [coder encodeDouble:@"CUIPSDGradientDoubleOpacityStopOpacity" forKey:leadOutOpacity];
  }

  else
  {
    [coder encodeValueOfObjCType:"d" at:&v6];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIPSDGradientDoubleOpacityStop;
  return [NSString stringWithFormat:@"%@ lead-out opacity: %f", [(CUIPSDGradientOpacityStop *)&v3 description], *&self->leadOutOpacity];
}

@end