@interface NUNIScene
- (BOOL)isAnimating:(id)a3 forKeys:(unint64_t)a4;
- (CLLocationCoordinate2D)offsetCoordinate;
- (NUNIScene)initWithSphereoids:(unint64_t)a3 projectionType:(unint64_t)a4 currentDateBlock:(id)a5;
- (NUNISceneObserver)observer;
- (double)animatedFloatForKey:(uint64_t)a3;
- (id)packIntoBlob;
- (id)spheroidOfType:(unint64_t)a3;
- (void)addAnimation:(id)a3;
- (void)removeAllAnimationsFor:(id)a3 withKeys:(unint64_t)a4;
- (void)setAnimatedFloat:(unint64_t)a3 forKey:;
- (void)setOffsetCoordinate:(CLLocationCoordinate2D)a3;
- (void)setSnap:(unint64_t)a3;
- (void)unpackFromBlob:(id)a3;
- (void)update:(float)a3;
- (void)updateCamera;
- (void)updateFromDateIfNeeded;
- (void)updateSunLocationForDate:(id)a3 animated:(BOOL)a4 lightingPreference:(unint64_t)a5 adjustEarthRotation:(BOOL)a6;
@end

@implementation NUNIScene

- (NUNIScene)initWithSphereoids:(unint64_t)a3 projectionType:(unint64_t)a4 currentDateBlock:(id)a5
{
  v6 = a3;
  v8 = a5;
  v29.receiver = self;
  v29.super_class = NUNIScene;
  v9 = [(NUNIScene *)&v29 init];
  if (v9)
  {
    v27 = a4;
    aBlock = v8;
    v10 = objc_opt_new();
    spheroids = v9->_spheroids;
    v9->_spheroids = v10;

    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (((1 << v12) & v6) == 0)
    {
LABEL_13:
      if (++v12 == 24)
      {
        v20 = objc_opt_new();
        animations = v9->_animations;
        v9->_animations = v20;

        *&v9->_structure.var0 = xmmword_25B71A330;
        *&v9->_structure.var3 = xmmword_25B719EA0;
        *&v9->_structure.var5 = xmmword_25B719ED0;
        *&v9->_structure.var11 = 2;
        v9->_structure.var8.var0.var0 = 5.7588;
        v9->_anon_78[16] = 1;
        *&v9->_anon_78[8] = v27;
        *&v9->_anon_78[52] = 1097859072;
        [(NUNIScene *)v9 setSnap:24];
        v8 = aBlock;
        v22 = _Block_copy(aBlock);
        currentDateBlock = v9->_currentDateBlock;
        v9->_currentDateBlock = v22;

        v24 = [(NUNIScene *)v9 date];
        [v24 timeIntervalSince1970];
        *&v25 = v25 / 31536000.0;
        *&v9->_anon_78[20] = LODWORD(v25);

        goto LABEL_17;
      }
    }

    v15 = 0;
    if (v12 <= 9)
    {
      v16 = v14;
      if (((1 << v12) & 0x3EE) != 0)
      {
LABEL_6:
        v15 = v16;
        goto LABEL_7;
      }

      if (v12 == 4)
      {
        v16 = v13;
        goto LABEL_6;
      }
    }

LABEL_7:
    v17 = [[NUNISpheroid alloc] initWithScene:v9 parent:v15 type:v12];
    [(NSMutableArray *)v9->_spheroids addObject:v17];
    if (v12)
    {
      if (v12 != 3)
      {
LABEL_12:

        goto LABEL_13;
      }

      v18 = v13;
      v13 = v17;
    }

    else
    {
      v18 = v14;
      v14 = v17;
    }

    v19 = v17;

    goto LABEL_12;
  }

LABEL_17:

  return v9;
}

