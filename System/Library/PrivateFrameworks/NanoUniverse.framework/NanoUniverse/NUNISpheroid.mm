@interface NUNISpheroid
- (CLLocationCoordinate2D)centerCoordinate;
- (CLLocationCoordinate2D)homeCoordinate;
- (NUNIScene)scene;
- (NUNISpheroid)initWithScene:(id)a3 parent:(id)a4 type:(unint64_t)a5;
- (double)animatedFloatForKey:(uint64_t)a3;
- (void)_updateCamera;
- (void)_updatePositionFromAngle;
- (void)date:(NUNISpheroid *)self toCameraPosition:(SEL)a2 toCameraTarget:(id)a3;
- (void)setAnimatedFloat:(unint64_t)a3 forKey:;
- (void)setCenterCoordinate:(CLLocationCoordinate2D)a3 animated:(BOOL)a4;
- (void)setHomeCoordinate:(CLLocationCoordinate2D)a3;
- (void)updateSunLocationForDate:(id)a3 lightingPreference:(unint64_t)a4 adjustEarthRotation:(BOOL)a5;
@end

@implementation NUNISpheroid

- (NUNISpheroid)initWithScene:(id)a3 parent:(id)a4 type:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v27.receiver = self;
  v27.super_class = NUNISpheroid;
  v10 = [(NUNISpheroid *)&v27 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_parent, a4);
    v12 = objc_storeWeak(&v11->_scene, v8);
    v11->_structure.type = a5;
    *&v11->_anon_30[88] = 1;
    *&v11->_anon_30[56] = 1065353216;
    *&v11->_anon_30[32] = 0;
    *&v11->_anon_30[40] = 0;
    v11->_structure.distanceScale = 1.0;
    __asm { FMOV            V0.2S, #1.0 }

    *&v11->_anon_30[16] = _D0;
    v11->_anon_30[120] = 1;
    *v11->_anon_30 = xmmword_25B719D40;
    v18 = v12;
    v19 = [v8 collectionType];

    *&v11->_anon_30[52] = _NUNISphereoidComputeRadius(a5, v19);
    if (((1 << a5) & 0xFBF3FE) != 0)
    {
      v20 = a5;
      if (((1 << a5) & 0xFFC000) != 0)
      {
        v20 = a5 - 14;
        *&v11->_anon_30[88] = 1;
        *&v11->_anon_30[96] = a5 - 13;
        v11->_anon_30[121] = 1;
        *&v11->_anon_30[16] = 0;
      }

      v21 = 7;
      if (((1 << a5) & 0x3000) == 0)
      {
        v21 = v20;
      }

      if ((v21 & 0xFFFFFFFFFFFFFFFBLL) != 0)
      {
        v22 = s_distance[v21];
        if (v19)
        {
          v23 = (v22 * 10.0) + 3.0;
          v24 = 48.0;
        }

        else
        {
          v23 = (v22 * 18.0) + 4.0;
          v24 = 156.0;
        }

        v25 = (v23 / v24) * 0.5;
      }

      else
      {
        v25 = 0.0;
      }

      v11->_structure.distance = v25;
      if (a5 > 11)
      {
        if (a5 - 12 < 2)
        {
          *&v11->_anon_30[88] = 1;
          *&v11->_anon_30[96] = a5 - 1;
        }
      }

      else if (a5)
      {
        if (a5 == 3)
        {
          *&v11->_anon_30[88] = 0;
        }

        else if (a5 == 4)
        {
          *&v11->_anon_30[88] = 2;
        }
      }

      else
      {
        *&v11->_anon_30[88] = vdupq_n_s64(1uLL);
        v11->_anon_30[121] = 1;
        v11->_structure.distance = 0.0;
      }
    }

    else
    {
      if (a5 != 11 && a5 != 10)
      {
        [NUNISpheroid initWithScene:parent:type:];
      }

      *&v11->_anon_30[64] = xmmword_25B719EA0;
      *&v11->_anon_30[88] = xmmword_25B719EB0;
    }
  }

  return v11;
}

