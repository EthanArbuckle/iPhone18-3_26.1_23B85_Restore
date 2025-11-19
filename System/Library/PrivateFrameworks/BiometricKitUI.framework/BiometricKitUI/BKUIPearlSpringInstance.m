@interface BKUIPearlSpringInstance
- (BKUIPearlSpringInstance)initWithInitialRotation:(BKUIPearlSpringInstance *)self color:(SEL)a2;
- (__n128)value;
- (__n128)velocity;
- (__n64)createAxisRotationMatrix:(float32x4_t)a1;
- (double)color;
- (float32x4_t)matrix;
- (void)setParameters:(FLSpringParameters)a3;
- (void)setSpringState:(unint64_t)a3;
- (void)setTarget:(BKUIPearlSpringInstance *)self;
- (void)setValue:(BKUIPearlSpringInstance *)self;
- (void)step:(double)a3;
@end

@implementation BKUIPearlSpringInstance

- (BKUIPearlSpringInstance)initWithInitialRotation:(BKUIPearlSpringInstance *)self color:(SEL)a2
{
  v20 = v3;
  v21 = v2;
  v22.receiver = self;
  v22.super_class = BKUIPearlSpringInstance;
  v4 = [(BKUIPearlSpringInstance *)&v22 init];
  if (v4)
  {
    for (i = 8; i != 32; i += 8)
    {
      v6 = objc_alloc_init(MEMORY[0x277CF1C60]);
      v7 = *(&v4->super.isa + i);
      *(&v4->super.isa + i) = v6;
    }

    __asm { FMOV            V0.2S, #1.0 }

    *&v4->_scale = _D0;
    v4->_axisOrientation = 0;
    v4->_springState = 0;
    [(BKUIPearlSpringInstance *)v4 createAxisRotationMatrix:v21];
    *v4->_anon_30 = v13;
    *&v4->_anon_30[16] = v14;
    *&v4->_anon_30[32] = v15;
    *&v4->_anon_30[48] = v16;
    v17 = *&v4->_anon_30[16];
    *v4->_anon_70 = *v4->_anon_30;
    *&v4->_anon_70[16] = v17;
    v18 = *&v4->_anon_30[48];
    *&v4->_anon_70[32] = *&v4->_anon_30[32];
    *&v4->_anon_70[48] = v18;
    *v4->_color = v20;
  }

  return v4;
}

- (__n64)createAxisRotationMatrix:(float32x4_t)a1
{
  v1 = __sincosf_stret((1.5708 * a1.f32[0]) * 0.5);
  v2 = vmulq_n_f32(xmmword_241B727D0, v1.__sinval);
  v2.i32[3] = LODWORD(v1.__cosval);
  v29 = v2;
  v3 = __sincosf_stret(vmuls_lane_f32(1.5708, *a1.f32, 1) * 0.5);
  v4 = vmulq_n_f32(xmmword_241B727E0, v3.__sinval);
  v4.i32[3] = LODWORD(v3.__cosval);
  v28 = v4;
  v5 = __sincosf_stret(vmuls_lane_f32(1.5708, a1, 2) * 0.5);
  v6 = vmulq_n_f32(xmmword_241B727F0, v5.__sinval);
  v7 = vnegq_f32(v28);
  v8 = vtrn2q_s32(v28, vtrn1q_s32(v28, v7));
  _Q5 = vrev64q_s32(v28);
  _Q5.i32[0] = v7.i32[1];
  _Q5.i32[3] = v7.i32[2];
  v10 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v28, v5.__cosval), _Q5, v6, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v28, v7, 8uLL), *v6.f32, 1), vextq_s8(v8, v8, 8uLL), v6.f32[0]));
  v11 = vnegq_f32(v29);
  v12 = vtrn2q_s32(v29, vtrn1q_s32(v29, v11));
  v13 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v29, v11, 8uLL), *v10.f32, 1), vextq_s8(v12, v12, 8uLL), v10.f32[0]);
  _Q2 = vrev64q_s32(v29);
  _Q2.i32[0] = v11.i32[1];
  _Q2.i32[3] = v11.i32[2];
  _Q3 = vaddq_f32(v13, vmlaq_laneq_f32(vmulq_laneq_f32(v29, v10, 3), _Q2, v10, 2));
  _S4 = _Q3.i32[1];
  _Q5.i32[0] = _Q3.i32[2];
  __asm { FMLS            S2, S5, V3.S[2] }

  _S7 = _Q3.i32[3];
  __asm { FMLA            S2, S7, V3.S[3] }

  v22 = vmuls_lane_f32(_Q3.f32[2], _Q3, 3);
  result.n64_u32[0] = _Q2.i32[0];
  result.n64_f32[1] = (v22 + (_Q3.f32[0] * _Q3.f32[1])) + (v22 + (_Q3.f32[0] * _Q3.f32[1]));
  __asm
  {
    FMLA            S6, S4, V3.S[1]
    FMLA            S6, S7, V3.S[3]
    FMLA            S16, S5, V3.S[1]
    FMLA            S6, S5, V3.S[2]
    FMLS            S5, S4, V3.S[1]
  }

  return result;
}

- (void)step:(double)a3
{
  for (i = 8; i != 32; i += 8)
  {
    [*(&self->super.isa + i) step:a3];
  }

  self->_alphaFactor = self->_alphaDecay * self->_alphaFactor;
  v6 = self->_scale + (self->_scaleDest - self->_scale) * 0.05;
  self->_scale = v6;
}

