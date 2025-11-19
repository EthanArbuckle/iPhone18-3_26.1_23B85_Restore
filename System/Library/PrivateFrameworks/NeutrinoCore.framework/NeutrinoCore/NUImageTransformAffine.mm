@interface NUImageTransformAffine
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToGeometryTransformAffine:(id)a3;
- (BOOL)isIdentityImageTransform;
- (CGPoint)transformPoint:(CGPoint)a3;
- (NUImageTransformAffine)init;
- (NUImageTransformAffine)initWithAffineTransform:(CGAffineTransform *)a3;
- (id)inverseTransform;
- (id)transformByRotateZ:(double)a3;
- (id)transformByScaleX:(double)a3 scaleY:(double)a4;
- (id)transformByTranslateX:(double)a3 translateY:(double)a4;
- (unint64_t)hash;
- (void)nu_updateDigest:(id)a3;
- (void)transformMatrix:(_OWORD *)a3@<X8>;
@end

@implementation NUImageTransformAffine

- (void)nu_updateDigest:(id)a3
{
  v4 = a3;
  [v4 addCString:"NUImageTransformAffine"];
  [v4 addBytes:&self->_transform length:48];
}

- (BOOL)isEqualToGeometryTransformAffine:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v11 = NUAssertLogger_21429();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "other != nil"];
      LODWORD(t1.a) = 138543362;
      *(&t1.a + 4) = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &t1, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_21429();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        LODWORD(t1.a) = 138543618;
        *(&t1.a + 4) = v18;
        WORD2(t1.b) = 2114;
        *(&t1.b + 6) = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &t1, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      LODWORD(t1.a) = 138543362;
      *(&t1.a + 4) = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &t1, 0xCu);
    }

    _NUAssertFailHandler("[NUImageTransformAffine isEqualToGeometryTransformAffine:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUGeometryTransform.m", 242, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "other != nil");
  }

  v5 = v4;
  v6 = *&self->_transform.c;
  *&t1.a = *&self->_transform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_transform.tx;
  v7 = *(v4 + 56);
  v8 = *(v4 + 88);
  *&t2.c = *(v4 + 72);
  *&t2.tx = v8;
  *&t2.a = v7;
  v9 = CGAffineTransformEqualToTransform(&t1, &t2);

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUImageTransformAffine *)self isEqualToGeometryTransformAffine:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:self->_transform.a + self->_transform.b + self->_transform.b + self->_transform.c * 3.0 + self->_transform.d * 5.0 + self->_transform.tx * 7.0 + self->_transform.ty * 11.0];
  v3 = [v2 hash];

  return v3;
}

- (id)transformByRotateZ:(double)a3
{
  v3 = *&self->_transform.c;
  *&v7.a = *&self->_transform.a;
  *&v7.c = v3;
  *&v7.tx = *&self->_transform.tx;
  memset(&v8, 0, sizeof(v8));
  CGAffineTransformRotate(&v8, &v7, a3 * 3.14159265 / 180.0);
  v4 = [NUImageTransformAffine alloc];
  v7 = v8;
  v5 = [(NUImageTransformAffine *)v4 initWithAffineTransform:&v7];

  return v5;
}

- (id)transformByTranslateX:(double)a3 translateY:(double)a4
{
  v4 = *&self->_transform.c;
  *&v8.a = *&self->_transform.a;
  *&v8.c = v4;
  *&v8.tx = *&self->_transform.tx;
  memset(&v9, 0, sizeof(v9));
  CGAffineTransformTranslate(&v9, &v8, a3, a4);
  v5 = [NUImageTransformAffine alloc];
  v8 = v9;
  v6 = [(NUImageTransformAffine *)v5 initWithAffineTransform:&v8];

  return v6;
}

- (id)transformByScaleX:(double)a3 scaleY:(double)a4
{
  v4 = *&self->_transform.c;
  *&v8.a = *&self->_transform.a;
  *&v8.c = v4;
  *&v8.tx = *&self->_transform.tx;
  memset(&v9, 0, sizeof(v9));
  CGAffineTransformScale(&v9, &v8, a3, a4);
  v5 = [NUImageTransformAffine alloc];
  v8 = v9;
  v6 = [(NUImageTransformAffine *)v5 initWithAffineTransform:&v8];

  return v6;
}

