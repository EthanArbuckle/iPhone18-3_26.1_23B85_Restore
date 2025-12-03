@interface NUGenericAdjustment
- (NSDictionary)settings;
- (NUGenericAdjustment)initWithAdjustmentSchema:(id)schema;
- (void)setSettings:(id)settings;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation NUGenericAdjustment

- (void)setValue:(id)value forKey:(id)key
{
  settings = self->_settings;
  if (value)
  {
    [(NSMutableDictionary *)settings setObject:value forKey:key];
  }

  else
  {
    [(NSMutableDictionary *)settings removeObjectForKey:key];
  }
}

- (void)setSettings:(id)settings
{
  v26 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (!settingsCopy)
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
        callStackSymbols = [v13 callStackSymbols];
        v16 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v12;
        v24 = 2114;
        v25 = v16;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUGenericAdjustment setSettings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUAdjustment.m", 223, @"Invalid parameter not satisfying: %s", v17, v18, v19, v20, "settings != nil");
  }

  v21 = settingsCopy;
  [(NSMutableDictionary *)self->_settings setDictionary:settingsCopy];
}

- (NSDictionary)settings
{
  v2 = [(NSMutableDictionary *)self->_settings copy];

  return v2;
}

- (NUGenericAdjustment)initWithAdjustmentSchema:(id)schema
{
  v7.receiver = self;
  v7.super_class = NUGenericAdjustment;
  v3 = [(NUAdjustment *)&v7 initWithAdjustmentSchema:schema];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  settings = v3->_settings;
  v3->_settings = v4;

  return v3;
}

@end