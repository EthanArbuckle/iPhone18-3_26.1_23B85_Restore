@interface NUDevice_iOS
- (NUDevice_iOS)initWithName:(id)name;
- (id)_newMetalRendererWithOptions:(id)options;
- (id)_newRendererWithCIContextOptions:(id)options error:(id *)error;
- (id)debugDescription;
- (int64_t)_preferredSampleMode;
- (unint64_t)family;
@end

@implementation NUDevice_iOS

- (id)_newMetalRendererWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [NUMetalRenderer alloc];
  metalDevice = [(NUDevice *)self metalDevice];
  v7 = [(NUMetalRenderer *)v5 initWithMetalDevice:metalDevice options:optionsCopy];

  return v7;
}

- (id)_newRendererWithCIContextOptions:(id)options error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (![(NUDevice *)self shouldRenderUsingMetal])
  {
    v8 = NUAssertLogger_12810();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Software renderer is unsupported"];
      *v24 = 138543362;
      *&v24[4] = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v24, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_12810();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v24 = 138543618;
        *&v24[4] = v15;
        v25 = 2114;
        v26 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v24, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v24 = 138543362;
      *&v24[4] = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v24, 0xCu);
    }

    _NUAssertFailHandler("[NUDevice_iOS _newRendererWithCIContextOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Runtime/NUDevice_iOS.m", 101, @"Software renderer is unsupported", v20, v21, v22, v23, *v24);
  }

  v6 = [(NUDevice_iOS *)self _newMetalRendererWithOptions:optionsCopy];

  return v6;
}

- (int64_t)_preferredSampleMode
{
  if ([(NUDevice_iOS *)self family]- 2 >= 7)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (unint64_t)family
{
  metalDevice = [(NUDevice *)self metalDevice];
  if ([metalDevice supportsFamily:1008])
  {
    v3 = 8;
  }

  else if ([metalDevice supportsFamily:1007])
  {
    v3 = 7;
  }

  else if ([metalDevice supportsFamily:1006])
  {
    v3 = 6;
  }

  else if ([metalDevice supportsFamily:1005])
  {
    v3 = 5;
  }

  else if ([metalDevice supportsFamily:1004])
  {
    v3 = 4;
  }

  else if ([metalDevice supportsFamily:1003])
  {
    v3 = 3;
  }

  else if ([metalDevice supportsFamily:1002])
  {
    v3 = 2;
  }

  else
  {
    v3 = [metalDevice supportsFamily:1001];
  }

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(NUDevice *)self name];
  model = [(NUDevice *)self model];
  metalDevice = [(NUDevice *)self metalDevice];
  v8 = [v3 stringWithFormat:@"<%@:%p name:%@ model:%@ metal: %@>", v4, self, name, model, metalDevice];

  return v8;
}

- (NUDevice_iOS)initWithName:(id)name
{
  nameCopy = name;
  v5 = MTLCreateSystemDefaultDevice();
  if (!v5)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_12828);
    }

    v6 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C0184000, v6, OS_LOG_TYPE_FAULT, "Failed to obtain default Metal device", buf, 2u);
    }
  }

  v9.receiver = self;
  v9.super_class = NUDevice_iOS;
  v7 = [(NUDevice *)&v9 initWithName:nameCopy model:@"Apple" metalDevice:v5];

  return v7;
}

@end