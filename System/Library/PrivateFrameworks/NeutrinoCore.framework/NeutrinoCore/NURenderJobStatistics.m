@interface NURenderJobStatistics
+ (NSMutableDictionary)history;
+ (id)aggregateStatistics:(id)a3;
+ (void)addStatisticsToHistory:(id)a3 forJob:(id)a4 wasCanceled:(BOOL)a5;
+ (void)recordJobCreatedToHistory:(id)a3;
- (NSString)description;
- (double)completeDuration;
- (double)completeLatency;
- (double)duration;
- (double)lastRecordedTime;
- (double)latency;
- (double)prepareDuration;
- (double)prepareLatency;
- (double)renderDuration;
- (double)renderLatency;
- (double)replyLatency;
- (double)totalDuration;
- (void)renderJob:(id)a3 didRunStage:(int64_t)a4;
- (void)renderJob:(id)a3 willRunStage:(int64_t)a4;
@end

@implementation NURenderJobStatistics

- (NSString)description
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:2048];
  v4 = objc_opt_class();
  v5 = [(NURenderJobStatistics *)self dependencies];
  [v3 appendFormat:@"<%@:%p dependencies:%lu compiled: %s ", v4, self, objc_msgSend(v5, "count"), "Release"];

  [v3 appendFormat:@"{\n"];
  [(NURenderJobStatistics *)self prepareLatency];
  if (v6 == 0.0)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 0x28uLL, "%.2f millis", v6 * 1000.0);
  }

  [v3 appendFormat:@"  prepare     (wait) : %s\n", __str];
  [(NURenderJobStatistics *)self prepareDuration];
  if (v7 == 0.0)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 0x28uLL, "%.2f millis", v7 * 1000.0);
  }

  [v3 appendFormat:@"  prepare  (execute) : %s\n", __str];
  [(NURenderJobStatistics *)self renderLatency];
  if (v8 == 0.0)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 0x28uLL, "%.2f millis", v8 * 1000.0);
  }

  [v3 appendFormat:@"  render      (wait) : %s\n", __str];
  [(NURenderJobStatistics *)self renderDuration];
  if (v9 == 0.0)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 0x28uLL, "%.2f millis", v9 * 1000.0);
  }

  [v3 appendFormat:@"  render   (execute) : %s\n", __str];
  [(NURenderJobStatistics *)self completeLatency];
  if (v10 == 0.0)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 0x28uLL, "%.2f millis", v10 * 1000.0);
  }

  [v3 appendFormat:@"  complete    (wait) : %s\n", __str];
  [(NURenderJobStatistics *)self completeDuration];
  if (v11 == 0.0)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 0x28uLL, "%.2f millis", v11 * 1000.0);
  }

  [v3 appendFormat:@"  complete (execute) : %s\n", __str];
  [(NURenderJobStatistics *)self replyLatency];
  if (v12 == 0.0)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 0x28uLL, "%.2f millis", v12 * 1000.0);
  }

  [v3 appendFormat:@"  reply       (wait) : %s\n", __str];
  [v3 appendFormat:@"      -----------------------\n"];
  [(NURenderJobStatistics *)self latency];
  if (v13 == 0.0)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 0x28uLL, "%.2f millis", v13 * 1000.0);
  }

  [v3 appendFormat:@"  total       (wait) : %s\n", __str];
  [(NURenderJobStatistics *)self duration];
  if (v14 == 0.0)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 0x28uLL, "%.2f millis", v14 * 1000.0);
  }

  [v3 appendFormat:@"  total    (execute) : %s\n", __str];
  [(NURenderJobStatistics *)self duration];
  v16 = v15;
  [(NURenderJobStatistics *)self latency];
  v18 = v16 + v17;
  if (v18 == 0.0)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 0x28uLL, "%.2f millis", v18 * 1000.0);
  }

  [v3 appendFormat:@"  total              : %s\n", __str];
  [v3 appendFormat:@"      -----------------------\n"];
  [(NURenderJobStatistics *)self requestTime];
  __36__NURenderJobStatistics_description__block_invoke(__str, v19);
  [v3 appendFormat:@"  request    (start) : %s\n", __str];
  [(NURenderJobStatistics *)self willPrepareTime];
  __36__NURenderJobStatistics_description__block_invoke(__str, v20);
  [v3 appendFormat:@"  prepare    (start) : %s\n", __str];
  [(NURenderJobStatistics *)self didPrepareTime];
  __36__NURenderJobStatistics_description__block_invoke(__str, v21);
  [v3 appendFormat:@"  prepare      (end) : %s\n", __str];
  [(NURenderJobStatistics *)self willRenderTime];
  __36__NURenderJobStatistics_description__block_invoke(__str, v22);
  [v3 appendFormat:@"  render     (start) : %s\n", __str];
  [(NURenderJobStatistics *)self didRenderTime];
  __36__NURenderJobStatistics_description__block_invoke(__str, v23);
  [v3 appendFormat:@"  render       (end) : %s\n", __str];
  [(NURenderJobStatistics *)self willCompleteTime];
  __36__NURenderJobStatistics_description__block_invoke(__str, v24);
  [v3 appendFormat:@"  complete   (start) : %s\n", __str];
  [(NURenderJobStatistics *)self didCompleteTime];
  __36__NURenderJobStatistics_description__block_invoke(__str, v25);
  [v3 appendFormat:@"  complete     (end) : %s\n", __str];
  [(NURenderJobStatistics *)self responseTime];
  __36__NURenderJobStatistics_description__block_invoke(__str, v26);
  [v3 appendFormat:@"  response     (end) : %s\n", __str];
  [v3 appendFormat:@"} >\n"];

  return v3;
}

