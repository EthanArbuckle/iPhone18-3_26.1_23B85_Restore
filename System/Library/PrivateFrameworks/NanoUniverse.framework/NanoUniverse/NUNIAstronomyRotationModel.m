@interface NUNIAstronomyRotationModel
- (BOOL)isAtHomeCoordinate;
- (NUNIAstronomyRotationModel)init;
- (NUNIAstronomyRotationModelObserver)observer;
- (NUNIRotatable)rotatable;
- (void)_update;
- (void)dealloc;
- (void)push:(NUNIAstronomyRotationModel *)self;
- (void)stop;
@end

@implementation NUNIAstronomyRotationModel

- (NUNIAstronomyRotationModel)init
{
  v6.receiver = self;
  v6.super_class = NUNIAstronomyRotationModel;
  v2 = [(NUNIAstronomyRotationModel *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_interactionSettings = &init_defaults;
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  [(NUNIAstronomyRotationModel *)self stop];
  v3.receiver = self;
  v3.super_class = NUNIAstronomyRotationModel;
  [(NUNIAstronomyRotationModel *)&v3 dealloc];
}

- (BOOL)isAtHomeCoordinate
{
  WeakRetained = objc_loadWeakRetained(&self->_rotatable);
  [WeakRetained homeCoordinate];
  v5 = v4;
  v7 = v6;

  v8 = objc_loadWeakRetained(&self->_rotatable);
  [v8 centerCoordinate];
  v10 = v9;
  v12 = v11;

  v13 = v5;
  v14 = v10;
  if (vabds_f32(v13, v14) >= 0.001)
  {
    return 0;
  }

  v15 = v7;
  v16 = v12;
  return vabds_f32(v15, v16) < 0.001;
}

- (void)stop
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  self->_state = 0;
  *self->_accumulatedPushVector = 0;
  *&self->_effectivePushDeceleration = 0;
  v4 = MEMORY[0x277D82BB8];

  [v4 cancelPreviousPerformRequestsWithTarget:self];
}

- (void)_update
{
  v3 = CACurrentMediaTime();
  v4 = v3 - self->_previousDisplayLinkCallbackTime;
  v44 = v4;
  self->_previousDisplayLinkCallbackTime = v3;
  WeakRetained = objc_loadWeakRetained(&self->_rotatable);
  [WeakRetained centerCoordinate];
  v41 = v7;
  v42 = v6;

  v8 = [(NUNIAstronomyRotationModel *)self interactionSettings];
  v9 = v8;
  var1 = v8[1].var1;
  if (var1 == 0.0)
  {
    var0 = v8[1].var0;
LABEL_9:
    self->_effectivePushDeceleration = var0;
    goto LABEL_10;
  }

  v12 = v3 - self->_pushStartTime;
  if (var1 >= v12)
  {
    v13 = v3 - self->_pushStartTime;
  }

  else
  {
    v13 = v8[1].var1;
  }

  var0 = self->_effectivePushDeceleration;
  v14 = v8[1].var0;
  if (var0 > v14 && v13 > 0.001)
  {
    var0 = 1.0 - powf(1.0 - v14, var1 / v13);
    goto LABEL_9;
  }

LABEL_10:
  v15 = vmul_n_f32(*self->_accumulatedPushVector, var0);
  *self->_accumulatedPushVector = v15;
  v16.f64[0] = v41;
  v16.f64[1] = v42;
  v17 = vaddq_f64(v16, vcvtq_f64_f32(vmul_n_f32(v15, v44)));
  if (self->_isPulling)
  {
    var3 = v9[1].var3;
    if (var3 == 0.0)
    {
      var2 = v9[1].var2;
    }

    else
    {
      v20 = v3 - self->_pullStartTime;
      if (var3 >= v20)
      {
        v21 = v3 - self->_pullStartTime;
      }

      else
      {
        v21 = v9[1].var3;
      }

      var2 = self->_effectivePullAcceleration;
      if (var2 >= v9[1].var2 || v21 <= 0.001)
      {
        goto LABEL_20;
      }

      v45 = v17;
      var2 = powf(v9[1].var2, var3 / v21);
      v17 = v45;
    }

    self->_effectivePullAcceleration = var2;
LABEL_20:
    v17 = vmlsq_lane_f64(v17, vsubq_f64(v17, vextq_s8(self->_landingCoordinate, self->_landingCoordinate, 8uLL)), var2, 0);
  }

  v46 = v17;
  v22 = objc_loadWeakRetained(&self->_rotatable);
  [v22 homeCoordinate];
  v24 = v23;
  v26 = v25;

  v27 = _NTKAstronomyNormalizeCoordinateForRotationAroundCoordinate(v46.f64[1], v46.f64[0], v24, v26);
  v29 = v28;
  v30 = v27;
  v31 = 80.0;
  if (v30 <= 80.0)
  {
    v31 = v30;
    if (v30 < -80.0)
    {
      v31 = -80.0;
    }
  }

  v32 = v31;
  v33 = objc_loadWeakRetained(&self->_rotatable);
  [v33 setCenterCoordinate:{v32, v29}];

  v34 = objc_loadWeakRetained(&self->_rotatable);
  [v34 centerCoordinate];
  v43 = v36;
  v47 = v35;

  if (!self->_isPulling || (v37.f64[0] = v47, v37.f64[1] = v43, *&v37.f64[0] = vsub_f32(vcvt_f32_f64(v37), vcvt_f32_f64(self->_landingCoordinate)), sqrtf(COERCE_FLOAT(vmul_f32(*&v37, *&v37).i32[1]) + (*v37.f64 * *v37.f64)) < 0.1))
  {
    v38 = vcgt_f32(vdup_n_s32(0x3DCCCCCDu), vabs_f32(*self->_accumulatedPushVector));
    if (v38.i32[0] & v38.i32[1])
    {
      if (self->_isPulling)
      {
        v39 = objc_loadWeakRetained(&self->_rotatable);
        [v39 setCenterCoordinate:{v24, v26}];
      }

      v40 = objc_loadWeakRetained(&self->_observer);
      [v40 rotationModelStoppedByDecelerating:self];

      [(NUNIAstronomyRotationModel *)self stop];
    }
  }
}

- (void)push:(NUNIAstronomyRotationModel *)self
{
  v3 = v2;
  v5 = [(NUNIAstronomyRotationModel *)self interactionSettings];
  v6 = CACurrentMediaTime();
  self->_effectivePullAcceleration = v5[1].var2 * 0.01;
  *self->_accumulatedPushVector = vadd_f32(*self->_accumulatedPushVector, v3);
  self->_effectivePushDeceleration = 1.0;
  self->_pushStartTime = v6;
  self->_pullStartTime = v6;
  WeakRetained = objc_loadWeakRetained(&self->_rotatable);
  [WeakRetained homeCoordinate];
  v9 = v8;
  v11 = v10;

  state = self->_state;
  if (state == 1)
  {
    latitude = self->_landingCoordinate.latitude;
    longitude = self->_landingCoordinate.longitude;
  }

  else
  {
    latitude = v9;
    longitude = v11;
    if (!state)
    {
      v15 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:{sel__handleDisplayLink, v9, v11}];
      displayLink = self->_displayLink;
      self->_displayLink = v15;

      v17 = self->_displayLink;
      v18 = [MEMORY[0x277CBEB88] currentRunLoop];
      [(CADisplayLink *)v17 addToRunLoop:v18 forMode:*MEMORY[0x277CBE738]];

      self->_previousDisplayLinkCallbackTime = v6;
      self->_state = 1;
      latitude = v9;
      longitude = v11;
    }
  }

  self->_landingCoordinate.latitude = _NTKAstronomyNormalizeCoordinateForRotationAroundCoordinate(latitude, longitude, v9, v11);
  self->_landingCoordinate.longitude = v19;
}

- (NUNIRotatable)rotatable
{
  WeakRetained = objc_loadWeakRetained(&self->_rotatable);

  return WeakRetained;
}

- (NUNIAstronomyRotationModelObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end