- (void)_updatePositionFromAngle
{
  parent = self->_parent;
  if (parent)
  {
    [(NUNISpheroid *)parent position];
  }

  else
  {
    v4 = xmmword_25B719EA0;
  }

  v7 = v4;
  v5 = vmul_n_f32(__sincosf_stret(self->_structure.angle), self->_structure.distance * self->_structure.distanceScale);
  LODWORD(v6) = v5.i32[1];
  *(&v6 + 1) = -v5.f32[0];
  *&self->_anon_30[64] = vaddq_f32(v7, v6);

  [(NUNISpheroid *)self _updateCamera];
}

- (void)date:(NUNISpheroid *)self toCameraPosition:(SEL)a2 toCameraTarget:(id)a3
{
  v5 = v4;
  v6 = v3;
  v20 = 0.0;
  v19 = 0.0;
  v18 = 0;
  v8 = a3;
  NUNIComputeSpheroidTransformParameters(self, v8, &v20, &v19, &v17, &v18 + 1, &v18, 1);
  *v9.i64 = NUNIComputeSpheroidParentPosition(self->_parent, v8);
  v15 = v9;

  v10 = vmul_n_f32(__sincosf_stret(v19), *(&v18 + 1) * self->_structure.distanceScale);
  LODWORD(v11) = v10.i32[1];
  *(&v11 + 1) = -v10.f32[0];
  v16 = vaddq_f32(v15, v11);
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v13 = [WeakRetained structure];

  v14 = NUNIComputeCameraView(self->_structure.type, *&vadd_f32(*&self->_anon_30[112], v13[13]), v20);
  *v6 = vmlaq_n_f32(v16, vmulq_n_f32(vnegq_f32(v14), *&v18), v13[6].f32[0]);
  *v5 = v16;
}

- (void)updateSunLocationForDate:(id)a3 lightingPreference:(unint64_t)a4 adjustEarthRotation:(BOOL)a5
{
  v5 = 1 << LODWORD(self->_structure.type);
  if ((v5 & 0xFBF3FE) != 0)
  {
    NUNIComputeSpheroidTransformParameters(self, a3, &self->_structure.equatorRotation, &self->_structure.angle, &self->_anon_30[80], &self->_structure.distance, &self->_anon_30[52], a5);
    if ((v5 & 0x3E6) != 0)
    {
      v8 = *&self->_anon_30[80];
      v9 = *&v8 + self->_structure.equatorRotation;
      if (a4 != 1 && (a4 || fabsf(*&v8) <= 1.5708))
      {
        v10 = 144.0;
      }

      else
      {
        v10 = 216.0;
      }

      v11 = COERCE_UNSIGNED_INT((v10 + (v9 * -57.296)) + (floorf((v10 + (v9 * -57.296)) / 360.0) * -360.0)) | 0x41A0000000000000;
      *&self->_anon_30[104] = v11;
      *&self->_anon_30[112] = v11;
    }

    [(NUNISpheroid *)self _updatePositionFromAngle];
  }
}

- (double)animatedFloatForKey:(uint64_t)a3
{
  switch(a3)
  {
    case 0:
      v3 = *(a1 + 112);
      return *&v3;
    case 1:
      v4 = (a1 + 36);
      goto LABEL_16;
    case 2:
      v3 = *(a1 + 48);
      return *&v3;
    case 3:
      *&v3 = *(a1 + 128);
      return *&v3;
    case 4:
      v4 = (a1 + 24);
      goto LABEL_16;
    case 5:
      v4 = (a1 + 28);
      goto LABEL_16;
    case 6:
      v4 = (a1 + 100);
      goto LABEL_16;
    case 7:
      v4 = (a1 + 104);
      goto LABEL_16;
    case 8:
      v4 = (a1 + 32);
      goto LABEL_16;
    case 9:
      v4 = (a1 + 64);
      goto LABEL_16;
    case 10:
      *&v3 = *(a1 + 160);
      return *&v3;
    case 11:
      v4 = (a1 + 96);
      goto LABEL_16;
    case 12:
      v4 = (a1 + 68);
LABEL_16:
      *&v3 = vld1q_dup_f32(v4).u64[0];
      break;
    default:
      *&v3 = 0;
      break;
  }

  return *&v3;
}

