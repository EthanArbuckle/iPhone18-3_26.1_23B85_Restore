@interface NUNIAnimation
+ (void)generateSlerpKeys:(id)keys times:(SEL)times count:from:to:;
- (NUNIAnimatable)animatable;
- (NUNIAnimation)initWithAnimatable:(id)animatable from:(unint64_t)from to:ctrl1:ctrl2:key:;
- (NUNIAnimation)initWithAnimatable:(id)animatable value:(unint64_t)value key:;
- (NUNIAnimation)initWithAnimatable:(id)animatable values:count:key:;
- (NUNIAnimationObserver)observer;
- (void)apply:(float)apply;
- (void)setPaused:(BOOL)paused;
@end

@implementation NUNIAnimation

- (NUNIAnimation)initWithAnimatable:(id)animatable values:count:key:
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  animatableCopy = animatable;
  v19.receiver = self;
  v19.super_class = NUNIAnimation;
  v11 = [(NUNIAnimation *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_animatable, animatableCopy);
    v12->_key = v6;
    v12->_function = 3;
    __asm { FMOV            V0.2S, #-1.0 }

    *&v12->_startTime = -_D0;
    if (v7 >= 76)
    {
      [NUNIAnimation initWithAnimatable:values:count:key:];
    }

    memcpy(v12->_values, v8, 16 * v7);
    v12->_valuesCount = v7;
  }

  return v12;
}

- (NUNIAnimation)initWithAnimatable:(id)animatable from:(unint64_t)from to:ctrl1:ctrl2:key:
{
  v21 = v6;
  v22 = v7;
  v19 = v5;
  v20 = v4;
  animatableCopy = animatable;
  v23.receiver = self;
  v23.super_class = NUNIAnimation;
  v11 = [(NUNIAnimation *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_animatable, animatableCopy);
    *v12->_to = v19;
    *v12->_from = v20;
    v12->_key = from;
    *v12->_ctrl1 = v21;
    *v12->_ctrl2 = v22;
    v12->_function = 1;
    __asm { FMOV            V0.2S, #-1.0 }

    *&v12->_startTime = -_D0;
  }

  return v12;
}

- (NUNIAnimation)initWithAnimatable:(id)animatable value:(unint64_t)value key:
{
  animatableCopy = animatable;
  [animatableCopy animatedFloatForKey:value];
  v7 = [NUNIAnimation initWithAnimatable:"initWithAnimatable:from:to:ctrl1:ctrl2:key:" from:animatableCopy to:value ctrl1:? ctrl2:? key:?];

  return v7;
}

- (void)apply:(float)apply
{
  function = self->_function;
  v6 = 0;
  if (function <= 1)
  {
    if (function)
    {
      if (function != 1)
      {
        goto LABEL_20;
      }

      apply = (apply * apply) * ((apply * -2.0) + 3.0);
    }

    v11 = *self->_from;
    v12 = vsubq_f32(*self->_to, v11);
    goto LABEL_11;
  }

  switch(function)
  {
    case 2:
      v13 = 1.0 - apply;
      v14 = vmlaq_n_f32(vmulq_n_f32(*self->_from, v13 * (v13 * v13)), *self->_ctrl1, ((v13 * v13) * 3.0) * apply);
      v15 = apply * apply;
      apply = (apply * apply) * apply;
      v11 = vmlaq_n_f32(v14, *self->_ctrl2, v15 * (v13 * 3.0));
      v12 = *self->_to;
LABEL_11:
      v6 = vmlaq_n_f32(v11, v12, apply).u64[0];
      break;
    case 3:
      valuesCount = self->_valuesCount;
      v17 = valuesCount - 1;
      v18 = (valuesCount - 1);
      v19 = valuesCount - 2;
      if ((v18 * apply) < v19)
      {
        v19 = (v18 * apply);
      }

      v20 = v19 + 1;
      v21 = v19 / v18;
      v22 = v20 / v18;
      v24 = (apply - v21) / (v22 - v21);
      v25 = v24 * v24;
      v26 = v24 * (v24 * v24);
      if (v19 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v19;
      }

      v28 = v27 - 1;
      if (v19 + 2 < v17)
      {
        v17 = v19 + 2;
      }

      v29 = v25 * 3.0;
      v30 = 1.0 - ((v25 * 3.0) - (v26 * 2.0));
      v31 = v24 + (v26 + (v25 * -2.0));
      v32 = v26 - v25;
      v33 = *&self->_values[16 * v19];
      v34 = v29 + (v26 * -2.0);
      v35 = *&self->_values[16 * v20];
      v36 = vsubq_f32(v35, v33);
      v23 = v22 - v21;
      v6 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v36, (v21 - (v28 / v18)) / (v23 + (v21 - (v28 / v18)))), vsubq_f32(v33, *&self->_values[16 * v28]), v23 / (v23 + (v21 - (v28 / v18)))), v31), v33, v30), vmlaq_n_f32(vmulq_n_f32(vsubq_f32(*&self->_values[16 * v17], v35), v23 / (v23 + ((v17 / v18) - v22))), v36, ((v17 / v18) - v22) / (v23 + ((v17 / v18) - v22))), v32), v35, v34).u64[0];
      break;
    case 4:
      v7 = *self->_from;
      v8 = *self->_to;
      v9 = vmulq_f32(v7, v8);
      v10 = vextq_s8(v9, v9, 8uLL);
      *v9.f32 = vadd_f32(*v9.f32, *v10.f32);
      v9.f32[0] = vaddv_f32(*v9.f32);
      v10.i64[0] = 0;
      _simd_slerp_internal(v7, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v9, v10)), 0), vnegq_f32(v8), v8), apply);
      break;
  }

LABEL_20:
  v38 = *&v6;
  WeakRetained = objc_loadWeakRetained(&self->_animatable);
  [WeakRetained setAnimatedFloat:self->_key forKey:v38];
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    prevTime = self->_prevTime;
    if (paused)
    {
      self->_pauseTime = prevTime;
    }

    else
    {
      self->_startTime = prevTime - (self->_pauseTime - self->_startTime);
    }
  }
}

+ (void)generateSlerpKeys:(id)keys times:(SEL)times count:from:to:
{
  v15 = v5;
  if (v4 >= 1)
  {
    v7 = v3;
    v8 = v2;
    v9 = vmulq_f32(v5, v6);
    v10 = vextq_s8(v9, v9, 8uLL);
    *v9.f32 = vadd_f32(*v9.f32, *v10.f32);
    v9.f32[0] = vaddv_f32(*v9.f32);
    v10.i64[0] = 0;
    v14 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v9, v10)), 0), vnegq_f32(v6), v6);
    v11 = v4;
    do
    {
      v12 = *v7++;
      _simd_slerp_internal(v15, v14, v12);
      *v8++ = v13;
      --v11;
    }

    while (v11);
  }
}

- (NUNIAnimatable)animatable
{
  WeakRetained = objc_loadWeakRetained(&self->_animatable);

  return WeakRetained;
}

- (NUNIAnimationObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end