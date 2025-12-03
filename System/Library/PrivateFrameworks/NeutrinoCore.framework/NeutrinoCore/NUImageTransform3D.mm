@interface NUImageTransform3D
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToGeometryTransform3D:(id)d;
- (BOOL)isInverseOf:(id)of;
- (CGPoint)transformPoint:(CGPoint)point;
- (NUImageTransform3D)init;
- (NUImageTransform3D)initWithAffineTransform:(CGAffineTransform *)transform;
- (_OWORD)initWithTransform3D:(float64x2_t *)d;
- (_OWORD)transformMatrix:(_OWORD *)matrix@<X8>;
- (id)inverseTransform;
- (id)transformByRotateX:(double)x y:(double)y z:(double)z;
- (id)transformByRotateZ:(double)z;
- (id)transformByScaleX:(double)x scaleY:(double)y;
- (id)transformByTranslateX:(double)x translateY:(double)y;
- (unint64_t)hash;
- (void)nu_updateDigest:(id)digest;
@end

@implementation NUImageTransform3D

- (void)nu_updateDigest:(id)digest
{
  digestCopy = digest;
  [digestCopy addCString:"NUImageTransform3D"];
  [digestCopy addBytes:&self[1] length:128];
}

- (BOOL)isEqualToGeometryTransform3D:(id)d
{
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    v7 = NUAssertLogger_21429();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "other != nil"];
      *buf = 138543362;
      v41 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_21429();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        callStackSymbols = [v15 callStackSymbols];
        v18 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v14;
        v42 = 2114;
        v43 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageTransform3D isEqualToGeometryTransform3D:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUGeometryTransform.m", 460, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "other != nil");
  }

  v35 = *&self[1].super.super.super.isa;
  v38 = *&self[1]._anon_10[32];
  v39 = *self[1]._anon_10;
  v34 = *&self[1]._anon_10[16];
  v37 = *&self[1]._anon_10[64];
  v33 = *&self[1]._anon_10[48];
  v36 = *&self[1]._anon_10[96];
  v31 = dCopy[11];
  v32 = *&self[1]._anon_10[80];
  v26 = dCopy[12];
  v27 = dCopy[10];
  v29 = dCopy[15];
  v30 = dCopy[13];
  v28 = dCopy[17];
  v24 = dCopy[16];
  v25 = dCopy[14];

  v5 = vandq_s8(vandq_s8(vandq_s8(vceqq_f64(v34, v26), vceqq_f64(v35, v27)), vandq_s8(vceqq_f64(v33, v25), vceqq_f64(v32, v24))), vandq_s8(vandq_s8(vceqq_f64(v38, v30), vceqq_f64(v39, v31)), vandq_s8(vceqq_f64(v37, v29), vceqq_f64(v36, v28))));
  return vandq_s8(v5, vdupq_laneq_s64(v5, 1)).u64[0] >> 63;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUImageTransform3D *)self isEqualToGeometryTransform3D:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = vpaddq_f64(vaddq_f64(vmulq_f64(*&self[1].super.super.super.isa, xmmword_1C03C2940), vmulq_f64(*self[1]._anon_10, xmmword_1C03C2930)), vaddq_f64(vmulq_f64(*&self[1]._anon_10[16], xmmword_1C03C2960), vmulq_f64(*&self[1]._anon_10[32], xmmword_1C03C2950)));
  v3 = vpaddq_f64(vaddq_f64(vmulq_f64(*&self[1]._anon_10[48], xmmword_1C03C2980), vmulq_f64(*&self[1]._anon_10[64], xmmword_1C03C2970)), vaddq_f64(vmulq_f64(*&self[1]._anon_10[80], xmmword_1C03C29A0), vmulq_f64(*&self[1]._anon_10[96], xmmword_1C03C2990)));
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:v2.f64[0] + 0.0 + v2.f64[1] + v3.f64[0] + v3.f64[1]];
  v5 = [v4 hash];

  return v5;
}