- (void)updateCamera
{
  DWORD2(v12) = 0;
  *&v12 = 0;
  DWORD2(v11) = 0;
  *&v11 = 0;
  if (*&self->_structure.var9 == 24)
  {
    var1 = self->_structure.var8.var0.var1;
    *&v5 = 0x3F0000003F000000;
    HIDWORD(v5) = 1056964608;
    *(&v5 + 2) = self->_structure.var8.var0.var0 * 0.5;
    v11 = xmmword_25B719EA0;
    v12 = v5;
    v6 = 0.0078125;
    v7 = 0.0000305175853;
  }

  else
  {
    v8 = [(NUNIScene *)self spheroidOfType:?];
    v9 = (*(self->_currentDateBlock + 2))();
    [v8 date:v9 toCameraPosition:&v12 toCameraTarget:&v11];

    [(NUNIScene *)self restingCameraRoll];
    var1 = v10 + self->_structure.var8.var0.var1;

    v7 = *&v11;
    *&v5 = v12;
    v6 = 0.0;
  }

  *&v2 = var1;
  [(NUNIScene *)self setCamera:*&v5 target:v7 up:v6 roll:v2, v11, v12];
}

- (double)animatedFloatForKey:(uint64_t)a3
{
  *&v3 = 0;
  if (a3 > 4)
  {
    if (a3 > 7)
    {
      switch(a3)
      {
        case 8:
          v4 = (a1 + 160);
          break;
        case 9:
          v4 = (a1 + 164);
          break;
        case 10:
          v4 = (a1 + 168);
          break;
        default:
          return *&v3;
      }
    }

    else
    {
      if (a3 != 5)
      {
        if (a3 == 6)
        {
          *&v3 = *(a1 + 144);
        }

        else
        {
          *&v3 = *(a1 + 152);
        }

        return *&v3;
      }

      v4 = (a1 + 96);
    }

LABEL_24:
    *&v3 = vld1q_dup_f32(v4).u64[0];
    return *&v3;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v3 = *(a1 + 80);
      return *&v3;
    }

    if (a3 == 3)
    {
      v4 = (a1 + 100);
    }

    else
    {
      v4 = (a1 + 140);
    }

    goto LABEL_24;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v3 = *(a1 + 64);
    }
  }

  else
  {
    v3 = *(a1 + 48);
  }

  return *&v3;
}

- (void)setAnimatedFloat:(unint64_t)a3 forKey:
{
  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          *&self->_structure.var3 = _Q0;
        }
      }

      else
      {
        *&self->_structure.var0 = _Q0;
      }
    }

    else if (a3 == 2)
    {
      _Q1 = vmulq_f32(_Q0, _Q0);
      _S2 = _Q0.i32[2];
      __asm { FMLA            S1, S2, V0.S[2] }

      _Q1.f32[0] = sqrtf(_Q1.f32[0]);
      *&self->_structure.var5 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
    }

    else if (a3 == 3)
    {
      LODWORD(self->_structure.var8.var0.var1) = _Q0.i32[0];
    }

    else
    {
      *&self->_anon_78[20] = _Q0.i32[0];
    }
  }

  else if (a3 > 7)
  {
    switch(a3)
    {
      case 8uLL:
        *&self->_anon_78[40] = _Q0.i32[0];
        break;
      case 9uLL:
        *&self->_anon_78[44] = _Q0.i32[0];
        break;
      case 0xAuLL:
        *&self->_anon_78[48] = _Q0.i32[0];
        break;
    }
  }

  else if (a3 == 5)
  {
    LODWORD(self->_structure.var8.var0.var0) = _Q0.i32[0];
    [(NUNIScene *)self updateCamera];
  }

  else if (a3 == 6)
  {
    *&self->_anon_78[24] = _Q0.i64[0];
  }

  else
  {
    *&self->_anon_78[32] = _Q0.i64[0];
  }
}

