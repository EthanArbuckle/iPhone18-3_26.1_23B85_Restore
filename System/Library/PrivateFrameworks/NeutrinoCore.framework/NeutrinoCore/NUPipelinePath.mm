@interface NUPipelinePath
+ (NUPipelinePath)currentPath;
+ (NUPipelinePath)rootPath;
+ (NUPipelinePath)superPath;
+ (id)pathFromString:(id)a3;
+ (void)resolvePathComponents:(id)a3 into:(id)a4;
- (BOOL)isAbsolute;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPath:(id)a3;
- (NUPipelinePath)init;
- (NUPipelinePath)initWithPathComponents:(id)a3;
- (id)debugDescription;
- (id)subpathFromString:(id)a3;
- (id)subpathWithPath:(id)a3;
@end

@implementation NUPipelinePath

- (BOOL)isEqualToPath:(id)a3
{
  v4 = a3;
  v5 = [(NUPipelinePath *)self components];
  v6 = [v4 components];

  LOBYTE(v4) = [v5 isEqualToArray:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUPipelinePath *)self isEqualToPath:v4];

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUPipelinePath *)self string];
  v6 = [v3 stringWithFormat:@"<%@:%p path:'%@'>", v4, self, v5];

  return v6;
}

- (id)subpathWithPath:(id)a3
{
  v4 = a3;
  v5 = [(NUPipelinePath *)self components];
  v6 = [v5 mutableCopy];

  v7 = [v4 components];

  [NUPipelinePath resolvePathComponents:v7 into:v6];
  v8 = [[NUPipelinePath alloc] initWithPathComponents:v6];

  return v8;
}

- (id)subpathFromString:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_5769();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "string != nil"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_5769();
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
        *buf = 138543618;
        v26 = v16;
        v27 = 2114;
        v28 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPipelinePath subpathFromString:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 133, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "string != nil");
  }

  v5 = v4;
  v6 = [NUPipelinePath pathFromString:v4];
  v7 = [(NUPipelinePath *)self subpathWithPath:v6];

  return v7;
}

- (BOOL)isAbsolute
{
  v2 = [(NSArray *)self->_components firstObject];
  v3 = [v2 type] == 3;

  return v3;
}

- (NUPipelinePath)initWithPathComponents:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v10 = NUAssertLogger_5769();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "components != nil"];
      *buf = 138543362;
      v44 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_5769();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v24;
        v45 = 2114;
        v46 = v28;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPipelinePath initWithPathComponents:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 113, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "components != nil");
  }

  v5 = v4;
  if (![v4 count])
  {
    v17 = NUAssertLogger_5769();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "components.count > 0"];
      *buf = 138543362;
      v44 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_5769();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v33;
        v45 = 2114;
        v46 = v37;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPipelinePath initWithPathComponents:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 114, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "components.count > 0");
  }

  v42.receiver = self;
  v42.super_class = NUPipelinePath;
  v6 = [(NUPipelinePath *)&v42 init];
  v7 = [v5 copy];
  components = v6->_components;
  v6->_components = v7;

  return v6;
}

- (NUPipelinePath)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
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
  _NUAssertFailHandler("[NUPipelinePath init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 109, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (NUPipelinePath)rootPath
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 alloc];
  v3 = +[NUPipelinePathComponent rootComponent];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 initWithPathComponents:v4];

  return v5;
}

+ (NUPipelinePath)superPath
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 alloc];
  v3 = +[NUPipelinePathComponent superComponent];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 initWithPathComponents:v4];

  return v5;
}

+ (NUPipelinePath)currentPath
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 alloc];
  v3 = +[NUPipelinePathComponent currentComponent];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 initWithPathComponents:v4];

  return v5;
}

+ (id)pathFromString:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v10 = NUAssertLogger_5769();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "string != nil"];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_5769();
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
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUPipelinePath pathFromString:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 89, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "string != nil");
  }

  v5 = v4;
  v6 = [NUPipelinePathComponent componentsFromString:v4];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  [a1 resolvePathComponents:v6 into:v7];
  v8 = [[a1 alloc] initWithPathComponents:v7];

  return v8;
}

+ (void)resolvePathComponents:(id)a3 into:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [v11 type];
        if (v12 > 1)
        {
          if (v12 != 2)
          {
            if (v12 != 3)
            {
              goto LABEL_23;
            }

            [v6 removeAllObjects];
LABEL_14:
            [v6 addObject:v11];
            goto LABEL_23;
          }

          v14 = [v6 lastObject];
          v13 = v14;
          if (v14)
          {
            v15 = [v14 type];
            switch(v15)
            {
              case 0:
                [v6 removeLastObject];
                if (![v6 count])
                {
                  v16 = +[NUPipelinePathComponent currentComponent];
                  [v6 addObject:v16];
                }

                goto LABEL_22;
              case 1:
                [v6 removeLastObject];
                break;
              case 2:
                break;
              default:
                goto LABEL_22;
            }
          }

LABEL_21:
          [v6 addObject:v11];
          goto LABEL_22;
        }

        if (!v12)
        {
          goto LABEL_14;
        }

        if (v12 != 1)
        {
          goto LABEL_23;
        }

        v13 = [v6 lastObject];
        if (!v13)
        {
          goto LABEL_21;
        }

LABEL_22:

LABEL_23:
        ++v10;
      }

      while (v8 != v10);
      v17 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v8 = v17;
    }

    while (v17);
  }
}

@end