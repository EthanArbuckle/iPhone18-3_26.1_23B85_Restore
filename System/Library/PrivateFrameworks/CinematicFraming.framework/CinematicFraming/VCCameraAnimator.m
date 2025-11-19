@interface VCCameraAnimator
- (VCCameraAnimator)init;
- (id).cxx_construct;
- (void)configureWithPreset:(unint64_t)a3;
- (void)interrupt;
- (void)reset;
- (void)startAtTime:(id *)a3 withCamera:(id)a4;
- (void)stop;
- (void)updateToTime:(id *)a3;
@end

@implementation VCCameraAnimator

- (VCCameraAnimator)init
{
  v4.receiver = self;
  v4.super_class = VCCameraAnimator;
  v2 = [(VCCameraAnimator *)&v4 init];
  [(VCCameraAnimator *)v2 configureWithPreset:0];
  [(VCCameraAnimator *)v2 reset];
  return v2;
}

- (void)startAtTime:(id *)a3 withCamera:(id)a4
{
  v7 = a4;
  objc_storeStrong(&self->_targetCamera, a4);
  v8 = [v7 copy];
  animatedCamera = self->_animatedCamera;
  self->_animatedCamera = v8;

  v10 = *&a3->var0;
  self->_currentTime.epoch = a3->var3;
  *&self->_currentTime.value = v10;
  v19 = v7;
  [v19 rotation];
  self->_animation.targetValue.arr[0] = v11;
  [v19 rotation];
  self->_animation.targetValue.arr[1] = v12;
  [v19 rotation];
  self->_animation.targetValue.arr[2] = v13;
  [v19 focalLength];
  v15 = v14;
  [v19 sensorSize];
  self->_animation.targetValue.arr[3] = (v15 / fmaxf(v16, v17));

  v18 = *&self->_animation.targetValue.arr[2];
  *self->_animation.currValue.arr = *self->_animation.targetValue.arr;
  *&self->_animation.currValue.arr[2] = v18;
  *self->_animation.velocity.arr = 0u;
  *&self->_animation.velocity.arr[2] = 0u;
  self->_animation.duration = 0.0;
}

- (void)updateToTime:(id *)a3
{
  if (self->_currentTime.flags)
  {
    currentTime = *a3;
    Seconds = CMTimeGetSeconds(&currentTime);
    currentTime = self->_currentTime;
    v6 = Seconds - CMTimeGetSeconds(&currentTime);
    if (v6 > 0.0)
    {
      v7 = self->_targetCamera;
      [(VCCamera *)v7 rotation];
      self->_animation.targetValue.arr[0] = v8;
      [(VCCamera *)v7 rotation];
      self->_animation.targetValue.arr[1] = v9;
      [(VCCamera *)v7 rotation];
      self->_animation.targetValue.arr[2] = v10;
      [(VCCamera *)v7 focalLength];
      v12 = v11;
      [(VCCamera *)v7 sensorSize];
      self->_animation.targetValue.arr[3] = (v12 / fmaxf(v13, v14));

      v15.n128_f64[0] = v6;
      SpringAnimation<double,4ul>::update(&self->_animation, v15);
      v16 = self->_animatedCamera;
      [(VCCamera *)v16 setRotation:COERCE_DOUBLE(vcvt_f32_f64(*self->_animation.currValue.arr))];
      v17 = self->_animation.currValue.arr[3];
      [(VCCamera *)v16 sensorSize];
      v20 = v17 * fmaxf(v18, v19);
      *&v20 = v20;
      [(VCCamera *)v16 setFocalLength:v20];

      v21 = *&a3->var0;
      self->_currentTime.epoch = a3->var3;
      *&self->_currentTime.value = v21;
    }
  }
}

- (void)reset
{
  targetCamera = self->_targetCamera;
  self->_targetCamera = 0;

  animatedCamera = self->_animatedCamera;
  self->_animatedCamera = 0;

  self->_currentTime = **&MEMORY[0x277CC0898];
  v5 = *&self->_animation.targetValue.arr[2];
  *self->_animation.currValue.arr = *self->_animation.targetValue.arr;
  *&self->_animation.currValue.arr[2] = v5;
  *self->_animation.velocity.arr = 0u;
  *&self->_animation.velocity.arr[2] = 0u;
  self->_animation.duration = 0.0;
}

- (void)interrupt
{
  v3 = self->_targetCamera;
  [(VCCamera *)v3 setRotation:COERCE_DOUBLE(vcvt_f32_f64(*self->_animation.currValue.arr))];
  v4 = self->_animation.currValue.arr[3];
  [(VCCamera *)v3 sensorSize];
  v7 = v4 * fmaxf(v5, v6);
  *&v7 = v7;
  [(VCCamera *)v3 setFocalLength:v7];

  v8 = self->_animatedCamera;
  [(VCCamera *)v8 setRotation:COERCE_DOUBLE(vcvt_f32_f64(*self->_animation.currValue.arr))];
  v9 = self->_animation.currValue.arr[3];
  [(VCCamera *)v8 sensorSize];
  v12 = v9 * fmaxf(v10, v11);
  *&v12 = v12;
  [(VCCamera *)v8 setFocalLength:v12];

  self->_animation.duration = 0.0;
}

- (void)stop
{
  v3 = self->_targetCamera;
  [(VCCamera *)v3 setRotation:COERCE_DOUBLE(vcvt_f32_f64(*self->_animation.currValue.arr))];
  v4 = self->_animation.currValue.arr[3];
  [(VCCamera *)v3 sensorSize];
  v7 = v4 * fmaxf(v5, v6);
  *&v7 = v7;
  [(VCCamera *)v3 setFocalLength:v7];

  v8 = self->_animatedCamera;
  [(VCCamera *)v8 setRotation:COERCE_DOUBLE(vcvt_f32_f64(*self->_animation.currValue.arr))];
  v9 = self->_animation.currValue.arr[3];
  [(VCCamera *)v8 sensorSize];
  v12 = v9 * fmaxf(v10, v11);
  *&v12 = v12;
  [(VCCamera *)v8 setFocalLength:v12];

  self->_animation.duration = 0.0;
  *self->_animation.velocity.arr = 0u;
  *&self->_animation.velocity.arr[2] = 0u;
}

- (id).cxx_construct
{
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  return self;
}

- (void)configureWithPreset:(unint64_t)a3
{
  if (a3 <= 2)
  {
    v3 = dbl_2434F7B28[a3];
    *&self->_animation.stiffness = qword_2434F7B10[a3];
    self->_animation.mass = v3;
    self->_animation.dampRatio = 1.0;
  }
}

@end