- (void)update:(float)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_animations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        *&v8 = a3;
        if (([v12 update:{v8, v16}] & 1) == 0)
        {
          [v5 addIndex:{-[NSMutableArray indexOfObject:](self->_animations, "indexOfObject:", v12)}];
          v13 = [v12 observer];
          [v13 astronomyAnimationFinished:v12];
        }
      }

      v9 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    [(NSMutableArray *)self->_animations removeObjectsAtIndexes:v5];
    if (![(NSMutableArray *)self->_animations count])
    {
      v14 = [(NUNIScene *)self observer];
      [v14 astronomySceneAnimationFinished:self];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAnimating:(id)a3 forKeys:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_animations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 key];
        v14 = [v12 animatable];
        if (v14 == v6)
        {
          v15 = 1;

          if (((1 << v13) & ~a4) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = 0;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)addAnimation:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 key];
  v6 = [v4 animatable];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_animations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 key] == v5)
        {
          v13 = [v12 animatable];

          if (v13 == v6)
          {
            v14 = v12;

            if (v14)
            {
              [(NUNIScene *)self removeAnimation:v14];
            }

            goto LABEL_13;
          }
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:
  [(NSMutableArray *)self->_animations addObject:v4, v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeAllAnimationsFor:(id)a3 withKeys:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = self;
  v7 = self->_animations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 key];
        v15 = [v13 animatable];
        if (v15 == v6)
        {

          if (((1 << v14) & ~a4) == 0)
          {
            if (!v10)
            {
              v10 = objc_opt_new();
            }

            [v10 addIndex:{-[NSMutableArray indexOfObject:](v17->_animations, "indexOfObject:", v13)}];
          }
        }

        else
        {
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if ([v10 count])
  {
    [(NSMutableArray *)v17->_animations removeObjectsAtIndexes:v10];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateSunLocationForDate:(id)a3 animated:(BOOL)a4 lightingPreference:(unint64_t)a5 adjustEarthRotation:(BOOL)a6
{
  v63 = a6;
  v81 = *MEMORY[0x277D85DE8];
  v8 = a3;
  self->_isUpdateNeeded = 0;
  [v8 timeIntervalSince1970];
  v10.i32[1] = 1098781496;
  *v10.i32 = v9 / 31536000.0;
  if (a4)
  {
    if (*&self->_anon_78[20] != *v10.i32)
    {
      v69 = v10;
      v11 = [NUNIAnimation alloc];
      v12 = &self->_anon_78[20];
      *&v13 = vld1q_dup_f32(v12).u64[0];
      v14 = [(NUNIAnimation *)v11 initWithAnimatable:self from:4 to:v13 key:*vdupq_lane_s32(v69, 0).i64];
      [(NUNIScene *)self addAnimation:v14];
    }
  }

  else
  {
    v70 = v9 / 31536000.0;
    [(NUNIScene *)self removeAllAnimationsFor:self withKeys:16];
    *&self->_anon_78[20] = v70;
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = self->_spheroids;
  v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v76 objects:v80 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v77;
    v18 = vdup_n_s32(0x40C90FDBu);
    v19 = vdup_n_s32(0xC0C90FDB);
    v20 = vdup_n_s32(0x40490FDBu);
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v77 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v76 + 1) + 8 * i);
        if (a4)
        {
          v23 = [*(*(&v76 + 1) + 8 * i) structure];
          *v24.i32 = *(v23 + 16) + (floorf(*(v23 + 16) / 6.2832) * -6.2832);
          v64 = v24;
          *v24.i32 = *(v23 + 20) + (floorf(*(v23 + 20) / 6.2832) * -6.2832);
          v71 = v24;
          v25 = *(v23 + 112);
          v26 = vrndm_f32(vdiv_f32(v25, v18));
          v27 = vmla_f32(v25, v19, v26);
          v26.i32[0] = *(v23 + 8);
          v65 = v26;
          v26.i32[0] = *(v23 + 84);
          v66 = v26;
          v67 = *&v27;
          v74 = 0;
          v75 = 0;
          v73 = 0;
          NUNIComputeSpheroidTransformParameters(v22, v8, &v75, &v75 + 1, &v73, &v74 + 1, &v74, v63);
          v28 = *(&v75 + 1) + (floorf(*(&v75 + 1) / 6.2832) * -6.2832);
          v29 = vabds_f32(v28, *v64.i32);
          if (v28 <= *v64.i32)
          {
            v30 = 6.2832;
          }

          else
          {
            v30 = -6.2832;
          }

          v31 = v28 + v30;
          if (v29 <= 3.1416)
          {
            v32 = v28;
          }

          else
          {
            v32 = v31;
          }

          v33 = *&v75 + (floorf(*&v75 / 6.2832) * -6.2832);
          v34 = vabds_f32(v33, *v71.i32);
          if (v33 <= *v71.i32)
          {
            v35 = 6.2832;
          }

          else
          {
            v35 = -6.2832;
          }

          v36 = v33 + v35;
          if (v34 > 3.1416)
          {
            v33 = v36;
          }

          v75 = __PAIR64__(LODWORD(v32), LODWORD(v33));
          v37 = vmla_f32(v73, v19, vrndm_f32(vdiv_f32(v73, v18)));
          v73 = vbsl_s8(vcgt_f32(vabd_f32(v37, *&v67), v20), vadd_f32(v37, vbsl_s8(vcgt_f32(v37, *&v67), v19, v18)), v37);
          if (*v64.i32 != v32)
          {
            v38 = [NUNIAnimation alloc];
            v39 = &v75 + 1;
            *&v40 = vld1q_dup_f32(v39).u64[0];
            v41 = [(NUNIAnimation *)v38 initWithAnimatable:v22 from:8 to:*vdupq_lane_s32(v64 key:0).i64, v40];
            [(NUNIScene *)self addAnimation:v41];

            LODWORD(v33) = v75;
          }

          if (*v71.i32 != v33)
          {
            v42 = [NUNIAnimation alloc];
            v43 = &v75;
            *&v44 = vld1q_dup_f32(v43).u64[0];
            v45 = [(NUNIAnimation *)v42 initWithAnimatable:v22 from:1 to:*vdupq_lane_s32(v71 key:0).i64, v44];
            [(NUNIScene *)self addAnimation:v45];
          }

          v46 = vmvn_s8(vceq_f32(*&v67, v73));
          if (v46.i8[0] & 1) != 0 || (v46.i8[4])
          {
            v47 = [NUNIAnimation alloc];
            v48 = [(NUNIAnimation *)v47 initWithAnimatable:v22 from:3 to:v67 key:*&v73];
            [(NUNIScene *)self addAnimation:v48];
          }

          if (*v65.i32 != *(&v74 + 1))
          {
            v49 = [NUNIAnimation alloc];
            v50 = &v74 + 1;
            *&v51 = vld1q_dup_f32(v50).u64[0];
            v52 = [(NUNIAnimation *)v49 initWithAnimatable:v22 from:4 to:*vdupq_lane_s32(v65 key:0).i64, v51];
            [(NUNIScene *)self addAnimation:v52];
          }

          if (*v66.i32 != *&v74)
          {
            v53 = [NUNIAnimation alloc];
            v54 = &v74;
            *&v55 = vld1q_dup_f32(v54).u64[0];
            v56 = [(NUNIAnimation *)v53 initWithAnimatable:v22 from:6 to:*vdupq_lane_s32(v66 key:0).i64, v55];
            [(NUNIScene *)self addAnimation:v56];
          }

          if (((1 << *v23) & 0x3E6) != 0)
          {
            v72 = *(v23 + 144);
            v57 = NUNIComputeSpheroidIdealHomeCoordinate(a5, v73.f32[0], *&v75);
            v58 = *&v57;
            v68 = *&v57;
            [v22 setHomeCoordinate:{*(&v57 + 1), *&v57}];
            if (*&v72 != v58 || (vmvn_s8(vceq_f32(*&v72, *&v68)).i32[1] & 1) != 0)
            {
              v59 = [[NUNIAnimation alloc] initWithAnimatable:v22 from:10 to:v72 key:v68];
              [(NUNIScene *)self addAnimation:v59];
            }
          }
        }

        else
        {
          [(NUNIScene *)self removeAllAnimationsFor:*(*(&v76 + 1) + 8 * i) withKeys:282];
          [v22 updateSunLocationForDate:v8 lightingPreference:a5 adjustEarthRotation:v63];
        }
      }

      v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v76 objects:v80 count:16];
    }

    while (v16);
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (id)spheroidOfType:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_spheroids;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 type] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)updateFromDateIfNeeded
{
  if (self->_isUpdateNeeded && self->_anon_78[16] == 1)
  {
    [(NUNIScene *)self updateSunLocationAnimated:0 lightingPreference:1 adjustEarthRotation:1];
    self->_isUpdateNeeded = 0;
  }
}

