@interface VISRotationCorrectionEstimator
- (VISRotationCorrectionEstimator)initWithTimeScale:(float)scale;
- (__n128)updateWithRotation:(double)rotation atTime:;
- (void)reset;
@end

@implementation VISRotationCorrectionEstimator

- (VISRotationCorrectionEstimator)initWithTimeScale:(float)scale
{
  v11.receiver = self;
  v11.super_class = VISRotationCorrectionEstimator;
  v4 = [(VISRotationCorrectionEstimator *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_timeScale = scale * 0.70711;
    v6 = objc_alloc_init(HighPassIIR2FilterFloat3);
    highPassFilter1 = v5->highPassFilter1;
    v5->highPassFilter1 = v6;

    v8 = objc_alloc_init(HighPassIIR2FilterFloat3);
    highPassFilter2 = v5->highPassFilter2;
    v5->highPassFilter2 = v8;

    [(VISRotationCorrectionEstimator *)v5 reset];
  }

  return v5;
}

- (void)reset
{
  self->_isInitialized = 0;
  self->_prevTime = 0.0;
  *self->_anon_20 = xmmword_1AD056310;
  *self->_accumulatedCorrection = 0u;
  *self->_estimatedCorrection = 0u;
  [(HighPassIIR2FilterFloat3 *)self->highPassFilter1 reset];
  highPassFilter2 = self->highPassFilter2;

  [(HighPassIIR2FilterFloat3 *)highPassFilter2 reset];
}

- (__n128)updateWithRotation:(double)rotation atTime:
{
  v4 = *(self + 16);
  if (v4 <= rotation)
  {
    if (*(self + 12) == 1)
    {
      v7 = *(self + 32);
    }

    else
    {
      v4 = rotation + -0.03333;
      *(self + 16) = rotation + -0.03333;
      *(self + 32) = a2;
      *(self + 12) = 1;
      v7 = a2;
    }

    *&v8 = rotation - v4;
    *v8.i32 = *v8.i32;
    v36 = v8;
    v9 = vmulq_f32(v7, xmmword_1AD046FD0);
    v10 = vnegq_f32(a2);
    v11 = vtrn2q_s32(a2, vtrn1q_s32(a2, v10));
    v12 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a2, v10, 8uLL), *v9.f32, 1), vextq_s8(v11, v11, 8uLL), v9.f32[0]);
    v13 = vrev64q_s32(a2);
    v13.i32[0] = v10.i32[1];
    v13.i32[3] = v10.i32[2];
    v14 = vaddq_f32(v12, vmlaq_laneq_f32(vmulq_laneq_f32(a2, v9, 3), v13, v9, 2));
    v15 = vmulq_f32(v14, v14);
    v16 = vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
    if (vaddv_f32(v16) == 0.0)
    {
      v17 = xmmword_1AD056310;
    }

    else
    {
      v18 = vadd_f32(v16, vdup_lane_s32(v16, 1)).u32[0];
      v19 = vrsqrte_f32(v18);
      v20 = vmul_f32(v19, vrsqrts_f32(v18, vmul_f32(v19, v19)));
      v17 = vmulq_n_f32(v14, vmul_f32(v20, vrsqrts_f32(v18, vmul_f32(v20, v20))).f32[0]);
    }

    v21 = v17;
    v22 = vmulq_f32(v17, v17);
    v32 = v21;
    v22.f32[0] = v22.f32[2] + vaddv_f32(*v22.f32);
    v23 = vrsqrte_f32(v22.u32[0]);
    v24 = vmul_f32(v23, vrsqrts_f32(v22.u32[0], vmul_f32(v23, v23)));
    LODWORD(v33) = vmul_f32(v24, vrsqrts_f32(v22.u32[0], vmul_f32(v24, v24))).u32[0];
    v25 = atan2f(sqrtf(v22.f32[0]), v21.f32[3]);
    v26 = vmulq_n_f32(v32, v33);
    *&v27 = vdivq_f32(vmulq_n_f32(v26, v25 + v25), vdupq_lane_s32(v36, 0)).u64[0];
    v26.f32[0] = *(self + 8) / (*(self + 8) + *v36.i32);
    [*(self + 64) updateValue:v27 withPole:*v26.i64];
    v28 = *(self + 72);
    [*(self + 64) filteredValue];
    [v28 updateValue:? withPole:?];
    v34 = *(self + 8) / (*(self + 8) + ((*v36.i32 / 400.0) * 0.70711));
    [*(self + 72) filteredValue];
    v30.i64[0] = 0xBF000000BF000000;
    v30.i64[1] = 0xBF000000BF000000;
    v31 = vmlaq_n_f32(vmulq_f32(vmulq_n_f32(vmulq_n_f32(v29, *v36.i32), v34 + 1.0), v30), *(self + 48), v34);
    *(self + 80) = v31;
    *(self + 16) = rotation;
    *(self + 48) = v31;
    result = a2;
    *(self + 32) = a2;
  }

  else
  {

    [self reset];
  }

  return result;
}

@end