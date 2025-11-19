@interface HighPassIIR2FilterFloat3
- (HighPassIIR2FilterFloat3)init;
- (float32x4_t)updateValue:(double)a3 withPole:;
- (void)reset;
@end

@implementation HighPassIIR2FilterFloat3

- (HighPassIIR2FilterFloat3)init
{
  v5.receiver = self;
  v5.super_class = HighPassIIR2FilterFloat3;
  v2 = [(HighPassIIR2FilterFloat3 *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HighPassIIR2FilterFloat3 *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  *self->_filteredValue = 0u;
  *self->_lowPassBuffer1 = 0u;
  *self->_lowPassBuffer2 = 0u;
  self->_isFilterInitialized = 0;
}

- (float32x4_t)updateValue:(double)a3 withPole:
{
  if (*&a3 > 0.0 && *&a3 < 1.0)
  {
    if (a1[3].i8[0])
    {
      v5 = a1[2];
      v6 = vsubq_f32(a1[1], a2);
      v7 = vdupq_lane_s32(*&a3, 0);
      v7.i32[3] = 0;
      v6.i32[3] = 0;
      v8 = a2;
      v8.i32[3] = 0;
      v9 = vmlaq_f32(v8, v6, v7);
      a1[1] = v9;
      v10 = vsubq_f32(v5, v9);
      v10.i32[3] = 0;
      v9.i32[3] = 0;
      v11 = vmlaq_f32(v9, v10, v7);
      a1[2] = v11;
    }

    else
    {
      a1[1] = a2;
      a1[2] = a2;
      a1[3].i8[0] = 1;
      v11 = a2;
    }

    *&a3 = 1.0 - (((1.0 - *&a3) / (*&a3 + 1.0)) * ((1.0 - *&a3) / (*&a3 + 1.0)));
    result = vdivq_f32(vsubq_f32(a2, v11), vdupq_lane_s32(*&a3, 0));
    a1[4] = result;
  }

  else
  {
    return a1[4];
  }

  return result;
}

@end