- (CLLocationCoordinate2D)offsetCoordinate
{
  v2 = *&self->_anon_78[36];
  v3 = *&self->_anon_78[32];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (void)setOffsetCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  *&self->_anon_78[32] = longitude;
  *&self->_anon_78[36] = latitude;
}

- (void)setSnap:(unint64_t)a3
{
  if (*&self->_structure.var9 != a3)
  {
    *&self->_structure.var9 = a3;
    [(NUNIScene *)self updateCamera];
  }
}

- (id)packIntoBlob
{
  v3 = self->_spheroids;
  v4 = [(NSMutableArray *)v3 count];
  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:160 * v4 + 144];
  v6 = [v5 mutableBytes];
  v7 = [(NUNIScene *)self structure];
  v8 = *&v7->var0;
  v9 = *&v7->var3;
  v10 = *&v7->var8.var0.var0;
  *(v6 + 32) = *&v7->var5;
  *(v6 + 48) = v10;
  *v6 = v8;
  *(v6 + 16) = v9;
  v11 = *&v7->var11;
  v12 = *&v7[1].var2;
  v13 = *&v7[1].var6;
  *(v6 + 96) = *&v7[1].var4;
  *(v6 + 112) = v13;
  *(v6 + 64) = v11;
  *(v6 + 80) = v12;
  *(v6 + 128) = v4;
  if (v4)
  {
    v14 = 0;
    v15 = (v6 + 144);
    do
    {
      v16 = [(NSMutableArray *)v3 objectAtIndex:v14];
      v17 = [v16 structure];
      v18 = v17[1];
      *v15 = *v17;
      v15[1] = v18;
      v19 = v17[5];
      v21 = v17[2];
      v20 = v17[3];
      v15[4] = v17[4];
      v15[5] = v19;
      v15[2] = v21;
      v15[3] = v20;
      v22 = v17[9];
      v24 = v17[6];
      v23 = v17[7];
      v15[8] = v17[8];
      v15[9] = v22;
      v15[6] = v24;
      v15[7] = v23;

      ++v14;
      v15 += 10;
    }

    while (v4 != v14);
  }

  return v5;
}

