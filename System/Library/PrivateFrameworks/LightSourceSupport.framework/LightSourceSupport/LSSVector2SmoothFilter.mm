@interface LSSVector2SmoothFilter
- (double)value;
- (float64x2_t)initWithVector:(void *)vector;
- (void)updateVector:(double)vector alpha:;
@end

@implementation LSSVector2SmoothFilter

- (float64x2_t)initWithVector:(void *)vector
{
  v3 = result;
  if (vector)
  {
    v4.receiver = vector;
    v4.super_class = LSSVector2SmoothFilter;
    v2 = objc_msgSendSuper2(&v4, sel_init);
    if (v2)
    {
      result = vmulq_n_f64(v3, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v3, v3))));
      v2[1] = result;
    }
  }

  return result;
}

- (void)updateVector:(double)vector alpha:
{
  if (self)
  {
    v4.f64[0] = LSSArcLerp(self[1], a2, vector);
    self[1] = v4;
  }
}

- (double)value
{
  if (self)
  {
    v1 = *(self + 16);
  }

  else
  {
    *&v1 = 0;
  }

  return *&v1;
}

@end