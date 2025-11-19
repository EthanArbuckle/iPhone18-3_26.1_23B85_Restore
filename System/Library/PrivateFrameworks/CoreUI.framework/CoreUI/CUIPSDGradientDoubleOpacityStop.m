@interface CUIPSDGradientDoubleOpacityStop
+ (id)doubleOpacityStopWithLocation:(double)a3 leadInOpacity:(double)a4 leadOutOpacity:(double)a5;
+ (void)initialize;
- (CUIPSDGradientDoubleOpacityStop)initWithCoder:(id)a3;
- (CUIPSDGradientDoubleOpacityStop)initWithLocation:(double)a3 leadInOpacity:(double)a4 leadOutOpacity:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CUIPSDGradientDoubleOpacityStop

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

+ (id)doubleOpacityStopWithLocation:(double)a3 leadInOpacity:(double)a4 leadOutOpacity:(double)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithLocation:a3 leadInOpacity:a4 leadOutOpacity:a5];

  return v5;
}

- (CUIPSDGradientDoubleOpacityStop)initWithLocation:(double)a3 leadInOpacity:(double)a4 leadOutOpacity:(double)a5
{
  v7.receiver = self;
  v7.super_class = CUIPSDGradientDoubleOpacityStop;
  result = [(CUIPSDGradientOpacityStop *)&v7 initWithLocation:a3 opacity:a4];
  if (result)
  {
    result->leadOutOpacity = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = CUIPSDGradientDoubleOpacityStop;
  result = [(CUIPSDGradientOpacityStop *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 3) = *&self->leadOutOpacity;
  }

  return result;
}

- (CUIPSDGradientDoubleOpacityStop)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CUIPSDGradientDoubleOpacityStop;
  v4 = [(CUIPSDGradientOpacityStop *)&v8 initWithCoder:?];
  if (v4)
  {
    if ([a3 allowsKeyedCoding])
    {
      [a3 decodeDoubleForKey:@"CUIPSDGradientDoubleOpacityStopOpacity"];
    }

    else
    {
      v7 = 0.0;
      [a3 decodeValueOfObjCType:"d" at:&v7 size:8];
      v5 = v7;
    }

    v4->leadOutOpacity = v5;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CUIPSDGradientDoubleOpacityStop;
  [(CUIPSDGradientOpacityStop *)&v7 encodeWithCoder:?];
  leadOutOpacity = self->leadOutOpacity;
  v6 = leadOutOpacity;
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeInteger:+[CUIPSDGradientDoubleOpacityStop version](CUIPSDGradientDoubleOpacityStop forKey:{"version"), @"CUIPSDGradientDoubleOpacityStopVersion"}];
    [a3 encodeDouble:@"CUIPSDGradientDoubleOpacityStopOpacity" forKey:leadOutOpacity];
  }

  else
  {
    [a3 encodeValueOfObjCType:"d" at:&v6];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIPSDGradientDoubleOpacityStop;
  return [NSString stringWithFormat:@"%@ lead-out opacity: %f", [(CUIPSDGradientOpacityStop *)&v3 description], *&self->leadOutOpacity];
}

@end