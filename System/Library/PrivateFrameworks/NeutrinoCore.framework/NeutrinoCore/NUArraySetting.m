@interface NUArraySetting
+ (id)deserializeFromDictionary:(id)a3 error:(id *)a4;
+ (id)supportedAttributes;
- (BOOL)isValid:(id *)a3;
- (BOOL)serializeIntoDictionary:(id)a3 error:(id *)a4;
- (BOOL)validate:(id)a3 error:(id *)a4;
- (BOOL)validateAttribute:(id)a3 value:(id)a4 error:(id *)a5;
- (NUArraySetting)init;
- (NUArraySetting)initWithAttributes:(id)a3;
- (NUArraySetting)initWithContent:(id)a3 attributes:(id)a4;
- (id)copy:(id)a3;
- (id)copyArray:(id)a3;
- (id)description;
- (id)deserialize:(id)a3 error:(id *)a4;
- (id)serialize:(id)a3 error:(id *)a4;
@end

@implementation NUArraySetting

- (BOOL)serializeIntoDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  [v6 setObject:@"array" forKeyedSubscript:@"isa"];
  content = self->_content;
  v12 = 0;
  v8 = [(NUModel *)content serializeAsDictionary:&v12];
  v9 = v12;
  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:@"content"];
    v10 = [(NUSetting *)self serializeAttributesIntoDictionary:v6 error:a4];
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to serialized array content" object:self->_content underlyingError:v9];
    *a4 = v10 = 0;
  }

  return v10;
}

- (id)deserialize:(id)a3 error:(id *)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v21 = NUAssertLogger_25303();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v61 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_25303();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v61 = v35;
        v62 = 2114;
        v63 = v39;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v61 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1192, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "object != nil");
  }

  if (!a4)
  {
    v28 = NUAssertLogger_25303();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v61 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_25303();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v61 = v44;
        v62 = 2114;
        v63 = v48;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v61 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1193, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "error != NULL");
  }

  v7 = v6;
  if ([NUModel validateArray:v6 error:a4])
  {
    v53 = v7;
    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v56;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v56 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v55 + 1) + 8 * i);
          content = self->_content;
          v54 = 0;
          v17 = [(NUSetting *)content deserialize:v15 error:&v54];
          v18 = v54;
          if (!v17)
          {
            *a4 = [NUError errorWithCode:1 reason:@"Failed to deserialized item" object:v15 underlyingError:v18];

            v19 = 0;
            goto LABEL_15;
          }

          [v9 addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v55 objects:v59 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v19 = v9;
LABEL_15:

    v7 = v53;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)serialize:(id)a3 error:(id *)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v21 = NUAssertLogger_25303();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v61 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_25303();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v61 = v35;
        v62 = 2114;
        v63 = v39;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v61 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1159, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "object != nil");
  }

  if (!a4)
  {
    v28 = NUAssertLogger_25303();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v61 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_25303();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v61 = v44;
        v62 = 2114;
        v63 = v48;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v61 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1160, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "error != NULL");
  }

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = v7;
    v8 = v7;
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v56;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v56 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v55 + 1) + 8 * i);
          content = self->_content;
          v54 = 0;
          v17 = [(NUSetting *)content serialize:v15 error:&v54];
          v18 = v54;
          if (!v17)
          {
            *a4 = [NUError errorWithCode:2 reason:@"Failed to serialize array contents" object:v15 underlyingError:v18];

            v19 = 0;
            goto LABEL_15;
          }

          [v9 addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v55 objects:v59 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v19 = v9;
LABEL_15:

    v7 = v53;
  }

  else
  {
    [NUError unsupportedError:@"Object is not an array" object:v7];
    *a4 = v19 = 0;
  }

  return v19;
}

- (id)copyArray:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v18 = NUAssertLogger_25303();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "array != nil"];
      *buf = 138543362;
      v40 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_25303();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v25;
        v41 = 2114;
        v42 = v29;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting copyArray:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1137, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "array != nil");
  }

  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = [(NUSetting *)self->_content copy:v12];
        if (!v13)
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_369);
          }

          v16 = _NULogger;
          if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v40 = v12;
            _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "failure in [NUArraySetting copyArray]. [_content copy:item] failed for item: %@", buf, 0xCu);
          }

          v15 = 0;
          goto LABEL_16;
        }

        v14 = v13;
        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = v6;
LABEL_16:

  return v15;
}

