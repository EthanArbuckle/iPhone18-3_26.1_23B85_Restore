@interface NUTrimNode
- (BOOL)requiresVideoComposition;
- (NUTrimNode)initWithSettings:(id)a3 inputs:(id)a4;
- (NUTrimNode)initWithTimeRange:(id *)a3 input:(id)a4;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateVideo:(id *)a3;
- (id)_evaluateVideoAttributes:(id *)a3;
- (id)_evaluateVideoComposition:(id *)a3;
- (id)_evaluateVideoProperties:(id *)a3;
- (id)_transformWithError:(id *)a3;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation NUTrimNode

- (id)_evaluateVideoAttributes:(id *)a3
{
  v4 = [NUVideoAttributes alloc];
  [(NUTrimNode *)self range];
  v9 = v7;
  v10 = v8;
  v5 = [(NUVideoAttributes *)v4 initWithDuration:&v9];

  return v5;
}

- (id)_evaluateVideoProperties:(id *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = NUAssertLogger_5458();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(range.start.value) = 138543362;
      *(&range.start.value + 4) = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &range, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_5458();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        LODWORD(range.start.value) = 138543618;
        *(&range.start.value + 4) = v16;
        LOWORD(range.start.flags) = 2114;
        *(&range.start.flags + 2) = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &range, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      LODWORD(range.start.value) = 138543362;
      *(&range.start.value + 4) = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &range, 0xCu);
    }

    _NUAssertFailHandler("[NUTrimNode _evaluateVideoProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Time.m", 178, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "error != NULL");
  }

  v29.receiver = self;
  v29.super_class = NUTrimNode;
  v5 = [(NURenderNode *)&v29 _evaluateVideoProperties:?];
  v6 = v5;
  if (v5)
  {
    memset(&v28, 0, sizeof(v28));
    [v5 livePhotoKeyFrameTime];
    if (0 >> 96)
    {
      [(NUTrimNode *)self range];
      time = v28;
      if (CMTimeRangeContainsTime(&range, &time))
      {
        memset(&range, 0, 24);
        [(NUTrimNode *)self range];
        time = v26;
        lhs = v28;
        CMTimeSubtract(&range.start, &lhs, &time);
        v7 = [[_NUVideoProperties alloc] initWithProperties:v6];
        time = range.start;
        [(_NUVideoProperties *)v7 setLivePhotoKeyFrameTime:&time];
      }

      else
      {
        [NUError rangeError:@"keyframe time outside trim range" object:self];
        *a3 = v7 = 0;
      }
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_evaluateVideo:(id *)a3
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v13 = NUAssertLogger_5458();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v32 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_5458();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        v23 = [v21 callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v20;
        v33 = 2114;
        v34 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUTrimNode _evaluateVideo:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Time.m", 156, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "error != nil");
  }

  v30.receiver = self;
  v30.super_class = NUTrimNode;
  v5 = [(NURenderNode *)&v30 _evaluateVideo:?];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 tracks];
    [(NUTrimNode *)self range];
    v29 = 0;
    v9 = [NUVideoUtilities trimCompositionTracks:v8 toRange:buf error:&v29];
    v10 = v29;

    if (v9)
    {
      v11 = v7;
    }

    else
    {
      [NUError errorWithCode:1 reason:@"failed to trim output video to range" object:self underlyingError:v10];
      *a3 = v11 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"[NUTrimNode _evaluateVideo] failed to get new composition" object:0];
    *a3 = v11 = 0;
  }

  return v11;
}

