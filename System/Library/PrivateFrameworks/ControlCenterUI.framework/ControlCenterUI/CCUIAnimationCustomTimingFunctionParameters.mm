@interface CCUIAnimationCustomTimingFunctionParameters
+ (id)functionWithControlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (BOOL)isEqual:(id)equal;
- (CGPoint)controlPoint1;
- (CGPoint)controlPoint2;
- (NSString)description;
- (id)_initWithControlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (unint64_t)hash;
@end

@implementation CCUIAnimationCustomTimingFunctionParameters

+ (id)functionWithControlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  v4 = [[self alloc] _initWithControlPoint1:point1.x controlPoint2:{point1.y, point2.x, point2.y}];

  return v4;
}

- (id)_initWithControlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v6 = point1.y;
  v7 = point1.x;
  v9.receiver = self;
  v9.super_class = CCUIAnimationCustomTimingFunctionParameters;
  result = [(CCUIAnimationCustomTimingFunctionParameters *)&v9 init];
  if (result)
  {
    *(result + 1) = v7;
    *(result + 2) = v6;
    *(result + 3) = x;
    *(result + 4) = y;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(CCUIAnimationCustomTimingFunctionParameters *)self controlPoint1];
  v4 = [v3 appendPoint:@"Control Point 1" withName:?];
  [(CCUIAnimationCustomTimingFunctionParameters *)self controlPoint2];
  v5 = [v3 appendPoint:@"Control Point 2" withName:?];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  [(CCUIAnimationCustomTimingFunctionParameters *)self controlPoint1];
  v4 = [builder appendCGPoint:?];
  [(CCUIAnimationCustomTimingFunctionParameters *)self controlPoint2];
  v5 = [builder appendCGPoint:?];
  v6 = [builder hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      [(CCUIAnimationCustomTimingFunctionParameters *)self controlPoint1];
      v7 = v6;
      v9 = v8;
      [(CCUIAnimationCustomTimingFunctionParameters *)v5 controlPoint1];
      v11 = 0;
      if (v7 == v12 && v9 == v10)
      {
        [(CCUIAnimationCustomTimingFunctionParameters *)self controlPoint2];
        v14 = v13;
        v16 = v15;
        [(CCUIAnimationCustomTimingFunctionParameters *)v5 controlPoint2];
        v11 = v16 == v18 && v14 == v17;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (CGPoint)controlPoint1
{
  x = self->_controlPoint1.x;
  y = self->_controlPoint1.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)controlPoint2
{
  x = self->_controlPoint2.x;
  y = self->_controlPoint2.y;
  result.y = y;
  result.x = x;
  return result;
}

@end