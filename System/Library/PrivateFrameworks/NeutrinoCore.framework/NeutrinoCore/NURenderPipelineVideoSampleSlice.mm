@interface NURenderPipelineVideoSampleSlice
- (BOOL)containsMetadataSampleForKey:(id)key;
- (BOOL)containsVideoFrameForKey:(id)key;
- (NURenderPipelineVideoSampleSlice)initWithFrameTime:(id *)time;
- (NURenderPipelineVideoSampleSlice)initWithFrameTime:(id *)time videoFrames:(id)frames metadataSamples:(id)samples;
- (id)description;
@end

@implementation NURenderPipelineVideoSampleSlice

- (BOOL)containsMetadataSampleForKey:(id)key
{
  v3 = [(NURenderPipelineVideoSampleSlice *)self metadataSampleFromKey:key];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)containsVideoFrameForKey:(id)key
{
  v3 = [(NURenderPipelineVideoSampleSlice *)self videoFrameFromKey:key];
  v4 = v3 != 0;

  return v4;
}

- (NURenderPipelineVideoSampleSlice)initWithFrameTime:(id *)time videoFrames:(id)frames metadataSamples:(id)samples
{
  v71 = *MEMORY[0x1E69E9840];
  framesCopy = frames;
  samplesCopy = samples;
  if ((time->var2 & 1) == 0)
  {
    v18 = NUAssertLogger_1288();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CMTIME_IS_VALID(frameTime)"];
      *buf = 138543362;
      v68 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_1288();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        callStackSymbols = [v40 callStackSymbols];
        v43 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v39;
        v69 = 2114;
        v70 = v43;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineVideoSampleSlice initWithFrameTime:videoFrames:metadataSamples:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 322, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "CMTIME_IS_VALID(frameTime)");
  }

  if (!framesCopy)
  {
    v25 = NUAssertLogger_1288();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "videoFrames != nil"];
      *buf = 138543362;
      v68 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_1288();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        callStackSymbols3 = [v49 callStackSymbols];
        v52 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v48;
        v69 = 2114;
        v70 = v52;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineVideoSampleSlice initWithFrameTime:videoFrames:metadataSamples:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 323, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "videoFrames != nil");
  }

  v10 = samplesCopy;
  if (!samplesCopy)
  {
    v32 = NUAssertLogger_1288();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "metadataSamples != nil"];
      *buf = 138543362;
      v68 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_1288();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (v36)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v58 = MEMORY[0x1E696AF00];
        v59 = v57;
        callStackSymbols5 = [v58 callStackSymbols];
        v61 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v57;
        v69 = 2114;
        v70 = v61;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineVideoSampleSlice initWithFrameTime:videoFrames:metadataSamples:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 324, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, "metadataSamples != nil");
  }

  v66.receiver = self;
  v66.super_class = NURenderPipelineVideoSampleSlice;
  v11 = [(NURenderPipelineVideoSampleSlice *)&v66 init];
  v12 = [framesCopy copy];
  v13 = *(v11 + 1);
  *(v11 + 1) = v12;

  v14 = [v10 copy];
  v15 = *(v11 + 2);
  *(v11 + 2) = v14;

  v16 = *&time->var0;
  *(v11 + 5) = time->var3;
  *(v11 + 24) = v16;

  return v11;
}

- (NURenderPipelineVideoSampleSlice)initWithFrameTime:(id *)time
{
  v21 = *MEMORY[0x1E69E9840];
  if ((time->var2 & 1) == 0)
  {
    v4 = NUAssertLogger_1288();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CMTIME_IS_VALID(frameTime)"];
      LODWORD(buf.var0) = 138543362;
      *(&buf.var0 + 4) = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger_1288();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v12 = MEMORY[0x1E696AF00];
        v13 = v11;
        callStackSymbols = [v12 callStackSymbols];
        v15 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(buf.var0) = 138543618;
        *(&buf.var0 + 4) = v11;
        LOWORD(buf.var2) = 2114;
        *(&buf.var2 + 2) = v15;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v8)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(buf.var0) = 138543362;
      *(&buf.var0 + 4) = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineVideoSampleSlice initWithFrameTime:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 316, @"Invalid parameter not satisfying: %s", v16, v17, v18, v19, "CMTIME_IS_VALID(frameTime)");
  }

  buf = *time;
  return [(NURenderPipelineVideoSampleSlice *)self initWithFrameTime:&buf videoFrames:MEMORY[0x1E695E0F8] metadataSamples:MEMORY[0x1E695E0F8]];
}

- (id)description
{
  v33 = *MEMORY[0x1E69E9840];
  allKeys = [(NSDictionary *)self->_videoFrames allKeys];
  v4 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  time = self->_frameTime;
  v6 = *MEMORY[0x1E695E480];
  v7 = CMTimeCopyDescription(*MEMORY[0x1E695E480], &time);
  [v5 appendFormat:@"[(%@) videoFrames: ", v7];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v13 = __47__NURenderPipelineVideoSampleSlice_description__block_invoke(v8, v12);
        v14 = [(NSDictionary *)self->_videoFrames objectForKeyedSubscript:v12];
        v15 = v14;
        if (v14)
        {
          [v14 frameTime];
        }

        else
        {
          memset(&v26, 0, sizeof(v26));
        }

        time = v26;
        v16 = CMTimeCopyDescription(v6, &time);
        [v5 appendFormat:@"%@: %@ ", v13, v16];

        ++v11;
      }

      while (v9 != v11);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      v9 = v8;
    }

    while (v8);
  }

  [v5 appendString:@"\tmetadataSamples: "];
  metadataSamples = self->_metadataSamples;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __47__NURenderPipelineVideoSampleSlice_description__block_invoke_2;
  v22[3] = &unk_1E8109498;
  v18 = v5;
  selfCopy = self;
  v25 = &__block_literal_global_1392;
  v23 = v18;
  [(NSDictionary *)metadataSamples enumerateKeysAndObjectsUsingBlock:v22];
  [v18 appendString:@"]"];
  v19 = v18;

  return v18;
}

id __47__NURenderPipelineVideoSampleSlice_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 length];
  if (v3 >= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 substringToIndex:v4];

  return v5;
}

void __47__NURenderPipelineVideoSampleSlice_description__block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = *(v4 + 16);
  v6 = a2;
  v7 = v5(v4, v6);
  v8 = [*(a1[5] + 16) objectForKeyedSubscript:v6];

  if (v8)
  {
    [v8 frameTime];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  v9 = *MEMORY[0x1E695E480];
  time = v11;
  v10 = CMTimeCopyDescription(v9, &time);
  [v3 appendFormat:@"%@: %@ ", v7, v10];
}

@end