- (void)unpackFromBlob:(id)a3
{
  v25 = a3;
  v4 = self->_spheroids;
  v5 = [(NSMutableArray *)v4 count];
  v6 = v25;
  v7 = [v25 bytes];
  v8 = v7[3];
  v10 = *v7;
  v9 = v7[1];
  *&self->_structure.var5 = v7[2];
  *&self->_structure.var8.var0.var0 = v8;
  *&self->_structure.var0 = v10;
  *&self->_structure.var3 = v9;
  v11 = v7[7];
  v13 = v7[4];
  v12 = v7[5];
  *&self->_anon_78[24] = v7[6];
  *&self->_anon_78[40] = v11;
  *&self->_structure.var11 = v13;
  *&self->_anon_78[8] = v12;
  if (v5)
  {
    v14 = 0;
    v15 = v7 + 9;
    do
    {
      v16 = [(NSMutableArray *)v4 objectAtIndex:v14];
      v17 = [v16 structure];
      v18 = v15[1];
      *v17 = *v15;
      v17[1] = v18;
      v19 = v15[5];
      v21 = v15[2];
      v20 = v15[3];
      v17[4] = v15[4];
      v17[5] = v19;
      v17[2] = v21;
      v17[3] = v20;
      v22 = v15[9];
      v24 = v15[6];
      v23 = v15[7];
      v17[8] = v15[8];
      v17[9] = v22;
      v17[6] = v24;
      v17[7] = v23;

      ++v14;
      v15 += 10;
    }

    while (v5 != v14);
  }
}

- (NUNISceneObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)setCamera:(os_log_t)log target:(__n128)a2 up:roll:.cold.1(os_log_t log, __n128 a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 134218496;
  v4 = a2.n128_f32[0];
  v5 = 2048;
  v6 = a2.n128_f32[1];
  v7 = 2048;
  v8 = a2.n128_f32[2];
  _os_log_debug_impl(&dword_25B6D4000, log, OS_LOG_TYPE_DEBUG, "Camera position %f, %f, %f", &v3, 0x20u);
  v2 = *MEMORY[0x277D85DE8];
}

@end