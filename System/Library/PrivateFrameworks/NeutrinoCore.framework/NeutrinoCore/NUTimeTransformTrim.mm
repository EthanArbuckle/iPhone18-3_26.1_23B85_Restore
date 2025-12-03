@interface NUTimeTransformTrim
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transformTime:(SEL)time;
- (BOOL)isEqual:(id)equal;
- (NUTimeTransformTrim)init;
- (NUTimeTransformTrim)initWithTrimBeginTime:(id *)time;
- (id)description;
- (id)inverseTransform;
- (unint64_t)hash;
@end

@implementation NUTimeTransformTrim

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      p_beginTime = &self->_beginTime;
      if (equalCopy)
      {
        [(NUTimeTransformTrim *)equalCopy beginTime];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      v8 = *p_beginTime;
      v6 = CMTimeCompare(&v8, &time2) == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  beginTime = self->_beginTime;
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&beginTime)];
  v3 = 0x1D3550BEF245C7 * [v2 hash];

  return v3;
}

- (id)description
{
  time = self->_beginTime;
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NUTimeTransformTrim  beginTime=%f", CMTimeGetSeconds(&time)];

  return v2;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transformTime:(SEL)time
{
  lhs = *a4;
  beginTime = self->_beginTime;
  return CMTimeSubtract(retstr, &lhs, &beginTime);
}

- (id)inverseTransform
{
  memset(&v7, 0, sizeof(v7));
  beginTime = self->_beginTime;
  CMTimeMultiply(&v7, &beginTime, -1);
  selfCopy = self;
  beginTime = v7;
  v4 = [(NUTimeTransformTrim *)selfCopy initWithTrimBeginTime:&beginTime];

  return v4;
}

- (NUTimeTransformTrim)init
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
  _NUAssertFailHandler("[NUTimeTransformTrim init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUGeometryTransform.m", 629, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

- (NUTimeTransformTrim)initWithTrimBeginTime:(id *)time
{
  v6.receiver = self;
  v6.super_class = NUTimeTransformTrim;
  result = [(NUTimeTransformTrim *)&v6 init];
  if (result)
  {
    var3 = time->var3;
    *&result->_beginTime.value = *&time->var0;
    result->_beginTime.epoch = var3;
  }

  return result;
}

@end