- (id)transformByRotateX:(double)x y:(double)y z:(double)z
{
  v5 = self + 1;
  v6 = y * 3.14159265 / 180.0;
  v7 = z * 3.14159265 / 180.0;
  v9 = __sincos_stret(x * 3.14159265 / 180.0 * 0.5);
  v8.f64[0] = v9.__sinval;
  *&v52 = *&vmulq_f64(v8, 0);
  vars0 = vmulq_n_f64(xmmword_1C03C2770, v9.__sinval);
  v11 = __sincos_stret(v6 * 0.5);
  v10.f64[0] = v11.__sinval;
  *&v10.f64[0] = *&vmulq_f64(v10, 0);
  v10.f64[1] = v11.__cosval;
  v49 = v10;
  v50 = vmulq_n_f64(xmmword_1C03C2760, v11.__sinval);
  v12 = __sincos_stret(v7 * 0.5);
  v13 = 0;
  v14 = vmulq_n_f64(0, v12.__sinval);
  v15 = vnegq_f64(v50);
  v16 = vextq_s8(v49, vnegq_f64(v49), 8uLL);
  _Q6 = vmlaq_n_f64(vmulq_laneq_f64(v49, vars0, 1), v16, vars0.f64[0]);
  _Q1 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v49, v9.__cosval), v16, v52), vmlaq_n_f64(vmulq_laneq_f64(v15, vars0, 1), vextq_s8(v50, v15, 8uLL), vars0.f64[0]));
  v19 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v50, v9.__cosval), vextq_s8(v15, v50, 8uLL), v52), _Q6);
  v20 = vnegq_f64(v14);
  v21 = vextq_s8(v12, vnegq_f64(v12), 8uLL);
  _Q7 = vmlaq_n_f64(vmulq_laneq_f64(v20, v19, 1), vextq_s8(v14, v20, 8uLL), v19.f64[0]);
  _Q2 = vmlaq_n_f64(vmulq_laneq_f64(v14, _Q1, 1), vextq_s8(v20, v14, 8uLL), _Q1.f64[0]);
  _Q5 = vaddq_f64(_Q7, vmlaq_n_f64(vmulq_laneq_f64(v12, _Q1, 1), v21, _Q1.f64[0]));
  _Q4 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v12, v19, 1), v21, v19.f64[0]), _Q2);
  _Q6.f64[0] = _Q4.f64[1];
  _Q7.f64[0] = _Q5.f64[1];
  __asm { FMLA            D1, D7, V5.D[1] }

  v19.f64[0] = vmuld_lane_f64(_Q5.f64[0], _Q5, 1);
  v30.f64[0] = vmuld_lane_f64(_Q4.f64[1], _Q5, 1);
  v33.f64[0] = -(v30.f64[0] - _Q4.f64[0] * _Q5.f64[0]) - (v30.f64[0] - _Q4.f64[0] * _Q5.f64[0]);
  _Q1.f64[1] = v19.f64[0] + _Q4.f64[0] * _Q4.f64[1] + v19.f64[0] + _Q4.f64[0] * _Q4.f64[1];
  v19.f64[0] = -(v19.f64[0] - _Q4.f64[0] * _Q4.f64[1]) - (v19.f64[0] - _Q4.f64[0] * _Q4.f64[1]);
  __asm
  {
    FMLA            D2, D6, V4.D[1]
    FMLA            D2, D7, V5.D[1]
  }

  v31 = vmuld_lane_f64(_Q4.f64[0], _Q5, 1);
  v19.f64[1] = _Q2.f64[0] - _Q4.f64[0] * _Q4.f64[0];
  v30.f64[1] = -(_Q4.f64[0] * _Q5.f64[1]);
  v32 = vmlaq_n_f64(v30, _Q4, _Q5.f64[0]);
  v35 = vaddq_f64(v32, v32);
  v33.f64[1] = v31 + _Q4.f64[1] * _Q5.f64[0] + v31 + _Q4.f64[1] * _Q5.f64[0];
  v34 = vzip2q_s64(v35, 0);
  v35.f64[1] = 0.0;
  __asm { FMLS            D7, D6, V4.D[1] }

  v36 = *&_Q7.f64[0];
  v37 = *&v5->_anon_10[64];
  v57 = *&v5->_anon_10[48];
  v58 = v37;
  v38 = *&v5->_anon_10[96];
  v59 = *&v5->_anon_10[80];
  v60 = v38;
  v39 = *v5->_anon_10;
  v53 = *&v5->super.super.super.isa;
  v54 = v39;
  v40 = *&v5->_anon_10[32];
  v55 = *&v5->_anon_10[16];
  v56 = v40;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v41 = vzip1q_s64(_Q1, v19);
  v63 = 0u;
  v64 = 0u;
  v42 = vzip2q_s64(_Q1, v19);
  v61 = 0u;
  v62 = 0u;
  do
  {
    v44 = *(&v53 + v13);
    v43 = *(&v53 + v13 + 16);
    v45 = (&v61 + v13);
    *v45 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v41, v44.f64[0]), v42, v44, 1), v33, v43.f64[0]), 0, v43, 1);
    v45[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v35, v44.f64[0]), v34, v44, 1), v36, v43.f64[0]), xmmword_1C03C2760, v43, 1);
    v13 += 32;
  }

  while (v13 != 128);
  v46 = [NUImageTransform3D alloc];
  v57 = v65;
  v58 = v66;
  v59 = v67;
  v60 = v68;
  v53 = v61;
  v54 = v62;
  v55 = v63;
  v56 = v64;
  v47 = [(NUImageTransform3D *)v46 initWithTransform3D:&v53];

  return v47;
}

