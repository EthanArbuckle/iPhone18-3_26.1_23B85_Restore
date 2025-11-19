@interface NUGenericComposition
- (NSDictionary)contents;
- (NUGenericComposition)initWithCompositionSchema:(id)a3;
- (void)setContents:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation NUGenericComposition

- (void)setValue:(id)a3 forKey:(id)a4
{
  contents = self->_contents;
  if (a3)
  {
    [(NSMutableDictionary *)contents setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)contents removeObjectForKey:a4];
  }
}

- (NUGenericComposition)initWithCompositionSchema:(id)a3
{
  v7.receiver = self;
  v7.super_class = NUGenericComposition;
  v3 = [(NUComposition *)&v7 initWithCompositionSchema:a3];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  contents = v3->_contents;
  v3->_contents = v4;

  return v3;
}

- (void)setContents:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = NUAssertLogger_70();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "contents"];
      *buf = 138543362;
      v23 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger_70();
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

    _NUAssertFailHandler("[NUGenericComposition setContents:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUComposition.m", 199, @"Invalid parameter not satisfying: %s", v17, v18, v19, v20, "contents");
  }

  v21 = v4;
  [(NSMutableDictionary *)self->_contents setDictionary:v4];
}

- (NSDictionary)contents
{
  v2 = [(NSMutableDictionary *)self->_contents copy];

  return v2;
}

@end