@interface NUDisplay_iOS
+ (id)displays;
+ (id)mainDisplay;
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (BOOL)wideColor;
- (NSString)description;
- (NSString)name;
- (NUColorSpace)colorSpace;
- (NUDisplay_iOS)init;
- (NUDisplay_iOS)initWithCADisplay:(id)a3;
- (NUPixelFormat)pixelFormat;
@end

@implementation NUDisplay_iOS

- (NUColorSpace)colorSpace
{
  if (+[NUGlobalSettings displayForceDeepColor])
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_98);
    }

    v3 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C0184000, v3, OS_LOG_TYPE_INFO, "Deep color is forcibly enabled", v6, 2u);
    }

    v4 = +[NUColorSpace itur2100HLGColorSpace];
  }

  else
  {
    if ([(NUDisplay_iOS *)self wideColor])
    {
      +[NUColorSpace displayP3ColorSpace];
    }

    else
    {
      +[NUColorSpace sRGBColorSpace];
    }
    v4 = ;
  }

  return v4;
}

- (NUPixelFormat)pixelFormat
{
  if ([(NUDisplay_iOS *)self wideColor])
  {
    +[NUPixelFormat A2RGB10];
  }

  else
  {
    +[NUPixelFormat BGRA8];
  }
  v2 = ;

  return v2;
}

- (BOOL)wideColor
{
  v2 = [(CADisplay *)self->_display supportsExtendedColors];
  if (+[NUGlobalSettings displayDisableDeepColor])
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_98);
    }

    v3 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C0184000, v3, OS_LOG_TYPE_INFO, "Deep color is disabled", buf, 2u);
    }

    return 0;
  }

  else if (+[NUGlobalSettings displayForceDeepColor])
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_98);
    }

    v4 = _NULogger;
    v2 = 1;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C0184000, v4, OS_LOG_TYPE_INFO, "Deep color is forcibly enabled", v6, 2u);
    }
  }

  return v2;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  v2 = [(CADisplay *)self->_display currentMode];
  v3 = [v2 width];
  v4 = [v2 height];

  v5 = v3;
  v6 = v4;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (NSString)name
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CADisplay *)self->_display name];
  v5 = [(CADisplay *)self->_display deviceName];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (NSString)description
{
  v3 = [(NUDisplay_iOS *)self size];
  v5 = v4;
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = [(NUDisplay_iOS *)self identifier];
  v9 = [(NUDisplay_iOS *)self name];
  v10 = [(NUDisplay_iOS *)self pixelFormat];
  v11 = [(NUDisplay_iOS *)self colorSpace];
  v12 = [v11 name];
  v13 = [v6 stringWithFormat:@"<%@:%p id=%@ name=%@ size=%dx%d format: %@ space: %@>", v7, self, v8, v9, v3, v5, v10, v12];

  return v13;
}

- (NUDisplay_iOS)initWithCADisplay:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_12418();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "display != nil"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_12418();
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
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUDisplay_iOS initWithCADisplay:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Runtime/NUDisplay_iOS.m", 44, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "display != nil");
  }

  v5 = v4;
  v25.receiver = self;
  v25.super_class = NUDisplay_iOS;
  v6 = [(NUDisplay_iOS *)&v25 init];
  display = v6->_display;
  v6->_display = v5;

  return v6;
}

- (NUDisplay_iOS)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_12433);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_12433);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_12433);
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
  _NUAssertFailHandler("[NUDisplay_iOS init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Runtime/NUDisplay_iOS.m", 39, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (id)mainDisplay
{
  v2 = [NUDisplay_iOS alloc];
  v3 = [MEMORY[0x1E6979328] mainDisplay];
  v4 = [(NUDisplay_iOS *)v2 initWithCADisplay:v3];

  return v4;
}

+ (id)displays
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [MEMORY[0x1E6979328] displays];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[NUDisplay_iOS alloc] initWithCADisplay:*(*(&v10 + 1) + 8 * i)];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

@end