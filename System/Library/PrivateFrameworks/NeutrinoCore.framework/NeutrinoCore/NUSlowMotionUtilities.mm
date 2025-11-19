@interface NUSlowMotionUtilities
+ (id)slowMotionAudioMixFromAsset:(id)a3 rate:(float)a4 range:(id *)a5 error:(id *)a6;
+ (id)slowMotionVideoFromAsset:(id)a3 rate:(float)a4 range:(id *)a5 error:(id *)a6;
+ (id)timeMapperForAssetDuration:(double)a3 rate:(float)a4 range:(id *)a5 error:(id *)a6;
@end

@implementation NUSlowMotionUtilities

+ (id)timeMapperForAssetDuration:(double)a3 rate:(float)a4 range:(id *)a5 error:(id *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    v12 = NUAssertLogger_3854();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_3854();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2114;
        *&buf[14] = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSlowMotionUtilities timeMapperForAssetDuration:rate:range:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/SlowMotion/NUSlowMotionUtilities.m", 77, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "error != NULL");
  }

  v7 = *&a5->var0.var3;
  *buf = *&a5->var0.var0;
  *&buf[16] = v7;
  v29 = *&a5->var1.var1;
  v8 = [MEMORY[0x1E69C0890] timeRangeMapperForSourceDuration:buf slowMotionRate:1 slowMotionTimeRange:a3 forExport:?];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    *a6 = [NUError unknownError:@"NUSlowMotionTimeRangeMapper is Nil. Insufficent in length / placement to allow for the desired slow down object:the original asset is returned and timing stays the same", 0];
  }

  return v9;
}

+ (id)slowMotionAudioMixFromAsset:(id)a3 rate:(float)a4 range:(id *)a5 error:(id *)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!a6)
  {
    v15 = NUAssertLogger_3854();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_3854();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v22;
        *&buf[12] = 2114;
        *&buf[14] = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSlowMotionUtilities slowMotionAudioMixFromAsset:rate:range:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/SlowMotion/NUSlowMotionUtilities.m", 51, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "error != NULL");
  }

  v10 = v9;
  v31 = 0;
  v11 = *&a5->var0.var3;
  *buf = *&a5->var0.var0;
  *&buf[16] = v11;
  v33 = *&a5->var1.var1;
  v12 = [MEMORY[0x1E69C0890] assetFromVideoAsset:v9 slowMotionRate:buf slowMotionTimeRange:1 forExport:&v31 outAudioMix:0 outTimeRangeMapper:{COERCE_DOUBLE(__PAIR64__(DWORD1(v33), LODWORD(a4)))}];
  v13 = v31;
  if (!v13)
  {
    if (v12 == v10)
    {
      v13 = objc_alloc_init(MEMORY[0x1E6987F18]);
    }

    else
    {
      [NUError unknownError:@"failed to process slow motion audio" object:v10];
      *a6 = v13 = 0;
    }
  }

  return v13;
}

+ (id)slowMotionVideoFromAsset:(id)a3 rate:(float)a4 range:(id *)a5 error:(id *)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!a6)
  {
    v16 = NUAssertLogger_3854();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_3854();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        v26 = [v24 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSlowMotionUtilities slowMotionVideoFromAsset:rate:range:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/SlowMotion/NUSlowMotionUtilities.m", 26, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "error != NULL");
  }

  v10 = v9;
  v11 = *&a5->var0.var3;
  *buf = *&a5->var0.var0;
  *&buf[16] = v11;
  v33 = *&a5->var1.var1;
  v12 = [MEMORY[0x1E69C0890] assetFromVideoAsset:v9 slowMotionRate:buf slowMotionTimeRange:1 forExport:0 outAudioMix:0 outTimeRangeMapper:{COERCE_DOUBLE(__PAIR64__(DWORD1(v33), LODWORD(a4)))}];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      goto LABEL_8;
    }

    v14 = @"slow motion asset is not an AVComposition";
  }

  else
  {
    v14 = @"failed to process slow motion video";
  }

  [NUError unknownError:v14 object:v10];
  *a6 = v13 = 0;
LABEL_8:

  return v13;
}

@end