- (id)transformByRotateZ:(double)z
{
  v3 = self + 1;
  v21 = *(MEMORY[0x1E69E9B08] + 48);
  v22 = *(MEMORY[0x1E69E9B08] + 16);
  v19 = *(MEMORY[0x1E69E9B08] + 112);
  v20 = *(MEMORY[0x1E69E9B08] + 64);
  v17 = *(MEMORY[0x1E69E9B08] + 96);
  vars0 = *(MEMORY[0x1E69E9B08] + 80);
  v5 = __sincos_stret(z * 3.14159265 / 180.0);
  v4.f64[0] = v5.__cosval;
  v6 = 0;
  v7 = *&v3->_anon_10[64];
  v27 = *&v3->_anon_10[48];
  v28 = v7;
  v8 = *&v3->_anon_10[96];
  v29 = *&v3->_anon_10[80];
  v30 = v8;
  v9 = *v3->_anon_10;
  v23 = *&v3->super.super.super.isa;
  v24 = v9;
  v10 = *&v3->_anon_10[32];
  v25 = *&v3->_anon_10[16];
  v26 = v10;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  do
  {
    v12 = *(&v23 + v6);
    v11 = *(&v23 + v6 + 16);
    v4.f64[1] = -v5.__sinval;
    v13 = (&v31 + v6);
    *v13 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v4, v12.f64[0]), v5, v12, 1), v20, v11.f64[0]), v17, v11, 1);
    v13[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v22, v12.f64[0]), v21, v12, 1), vars0, v11.f64[0]), v19, v11, 1);
    v6 += 32;
  }

  while (v6 != 128);
  v14 = [NUImageTransform3D alloc];
  v27 = v35;
  v28 = v36;
  v29 = v37;
  v30 = v38;
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v15 = [(NUImageTransform3D *)v14 initWithTransform3D:&v23];

  return v15;
}

- (id)transformByTranslateX:(double)x translateY:(double)y
{
  v4 = 0;
  v5 = *MEMORY[0x1E69E9B08];
  v9 = *(MEMORY[0x1E69E9B08] + 16);
  v6 = *(MEMORY[0x1E69E9B08] + 32);
  v12 = *(MEMORY[0x1E69E9B08] + 48);
  v8 = *(MEMORY[0x1E69E9B08] + 64);
  v7 = *(MEMORY[0x1E69E9B08] + 80);
  v9.f64[1] = x;
  v11 = *(MEMORY[0x1E69E9B08] + 96);
  v10 = *(MEMORY[0x1E69E9B08] + 112);
  v12.f64[1] = y;
  v13 = *self[1]._anon_10;
  v20 = *&self[1].super.super.super.isa;
  vars0 = v13;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  do
  {
    v15 = *(&v20 + v4);
    v14 = *(&v20 + v4 + 16);
    v16 = (&v22 + v4);
    *v16 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v5, v15.f64[0]), v6, v15, 1), v8, v14.f64[0]), v11, v14, 1);
    v16[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v9, v15.f64[0]), v12, v15, 1), v7, v14.f64[0]), v10, v14, 1);
    v4 += 32;
  }

  while (v4 != 128);
  v17 = [NUImageTransform3D alloc];
  v20 = v22;
  vars0 = v23;
  v18 = [(NUImageTransform3D *)v17 initWithTransform3D:&v20];

  return v18;
}

