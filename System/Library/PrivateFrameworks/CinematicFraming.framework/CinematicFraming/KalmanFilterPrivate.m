@interface KalmanFilterPrivate
- (KalmanFilterPrivate)init;
- (void)_predict:(KalmanFilterPrivate *)self;
- (void)_update:(float)a3;
- (void)addObservation:(float)a3;
@end

@implementation KalmanFilterPrivate

- (KalmanFilterPrivate)init
{
  v11.receiver = self;
  v11.super_class = KalmanFilterPrivate;
  v2 = [(KalmanFilterPrivate *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *v2->_anon_20 = xmmword_2434F7840;
    *&v2->_anon_20[16] = unk_2434F7850;
    *&v2->_anon_20[32] = xmmword_2434F7860;
    *&v2->_anon_60[4] = xmmword_2434F7870;
    *&v2->_anon_60[20] = unk_2434F7880;
    *&v2->_anon_60[36] = xmmword_2434F7890;
    *&v2->_observationModel[4] = xmmword_2434F7660;
    *&v2->_measurementNoise = 0x3D4CCCCD3F266666;
    __asm { FMOV            V0.4S, #1.0 }

    *&v2->_noiseScaling[4] = _Q0;
    *&v2->_noiseBase[4] = 0u;
    LOBYTE(v2[1].super.isa) = 1;
    v9 = v2;
  }

  else
  {
    [KalmanFilterPrivate init];
  }

  return v3;
}

- (void)_predict:(KalmanFilterPrivate *)self
{
  v3 = 0;
  v5 = *&self->_anon_60[4];
  v4 = *&self->_anon_60[20];
  v6 = *&self->_anon_60[36];
  *self->_stateEstimate = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*self->_stateEstimate)), v4, *self->_stateEstimate, 1), v6, *self->_stateEstimate, 2);
  v18 = *&self->_anon_20[32];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  do
  {
    *(&v19 + v3 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(v17[v3])), v4, *&v17[v3], 1), v6, v17[v3], 2);
    ++v3;
  }

  while (v3 != 3);
  v7 = 0;
  v8 = v19;
  v9 = v20;
  v10 = v21;
  v11 = vzip1q_s32(v5, v6);
  v17[0] = vzip1q_s32(v11, v4);
  v17[1] = vzip2q_s32(v11, vdupq_lane_s32(*v4.f32, 1));
  v18 = vzip1q_s32(vzip2q_s32(v5, v6), vdupq_laneq_s32(v4, 2));
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  do
  {
    *(&v19 + v7 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(v17[v7])), v9, *&v17[v7], 1), v10, v17[v7], 2);
    ++v7;
  }

  while (v7 != 3);
  v12.i64[0] = 0;
  v13 = vaddq_f32(v2, v19);
  LODWORD(v14) = 0;
  HIDWORD(v14) = DWORD1(v2);
  v15 = vaddq_f32(v14, v20);
  v12.i64[1] = DWORD2(v2);
  v16 = vaddq_f32(v12, v21);
  *&self->_anon_20[8] = v13.i32[2];
  *&self->_anon_20[24] = v15.i32[2];
  *self->_anon_20 = v13.i64[0];
  *&self->_anon_20[16] = v15.i64[0];
  *&self->_anon_20[40] = v16.i32[2];
  *&self->_anon_20[32] = v16.i64[0];
}

- (void)_update:(float)a3
{
  v6 = *self->_anon_20;
  *v3.i32 = v6.f32[0] + *self->_noiseScaling;
  v19 = vdivq_f32(v6, vdupq_lane_s32(v3, 0));
  [(KalmanFilterPrivate *)self estimatedObservation];
  v7 = 0;
  v9 = *self->_anon_20;
  *self->_stateEstimate = vmlaq_n_f32(*self->_stateEstimate, v19, a3 - v8);
  v10 = *&self->_observationModel[4];
  v11 = vsubq_f32(*MEMORY[0x277D860B0], vmulq_n_f32(v19, v10.f32[0]));
  v12 = vsubq_f32(*(MEMORY[0x277D860B0] + 16), vmulq_lane_f32(v19, *v10.f32, 1));
  v13 = vsubq_f32(*(MEMORY[0x277D860B0] + 32), vmulq_laneq_f32(v19, v10, 2));
  v14 = *&self->_anon_20[16];
  v15 = *&self->_anon_20[32];
  v20[0] = v9;
  v20[1] = v14;
  v20[2] = v15;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  do
  {
    *(&v21 + v7 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, COERCE_FLOAT(v20[v7])), v12, *&v20[v7], 1), v13, v20[v7], 2);
    ++v7;
  }

  while (v7 != 3);
  v16 = v21;
  v17 = v22;
  v18 = v23;
  *&self->_anon_20[8] = DWORD2(v21);
  *&self->_anon_20[24] = DWORD2(v17);
  *self->_anon_20 = v16;
  *&self->_anon_20[16] = v17;
  *&self->_anon_20[40] = DWORD2(v18);
  *&self->_anon_20[32] = v18;
}

- (void)addObservation:(float)a3
{
  if (self[1].super.isa)
  {
    v5 = LODWORD(a3);
    *self->_stateEstimate = LODWORD(a3);
    self->_previousObservation = a3;
    LOBYTE(self[1].super.isa) = 0;
  }

  else
  {
    *&v5 = self->_previousObservation;
  }

  v6 = a3 - *&v5;
  *&v3 = (a3 - *&v5) - self->_previousVelocity;
  v8 = v3;
  v10 = *&a3;
  *(&v3 + 1) = *&v3 * *&v3;
  *&self->_observationMeanSquared = vmla_n_f32(vmul_n_f32(*&v3, 1.0 - self->_measurementNoise), *&self->_observationMeanSquared, self->_measurementNoise);
  [(KalmanFilterPrivate *)self covariance];
  [(KalmanFilterPrivate *)self _predict:*vmlaq_n_f32(*&self->_noiseBase[4], *&self->_noiseScaling[4], v7).i64];
  [(KalmanFilterPrivate *)self _update:v10];
  self->_previousObservation = *&v10;
  self->_previousVelocity = v6;
  self->_previousAcceleration = v9;
}

@end