@interface CCUIAnimationCustomTimingFunctionParameters
+ (id)functionWithControlPoint1:(CGPoint)a3 controlPoint2:(CGPoint)a4;
- (BOOL)isEqual:(id)a3;
- (CGPoint)controlPoint1;
- (CGPoint)controlPoint2;
- (NSString)description;
- (id)_initWithControlPoint1:(CGPoint)a3 controlPoint2:(CGPoint)a4;
- (unint64_t)hash;
@end

@implementation CCUIAnimationCustomTimingFunctionParameters

+ (id)functionWithControlPoint1:(CGPoint)a3 controlPoint2:(CGPoint)a4
{
  v4 = [[a1 alloc] _initWithControlPoint1:a3.x controlPoint2:{a3.y, a4.x, a4.y}];

  return v4;
}

- (id)_initWithControlPoint1:(CGPoint)a3 controlPoint2:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
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
  v6 = [v3 build];

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  [(CCUIAnimationCustomTimingFunctionParameters *)self controlPoint1];
  v4 = [v3 appendCGPoint:?];
  [(CCUIAnimationCustomTimingFunctionParameters *)self controlPoint2];
  v5 = [v3 appendCGPoint:?];
  v6 = [v3 hash];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
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