- (id)_evaluateVideoComposition:(id *)a3
{
  v71 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v42 = NUAssertLogger_5458();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v43;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v45 = NUAssertLogger_5458();
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v46)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        v52 = [v50 callStackSymbols];
        v53 = [v52 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v49;
        *&buf[12] = 2114;
        *&buf[14] = v53;
        _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      v47 = [MEMORY[0x1E696AF00] callStackSymbols];
      v48 = [v47 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v48;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUTrimNode _evaluateVideoComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Time.m", 108, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "error != NULL");
  }

  v5 = [(NURenderNode *)self outputVideo:?];
  if (v5)
  {
    v6 = [NUVideoUtilities firstEnabledVideoTrackInAsset:v5 error:a3];
    if (v6)
    {
      v7 = [(NURenderNode *)self inputs];
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

      v9 = [v8 outputVideoComposition:a3];
      if (v9)
      {
        v60 = v8;
        v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v59 = v9;
        v10 = [v9 instructions];
        v11 = [v10 countByEnumeratingWithState:&v63 objects:v70 count:16];
        if (!v11)
        {
          goto LABEL_34;
        }

        v12 = v11;
        v13 = *v64;
        while (1)
        {
          v14 = 0;
          do
          {
            if (*v64 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v63 + 1) + 8 * v14);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (_NULogOnceToken != -1)
              {
                dispatch_once(&_NULogOnceToken, &__block_literal_global_5478);
              }

              v26 = _NUAssertLogger;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected instruction type"];
                *buf = 138543362;
                *&buf[4] = v27;
                _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
              }

              v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
              if (_NULogOnceToken != -1)
              {
                dispatch_once(&_NULogOnceToken, &__block_literal_global_5478);
              }

              v29 = _NUAssertLogger;
              v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
              if (v28)
              {
                if (v30)
                {
                  v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
                  v34 = MEMORY[0x1E696AF00];
                  v35 = v33;
                  v36 = [v34 callStackSymbols];
                  v37 = [v36 componentsJoinedByString:@"\n"];
                  *buf = 138543618;
                  *&buf[4] = v33;
                  *&buf[12] = 2114;
                  *&buf[14] = v37;
                  _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
                }
              }

              else if (v30)
              {
                v31 = [MEMORY[0x1E696AF00] callStackSymbols];
                v32 = [v31 componentsJoinedByString:@"\n"];
                *buf = 138543362;
                *&buf[4] = v32;
                _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
              }

              _NUAssertFailHandler("[NUTrimNode _evaluateVideoComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Time.m", 132, @"Unexpected instruction type", v38, v39, v40, v41, v58);
            }

            memset(buf, 0, 48);
            if (v15)
            {
              [v15 timeRange];
            }

            else
            {
              v68 = 0uLL;
              memset(time1, 0, sizeof(time1));
            }

            [v6 timeRange];
            [NUVideoUtilities conformRange:time1 inRange:&time2];
            v16 = buf[12];
            if ((buf[12] & 1) == 0)
            {
              goto LABEL_15;
            }

            v18 = *&buf[36];
            v19 = buf[36] & 1;
            v20 = *&buf[40];
            v21 = *&buf[24];
            if ((buf[36] & 1) != 0 && !*&buf[40] && (*&buf[24] & 0x8000000000000000) == 0)
            {
              *time1 = *&buf[24];
              *&time1[16] = *&buf[40];
              time2 = **&MEMORY[0x1E6960CC0];
              if (!CMTimeCompare(time1, &time2))
              {
                goto LABEL_15;
              }

              v16 = buf[12];
              if ((buf[12] & 1) == 0)
              {
                goto LABEL_15;
              }

              v18 = *&buf[36];
              v20 = *&buf[40];
              v21 = *&buf[24];
              v19 = buf[36] & 1;
            }

            if ((~v18 & 0x11) != 0 && (v16 & 0x11) != 0x11 && v19 && !v20 && (v21 & 0x8000000000000000) == 0)
            {
              v22 = [v15 copy];
              *time1 = *buf;
              *&time1[16] = *&buf[16];
              v68 = *&buf[32];
              [v22 setTimeRange:time1];
              [v61 addObject:v22];

              goto LABEL_19;
            }

LABEL_15:
            if (_NULogOnceToken != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_103_5501);
            }

            v17 = _NULogger;
            if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
            {
              *time1 = 138412290;
              *&time1[4] = v15;
              _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Instruction <%@> does not conform to trim range - skipping", time1, 0xCu);
            }

LABEL_19:
            ++v14;
          }

          while (v12 != v14);
          v23 = [v10 countByEnumeratingWithState:&v63 objects:v70 count:16];
          v12 = v23;
          if (!v23)
          {
LABEL_34:

            v9 = v59;
            v24 = [v59 mutableCopy];
            [v24 setInstructions:v61];

            v8 = v60;
            goto LABEL_38;
          }
        }
      }

      v24 = 0;
LABEL_38:
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)requiresVideoComposition
{
  v2 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v3 = [v2 requiresVideoComposition];

  return v3;
}

- (id)_evaluateImage:(id *)a3
{
  v4 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v5 = [v4 outputImage:a3];

  return v5;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v11.receiver = self;
  v11.super_class = NUTrimNode;
  v7 = [(NURenderNode *)&v11 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];
  if (v7)
  {
    v9 = *&self->_range.start.epoch;
    v8 = *&self->_range.duration.timescale;
    *(v7 + 168) = *&self->_range.start.value;
    *(v7 + 184) = v9;
    *(v7 + 200) = v8;
  }

  return v7;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 evaluationMode] != 3)
  {
LABEL_7:
    v10 = v9;
    goto LABEL_11;
  }

  if (v9)
  {
    [v9 time];
    if ((BYTE4(v18) & 0x1D) == 1 && (self->_range.start.flags & 0x1D) == 1)
    {
      v10 = [v9 copy];

      if (v10)
      {
        [v10 time];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      rhs = self->_range.start;
      CMTimeAdd(&v16, &lhs, &rhs);
      lhs = v16;
      [v10 setTime:&lhs];
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v10 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
LABEL_11:
  v13.receiver = self;
  v13.super_class = NUTrimNode;
  v11 = [(NURenderNode *)&v13 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];

  return v11;
}

- (id)_transformWithError:(id *)a3
{
  v4 = [NUTimeTransformTrim alloc];
  v7 = *&self->_range.start.value;
  epoch = self->_range.start.epoch;
  v5 = [(NUTimeTransformTrim *)v4 initWithTrimBeginTime:&v7];

  return v5;
}

- (NUTrimNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_5478);
  }

  v8 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = v8;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    v14 = [v9 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v12, v13];
    *buf = 138543362;
    v35 = v14;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v15 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v15 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_5478);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_5478);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v16 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AF00];
      v18 = v16;
      v19 = [v17 callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v20;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v21 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = MEMORY[0x1E696AF00];
    v24 = specific;
    v25 = v21;
    v26 = [v23 callStackSymbols];
    v27 = [v26 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v35 = specific;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUTrimNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Time.m", 40, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

- (NUTrimNode)initWithTimeRange:(id *)a3 input:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696B098];
  v7 = *&a3->var0.var3;
  v17[0] = *&a3->var0.var0;
  v17[1] = v7;
  v17[2] = *&a3->var1.var1;
  v8 = a4;
  v9 = [v6 valueWithCMTimeRange:v17];
  v20 = @"range";
  v21[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v18 = *MEMORY[0x1E695FAB0];
  v19 = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v16.receiver = self;
  v16.super_class = NUTrimNode;
  v12 = [(NURenderNode *)&v16 initWithSettings:v10 inputs:v11];

  v14 = *&a3->var0.var3;
  v13 = *&a3->var1.var1;
  *(v12 + 168) = *&a3->var0.var0;
  *(v12 + 184) = v14;
  *(v12 + 200) = v13;

  return v12;
}

@end