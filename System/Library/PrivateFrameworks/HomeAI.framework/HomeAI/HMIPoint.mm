@interface HMIPoint
- (BOOL)isEqual:(id)equal;
- (CGPoint)point;
- (HMIPoint)initWithCoder:(id)coder;
- (HMIPoint)initWithPoint:(CGPoint)point;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIPoint

- (HMIPoint)initWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6.receiver = self;
  v6.super_class = HMIPoint;
  result = [(HMIPoint *)&v6 init];
  if (result)
  {
    result->_point.x = x;
    result->_point.y = y;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(HMIPoint *)self point];
  v5 = v4;
  [(HMIPoint *)self point];
  return [v3 stringWithFormat:@"<%0.3f %0.3f>", v5, v6];
}

- (CGPoint)point
{
  objc_copyStruct(v4, &self->_point, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (HMIPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"HMIP.x"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"HMIP.y"];
  v8 = v7;

  return [(HMIPoint *)self initWithPoint:v6, v8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(HMIPoint *)self x];
  [coderCopy encodeDouble:@"HMIP.x" forKey:?];
  [(HMIPoint *)self y];
  [coderCopy encodeDouble:@"HMIP.y" forKey:?];
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
    if (objc_opt_isKindOfClass())
    {
      [(HMIPoint *)equalCopy point];
      v6 = v5;
      v8 = v7;
      [(HMIPoint *)self point];
      v11 = v8 == v10 && v6 == v9;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  [(HMIPoint *)self x];
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  *v4.i64 = floor(v3 + 0.5);
  v6 = (v3 - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v20 = vnegq_f64(v7);
  v4.i64[0] = vbslq_s8(v20, v5, v4).i64[0];
  v8 = 2654435761u * *v4.i64;
  v9 = v8 + v6;
  if (v6 <= 0.0)
  {
    v9 = 2654435761u * *v4.i64;
  }

  v10 = v8 - fabs(v6);
  if (v6 < 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  [(HMIPoint *)self y];
  if (v12 < 0.0)
  {
    v12 = -v12;
  }

  *v13.i64 = floor(v12 + 0.5);
  v15 = (v12 - *v13.i64) * 1.84467441e19;
  *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.i64[0] = vbslq_s8(v21, v14, v13).i64[0];
  v16 = 2654435761u * *v13.i64;
  v17 = v16 + v15;
  if (v15 <= 0.0)
  {
    v17 = 2654435761u * *v13.i64;
  }

  v18 = v16 - fabs(v15);
  if (v15 >= 0.0)
  {
    v18 = v17;
  }

  return v18 ^ v11;
}

@end