- (id)transformByScaleX:(double)x scaleY:(double)y
{
  v4 = 0;
  v5 = *&x;
  v6.f64[0] = 0.0;
  v6.f64[1] = y;
  v7 = *self[1]._anon_10;
  v14 = *&self[1].super.super.super.isa;
  vars0 = v7;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  do
  {
    v9 = *(&v14 + v4);
    v8 = *(&v14 + v4 + 16);
    v10 = (&v16 + v4);
    *v10 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v5, v9.f64[0]), v6, v9, 1), 0, v8.f64[0]), 0, v8, 1);
    v10[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v9.f64[0]), 0, v9, 1), xmmword_1C03C2770, v8.f64[0]), xmmword_1C03C2760, v8, 1);
    v4 += 32;
  }

  while (v4 != 128);
  v11 = [NUImageTransform3D alloc];
  v14 = v16;
  vars0 = v17;
  v12 = [(NUImageTransform3D *)v11 initWithTransform3D:&v14];

  return v12;
}

- (_OWORD)transformMatrix:(_OWORD *)matrix@<X8>
{
  v3 = 0;
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v12 = result[15];
  v19[4] = result[14];
  v19[5] = v12;
  v13 = result[17];
  v19[6] = result[16];
  v19[7] = v13;
  v14 = result[11];
  v19[0] = result[10];
  v19[1] = v14;
  v15 = result[13];
  v19[2] = result[12];
  v19[3] = v15;
  *matrix = 0u;
  matrix[1] = 0u;
  matrix[2] = 0u;
  matrix[3] = 0u;
  matrix[4] = 0u;
  matrix[5] = 0u;
  matrix[6] = 0u;
  matrix[7] = 0u;
  do
  {
    v17 = v19[v3];
    v16 = v19[v3 + 1];
    v18 = &matrix[v3];
    *v18 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v5, v17.f64[0]), v7, v17, 1), v9, v16.f64[0]), v11, v16, 1);
    v18[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v4, v17.f64[0]), v6, v17, 1), v8, v16.f64[0]), v10, v16, 1);
    v3 += 2;
  }

  while (v3 != 8);
  return result;
}

- (CGPoint)transformPoint:(CGPoint)point
{
  v3 = &self[1]._anon_10[48];
  v26 = vld4q_f64(v3);
  v5 = *&self[1].super.super.super.isa;
  v4 = *self[1]._anon_10;
  v6 = *&self[1]._anon_10[16];
  v7 = *&self[1]._anon_10[32];
  v8 = vzip1q_s64(v5, v6);
  v9 = vzip2q_s64(v5, v6);
  v10 = vzip1q_s64(v4, v7);
  v11 = vzip2q_s64(v4, v7);
  v12 = vmlaq_n_f64(vmulq_n_f64(v8, point.x), v9, point.y);
  v13 = vmlaq_n_f64(vmulq_n_f64(v26.val[0], point.x), v26.val[1], point.y);
  if (self->_inverseProjection)
  {
    v14 = vdupq_n_s64(0xC08F400000000000);
    v15 = vmlaq_f64(v13, v14, v26.val[2]);
    v16 = vaddq_f64(v11, vmlaq_f64(v12, v14, v10));
    v17 = vaddq_f64(v26.val[3], v15);
    v18 = vdupq_n_s64(0x408F400000000000uLL);
    v19 = vaddq_f64(v26.val[3], vmlaq_f64(v13, v18, v26.val[2]));
    v20 = v17.f64[0] / (v19.f64[0] - v17.f64[0]);
    v21 = vmlsq_lane_f64(v17, vsubq_f64(v19, v17), v20, 0);
    v22 = vmlsq_lane_f64(v16, vsubq_f64(vaddq_f64(v11, vmlaq_f64(v12, v18, v10)), v16), v20, 0);
  }

  else
  {
    v22 = vaddq_f64(v11, vmlaq_f64(v12, 0, v10));
    v21 = vaddq_f64(v26.val[3], vmlaq_f64(v13, 0, v26.val[2]));
  }

  v23 = vdivq_f64(v22, vdupq_laneq_s64(v21, 1));
  v24 = v23.f64[1];
  result.x = v23.f64[0];
  result.y = v24;
  return result;
}

