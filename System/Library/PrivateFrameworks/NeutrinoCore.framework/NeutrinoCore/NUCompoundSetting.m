@interface NUCompoundSetting
+ (id)deserializeFromDictionary:(id)a3 error:(id *)a4;
+ (id)supportedAttributes;
- (BOOL)isValid:(id *)a3;
- (BOOL)serializeIntoDictionary:(id)a3 error:(id *)a4;
- (BOOL)validate:(id)a3 error:(id *)a4;
- (BOOL)validateAttribute:(id)a3 value:(id)a4 error:(id *)a5;
- (NUCompoundSetting)init;
- (NUCompoundSetting)initWithAttributes:(id)a3;
- (NUCompoundSetting)initWithProperties:(id)a3 attributes:(id)a4;
- (id)copy:(id)a3;
- (id)description;
- (id)deserialize:(id)a3 error:(id *)a4;
- (id)modelForProperty:(id)a3;
- (id)serialize:(id)a3 error:(id *)a4;
- (void)enumerateProperties:(id)a3;
@end

@implementation NUCompoundSetting

- (BOOL)serializeIntoDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  [v6 setObject:@"compound" forKeyedSubscript:@"isa"];
  properties = self->_properties;
  v13 = 0;
  v8 = [NUSetting serializeSettings:properties intoDictionary:v6 key:@"properties" error:&v13];
  v9 = v13;
  if (v8)
  {
    if ([(NUSetting *)self serializeAttributesIntoDictionary:v6 error:a4])
    {
      v10 = 1;
    }

    else
    {
      v11 = [(NUModel *)self attributes];
      *a4 = [NUError errorWithCode:1 reason:@"Failed to serialize attributes" object:v11 underlyingError:v9];

      v10 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to serialize properties" object:self->_properties underlyingError:v9];
    *a4 = v10 = 0;
  }

  return v10;
}

- (id)deserialize:(id)a3 error:(id *)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v20 = NUAssertLogger_25303();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v64 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_25303();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v34;
        v65 = 2114;
        v66 = v38;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompoundSetting deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 942, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "object != nil");
  }

  if (!a4)
  {
    v27 = NUAssertLogger_25303();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v64 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_25303();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v43;
        v65 = 2114;
        v66 = v47;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompoundSetting deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 943, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "error != NULL");
  }

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = a4;
    v53 = v7;
    v56 = v7;
    v55 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_properties, "count")}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = self->_properties;
    v8 = [(NSDictionary *)obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v59;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v59 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v58 + 1) + 8 * i);
          v13 = [(NSDictionary *)self->_properties objectForKeyedSubscript:v12];
          v14 = [v56 objectForKeyedSubscript:v12];
          if (v14)
          {
            v57 = 0;
            v15 = [v13 deserialize:v14 error:&v57];
            v16 = v57;
            if (!v15)
            {
              *v52 = [NUError errorWithCode:1 reason:@"Failed to deserialized property" object:v12 underlyingError:v16];

              v18 = 0;
              v17 = v55;
              goto LABEL_17;
            }

            [v55 setObject:v15 forKeyedSubscript:v12];
          }
        }

        v9 = [(NSDictionary *)obj countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v17 = v55;
    v18 = v55;
LABEL_17:

    v7 = v53;
  }

  else
  {
    [NUError mismatchError:@"Not a dictionary" object:v7];
    *a4 = v18 = 0;
  }

  return v18;
}