- (void)setAnimatedFloat:(unint64_t)a3 forKey:
{
  switch(a3)
  {
    case 0uLL:
      *&self->_anon_30[64] = v3;
      return;
    case 1uLL:
      LODWORD(self->_structure.equatorRotation) = v3;
      goto LABEL_5;
    case 2uLL:
      *self->_anon_30 = v3;
      return;
    case 3uLL:
      *&self->_anon_30[80] = v3;
      return;
    case 4uLL:
      LODWORD(self->_structure.distance) = v3;
      goto LABEL_5;
    case 5uLL:
      LODWORD(self->_structure.distanceScale) = v3;
      return;
    case 6uLL:
      *&self->_anon_30[52] = v3;
      return;
    case 7uLL:
      *&self->_anon_30[56] = v3;
      return;
    case 8uLL:
      LODWORD(self->_structure.angle) = v3;
LABEL_5:
      [(NUNISpheroid *)self _updatePositionFromAngle];
      break;
    case 9uLL:
      *&self->_anon_30[16] = v3;
      break;
    case 0xAuLL:
      *&self->_anon_30[112] = v3;
      [(NUNISpheroid *)self _updateCamera];
      break;
    case 0xBuLL:
      *&self->_anon_30[48] = v3;
      break;
    case 0xCuLL:
      *&self->_anon_30[20] = v3;
      break;
    default:
      return;
  }
}

- (void)setCenterCoordinate:(CLLocationCoordinate2D)a3 animated:(BOOL)a4
{
  v4 = a4;
  longitude = a3.longitude;
  latitude = a3.latitude;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v15 = WeakRetained;
  if (v4)
  {
    v9 = [NUNIAnimation alloc];
    *&v10 = longitude;
    *&v11 = latitude;
    v12 = [(NUNIAnimation *)v9 initWithAnimatable:self value:10 key:COERCE_DOUBLE(__PAIR64__(v11, v10))];
    [v15 addAnimation:v12];
  }

  else
  {
    [WeakRetained removeAllAnimationsFor:self withKeys:1024];

    v13 = longitude;
    v14 = latitude;
    *&self->_anon_30[112] = v13;
    *&self->_anon_30[116] = v14;

    [(NUNISpheroid *)self _updateCamera];
  }
}

- (void)_updateCamera
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = [WeakRetained snap];
  if (v3 == [(NUNISpheroid *)self type])
  {
    v4 = objc_loadWeakRetained(&self->_scene);
    v5 = [v4 isAnimating:v4 forKeys:15];

    if (v5)
    {
      return;
    }

    v6 = objc_loadWeakRetained(&self->_scene);
    v7 = [v6 structure];

    v17 = NUNIComputeCameraView(self->_structure.type, *&vadd_f32(*&self->_anon_30[112], v7[13]), self->_structure.equatorRotation);
    v14 = *&self->_anon_30[52];
    v15 = *&self->_anon_30[64];
    v8 = objc_loadWeakRetained(&self->_scene);
    [v8 cameraOrbit];
    v15.i64[0] = vmlaq_n_f32(v15, vmulq_n_f32(vnegq_f32(v17), v14), v9).u64[0];

    v10 = objc_loadWeakRetained(&self->_scene);
    [v10 cameraRoll];
    v12 = v11;

    WeakRetained = objc_loadWeakRetained(&self->_scene);
    LODWORD(v13) = v12;
    [WeakRetained setCamera:*v15.i64 target:*&self->_anon_30[64] up:0.0 roll:v13];
  }
}

- (CLLocationCoordinate2D)homeCoordinate
{
  v2 = *&self->_anon_30[108];
  v3 = *&self->_anon_30[104];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (CLLocationCoordinate2D)centerCoordinate
{
  v2 = *&self->_anon_30[116];
  v3 = *&self->_anon_30[112];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (void)setHomeCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  *&self->_anon_30[104] = longitude;
  *&self->_anon_30[108] = latitude;
}

- (NUNIScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end