- (id)inverseTransform
{
  v3 = [NUImageTransform3D alloc];
  v4 = *(MEMORY[0x1E69E9B08] + 80);
  v22[4] = *(MEMORY[0x1E69E9B08] + 64);
  v22[5] = v4;
  v5 = *(MEMORY[0x1E69E9B08] + 112);
  v22[6] = *(MEMORY[0x1E69E9B08] + 96);
  v22[7] = v5;
  v6 = *(MEMORY[0x1E69E9B08] + 16);
  v22[0] = *MEMORY[0x1E69E9B08];
  v22[1] = v6;
  v7 = *(MEMORY[0x1E69E9B08] + 48);
  v22[2] = *(MEMORY[0x1E69E9B08] + 32);
  v22[3] = v7;
  v8 = [(NUImageTransform3D *)v3 initWithTransform3D:v22];
  v9 = *&self->_anon_10[48];
  v11 = *self->_anon_10;
  v10 = *&self->_anon_10[16];
  *(v8 + 192) = *&self->_anon_10[32];
  *(v8 + 208) = v9;
  *(v8 + 160) = v11;
  *(v8 + 176) = v10;
  v12 = *&self->_anon_10[112];
  v14 = *&self->_anon_10[64];
  v13 = *&self->_anon_10[80];
  *(v8 + 256) = *&self->_anon_10[96];
  *(v8 + 272) = v12;
  *(v8 + 224) = v14;
  *(v8 + 240) = v13;
  v15 = *&self[1]._anon_10[32];
  v17 = *&self[1].super.super.super.isa;
  v16 = *self[1]._anon_10;
  *(v8 + 48) = *&self[1]._anon_10[16];
  *(v8 + 64) = v15;
  *(v8 + 16) = v17;
  *(v8 + 32) = v16;
  v18 = *&self[1]._anon_10[96];
  v20 = *&self[1]._anon_10[48];
  v19 = *&self[1]._anon_10[64];
  *(v8 + 112) = *&self[1]._anon_10[80];
  *(v8 + 128) = v18;
  *(v8 + 80) = v20;
  *(v8 + 96) = v19;
  *(v8 + 144) ^= 1u;

  return v8;
}

