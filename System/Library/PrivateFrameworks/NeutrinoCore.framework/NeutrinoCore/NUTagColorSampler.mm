@interface NUTagColorSampler
- (NUTagColorSampler)initWithComposition:(id)composition tag:(id)tag responseQueue:(id)queue;
- (id)_pipelineFilters;
@end

@implementation NUTagColorSampler

- (id)_pipelineFilters
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [NURenderPipelineFilter stopAtTagFilter:self->_tag];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (NUTagColorSampler)initWithComposition:(id)composition tag:(id)tag responseQueue:(id)queue
{
  v68 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  tagCopy = tag;
  queueCopy = queue;
  if (!compositionCopy)
  {
    v15 = NUAssertLogger_14028();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v65 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_14028();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols = [v37 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v36;
        v66 = 2114;
        v67 = v40;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUTagColorSampler initWithComposition:tag:responseQueue:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Sampler/NUTagColorSampler.m", 23, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "composition != nil");
  }

  if (!tagCopy)
  {
    v22 = NUAssertLogger_14028();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "tag != nil"];
      *buf = 138543362;
      v65 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_14028();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (v26)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        callStackSymbols3 = [v46 callStackSymbols];
        v49 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v45;
        v66 = 2114;
        v67 = v49;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUTagColorSampler initWithComposition:tag:responseQueue:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Sampler/NUTagColorSampler.m", 24, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "tag != nil");
  }

  v11 = queueCopy;
  if (!queueCopy)
  {
    v29 = NUAssertLogger_14028();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "responseQueue != nil"];
      *buf = 138543362;
      v65 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_14028();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v33)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols5 = [v55 callStackSymbols];
        v58 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v54;
        v66 = 2114;
        v67 = v58;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUTagColorSampler initWithComposition:tag:responseQueue:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Sampler/NUTagColorSampler.m", 25, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "responseQueue != nil");
  }

  v63.receiver = self;
  v63.super_class = NUTagColorSampler;
  v12 = [(NUColorSampler *)&v63 initWithComposition:compositionCopy responseQueue:queueCopy];
  tag = v12->_tag;
  v12->_tag = tagCopy;

  return v12;
}

@end