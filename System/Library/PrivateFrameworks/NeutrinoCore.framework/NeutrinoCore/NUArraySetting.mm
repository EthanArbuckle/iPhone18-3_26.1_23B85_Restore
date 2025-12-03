@interface NUArraySetting
+ (id)deserializeFromDictionary:(id)dictionary error:(id *)error;
+ (id)supportedAttributes;
- (BOOL)isValid:(id *)valid;
- (BOOL)serializeIntoDictionary:(id)dictionary error:(id *)error;
- (BOOL)validate:(id)validate error:(id *)error;
- (BOOL)validateAttribute:(id)attribute value:(id)value error:(id *)error;
- (NUArraySetting)init;
- (NUArraySetting)initWithAttributes:(id)attributes;
- (NUArraySetting)initWithContent:(id)content attributes:(id)attributes;
- (id)copy:(id)copy;
- (id)copyArray:(id)array;
- (id)description;
- (id)deserialize:(id)deserialize error:(id *)error;
- (id)serialize:(id)serialize error:(id *)error;
@end

@implementation NUArraySetting

- (BOOL)serializeIntoDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  [dictionaryCopy setObject:@"array" forKeyedSubscript:@"isa"];
  content = self->_content;
  v12 = 0;
  v8 = [(NUModel *)content serializeAsDictionary:&v12];
  v9 = v12;
  if (v8)
  {
    [dictionaryCopy setObject:v8 forKeyedSubscript:@"content"];
    v10 = [(NUSetting *)self serializeAttributesIntoDictionary:dictionaryCopy error:error];
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to serialized array content" object:self->_content underlyingError:v9];
    *error = v10 = 0;
  }

  return v10;
}

- (id)deserialize:(id)deserialize error:(id *)error
{
  v64 = *MEMORY[0x1E69E9840];
  deserializeCopy = deserialize;
  if (!deserializeCopy)
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
        callStackSymbols = [v36 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v61 = v35;
        v62 = 2114;
        v63 = v39;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v61 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1192, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "object != nil");
  }

  if (!error)
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
        callStackSymbols3 = [v45 callStackSymbols];
        v48 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v61 = v44;
        v62 = 2114;
        v63 = v48;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v61 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1193, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "error != NULL");
  }

  v7 = deserializeCopy;
  if ([NUModel validateArray:deserializeCopy error:error])
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
            *error = [NUError errorWithCode:1 reason:@"Failed to deserialized item" object:v15 underlyingError:v18];

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

- (id)serialize:(id)serialize error:(id *)error
{
  v64 = *MEMORY[0x1E69E9840];
  serializeCopy = serialize;
  if (!serializeCopy)
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
        callStackSymbols = [v36 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v61 = v35;
        v62 = 2114;
        v63 = v39;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v61 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1159, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "object != nil");
  }

  if (!error)
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
        callStackSymbols3 = [v45 callStackSymbols];
        v48 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v61 = v44;
        v62 = 2114;
        v63 = v48;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v61 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1160, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "error != NULL");
  }

  v7 = serializeCopy;
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
            *error = [NUError errorWithCode:2 reason:@"Failed to serialize array contents" object:v15 underlyingError:v18];

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
    *error = v19 = 0;
  }

  return v19;
}

- (id)copyArray:(id)array
{
  v43 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if (!arrayCopy)
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
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v25;
        v41 = 2114;
        v42 = v29;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting copyArray:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1137, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "array != nil");
  }

  v5 = arrayCopy;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
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

- (id)copy:(id)copy
{
  v29 = *MEMORY[0x1E69E9840];
  copyCopy = copy;
  if (!copyCopy)
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
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v16;
        v27 = 2114;
        v28 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting copy:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1124, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "object != nil");
  }

  v5 = copyCopy;
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

- (BOOL)validate:(id)validate error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  if (!validateCopy)
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
        callStackSymbols = [v35 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v34;
        v60 = 2114;
        v61 = v38;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1098, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "object != nil");
  }

  if (!error)
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
        callStackSymbols3 = [v44 callStackSymbols];
        v47 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v43;
        v60 = 2114;
        v61 = v47;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1099, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "error != NULL");
  }

  v7 = validateCopy;
  if ([NUModel validateArray:validateCopy error:error])
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
            *error = [NUError errorWithCode:2 reason:@"Invalid array contents" object:v8 underlyingError:v16];

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

- (BOOL)validateAttribute:(id)attribute value:(id)value error:(id *)error
{
  attributeCopy = attribute;
  valueCopy = value;
  if ([attributeCopy isEqualToString:@"required"])
  {
    v17 = 0;
    v10 = [NUModel validateBool:valueCopy error:&v17];

    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v12 = v17;
      v13 = [NUError errorWithCode:2 reason:@"Invalid attribute value" object:attributeCopy underlyingError:v12];
      v14 = v13;

      v11 = 0;
      *error = v13;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = NUArraySetting;
    v11 = [(NUSetting *)&v16 validateAttribute:attributeCopy value:valueCopy error:error];
  }

  return v11;
}

- (BOOL)isValid:(id *)valid
{
  v31 = *MEMORY[0x1E69E9840];
  if (!valid)
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
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
    v8 = [(NUModel *)self validateAttributes:valid];
  }

  else
  {
    [NUError errorWithCode:2 reason:@"Invalid content setting" object:self underlyingError:v7];
    *valid = v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  content = [(NUArraySetting *)self content];
  attributes = [(NUModel *)self attributes];
  v7 = [v3 stringWithFormat:@"<%@ content:%@ attributes:%@>", v4, content, attributes];

  return v7;
}

- (NUArraySetting)initWithContent:(id)content attributes:(id)attributes
{
  v33 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  attributesCopy = attributes;
  if (!contentCopy)
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
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v19;
        v31 = 2114;
        v32 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySetting initWithContent:attributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1043, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "content != nil");
  }

  v8 = attributesCopy;
  v28.receiver = self;
  v28.super_class = NUArraySetting;
  v9 = [(NUModel *)&v28 initWithAttributes:attributesCopy];
  content = v9->_content;
  v9->_content = contentCopy;

  return v9;
}

- (NUArraySetting)initWithAttributes:(id)attributes
{
  v35 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
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
      callStackSymbols = [v14 callStackSymbols];
      v17 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v20 callStackSymbols];
    v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

+ (id)deserializeFromDictionary:(id)dictionary error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
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
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v29;
        v52 = 2114;
        v53 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUArraySetting deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1242, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "dictionary != nil");
  }

  if (!error)
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
        callStackSymbols3 = [v39 callStackSymbols];
        v42 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v38;
        v52 = 2114;
        v53 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUArraySetting deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1243, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v7 = dictionaryCopy;
  v49 = 0;
  v8 = [self deserializeDictionaryFromDictionary:dictionaryCopy key:@"content" error:&v49];
  v9 = v49;
  if (v8)
  {
    v48 = 0;
    v10 = [NUSetting deserializeFromDictionary:v8 error:&v48];
    v11 = v48;

    if (v10)
    {
      v47 = 0;
      v12 = [self deserializeAttributesFromDictionary:v7 error:&v47];
      v9 = v47;

      if (v12)
      {
        v13 = [[self alloc] initWithContent:v10 attributes:v12];
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Failed to deserialized attributes" object:v7 underlyingError:v9];
        *error = v13 = 0;
      }
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to deserialized setting" object:v8 underlyingError:v11];
      *error = v13 = 0;
      v9 = v11;
    }
  }

  else
  {
    [NUError errorWithCode:2 reason:@"Invalid content dictionary" object:v7 underlyingError:v9];
    *error = v13 = 0;
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