- (id)copy:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_25303();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_25303();
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

    _NUAssertFailHandler("[NUArraySetting copy:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1124, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "object != nil");
  }

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NUArraySetting *)self copyArray:v5];
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_369);
    }

    v7 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "failure in [NUArraySetting copy]. object is not an NSArray: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v20 = NUAssertLogger_25303();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v59 = v21;
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
        v59 = v34;
        v60 = 2114;
        v61 = v38;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1098, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "object != nil");
  }

  if (!a4)
  {
    v27 = NUAssertLogger_25303();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v59 = v28;
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
        v59 = v43;
        v60 = 2114;
        v61 = v47;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1099, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "error != NULL");
  }

  v7 = v6;
  if ([NUModel validateArray:v6 error:a4])
  {
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v54;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v54 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v53 + 1) + 8 * i);
          content = self->_content;
          v52 = 0;
          v15 = [(NUModel *)content validate:v13 error:&v52];
          v16 = v52;
          v17 = v16;
          if (!v15)
          {
            *a4 = [NUError errorWithCode:2 reason:@"Invalid array contents" object:v8 underlyingError:v16];

            v18 = 0;
            goto LABEL_15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v53 objects:v57 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v18 = 1;
LABEL_15:
  }

  else
  {
    v18 = 0;
  }

  return v18;
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
    v16.super_class = NUArraySetting;
    v11 = [(NUSetting *)&v16 validateAttribute:v8 value:v9 error:a5];
  }

  return v11;
}

- (BOOL)isValid:(id *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v10 = NUAssertLogger_25303();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v28 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_25303();
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

    _NUAssertFailHandler("[NUArraySetting isValid:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1059, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "error != NULL");
  }

  content = self->_content;
  v26 = 0;
  v6 = [(NUModel *)content isValid:&v26];
  v7 = v26;
  if (v6)
  {
    v8 = [(NUModel *)self validateAttributes:a3];
  }

  else
  {
    [NUError errorWithCode:2 reason:@"Invalid content setting" object:self underlyingError:v7];
    *a3 = v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUArraySetting *)self content];
  v6 = [(NUModel *)self attributes];
  v7 = [v3 stringWithFormat:@"<%@ content:%@ attributes:%@>", v4, v5, v6];

  return v7;
}

- (NUArraySetting)initWithContent:(id)a3 attributes:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = NUAssertLogger_25303();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "content != nil"];
      *buf = 138543362;
      v30 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_25303();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v19;
        v31 = 2114;
        v32 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting initWithContent:attributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1043, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "content != nil");
  }

  v8 = v7;
  v28.receiver = self;
  v28.super_class = NUArraySetting;
  v9 = [(NUModel *)&v28 initWithAttributes:v7];
  content = v9->_content;
  v9->_content = v6;

  return v9;
}

- (NUArraySetting)initWithAttributes:(id)a3
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
  _NUAssertFailHandler("[NUArraySetting initWithAttributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1038, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUArraySetting)init
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
  _NUAssertFailHandler("[NUArraySetting init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1033, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (id)deserializeFromDictionary:(id)a3 error:(id *)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v15 = NUAssertLogger_25303();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v51 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_25303();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v29;
        v52 = 2114;
        v53 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUArraySetting deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1242, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "dictionary != nil");
  }

  if (!a4)
  {
    v22 = NUAssertLogger_25303();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v51 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_25303();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (v26)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v38;
        v52 = 2114;
        v53 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUArraySetting deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1243, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v7 = v6;
  v49 = 0;
  v8 = [a1 deserializeDictionaryFromDictionary:v6 key:@"content" error:&v49];
  v9 = v49;
  if (v8)
  {
    v48 = 0;
    v10 = [NUSetting deserializeFromDictionary:v8 error:&v48];
    v11 = v48;

    if (v10)
    {
      v47 = 0;
      v12 = [a1 deserializeAttributesFromDictionary:v7 error:&v47];
      v9 = v47;

      if (v12)
      {
        v13 = [[a1 alloc] initWithContent:v10 attributes:v12];
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Failed to deserialized attributes" object:v7 underlyingError:v9];
        *a4 = v13 = 0;
      }
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to deserialized setting" object:v8 underlyingError:v11];
      *a4 = v13 = 0;
      v9 = v11;
    }
  }

  else
  {
    [NUError errorWithCode:2 reason:@"Invalid content dictionary" object:v7 underlyingError:v9];
    *a4 = v13 = 0;
  }

  return v13;
}

+ (id)supportedAttributes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"required";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end