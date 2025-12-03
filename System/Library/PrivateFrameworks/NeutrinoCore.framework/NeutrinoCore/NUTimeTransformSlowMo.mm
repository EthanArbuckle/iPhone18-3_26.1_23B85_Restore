@interface NUTimeTransformSlowMo
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transformTime:(SEL)time;
- (BOOL)isEqual:(id)equal;
- (NUTimeTransformSlowMo)init;
- (NUTimeTransformSlowMo)initWithSlowMoBeginTime:(id *)time endTime:(id *)endTime rate:(float)rate assetDuration:(double)duration;
- (NUTimeTransformSlowMo)initWithSlowMoTimeMapper:(id)mapper isInverse:(BOOL)inverse;
- (id)inverseTransform;
@end

@implementation NUTimeTransformSlowMo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      timeMapper = self->_timeMapper;
      timeMapper = [(NUTimeTransformSlowMo *)v5 timeMapper];
      if (timeMapper == timeMapper)
      {
        isInverse = self->_isInverse;
        v8 = isInverse == [(NUTimeTransformSlowMo *)v5 isInverse];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transformTime:(SEL)time
{
  timeMapper = self->_timeMapper;
  if (self->_isInverse)
  {
    v10 = *a4;
    Seconds = CMTimeGetSeconds(&v10);
    *&Seconds = Seconds;
    [(NUSlowMotionTimeRangeMapper *)timeMapper originalTimeForScaledTime:Seconds];
  }

  else
  {
    v10 = *a4;
    v8 = CMTimeGetSeconds(&v10);
    *&v8 = v8;
    [(NUSlowMotionTimeRangeMapper *)timeMapper scaledTimeForOriginalTime:v8];
  }

  return CMTimeMakeWithSeconds(retstr, v7, 1000000);
}

- (id)inverseTransform
{
  selfCopy = self;
  v3 = [(NUTimeTransformSlowMo *)selfCopy initWithSlowMoTimeMapper:selfCopy->_timeMapper isInverse:!selfCopy->_isInverse];

  return v3;
}

- (NUTimeTransformSlowMo)init
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
  _NUAssertFailHandler("[NUTimeTransformSlowMo init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUGeometryTransform.m", 717, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

- (NUTimeTransformSlowMo)initWithSlowMoTimeMapper:(id)mapper isInverse:(BOOL)inverse
{
  mapperCopy = mapper;
  v12.receiver = self;
  v12.super_class = NUTimeTransformSlowMo;
  v8 = [(NUTimeTransformSlowMo *)&v12 init];
  v9 = v8;
  if (v8 && (v8->_isInverse = inverse, objc_storeStrong(&v8->_timeMapper, mapper), !v9->_timeMapper))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (NUTimeTransformSlowMo)initWithSlowMoBeginTime:(id *)time endTime:(id *)endTime rate:(float)rate assetDuration:(double)duration
{
  v22 = *MEMORY[0x1E69E9840];
  memset(&v20, 0, sizeof(v20));
  lhs = *endTime;
  rhs = *time;
  CMTimeSubtract(&duration.start, &lhs, &rhs);
  lhs = *time;
  CMTimeRangeMake(&v20, &lhs, &duration.start);
  v17 = 0;
  duration = v20;
  v10 = [NUSlowMotionUtilities timeMapperForAssetDuration:&duration rate:&v17 range:duration error:COERCE_DOUBLE(__PAIR64__(HIDWORD(v20.start.epoch), LODWORD(rate)))];
  v11 = v17;
  if (v11)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_179_21584);
    }

    v12 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEBUG))
    {
      v15 = v12;
      v16 = [v11 description];
      LODWORD(duration.start.value) = 138412290;
      *(&duration.start.value + 4) = v16;
      _os_log_debug_impl(&dword_1C0184000, v15, OS_LOG_TYPE_DEBUG, "%@", &duration, 0xCu);
    }
  }

  v13 = [(NUTimeTransformSlowMo *)self initWithSlowMoTimeMapper:v10 isInverse:0];

  return v13;
}

@end