char *__36__NURenderJobStatistics_description__block_invoke(char *a1, long double a2)
{
  if (a2 == 0.0)
  {
    *a1 = 0;
  }

  else
  {
    v7 = a2;
    v3 = modf(a2, &__y);
    v4 = gmtime(&v7);
    strftime(a1, 0x28uLL, "%H:%M:%S", v4);
    snprintf(a1 + 8, 0x20uLL, " +%i", (v3 * 100000.0) % 100000);
  }

  return a1;
}

- (double)totalDuration
{
  [(NURenderJobStatistics *)self lastRecordedTime];
  v4 = v3;
  [(NURenderJobStatistics *)self requestTime];
  return v4 - v5;
}

- (double)lastRecordedTime
{
  result = self->_responseTime;
  if (result <= 0.0)
  {
    result = self->_didCompleteTime;
    if (result <= 0.0)
    {
      result = self->_willCompleteTime;
      if (result <= 0.0)
      {
        result = self->_didRenderTime;
        if (result <= 0.0)
        {
          result = self->_willRenderTime;
          if (result <= 0.0)
          {
            result = self->_didPrepareTime;
            if (result <= 0.0)
            {
              result = self->_willPrepareTime;
              if (result <= 0.0)
              {
                return fmax(self->_requestTime, 0.0);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (double)duration
{
  [(NURenderJobStatistics *)self prepareDuration];
  v4 = v3;
  [(NURenderJobStatistics *)self renderDuration];
  v6 = v4 + v5;
  [(NURenderJobStatistics *)self completeDuration];
  result = v6 + v7;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (double)latency
{
  [(NURenderJobStatistics *)self totalDuration];
  v4 = v3;
  [(NURenderJobStatistics *)self duration];
  result = v4 - v5;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (double)replyLatency
{
  responseTime = self->_responseTime;
  result = 0.0;
  if (responseTime != 0.0)
  {
    didCompleteTime = self->_didCompleteTime;
    if (didCompleteTime == 0.0)
    {
      didCompleteTime = self->_didRenderTime;
      if (didCompleteTime == 0.0)
      {
        didCompleteTime = self->_didPrepareTime;
        if (didCompleteTime == 0.0)
        {
          didCompleteTime = self->_requestTime;
        }
      }
    }

    return responseTime - didCompleteTime;
  }

  return result;
}

- (double)completeDuration
{
  result = self->_didCompleteTime - self->_willCompleteTime;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (double)completeLatency
{
  result = self->_willCompleteTime - self->_didRenderTime;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (double)renderDuration
{
  result = self->_didRenderTime - self->_willRenderTime;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (double)renderLatency
{
  result = self->_willRenderTime - self->_didPrepareTime;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (double)prepareDuration
{
  result = self->_didPrepareTime - self->_willPrepareTime;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (double)prepareLatency
{
  result = self->_willPrepareTime - self->_requestTime;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)renderJob:(id)a3 didRunStage:(int64_t)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = NUAbsoluteTime();
  if (a4 <= 3)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        [(NURenderJobStatistics *)self setDidPrepareTime:v7];
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
        }

        v8 = _NUScheduleLogger;
        if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
        {
          v9 = v8;
          [(NURenderJobStatistics *)self didPrepareTime];
          v11 = v10;
          [(NURenderJobStatistics *)self willPrepareTime];
          *buf = 134218240;
          v44 = v6;
          v45 = 2048;
          v46 = v11 - v12;
          v13 = "job %p didPrepare %0.4f s";
LABEL_24:
          _os_log_debug_impl(&dword_1C0184000, v9, OS_LOG_TYPE_DEBUG, v13, buf, 0x16u);

          goto LABEL_33;
        }
      }

      goto LABEL_33;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
    }

    v18 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = v18;
      v21 = [v19 stringWithFormat:@"Unexpected stage: %@", @"None"];
      *buf = 138543362;
      v44 = v21;
      _os_log_impl(&dword_1C0184000, v20, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v22 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v22 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
        }

        goto LABEL_26;
      }

      if (v22 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_26:
      v27 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = specific;
        v35 = v27;
        v36 = [v33 callStackSymbols];
        [v36 componentsJoinedByString:@"\n"];
        v37 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138543618;
        v44 = specific;
        v45 = 2114;
        v46 = v37;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_32:
      _NUAssertContinueHandler("[NURenderJobStatistics renderJob:didRunStage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1751, @"Unexpected stage: %@", v28, v29, v30, v31, @"None");
      goto LABEL_33;
    }

    v38 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v39 = MEMORY[0x1E696AF00];
      v40 = v38;
      v41 = [v39 callStackSymbols];
      v42 = [v41 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v42;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_32;
  }

  if (a4 == 4)
  {
    [(NURenderJobStatistics *)self setDidRenderTime:v7];
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
    }

    v23 = _NUScheduleLogger;
    if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
    {
      v9 = v23;
      [(NURenderJobStatistics *)self didRenderTime];
      v25 = v24;
      [(NURenderJobStatistics *)self willRenderTime];
      *buf = 134218240;
      v44 = v6;
      v45 = 2048;
      v46 = v25 - v26;
      v13 = "job %p didRender %0.4f s";
      goto LABEL_24;
    }
  }

  else if (a4 == 5)
  {
    [(NURenderJobStatistics *)self setDidCompleteTime:v7];
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
    }

    v14 = _NUScheduleLogger;
    if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
    {
      v9 = v14;
      [(NURenderJobStatistics *)self didCompleteTime];
      v16 = v15;
      [(NURenderJobStatistics *)self willCompleteTime];
      *buf = 134218240;
      v44 = v6;
      v45 = 2048;
      v46 = v16 - v17;
      v13 = "job %p didComplete %0.4f s";
      goto LABEL_24;
    }
  }

LABEL_33:
}

- (void)renderJob:(id)a3 willRunStage:(int64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = NUAbsoluteTime();
  if (a4 <= 4)
  {
    if (a4 == 1)
    {

      [(NURenderJobStatistics *)self setWillPrepareTime:v6];
    }

    else if (a4 == 4)
    {

      [(NURenderJobStatistics *)self setWillRenderTime:v6];
    }

    return;
  }

  if (a4 != 5)
  {
    if (a4 != 6)
    {
      return;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
    }

    v7 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = v7;
      v10 = [v8 stringWithFormat:@"Unexpected stage: %@", @"Done"];
      *buf = 138543362;
      v29 = v10;
      _os_log_impl(&dword_1C0184000, v9, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v11 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v11 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
        }

        goto LABEL_22;
      }

      if (v11 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_22:
      v12 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = specific;
        v20 = v12;
        v21 = [v18 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = specific;
        v30 = 2114;
        v31 = v22;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_28:
      _NUAssertContinueHandler("[NURenderJobStatistics renderJob:willRunStage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1718, @"Unexpected stage: %@", v13, v14, v15, v16, @"Done");
      return;
    }

    v23 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v24 = MEMORY[0x1E696AF00];
      v25 = v23;
      v26 = [v24 callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v27;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_28;
  }

  [(NURenderJobStatistics *)self setWillCompleteTime:v6];
}

+ (id)aggregateStatistics:(id)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v45 = NUAssertLogger_24345();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "stats != nil"];
      *buf = 138543362;
      v83 = v46;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v48 = NUAssertLogger_24345();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v49)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        v62 = [v60 callStackSymbols];
        v63 = [v62 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v59;
        v84 = 2114;
        v85 = v63;
        _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      v50 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [v50 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v51;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderJobStatistics aggregateStatistics:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1902, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "stats != nil");
  }

  v4 = v3;
  if (![v3 count])
  {
    v52 = NUAssertLogger_24345();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "stats.count != 0"];
      *buf = 138543362;
      v83 = v53;
      _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v55 = NUAssertLogger_24345();
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
    if (v54)
    {
      if (v56)
      {
        v68 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v69 = MEMORY[0x1E696AF00];
        v70 = v68;
        v71 = [v69 callStackSymbols];
        v72 = [v71 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v68;
        v84 = 2114;
        v85 = v72;
        _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v56)
    {
      v57 = [MEMORY[0x1E696AF00] callStackSymbols];
      v58 = [v57 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v58;
      _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderJobStatistics aggregateStatistics:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1903, @"Invalid parameter not satisfying: %s", v73, v74, v75, v76, "stats.count != 0");
  }

  v5 = objc_alloc_init(NURenderJobStatistics);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v78;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v78 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v77 + 1) + 8 * i);
        [(NURenderJobStatistics *)v5 requestTime];
        if (v12 == 0.0 || ([v11 requestTime], v14 = v13, -[NURenderJobStatistics requestTime](v5, "requestTime"), v14 < v15))
        {
          [v11 requestTime];
          [(NURenderJobStatistics *)v5 setRequestTime:?];
        }

        [(NURenderJobStatistics *)v5 willPrepareTime];
        if (v16 == 0.0 || ([v11 willPrepareTime], v18 = v17, -[NURenderJobStatistics willPrepareTime](v5, "willPrepareTime"), v18 < v19))
        {
          [v11 willPrepareTime];
          [(NURenderJobStatistics *)v5 setWillPrepareTime:?];
        }

        [(NURenderJobStatistics *)v5 didPrepareTime];
        if (v20 == 0.0 || ([v11 didPrepareTime], v22 = v21, -[NURenderJobStatistics didPrepareTime](v5, "didPrepareTime"), v22 < v23))
        {
          [v11 didPrepareTime];
          [(NURenderJobStatistics *)v5 setDidPrepareTime:?];
        }

        [(NURenderJobStatistics *)v5 willRenderTime];
        if (v24 == 0.0 || ([v11 willRenderTime], v26 = v25, -[NURenderJobStatistics willRenderTime](v5, "willRenderTime"), v26 < v27))
        {
          [v11 willRenderTime];
          [(NURenderJobStatistics *)v5 setWillRenderTime:?];
        }

        [(NURenderJobStatistics *)v5 didRenderTime];
        if (v28 == 0.0 || ([v11 didRenderTime], v30 = v29, -[NURenderJobStatistics didRenderTime](v5, "didRenderTime"), v30 > v31))
        {
          [v11 didRenderTime];
          [(NURenderJobStatistics *)v5 setDidRenderTime:?];
        }

        [(NURenderJobStatistics *)v5 willCompleteTime];
        if (v32 == 0.0 || ([v11 willCompleteTime], v34 = v33, -[NURenderJobStatistics willCompleteTime](v5, "willCompleteTime"), v34 > v35))
        {
          [v11 willCompleteTime];
          [(NURenderJobStatistics *)v5 setWillCompleteTime:?];
        }

        [(NURenderJobStatistics *)v5 didCompleteTime];
        if (v36 == 0.0 || ([v11 didCompleteTime], v38 = v37, -[NURenderJobStatistics didCompleteTime](v5, "didCompleteTime"), v38 > v39))
        {
          [v11 didCompleteTime];
          [(NURenderJobStatistics *)v5 setDidCompleteTime:?];
        }

        [(NURenderJobStatistics *)v5 responseTime];
        if (v40 != 0.0)
        {
          [v11 responseTime];
          v42 = v41;
          [(NURenderJobStatistics *)v5 responseTime];
          if (v42 <= v43)
          {
            continue;
          }
        }

        [v11 responseTime];
        [(NURenderJobStatistics *)v5 setResponseTime:?];
      }

      v8 = [v6 countByEnumeratingWithState:&v77 objects:v81 count:16];
    }

    while (v8);
  }

  [(NURenderJobStatistics *)v5 setDependencies:v6];

  return v5;
}

+ (void)recordJobCreatedToHistory:(id)a3
{
  v6 = a3;
  v3 = +[NURenderJobStatistics history];
  v4 = [v3 objectForKeyedSubscript:v6];

  if (!v4)
  {
    v4 = [[NURenderJobStatisticsHistory alloc] initHistoryForJobsWithName:v6 rollingHistoryMaxSize:50];
    v5 = +[NURenderJobStatistics history];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }

  [v4 recordJobCreated];
}

+ (void)addStatisticsToHistory:(id)a3 forJob:(id)a4 wasCanceled:(BOOL)a5
{
  v5 = a5;
  v18 = a3;
  v7 = a4;
  v8 = +[NURenderJobStatistics history];
  v9 = [v7 request];
  v10 = [v9 name];
  v11 = [v8 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v12 = [NURenderJobStatisticsHistory alloc];
    v13 = [v7 request];
    v14 = [v13 name];
    v11 = [(NURenderJobStatisticsHistory *)v12 initHistoryForJobsWithName:v14 rollingHistoryMaxSize:50];

    v15 = +[NURenderJobStatistics history];
    v16 = [v7 request];
    v17 = [v16 name];
    [v15 setObject:v11 forKeyedSubscript:v17];
  }

  [v11 addStatisticsToHistory:v18 wasCanceled:v5];
}

+ (NSMutableDictionary)history
{
  if (!_history && +[NUGlobalSettings renderJobDebugCapturePerfStatHistory])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = _history;
    _history = v2;
  }

  v4 = _history;

  return v4;
}

@end