- (id)serialize:(id)a3 error:(id *)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v20 = NUAssertLogger_25303();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v63 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_25303();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v34;
        v64 = 2114;
        v65 = v38;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompoundSetting serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 892, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "object != nil");
  }

  if (!a4)
  {
    v27 = NUAssertLogger_25303();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v63 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_25303();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v43;
        v64 = 2114;
        v65 = v47;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompoundSetting serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 893, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "error != NULL");
  }

  v52 = a4;
  v7 = v6;
  v55 = v6;
  if (objc_opt_respondsToSelector())
  {
    v54 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_properties, "count")}];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = self->_properties;
    v8 = [(NSDictionary *)obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v8)
    {
      v9 = *v58;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v58 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v57 + 1) + 8 * v10);
        v12 = [v55 valueForKey:v11];
        v13 = [(NSDictionary *)self->_properties objectForKeyedSubscript:v11];
        v14 = v13;
        if (v12)
        {
          v56 = 0;
          v15 = [v13 serialize:v12 error:&v56];
          v16 = v56;
          if (!v15)
          {
            *v52 = [NUError errorWithCode:2 reason:@"Failed to serialize property" object:v11 underlyingError:v16];

LABEL_19:
            v18 = 0;
            v17 = v54;
            goto LABEL_20;
          }

          [v54 setObject:v15 forKeyedSubscript:v11];
        }

        else if ([v13 isRequired])
        {
          [NUError missingError:@"Missing required setting" object:v11];
          *v52 = v12 = 0;
          goto LABEL_19;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSDictionary *)obj countByEnumeratingWithState:&v57 objects:v61 count:16];
          if (v8)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    v17 = v54;
    v18 = v54;
LABEL_20:
  }

  else
  {
    [NUError unsupportedError:@"Object is not KVC compliant" object:v7];
    *v52 = v18 = 0;
  }

  return v18;
}

- (void)enumerateProperties:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v7 = NUAssertLogger_25303();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v26 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_25303();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v14;
        v27 = 2114;
        v28 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompoundSetting enumerateProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 882, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "block != nil");
  }

  properties = self->_properties;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __41__NUCompoundSetting_enumerateProperties___block_invoke;
  v23[3] = &unk_1E810B1E8;
  v24 = v4;
  v6 = v4;
  [(NSDictionary *)properties enumerateKeysAndObjectsUsingBlock:v23];
}

- (id)modelForProperty:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v8 = NUAssertLogger_25303();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_25303();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompoundSetting modelForProperty:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 875, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "name != nil");
  }

  v5 = v4;
  v6 = [(NSDictionary *)self->_properties objectForKeyedSubscript:v4];

  return v6;
}

- (id)copy:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v7 = NUAssertLogger_25303();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v24 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_25303();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v14;
        v25 = 2114;
        v26 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompoundSetting copy:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 866, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "object != nil");
  }

  v4 = v3;
  v5 = [v3 copy];

  return v5;
}

- (BOOL)validateAttribute:(id)a3 value:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"required"])
  {
    v17 = 0;
    v10 = [NUModel validateBool:v9 error:&v17];

    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v12 = v17;
      v13 = [NUError errorWithCode:2 reason:@"Invalid attribute value" object:v8 underlyingError:v12];
      v14 = v13;

      v11 = 0;
      *a5 = v13;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = NUCompoundSetting;
    v11 = [(NUSetting *)&v16 validateAttribute:v8 value:v9 error:a5];
  }

  return v11;
}

- (BOOL)isValid:(id *)a3
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v20 = NUAssertLogger_25303();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v45 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_25303();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v27;
        v46 = 2114;
        v47 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompoundSetting isValid:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 808, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "error != NULL");
  }

  v3 = a3;
  if (![(NSDictionary *)self->_properties count])
  {
    v18 = [NUError missingError:@"Missing properties" object:self];
    v19 = v18;
    result = 0;
    *v3 = v18;
    return result;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = self->_properties;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = *v40;
  v36 = v3;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v40 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v39 + 1) + 8 * i);
      v11 = objc_opt_class();
      v38 = 0;
      v12 = [v11 validatePropertyName:v10 error:&v38];
      v13 = v38;
      if ((v12 & 1) == 0)
      {
        *v36 = [NUError errorWithCode:2 reason:@"Invalid property name" object:self underlyingError:v13];
LABEL_16:

        return 0;
      }

      v14 = [(NSDictionary *)self->_properties objectForKeyedSubscript:v10];
      v37 = 0;
      v15 = [v14 isValid:&v37];
      v16 = v37;

      if ((v15 & 1) == 0)
      {
        *v36 = [NUError errorWithCode:2 reason:@"Invalid property setting" object:self underlyingError:v16];

        v13 = v16;
        goto LABEL_16;
      }
    }

    v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
    v3 = v36;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_12:

  return [(NUModel *)self validateAttributes:v3];
}

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v20 = NUAssertLogger_25303();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v62 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_25303();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v34;
        v63 = 2114;
        v64 = v38;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompoundSetting validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 765, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "object != nil");
  }

  if (!a4)
  {
    v27 = NUAssertLogger_25303();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v62 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_25303();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v43;
        v63 = 2114;
        v64 = v47;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompoundSetting validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 766, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "error != NULL");
  }

  v7 = v6;
  v52 = a4;
  v54 = v6;
  if (objc_opt_respondsToSelector())
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = self->_properties;
    v8 = [(NSDictionary *)obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v8)
    {
      v9 = *v57;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v57 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v56 + 1) + 8 * v10);
        v12 = [v54 valueForKey:v11];
        v13 = [(NSDictionary *)self->_properties objectForKeyedSubscript:v11];
        v14 = v13;
        if (v12)
        {
          v55 = 0;
          v15 = [v13 validate:v12 error:&v55];
          v16 = v55;
          v17 = v16;
          if ((v15 & 1) == 0)
          {
            *v52 = [NUError errorWithCode:2 reason:@"Invalid value for setting key" object:v11 underlyingError:v16];

LABEL_19:
            v18 = 0;
            goto LABEL_20;
          }
        }

        else if ([v13 isRequired])
        {
          [NUError missingError:@"Missing required setting" object:v11];
          *v52 = v12 = 0;
          goto LABEL_19;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSDictionary *)obj countByEnumeratingWithState:&v56 objects:v60 count:16];
          if (v8)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    v18 = 1;