- (void)setParameters:(FLSpringParameters)a3
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  for (i = 8; i != 32; i += 8)
  {
    [*(&self->super.isa + i) setParameters:{var0, var1, var2, var3}];
  }
}

- (void)setSpringState:(unint64_t)a3
{
  if (!a3)
  {
    v3 = *"33s?";
    v4 = 204;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    self->_scaleDest = 0.3;
    v3 = 1.0;
    v4 = 192;
LABEL_5:
    *(&self->super.isa + v4) = 1065353216;
    self->_alphaDecay = v3;
  }

  self->_springState = a3;
}

- (void)setTarget:(BKUIPearlSpringInstance *)self
{
  axisOrientation = self->_axisOrientation;
  if (axisOrientation == 1)
  {
    if (self->_springState)
    {
      v2 = xmmword_241B72810;
    }

    else
    {
      LODWORD(v2) = 0;
    }
  }

  else if (axisOrientation == 2)
  {
    if (self->_springState)
    {
      v2 = xmmword_241B72820;
    }

    else
    {
      DWORD1(v2) = 0;
    }
  }

  v5 = 0;
  v6 = v2;
  do
  {
    v7 = v2;
    [(FLSpring *)self->springs[v5] setTarget:*(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3))), v6, v2];
    v2 = v6;
    ++v5;
  }

  while (v5 != 3);
  *self->_target = v6;
}

- (void)setValue:(BKUIPearlSpringInstance *)self
{
  axisOrientation = self->_axisOrientation;
  if (axisOrientation == 1)
  {
    *&v3 = 0.0 * *&v2;
    DWORD1(v3) = DWORD1(v2);
    goto LABEL_5;
  }

  if (axisOrientation == 2)
  {
    v3 = v2;
    DWORD1(v3) = vmuls_lane_f32(0.0, *&v2, 1);
LABEL_5:
    DWORD2(v3) = DWORD2(v2);
    v2 = v3;
  }

  v6 = 0;
  v7 = v2;
  do
  {
    v8 = v2;
    [(FLSpring *)self->springs[v6] setValue:*(&v8 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3))), v7, v2];
    v2 = v7;
    ++v6;
  }

  while (v6 != 3);
  *self->_value = v7;
}

- (__n128)value
{
  [*(a1 + 8) value];
  v10 = v2;
  [*(a1 + 16) value];
  v3.f64[0] = v10;
  v3.f64[1] = v4;
  *&v5 = vcvt_f32_f64(v3);
  v11 = v5;
  [*(a1 + 24) value];
  v7 = v6;
  v8 = v11;
  *(&v8 + 2) = v7;
  *(a1 + 32) = v8;
  result.n128_u64[0] = v8;
  result.n128_u32[2] = DWORD2(v8);
  return result;
}

- (float32x4_t)matrix
{
  v18 = *(a1 + 32);
  [a1 value];
  v3 = vceqq_f32(v18, v2);
  v3.i32[3] = v3.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) != 0)
  {
    v15 = *(a1 + 80);
    v16 = *(a1 + 96);
    result = *(a1 + 48);
    v17 = *(a1 + 64);
  }

  else
  {
    [a1 createAxisRotationMatrix:?];
    v8 = 0;
    v9 = *(a1 + 128);
    v10 = *(a1 + 144);
    v11 = *(a1 + 160);
    v19[0] = *(a1 + 112);
    v19[1] = v9;
    v19[2] = v10;
    v19[3] = v11;
    do
    {
      v20[v8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(result, COERCE_FLOAT(v19[v8])), v5, *&v19[v8], 1), v6, v19[v8], 2), v7, v19[v8], 3);
      ++v8;
    }

    while (v8 != 4);
    result.i64[0] = *&v20[0];
    v12 = v20[1];
    v13 = v20[2];
    v14 = v20[3];
    *(a1 + 48) = v20[0];
    *(a1 + 64) = v12;
    *(a1 + 80) = v13;
    *(a1 + 96) = v14;
  }

  return result;
}

- (__n128)velocity
{
  [a1[1] velocity];
  v7 = v2;
  [a1[2] velocity];
  v3.f64[0] = v7;
  v3.f64[1] = v4;
  *&v5 = vcvt_f32_f64(v3);
  v8 = v5;
  [a1[3] velocity];
  return v8;
}

- (double)color
{
  [(float32x4_t *)a1 velocity];
  v3 = vmulq_f32(v2, v2);
  a1[12].f32[0] = fmaxf(a1[12].f32[0], fminf(sqrtf(v3.f32[2] + vaddv_f32(*v3.f32)), 1.0));
  if ([(float32x4_t *)a1 grayscale])
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  if ([(float32x4_t *)a1 grayscale:vbslq_s8(vdupq_n_s32(v4)])
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  v6 = vmlaq_n_f32(v8, vsubq_f32(vbslq_s8(vdupq_n_s32(v5), vdupq_n_s32(0x3F4CCCCDu), xmmword_241B72840), v8), a1[12].f32[0]);
  v6.i32[3] = a1[12].i32[0];
  *&result = vmulq_f32(a1[11], v6).u64[0];
  return result;
}

@end