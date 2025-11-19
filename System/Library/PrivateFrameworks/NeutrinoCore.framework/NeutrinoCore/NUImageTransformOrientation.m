@interface NUImageTransformOrientation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToGeometryTransformOrientation:(id)a3;
- (BOOL)isIdentityImageTransform;
- (CGAffineTransform)transformMatrix:(_OWORD *)a3@<X8>;
- (CGPoint)transformPoint:(CGPoint)a3;
- (NUImageTransformOrientation)init;
- (NUImageTransformOrientation)initWithOrientation:(int64_t)a3 imageSize:(id)a4 imageOrigin:(id)a5;
- (id)description;
- (id)inverseTransform;
- (void)nu_updateDigest:(id)a3;
@end

@implementation NUImageTransformOrientation

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  orientation = self->_orientation;
  if ((orientation - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    orientation = 0;
  }

  v4 = *(&NUOrientationName_names + orientation);
  v5 = [v2 stringWithFormat:@"NUImageTransformOrientation: %@", v4];

  return v5;
}

- (void)nu_updateDigest:(id)a3
{
  v4 = a3;
  [v4 addCString:"NUImageTransformOrientation"];
  [v4 addBytes:&self->_orientation length:8];
}

- (BOOL)isEqualToGeometryTransformOrientation:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v7 = NUAssertLogger_21429();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "other != nil"];
      *buf = 138543362;
      v24 = v8;
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
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v14;
        v25 = 2114;
        v26 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageTransformOrientation isEqualToGeometryTransformOrientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUGeometryTransform.m", 594, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "other != nil");
  }

  v5 = self->_orientation == v4[5];

  return v5;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUImageTransformOrientation *)self isEqualToGeometryTransformOrientation:v4];
  }

  return v5;
}

- (BOOL)isIdentityImageTransform
{
  memset(&v4, 0, sizeof(v4));
  NUOrientationMakeTransformWithSizeAndOrigin(self->_orientation, self->_inputImageSize.width, self->_inputImageSize.height, self->_inputImageOrigin.x, self->_inputImageOrigin.y, &v4);
  v3 = v4;
  return CGAffineTransformIsIdentity(&v3);
}

- (CGAffineTransform)transformMatrix:(_OWORD *)a3@<X8>
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  result = NUOrientationMakeTransformWithSizeAndOrigin(a1[5], a1[1], a1[2], a1[3], a1[4], &v25);
  v6 = 0;
  *&v8 = *(&v25 + 1);
  *&v7 = v25;
  *(&v7 + 1) = v26;
  *&v9 = 0;
  *(&v9 + 1) = v27;
  *(&v8 + 1) = *(&v26 + 1);
  *&v10 = 0;
  *(&v10 + 1) = *(&v27 + 1);
  v12 = *a2;
  v11 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  v18 = a2[6];
  v17 = a2[7];
  v24[0] = v7;
  v24[1] = v9;
  v24[2] = v8;
  v24[3] = v10;
  v19 = *(MEMORY[0x1E69E9B08] + 80);
  v24[4] = *(MEMORY[0x1E69E9B08] + 64);
  v24[5] = v19;
  v20 = *(MEMORY[0x1E69E9B08] + 112);
  v24[6] = *(MEMORY[0x1E69E9B08] + 96);
  v24[7] = v20;
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
    v22 = v24[v6];
    v21 = v24[v6 + 1];
    v23 = &a3[v6];
    *v23 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v12, v22.f64[0]), v14, v22, 1), v16, v21.f64[0]), v18, v21, 1);
    v23[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v11, v22.f64[0]), v13, v22, 1), v15, v21.f64[0]), v17, v21, 1);
    v6 += 2;
  }

  while (v6 != 8);
  return result;
}

- (CGPoint)transformPoint:(CGPoint)a3
{
  v31 = *MEMORY[0x1E69E9840];
  width = self->_inputImageSize.width;
  if (width < 1 || (height = self->_inputImageSize.height, height <= 0))
  {
    v10 = NUAssertLogger_21429();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid image size"];
      LODWORD(buf[0].f64[0]) = 138543362;
      *(buf[0].f64 + 4) = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_21429();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        LODWORD(buf[0].f64[0]) = 138543618;
        *(buf[0].f64 + 4) = v17;
        WORD2(buf[0].f64[1]) = 2114;
        *(&buf[0].f64[1] + 6) = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      LODWORD(buf[0].f64[0]) = 138543362;
      *(buf[0].f64 + 4) = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageTransformOrientation transformPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUGeometryTransform.m", 551, @"invalid image size", v22, v23, v24, v25, v26);
  }

  y = a3.y;
  x = a3.x;
  orientation = self->_orientation;
  v6 = self->_inputImageOrigin.x;
  v7 = self->_inputImageOrigin.y;
  v30 = 0u;
  memset(buf, 0, sizeof(buf));
  NUOrientationMakeTransformWithSizeAndOrigin(orientation, width, height, v6, v7, buf);
  v8 = vaddq_f64(v30, vmlaq_n_f64(vmulq_n_f64(buf[1], y), buf[0], x));
  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

- (id)inverseTransform
{
  orientation = self->_orientation;
  v4 = 6;
  if (orientation != 8)
  {
    v4 = self->_orientation;
  }

  if (orientation == 6)
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  v7 = NUOrientationTransformImageSize(v5, self->_inputImageSize.width, self->_inputImageSize.height);
  x = self->_inputImageOrigin.x;
  y = self->_inputImageOrigin.y;
  if ((v5 - 5) >= 4)
  {
    v10 = self->_inputImageOrigin.x;
  }

  else
  {
    v10 = self->_inputImageOrigin.y;
  }

  if ((v5 - 5) >= 4)
  {
    v11 = y;
  }

  else
  {
    v11 = x;
  }

  v12 = [[NUImageTransformOrientation alloc] initWithOrientation:v5 imageSize:v7 imageOrigin:v6, v10, v11];

  return v12;
}

- (NUImageTransformOrientation)initWithOrientation:(int64_t)a3 imageSize:(id)a4 imageOrigin:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  if ((a3 - 1) >= 8)
  {
    v11 = NUAssertLogger_21429();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUOrientationIsValid(orientation)"];
      *buf = 138543362;
      v29 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
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
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageTransformOrientation initWithOrientation:imageSize:imageOrigin:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUGeometryTransform.m", 527, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "NUOrientationIsValid(orientation)");
  }

  var1 = a5.var1;
  var0 = a5.var0;
  v7 = a4.var1;
  v8 = a4.var0;
  v27.receiver = self;
  v27.super_class = NUImageTransformOrientation;
  result = [(NUImageTransformOrientation *)&v27 init];
  result->_inputImageSize.width = v8;
  result->_inputImageSize.height = v7;
  result->_inputImageOrigin.x = var0;
  result->_inputImageOrigin.y = var1;
  result->_orientation = a3;
  return result;
}

- (NUImageTransformOrientation)init
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_21385);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_21385);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_21385);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      v12 = [v10 callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    v19 = [v16 callStackSymbols];
    v20 = [v19 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NUImageTransformOrientation init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUGeometryTransform.m", 518, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

@end