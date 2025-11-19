@interface LSSVector2SmoothFilter
- (double)value;
- (float64x2_t)initWithVector:(void *)a1;
- (void)updateVector:(double)a3 alpha:;
@end

@implementation LSSVector2SmoothFilter

- (float64x2_t)initWithVector:(void *)a1
{
  v3 = result;
  if (a1)
  {
    v4.receiver = a1;
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

- (void)updateVector:(double)a3 alpha:
{
  if (a1)
  {
    v4.f64[0] = LSSArcLerp(a1[1], a2, a3);
    a1[1] = v4;
  }
}

- (double)value
{
  if (a1)
  {
    v1 = *(a1 + 16);
  }

  else
  {
    *&v1 = 0;
  }

  return *&v1;
}

@end