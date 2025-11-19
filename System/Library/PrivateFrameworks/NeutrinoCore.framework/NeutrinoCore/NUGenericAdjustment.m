@interface NUGenericAdjustment
- (NSDictionary)settings;
- (NUGenericAdjustment)initWithAdjustmentSchema:(id)a3;
- (void)setSettings:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation NUGenericAdjustment

- (void)setValue:(id)a3 forKey:(id)a4
{
  settings = self->_settings;
  if (a3)
  {
    [(NSMutableDictionary *)settings setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)settings removeObjectForKey:a4];
  }
}

- (void)setSettings:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = NUAssertLogger_17098();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "settings != nil"];
      *buf = 138543362;
      v23 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger_17098();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v13 = MEMORY[0x1E696AF00];
        v14 = v12;
        v15 = [v13 callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v12;
        v24 = 2114;
        v25 = v16;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUGenericAdjustment setSettings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUAdjustment.m", 223, @"Invalid parameter not satisfying: %s", v17, v18, v19, v20, "settings != nil");
  }

  v21 = v4;
  [(NSMutableDictionary *)self->_settings setDictionary:v4];
}

- (NSDictionary)settings
{
  v2 = [(NSMutableDictionary *)self->_settings copy];

  return v2;
}

- (NUGenericAdjustment)initWithAdjustmentSchema:(id)a3
{
  v7.receiver = self;
  v7.super_class = NUGenericAdjustment;
  v3 = [(NUAdjustment *)&v7 initWithAdjustmentSchema:a3];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  settings = v3->_settings;
  v3->_settings = v4;

  return v3;
}

@end