LABEL_20:
  }

  else
  {
    [NUError unsupportedError:@"Object is not KVC compliant" object:v7];
    *a4 = v18 = 0;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUCompoundSetting *)self properties];
  v6 = [(NUModel *)self attributes];
  v7 = [v3 stringWithFormat:@"<%@ properties:%@ attributes:%@>", v4, v5, v6];

  return v7;
}

- (NUCompoundSetting)initWithProperties:(id)a3 attributes:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v13 = NUAssertLogger_25303();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "properties != nil"];
      *buf = 138543362;
      v31 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_25303();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        v23 = [v21 callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v20;
        v32 = 2114;
        v33 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompoundSetting initWithProperties:attributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 749, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "properties != nil");
  }

  v8 = v7;
  v29.receiver = self;
  v29.super_class = NUCompoundSetting;
  v9 = [(NUModel *)&v29 initWithAttributes:v7];
  v10 = [v6 copy];
  properties = v9->_properties;
  v9->_properties = v10;

  return v9;
}

- (NUCompoundSetting)initWithAttributes:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_25321);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v12 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_25321);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_25321);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v13 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = specific;
    v22 = v18;
    v23 = [v20 callStackSymbols];
    v24 = [v23 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v32 = specific;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUCompoundSetting initWithAttributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 744, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUCompoundSetting)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_25321);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_25321);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_25321);
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
  _NUAssertFailHandler("[NUCompoundSetting init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 739, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (id)deserializeFromDictionary:(id)a3 error:(id *)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v14 = NUAssertLogger_25303();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v49 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_25303();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        v31 = [v29 callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v28;
        v50 = 2114;
        v51 = v32;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUCompoundSetting deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 997, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "dictionary != nil");
  }

  if (!a4)
  {
    v21 = NUAssertLogger_25303();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v49 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_25303();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v25)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        v40 = [v38 callStackSymbols];
        v41 = [v40 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v37;
        v50 = 2114;
        v51 = v41;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUCompoundSetting deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 998, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "error != NULL");
  }

  v7 = v6;
  v47 = 0;
  v8 = [a1 deserializeSettingsFromDictionary:v6 key:@"properties" error:&v47];
  v9 = v47;
  if (v8)
  {
    v46 = 0;
    v10 = [a1 deserializeAttributesFromDictionary:v7 error:&v46];
    v11 = v46;

    if (v10)
    {
      v12 = [[a1 alloc] initWithProperties:v8 attributes:v10];
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to deserialize attributes" object:v7 underlyingError:v11];
      *a4 = v12 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to deserialize properties" object:v7 underlyingError:v9];
    *a4 = v12 = 0;
    v11 = v9;
  }

  return v12;
}

+ (id)supportedAttributes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"required";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end