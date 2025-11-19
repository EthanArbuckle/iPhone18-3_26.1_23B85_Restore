@interface DRPrecisionMode
- (BOOL)isEqual:(id)a3;
- (CGPoint)touchOffset;
- (double)yAnchor;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DRPrecisionMode

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setDirection:{-[DRPrecisionMode direction](self, "direction")}];
  [v4 setOrientation:{-[DRPrecisionMode orientation](self, "orientation")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 direction];
    if (v6 == [(DRPrecisionMode *)self direction])
    {
      v7 = [v5 orientation];
      v8 = v7 == [(DRPrecisionMode *)self orientation];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGPoint)touchOffset
{
  v3 = [(DRPrecisionMode *)self direction];
  x = 0.0;
  if (v3 == 2)
  {
    if (qword_1000634F0 != -1)
    {
      sub_10002FE4C();
    }

    y = 25.0;
    if (byte_1000634F8 == 1)
    {
      y = sub_10000E4F0();
    }
  }

  else if (v3 == 1)
  {
    if (qword_1000634F0 != -1)
    {
      sub_10002FE60();
    }

    v6 = 25.0;
    if (byte_1000634F8 == 1)
    {
      v6 = sub_10000E34C();
    }

    y = -v6;
  }

  else
  {
    y = 0.0;
    if (!v3)
    {
      x = CGPointZero.x;
      y = CGPointZero.y;
    }
  }

  if ([(DRPrecisionMode *)self orientation])
  {
    v7 = [(DRPrecisionMode *)self orientation];
    v8 = 0.0;
    if (v7 != 1)
    {
      if ([(DRPrecisionMode *)self orientation]== 4)
      {
        v8 = -1.57079633;
      }

      else if ([(DRPrecisionMode *)self orientation]== 3)
      {
        v8 = 1.57079633;
      }

      else
      {
        v15 = [(DRPrecisionMode *)self orientation];
        v8 = 3.14159265;
        if (v15 != 2)
        {
          v8 = 0.0;
        }
      }
    }

    CGAffineTransformMakeRotation(&v18, v8);
    UIIntegralTransform();
    a = v19;
    b = v20;
    c = v21;
    d = v22;
    tx = v23;
    ty = v24;
  }

  else
  {
    a = CGAffineTransformIdentity.a;
    b = CGAffineTransformIdentity.b;
    c = CGAffineTransformIdentity.c;
    d = CGAffineTransformIdentity.d;
    tx = CGAffineTransformIdentity.tx;
    ty = CGAffineTransformIdentity.ty;
  }

  v16 = tx + y * c + a * x;
  v17 = ty + y * d + b * x;
  result.y = v17;
  result.x = v16;
  return result;
}

- (double)yAnchor
{
  v2 = [(DRPrecisionMode *)self direction];
  if (v2 == 2)
  {
    if (qword_1000634F0 != -1)
    {
      sub_10002FE88();
    }

    if (byte_1000634F8 == 1)
    {
      v4 = sub_10000E83C();
    }

    else
    {
      v4 = 0.1;
    }

    return 1.0 - v4;
  }

  else
  {
    result = 0.0;
    if (v2 == 1)
    {
      if (qword_1000634F0 != -1)
      {
        sub_10002FE74();
      }

      if (byte_1000634F8 == 1)
      {

        return sub_10000E694();
      }

      else
      {
        return 0.1;
      }
    }
  }

  return result;
}

@end