- (BOOL)isInverseOf:(id)of
{
  v3 = vdupq_n_s64(0x3EE4F8B588E368F1uLL);
  v4 = vandq_s8(vandq_s8(vandq_s8(vcgeq_f64(v3, vabdq_f64(*&self[1]._anon_10[16], *(of + 3))), vcgeq_f64(v3, vabdq_f64(*&self[1].super.super.super.isa, *(of + 1)))), vandq_s8(vcgeq_f64(v3, vabdq_f64(*&self[1]._anon_10[48], *(of + 5))), vcgeq_f64(v3, vabdq_f64(*&self[1]._anon_10[80], *(of + 7))))), vandq_s8(vandq_s8(vcgeq_f64(v3, vabdq_f64(*&self[1]._anon_10[32], *(of + 4))), vcgeq_f64(v3, vabdq_f64(*self[1]._anon_10, *(of + 2)))), vandq_s8(vcgeq_f64(v3, vabdq_f64(*&self[1]._anon_10[64], *(of + 6))), vcgeq_f64(v3, vabdq_f64(*&self[1]._anon_10[96], *(of + 8))))));
  if ((vandq_s8(v4, vdupq_laneq_s64(v4, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    v6 = vandq_s8(vandq_s8(vandq_s8(vcgeq_f64(v3, vabdq_f64(*&self->_anon_10[32], *(of + 12))), vcgeq_f64(v3, vabdq_f64(*self->_anon_10, *(of + 10)))), vandq_s8(vcgeq_f64(v3, vabdq_f64(*&self->_anon_10[64], *(of + 14))), vcgeq_f64(v3, vabdq_f64(*&self->_anon_10[96], *(of + 16))))), vandq_s8(vandq_s8(vcgeq_f64(v3, vabdq_f64(*&self->_anon_10[48], *(of + 13))), vcgeq_f64(v3, vabdq_f64(*&self->_anon_10[16], *(of + 11)))), vandq_s8(vcgeq_f64(v3, vabdq_f64(*&self->_anon_10[80], *(of + 15))), vcgeq_f64(v3, vabdq_f64(*&self->_anon_10[112], *(of + 17))))));
    return vandq_s8(v6, vdupq_laneq_s64(v6, 1)).u64[0] >> 63;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (NUImageTransform3D)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_21385);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_21385);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_21385);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUImageTransform3D init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUGeometryTransform.m", 296, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

- (_OWORD)initWithTransform3D:(float64x2_t *)d
{
  a53 = *MEMORY[0x1E69E9840];
  v128 = d[1];
  v129 = *d;
  v126 = d[3];
  v127 = d[2];
  v124 = d[5];
  v125 = d[4];
  v122 = d[7];
  v123 = d[6];
  v54 = MEMORY[0x1E69E9B08];
  v120 = *(MEMORY[0x1E69E9B08] + 16);
  v121 = *MEMORY[0x1E69E9B08];
  v118 = *(MEMORY[0x1E69E9B08] + 48);
  v119 = *(MEMORY[0x1E69E9B08] + 32);
  v116 = *(MEMORY[0x1E69E9B08] + 80);
  vars0 = *(MEMORY[0x1E69E9B08] + 64);
  v114 = *(MEMORY[0x1E69E9B08] + 112);
  v115 = *(MEMORY[0x1E69E9B08] + 96);
  a41.receiver = self;
  a41.super_class = NUImageTransform3D;
  v55 = [(NUImageTransform3D *)&a41 init];
  v56 = v55;
  if (v55)
  {
    v57 = vandq_s8(vandq_s8(vandq_s8(vceqq_f64(v127, v119), vceqq_f64(v129, v121)), vandq_s8(vceqq_f64(v125, vars0), vceqq_f64(v123, v115))), vandq_s8(vandq_s8(vceqq_f64(v126, v118), vceqq_f64(v128, v120)), vandq_s8(vceqq_f64(v124, v116), vceqq_f64(v122, v114))));
    v58 = d[3];
    v60 = *d;
    v59 = d[1];
    *(v55 + 12) = d[2];
    *(v55 + 13) = v58;
    *(v55 + 10) = v60;
    *(v55 + 11) = v59;
    v61 = d[7];
    v63 = d[4];
    v62 = d[5];
    *(v55 + 16) = d[6];
    *(v55 + 17) = v61;
    *(v55 + 14) = v63;
    *(v55 + 15) = v62;
    v64 = v55 + 16;
    if ((vandq_s8(v57, vdupq_laneq_s64(v57, 1)).u64[0] & 0x8000000000000000) != 0)
    {
      v90 = *v54;
      v91 = v54[1];
      v92 = v54[3];
      *(v55 + 3) = v54[2];
      *(v55 + 4) = v92;
      *v64 = v90;
      *(v55 + 2) = v91;
      v93 = v54[4];
      v94 = v54[5];
      v95 = v54[7];
      *(v55 + 7) = v54[6];
      *(v55 + 8) = v95;
      *(v55 + 5) = v93;
      *(v55 + 6) = v94;
    }

    else
    {
      v65 = d[5];
      a46 = d[4];
      a47 = v65;
      v66 = d[7];
      a48 = d[6];
      a49 = v66;
      v67 = d[1];
      buf = *d;
      a43 = v67;
      v68 = d[3];
      a44 = d[2];
      a45 = v68;
      __invert_d4();
      v56[3] = a35;
      v56[4] = a36;
      *v64 = a33;
      v56[2] = a34;
      v56[7] = a39;
      v56[8] = a40;
      v56[5] = a37;
      v56[6] = a38;
      v130 = vld2q_f64(d->f64);
      v69 = d[2];
      v70 = d[3];
      v71 = d[4];
      v72 = d[5];
      v73 = d[6];
      v74 = d[7];
      v75 = vextq_s8(v70, v69, 8uLL);
      v76 = vextq_s8(v69, v70, 8uLL);
      v77 = vextq_s8(v74, v73, 8uLL);
      v78 = vextq_s8(v73, v74, 8uLL);
      v79 = vextq_s8(v72, v71, 8uLL);
      v80 = vextq_s8(v71, v72, 8uLL);
      v81 = vnegq_f64(v80);
      v82 = vnegq_f64(v79);
      v83 = vmlaq_f64(vmlaq_f64(vmulq_f64(v69, vmlaq_f64(vmulq_f64(v78, v82), v77, v80)), vmlaq_f64(vmulq_f64(v73, v81), v78, v71), v75), vmlaq_f64(vmulq_f64(v77, vnegq_f64(v71)), v73, v79), v76);
      v84 = vmlaq_f64(vmlaq_f64(vmulq_f64(v70, vmlaq_f64(vmulq_f64(v77, v81), v78, v79)), vmlaq_f64(vmulq_f64(v74, v82), v77, v72), v76), vmlaq_f64(vmulq_f64(v78, vnegq_f64(v72)), v74, v80), v75);
      if (vaddvq_f64(vsubq_f64(vmulq_f64(v130.val[0], vzip1q_s64(v84, v83)), vmulq_f64(v130.val[1], vzip2q_s64(v84, v83)))) == 0.0)
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_21385);
        }

        v85 = _NUAssertLogger;
        if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
        {
          v86 = MEMORY[0x1E696AEC0];
          v87 = v85;
          v88 = [v86 stringWithFormat:@"Supplied transform is not invertible"];
          LODWORD(buf.f64[0]) = 138543362;
          *(buf.f64 + 4) = v88;
          _os_log_impl(&dword_1C0184000, v87, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", &buf, 0xCu);

          v89 = _NULogOnceToken;
          if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
          {
            if (v89 != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_21385);
            }

            goto LABEL_12;
          }

          if (v89 != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_21385);
          }
        }

        else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
        {
LABEL_12:
          v96 = _NUAssertLogger;
          if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
          {
            specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v102 = MEMORY[0x1E696AF00];
            v103 = specific;
            v104 = v96;
            callStackSymbols = [v102 callStackSymbols];
            v106 = [callStackSymbols componentsJoinedByString:@"\n"];
            LODWORD(buf.f64[0]) = 138543618;
            *(buf.f64 + 4) = specific;
            WORD2(buf.f64[1]) = 2114;
            *(&buf.f64[1] + 6) = v106;
            _os_log_error_impl(&dword_1C0184000, v104, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
          }

LABEL_18:
          _NUAssertContinueHandler("[NUImageTransform3D initWithTransform3D:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUGeometryTransform.m", 287, @"Supplied transform is not invertible", v97, v98, v99, v100, v113);
          return v56;
        }

        v107 = _NUAssertLogger;
        if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
        {
          v109 = MEMORY[0x1E696AF00];
          v110 = v107;
          callStackSymbols2 = [v109 callStackSymbols];
          v112 = [callStackSymbols2 componentsJoinedByString:@"\n"];
          LODWORD(buf.f64[0]) = 138543362;
          *(buf.f64 + 4) = v112;
          _os_log_error_impl(&dword_1C0184000, v110, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
        }

        goto LABEL_18;
      }
    }
  }

  return v56;
}

- (NUImageTransform3D)initWithAffineTransform:(CGAffineTransform *)transform
{
  *&v3 = transform->a;
  *&v4 = transform->b;
  *(&v3 + 1) = *&transform->c;
  *&v5 = 0;
  *&v6 = 0;
  *(&v6 + 1) = *&transform->tx;
  *(&v4 + 1) = *&transform->d;
  *(&v5 + 1) = *&transform->ty;
  v10[0] = v3;
  v10[1] = v6;
  v10[2] = v4;
  v10[3] = v5;
  v7 = *(MEMORY[0x1E69E9B08] + 80);
  v10[4] = *(MEMORY[0x1E69E9B08] + 64);
  v10[5] = v7;
  v8 = *(MEMORY[0x1E69E9B08] + 112);
  v10[6] = *(MEMORY[0x1E69E9B08] + 96);
  v10[7] = v8;
  return [(NUImageTransform3D *)self initWithTransform3D:v10];
}

@end