- (void)transformMatrix:(_OWORD *)a3@<X8>
{
  v3 = 0;
  *&v4 = result[8];
  *(&v4 + 1) = result[10];
  *&v5 = 0;
  *(&v5 + 1) = result[12];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v13 = a2[6];
  v12 = a2[7];
  v19[2] = v4;
  v19[3] = v5;
  v14 = *(MEMORY[0x1E69E9B08] + 80);
  v19[4] = *(MEMORY[0x1E69E9B08] + 64);
  v19[5] = v14;
  v15 = *(MEMORY[0x1E69E9B08] + 112);
  v19[6] = *(MEMORY[0x1E69E9B08] + 96);
  v19[7] = v15;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  do
  {
    v17 = v19[v3];
    v16 = v19[v3 + 1];
    v18 = &a3[v3];
    *v18 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v7, v17.f64[0]), v9, v17, 1), v11, v16.f64[0]), v13, v16, 1);
    v18[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v6, v17.f64[0]), v8, v17, 1), v10, v16.f64[0]), v12, v16, 1);
    v3 += 2;
  }

  while (v3 != 8);
  return result;
}

- (BOOL)isIdentityImageTransform
{
  v2 = *&self->_transform.c;
  *&v4.a = *&self->_transform.a;
  *&v4.c = v2;
  *&v4.tx = *&self->_transform.tx;
  return CGAffineTransformIsIdentity(&v4);
}

- (CGPoint)transformPoint:(CGPoint)a3
{
  v3 = vaddq_f64(*&self->_transform.tx, vmlaq_n_f64(vmulq_n_f64(*&self->_transform.c, a3.y), *&self->_transform.a, a3.x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (id)inverseTransform
{
  v3 = [NUImageTransformAffine alloc];
  v4 = *&self->_transformInv.c;
  v7[0] = *&self->_transformInv.a;
  v7[1] = v4;
  v7[2] = *&self->_transformInv.tx;
  v5 = [(NUImageTransformAffine *)v3 initWithAffineTransform:v7];

  return v5;
}

- (NUImageTransformAffine)init
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
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
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
    v21 = [v18 callStackSymbols];
    v22 = [v21 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NUImageTransformAffine init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUGeometryTransform.m", 163, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

- (NUImageTransformAffine)initWithAffineTransform:(CGAffineTransform *)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v5;
  *&t1.tx = *&a3->tx;
  v6 = MEMORY[0x1E695EFD0];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&t2.a = *MEMORY[0x1E695EFD0];
  *&t2.c = v7;
  *&t2.tx = *(MEMORY[0x1E695EFD0] + 32);
  v8 = CGAffineTransformEqualToTransform(&t1, &t2);
  v41.receiver = self;
  v41.super_class = NUImageTransformAffine;
  v9 = [(NUImageTransformAffine *)&v41 init];
  v10 = v9;
  if (v9)
  {
    v12 = *&a3->c;
    v11 = *&a3->tx;
    *(v9 + 56) = *&a3->a;
    *(v9 + 72) = v12;
    *(v9 + 88) = v11;
    v13 = v9 + 8;
    if (v8)
    {
      v14 = *v6;
      v15 = v6[2];
      *(v9 + 24) = v6[1];
      *(v9 + 40) = v15;
      *v13 = v14;
      return v10;
    }

    v16 = *&a3->c;
    *&t2.a = *&a3->a;
    *&t2.c = v16;
    *&t2.tx = *&a3->tx;
    CGAffineTransformInvert(&t1, &t2);
    v17 = *&t1.a;
    v18 = *&t1.tx;
    *(v10 + 24) = *&t1.c;
    *(v10 + 40) = v18;
    *v13 = v17;
    if (fabs(*(v10 + 1) * *(v10 + 4) - *(v10 + 2) * *(v10 + 3)) > 1.0e-12)
    {
      return v10;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_21385);
    }

    v19 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = v19;
      v22 = [v20 stringWithFormat:@"Supplied transform is not invertible"];
      LODWORD(t1.a) = 138543362;
      *(&t1.a + 4) = v22;
      _os_log_impl(&dword_1C0184000, v21, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", &t1, 0xCu);

      v23 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v23 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_21385);
        }

        goto LABEL_12;
      }

      if (v23 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_21385);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_12:
      v24 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = specific;
        v32 = v24;
        v33 = [v30 callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        LODWORD(t1.a) = 138543618;
        *(&t1.a + 4) = specific;
        WORD2(t1.b) = 2114;
        *(&t1.b + 6) = v34;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &t1, 0x16u);
      }

LABEL_18:
      _NUAssertContinueHandler("[NUImageTransformAffine initWithAffineTransform:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUGeometryTransform.m", 154, @"Supplied transform is not invertible", v25, v26, v27, v28, v41.receiver);
      return v10;
    }

    v35 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v37 = MEMORY[0x1E696AF00];
      v38 = v35;
      v39 = [v37 callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      LODWORD(t1.a) = 138543362;
      *(&t1.a + 4) = v40;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &t1, 0xCu);
    }

    goto LABEL_18;
  }

  return v10;
}

@end