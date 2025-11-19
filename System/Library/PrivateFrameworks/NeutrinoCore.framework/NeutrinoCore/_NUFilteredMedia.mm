@interface _NUFilteredMedia
- (_NUFilteredMedia)filteredMediaWithRenderNode:(id)a3 geometry:(id)a4;
- (_NUFilteredMedia)initWithBaseMedia:(id)a3 renderNode:(id)a4;
@end

@implementation _NUFilteredMedia

- (_NUFilteredMedia)filteredMediaWithRenderNode:(id)a3 geometry:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [_NUFilteredMedia alloc];
  v9 = [(_NUComposedMedia *)self baseMedia];
  v10 = [(_NURenderMedia *)v8 initWithBaseMedia:v9 renderNode:v7 geometry:v6];

  return v10;
}

- (_NUFilteredMedia)initWithBaseMedia:(id)a3 renderNode:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = NUAssertLogger_2109();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "[(id)baseMedia isKindOfClass:_NUFilteredMedia.class] == NO"];
      *buf = 138543362;
      v28 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_2109();
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
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUFilteredMedia initWithBaseMedia:renderNode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 291, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "[(id)baseMedia isKindOfClass:_NUFilteredMedia.class] == NO");
  }

  v26.receiver = self;
  v26.super_class = _NUFilteredMedia;
  v8 = [(_NURenderMedia *)&v26 initWithBaseMedia:v6 renderNode:v7];

  return v8;
}

@end