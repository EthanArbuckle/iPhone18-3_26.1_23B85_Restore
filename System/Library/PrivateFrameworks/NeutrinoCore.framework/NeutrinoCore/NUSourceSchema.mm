@interface NUSourceSchema
+ (NUIdentifier)identifier;
+ (NUSourceSchema)sharedSourceSchema;
+ (id)deserializeFromDictionary:(id)dictionary error:(id *)error;
- (BOOL)deserializeSettings:(id)settings fromDictionary:(id)dictionary error:(id *)error;
- (BOOL)itemIsResolved:(id)resolved;
- (BOOL)resolveItem:(id)item resolver:(id)resolver error:(id *)error;
- (BOOL)serializeAssetIdentifier:(id)identifier intoDictionary:(id)dictionary error:(id *)error;
- (BOOL)serializeIntoDictionary:(id)dictionary error:(id *)error;
- (BOOL)serializeSettings:(id)settings intoDictionary:(id)dictionary error:(id *)error;
- (BOOL)validate:(id)validate error:(id *)error;
- (BOOL)validateAssetIdentifier:(id)identifier error:(id *)error;
- (BOOL)validateSettings:(id)settings error:(id *)error;
- (BOOL)validateSource:(id)source error:(id *)error;
- (NUSourceSchema)initWithIdentifier:(id)identifier attributes:(id)attributes;
- (NUSourceSchema)initWithIdentifier:(id)identifier settings:(id)settings;
- (id)deserialize:(id)deserialize error:(id *)error;
- (id)deserializeAssetIdentifierFromDictionary:(id)dictionary error:(id *)error;
- (id)deserializeSource:(id)source error:(id *)error;
- (id)serialize:(id)serialize error:(id *)error;
- (id)serializeSource:(id)source error:(id *)error;
@end

@implementation NUSourceSchema

- (BOOL)resolveItem:(id)item resolver:(id)resolver error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  resolverCopy = resolver;
  if (!resolverCopy)
  {
    v16 = NUAssertLogger_18635();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "resolver != nil"];
      *buf = 138543362;
      v50 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_18635();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v30;
        v51 = 2114;
        v52 = v34;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema resolveItem:resolver:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1870, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "resolver != nil");
  }

  v9 = resolverCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = NUAssertLogger_18635();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "[object isKindOfClass:NUSource.class]"];
      *buf = 138543362;
      v50 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_18635();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        callStackSymbols3 = [v40 callStackSymbols];
        v43 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v39;
        v51 = 2114;
        v52 = v43;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema resolveItem:resolver:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1871, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "[object isKindOfClass:NUSource.class]");
  }

  v10 = itemCopy;
  definition = [v10 definition];

  if (definition)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v48 = 0;
    v13 = [v9 resolveSource:v10 error:&v48];
    v14 = v48;
    v12 = v13 != 0;
    if (v13)
    {
      [v10 setDefinition:v13];
    }

    else
    {
      *error = [NUError errorWithCode:1 reason:@"Failed to resolve source" object:v10 underlyingError:v14];
    }
  }

  return v12;
}

- (BOOL)itemIsResolved:(id)resolved
{
  v27 = *MEMORY[0x1E69E9840];
  resolvedCopy = resolved;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = NUAssertLogger_18635();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "[object isKindOfClass:NUSource.class]"];
      *buf = 138543362;
      v24 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_18635();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        callStackSymbols = [v15 callStackSymbols];
        v18 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v14;
        v25 = 2114;
        v26 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema itemIsResolved:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1863, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "[object isKindOfClass:NUSource.class]");
  }

  definition = [resolvedCopy definition];
  v5 = definition != 0;

  return v5;
}

- (BOOL)serializeIntoDictionary:(id)dictionary error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    v16 = NUAssertLogger_18635();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v51 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_18635();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v30;
        v52 = 2114;
        v53 = v34;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema serializeIntoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1816, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "dictionary != nil");
  }

  if (!error)
  {
    v23 = NUAssertLogger_18635();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v51 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_18635();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        callStackSymbols3 = [v40 callStackSymbols];
        v43 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v39;
        v52 = 2114;
        v53 = v43;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema serializeIntoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1817, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "error != NULL");
  }

  v7 = dictionaryCopy;
  [dictionaryCopy setObject:@"Source" forKeyedSubscript:@"isa"];
  settings = self->_settings;
  v49 = 0;
  if ([NUSetting serializeSettings:settings intoDictionary:v7 key:@"settings" error:&v49])
  {
    v48.receiver = self;
    v48.super_class = NUSourceSchema;
    v9 = v49;
    v10 = [(NUSchema *)&v48 serializeIntoDictionary:v7 error:error];
  }

  else
  {
    v11 = self->_settings;
    v12 = v49;
    v13 = [NUError errorWithCode:1 reason:@"Failed to serialize settings" object:v11 underlyingError:v12];
    v14 = v13;

    v10 = 0;
    *error = v13;
  }

  return v10;
}

- (BOOL)deserializeSettings:(id)settings fromDictionary:(id)dictionary error:(id *)error
{
  v81 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  dictionaryCopy = dictionary;
  if (!settingsCopy)
  {
    v20 = NUAssertLogger_18635();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "source != nil"];
      *buf = 138543362;
      v78 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_18635();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        callStackSymbols = [v42 callStackSymbols];
        v45 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v41;
        v79 = 2114;
        v80 = v45;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema deserializeSettings:fromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1792, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "source != nil");
  }

  v9 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v27 = NUAssertLogger_18635();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v78 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_18635();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        callStackSymbols3 = [v51 callStackSymbols];
        v54 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v50;
        v79 = 2114;
        v80 = v54;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema deserializeSettings:fromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1793, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "dictionary != nil");
  }

  if (!error)
  {
    v34 = NUAssertLogger_18635();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v78 = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_18635();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        callStackSymbols5 = [v60 callStackSymbols];
        v63 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v59;
        v79 = 2114;
        v80 = v63;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema deserializeSettings:fromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1794, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != NULL");
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = self->_settings;
  v10 = [(NSDictionary *)obj countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v10)
  {
    v11 = v10;
    errorCopy = error;
    v12 = *v73;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v73 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v72 + 1) + 8 * i);
        v15 = [(NSDictionary *)self->_settings objectForKeyedSubscript:v14];
        v16 = [v9 objectForKeyedSubscript:v14];
        if (v16)
        {
          v71 = 0;
          v17 = [v15 deserialize:v16 error:&v71];
          v18 = v71;
          if (!v17)
          {
            *errorCopy = [NUError errorWithCode:1 reason:@"Failed to deserialize setting" object:v14 underlyingError:v18];

            goto LABEL_16;
          }

          [settingsCopy setObject:v17 forKeyedSubscript:v14];
        }
      }

      v11 = [(NSDictionary *)obj countByEnumeratingWithState:&v72 objects:v76 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(v17) = 1;
LABEL_16:

  return v17;
}

- (BOOL)serializeSettings:(id)settings intoDictionary:(id)dictionary error:(id *)error
{
  v84 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  dictionaryCopy = dictionary;
  v73 = settingsCopy;
  if (!settingsCopy)
  {
    v22 = NUAssertLogger_18635();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "source != nil"];
      *buf = 138543362;
      v81 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_18635();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        callStackSymbols = [v44 callStackSymbols];
        v47 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v81 = v43;
        v82 = 2114;
        v83 = v47;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v81 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema serializeSettings:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1765, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "source != nil");
  }

  v10 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v29 = NUAssertLogger_18635();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v81 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_18635();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v33)
      {
        v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        callStackSymbols3 = [v53 callStackSymbols];
        v56 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v81 = v52;
        v82 = 2114;
        v83 = v56;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v81 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema serializeSettings:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1766, @"Invalid parameter not satisfying: %s", v57, v58, v59, v60, "dictionary != nil");
  }

  if (!error)
  {
    v36 = NUAssertLogger_18635();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v81 = v37;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v39 = NUAssertLogger_18635();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (v38)
    {
      if (v40)
      {
        v61 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v62 = MEMORY[0x1E696AF00];
        v63 = v61;
        callStackSymbols5 = [v62 callStackSymbols];
        v65 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v81 = v61;
        v82 = 2114;
        v83 = v65;
        _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v40)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v42 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v81 = v42;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema serializeSettings:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1767, @"Invalid parameter not satisfying: %s", v66, v67, v68, v69, "error != NULL");
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = self->_settings;
  v11 = [(NSDictionary *)obj countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (!v11)
  {
    v20 = 1;
    goto LABEL_21;
  }

  v12 = v11;
  errorCopy = error;
  v72 = v10;
  v13 = *v76;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v76 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v75 + 1) + 8 * i);
      v16 = [(NSDictionary *)self->_settings objectForKeyedSubscript:v15];
      v17 = [v73 objectForKeyedSubscript:v15];
      if (v17)
      {
        v74 = 0;
        v18 = [v16 serialize:v17 error:&v74];
        v19 = v74;
        if (v18)
        {
          [v72 setObject:v18 forKeyedSubscript:v15];

          goto LABEL_13;
        }

        *errorCopy = [NUError errorWithCode:1 reason:@"Failed to serialize setting" object:v15 underlyingError:v19];

LABEL_19:
        v20 = 0;
        goto LABEL_20;
      }

      if ([v16 isRequired])
      {
        [NUError missingError:@"Missing required setting" object:v15];
        *errorCopy = v17 = 0;
        goto LABEL_19;
      }

LABEL_13:
    }

    v12 = [(NSDictionary *)obj countByEnumeratingWithState:&v75 objects:v79 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

  v20 = 1;
LABEL_20:
  v10 = v72;
LABEL_21:

  return v20;
}

- (id)deserializeAssetIdentifierFromDictionary:(id)dictionary error:(id *)error
{
  v4 = [(NUModel *)NUSchema deserializeStringFromDictionary:dictionary key:@"input" error:error];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

- (BOOL)serializeAssetIdentifier:(id)identifier intoDictionary:(id)dictionary error:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  if (!identifierCopy)
  {
    v11 = NUAssertLogger_18635();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "assetIdentifier != nil"];
      *buf = 138543362;
      v60 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_18635();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        callStackSymbols = [v33 callStackSymbols];
        v36 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = v32;
        v61 = 2114;
        v62 = v36;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema serializeAssetIdentifier:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1745, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "assetIdentifier != nil");
  }

  v9 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v18 = NUAssertLogger_18635();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v60 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_18635();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        callStackSymbols3 = [v42 callStackSymbols];
        v45 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = v41;
        v61 = 2114;
        v62 = v45;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema serializeAssetIdentifier:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1746, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "dictionary != nil");
  }

  if (!error)
  {
    v25 = NUAssertLogger_18635();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v60 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_18635();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        callStackSymbols5 = [v51 callStackSymbols];
        v54 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = v50;
        v61 = 2114;
        v62 = v54;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema serializeAssetIdentifier:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1747, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "error != NULL");
  }

  [dictionaryCopy setObject:identifierCopy forKeyedSubscript:@"input"];

  return 1;
}

- (id)deserializeSource:(id)source error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (!sourceCopy)
  {
    v16 = NUAssertLogger_18635();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v52 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_18635();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v30;
        v53 = 2114;
        v54 = v34;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema deserializeSource:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1710, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "dictionary != nil");
  }

  if (!error)
  {
    v23 = NUAssertLogger_18635();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v52 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_18635();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        callStackSymbols3 = [v40 callStackSymbols];
        v43 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v39;
        v53 = 2114;
        v54 = v43;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema deserializeSource:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1711, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "error != NULL");
  }

  v7 = sourceCopy;
  v50 = 0;
  v8 = [(NUSchema *)self deserializeIdentifierFromDictionary:sourceCopy error:&v50];
  v9 = v50;
  if (v8)
  {
    v49 = 0;
    v10 = [(NUSourceSchema *)self deserializeAssetIdentifierFromDictionary:v7 error:&v49];
    v11 = v49;

    if (v10)
    {
      v12 = [[NUSource alloc] initWithSourceSchema:self];
      [(NUSource *)v12 setAssetIdentifier:v10];
      v48 = 0;
      v13 = [(NUSourceSchema *)self deserializeSettings:v12 fromDictionary:v7 error:&v48];
      v9 = v48;

      if (v13)
      {
        v14 = v12;
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Failed to deserialize settings" object:v7 underlyingError:v9];
        *error = v14 = 0;
      }
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to deserialize assetIdentifier" object:v7 underlyingError:v11];
      *error = v14 = 0;
      v9 = v11;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to deserialize identifier" object:v7 underlyingError:v9];
    *error = v14 = 0;
  }

  return v14;
}

- (id)serializeSource:(id)source error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (!sourceCopy)
  {
    v21 = NUAssertLogger_18635();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "source != nil"];
      *buf = 138543362;
      v57 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_18635();
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
        v57 = v35;
        v58 = 2114;
        v59 = v39;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema serializeSource:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1673, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "source != nil");
  }

  if (!error)
  {
    v28 = NUAssertLogger_18635();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v57 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_18635();
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
        v57 = v44;
        v58 = 2114;
        v59 = v48;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema serializeSource:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1674, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "error != NULL");
  }

  v7 = sourceCopy;
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  identifier = [v7 identifier];
  v55 = 0;
  v10 = [(NUSchema *)self serializeIdentifier:identifier intoDictionary:v8 error:&v55];
  v11 = v55;

  if (!v10)
  {
    identifier2 = [v7 identifier];
    v17 = @"Failed to serialize identifier";
    v18 = identifier2;
LABEL_9:
    v19 = [NUError errorWithCode:1 reason:v17 object:v18 underlyingError:v11];
LABEL_11:
    v16 = 0;
    *error = v19;
    goto LABEL_12;
  }

  identifier2 = [v7 assetIdentifier];
  if (!identifier2)
  {
    v19 = [NUError missingError:@"Missing assetIdentifier" object:v7];
    goto LABEL_11;
  }

  v54 = 0;
  v13 = [(NUSourceSchema *)self serializeAssetIdentifier:identifier2 intoDictionary:v8 error:&v54];
  v14 = v54;

  if (v13)
  {
    v53 = 0;
    v15 = [(NUSourceSchema *)self serializeSettings:v7 intoDictionary:v8 error:&v53];
    v11 = v53;

    if (v15)
    {
      v16 = v8;
      goto LABEL_12;
    }

    v17 = @"Failed to serialize settings";
    v18 = v7;
    goto LABEL_9;
  }

  [NUError errorWithCode:1 reason:@"Failed to serialize assetIdentifier" object:identifier2 underlyingError:v14];
  *error = v16 = 0;
  v11 = v14;
LABEL_12:

  return v16;
}

- (id)deserialize:(id)deserialize error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  deserializeCopy = deserialize;
  if (!deserializeCopy)
  {
    v10 = NUAssertLogger_18635();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v43 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_18635();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v24;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1659, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "object != nil");
  }

  if (!error)
  {
    v17 = NUAssertLogger_18635();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v43 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_18635();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols3 = [v34 callStackSymbols];
        v37 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v33;
        v44 = 2114;
        v45 = v37;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1660, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v7 = deserializeCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NUSourceSchema *)self deserializeSource:v7 error:error];
  }

  else
  {
    [NUError mismatchError:@"Not a dictionary" object:v7];
    *error = v8 = 0;
  }

  return v8;
}

- (id)serialize:(id)serialize error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  serializeCopy = serialize;
  if (!serializeCopy)
  {
    v10 = NUAssertLogger_18635();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v43 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_18635();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v24;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1645, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "object != nil");
  }

  if (!error)
  {
    v17 = NUAssertLogger_18635();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v43 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_18635();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols3 = [v34 callStackSymbols];
        v37 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v33;
        v44 = 2114;
        v45 = v37;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1646, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v7 = serializeCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NUSourceSchema *)self serializeSource:v7 error:error];
  }

  else
  {
    [NUError mismatchError:@"Not a source" object:v7];
    *error = v8 = 0;
  }

  return v8;
}

- (BOOL)validateSettings:(id)settings error:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (!settingsCopy)
  {
    v18 = NUAssertLogger_18635();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "source != nil"];
      *buf = 138543362;
      v60 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_18635();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        callStackSymbols = [v33 callStackSymbols];
        v36 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = v32;
        v61 = 2114;
        v62 = v36;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema validateSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1615, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "source != nil");
  }

  if (!error)
  {
    v25 = NUAssertLogger_18635();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v60 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_18635();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        callStackSymbols3 = [v42 callStackSymbols];
        v45 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = v41;
        v61 = 2114;
        v62 = v45;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema validateSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1616, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "error != NULL");
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = self->_settings;
  v6 = [(NSDictionary *)obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    errorCopy = error;
    v8 = *v55;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v55 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v54 + 1) + 8 * v9);
      v11 = [(NSDictionary *)self->_settings objectForKeyedSubscript:v10];
      v12 = [settingsCopy objectForKeyedSubscript:v10];
      if (v12)
      {
        v53 = 0;
        v13 = [v11 validate:v12 error:&v53];
        v14 = v53;
        v15 = v14;
        if ((v13 & 1) == 0)
        {
          *errorCopy = [NUError errorWithCode:2 reason:@"Invalid setting" object:v10 underlyingError:v14];

LABEL_17:
          v16 = 0;
          goto LABEL_18;
        }
      }

      else if ([v11 isRequired])
      {
        [NUError missingError:@"Missing required setting" object:v10];
        *errorCopy = v12 = 0;
        goto LABEL_17;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSDictionary *)obj countByEnumeratingWithState:&v54 objects:v58 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v16 = 1;
LABEL_18:

  return v16;
}

- (BOOL)validateAssetIdentifier:(id)identifier error:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v15 = NUAssertLogger_18635();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "source != nil"];
      *buf = 138543362;
      v48 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_18635();
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
        v48 = v29;
        v49 = 2114;
        v50 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema validateAssetIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1593, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "source != nil");
  }

  if (!error)
  {
    v22 = NUAssertLogger_18635();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v48 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_18635();
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
        v48 = v38;
        v49 = 2114;
        v50 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema validateAssetIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1594, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v6 = identifierCopy;
  assetIdentifier = [identifierCopy assetIdentifier];

  if (assetIdentifier)
  {
    assetIdentifier2 = [v6 assetIdentifier];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      assetIdentifier3 = [v6 assetIdentifier];
      v11 = [assetIdentifier3 isEqualToString:&stru_1F3F4BA98];

      if (!v11)
      {
        v13 = 1;
        goto LABEL_9;
      }
    }

    v12 = [NUError invalidError:@"Invalid asset identifier" object:v6];
  }

  else
  {
    v12 = [NUError missingError:@"Missing asset identifier" object:v6];
  }

  v13 = 0;
  *error = v12;
LABEL_9:

  return v13;
}

- (BOOL)validateSource:(id)source error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (!sourceCopy)
  {
    v12 = NUAssertLogger_18635();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "source != nil"];
      *buf = 138543362;
      v45 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_18635();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema validateSource:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1574, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "source != nil");
  }

  if (!error)
  {
    v19 = NUAssertLogger_18635();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v45 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_18635();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols3 = [v36 callStackSymbols];
        v39 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema validateSource:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1575, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = sourceCopy;
  identifier = [sourceCopy identifier];
  v9 = [(NUSchema *)self validateIdentifier:identifier error:error];

  v10 = v9 && [(NUSourceSchema *)self validateAssetIdentifier:v7 error:error]&& [(NUSourceSchema *)self validateSettings:v7 error:error];
  return v10;
}

- (BOOL)validate:(id)validate error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  if (!validateCopy)
  {
    v10 = NUAssertLogger_18635();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v43 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_18635();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v24;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1560, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "object != nil");
  }

  if (!error)
  {
    v17 = NUAssertLogger_18635();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v43 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_18635();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols3 = [v34 callStackSymbols];
        v37 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v33;
        v44 = 2114;
        v45 = v37;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1561, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v7 = validateCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NUSourceSchema *)self validateSource:v7 error:error];
  }

  else
  {
    [NUError mismatchError:@"Not an adjustment source" object:v7];
    *error = v8 = 0;
  }

  return v8;
}

- (NUSourceSchema)initWithIdentifier:(id)identifier settings:(id)settings
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  settingsCopy = settings;
  if (!settingsCopy)
  {
    v13 = NUAssertLogger_18635();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "settings != nil"];
      *buf = 138543362;
      v31 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_18635();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v20;
        v32 = 2114;
        v33 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceSchema initWithIdentifier:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1549, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "settings != nil");
  }

  v8 = settingsCopy;
  v29.receiver = self;
  v29.super_class = NUSourceSchema;
  v9 = [(NUSchema *)&v29 initWithIdentifier:identifierCopy attributes:MEMORY[0x1E695E0F8]];
  v10 = [v8 copy];
  settings = v9->_settings;
  v9->_settings = v10;

  return v9;
}

- (NUSourceSchema)initWithIdentifier:(id)identifier attributes:(id)attributes
{
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  attributesCopy = attributes;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
  }

  v8 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = v8;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    v14 = [v9 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v12, v13];
    *buf = 138543362;
    v35 = v14;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v15 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v15 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v16 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AF00];
      v18 = v16;
      callStackSymbols = [v17 callStackSymbols];
      v20 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v20;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v21 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = MEMORY[0x1E696AF00];
    v24 = specific;
    v25 = v21;
    callStackSymbols2 = [v23 callStackSymbols];
    v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v35 = specific;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUSourceSchema initWithIdentifier:attributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1544, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

+ (id)deserializeFromDictionary:(id)dictionary error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    v14 = NUAssertLogger_18635();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v49 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_18635();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v28;
        v50 = 2114;
        v51 = v32;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSourceSchema deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1833, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "dictionary != nil");
  }

  if (!error)
  {
    v21 = NUAssertLogger_18635();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v49 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_18635();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v25)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        callStackSymbols3 = [v38 callStackSymbols];
        v41 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v37;
        v50 = 2114;
        v51 = v41;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSourceSchema deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1834, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "error != NULL");
  }

  v7 = dictionaryCopy;
  v47 = 0;
  v8 = [self deserializeIdentifierFromDictionary:dictionaryCopy error:&v47];
  v9 = v47;
  if (v8)
  {
    v46 = 0;
    v10 = [NUSetting deserializeSettingsFromDictionary:v7 key:@"settings" error:&v46];
    v11 = v46;

    if (v10)
    {
      v12 = [[self alloc] initWithIdentifier:v8 settings:v10];
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to deserialize source settings" object:v7 underlyingError:v11];
      *error = v12 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to deserialize source identifier" object:v7 underlyingError:v9];
    *error = v12 = 0;
    v11 = v9;
  }

  return v12;
}

+ (NUSourceSchema)sharedSourceSchema
{
  v2 = [NUSourceSchema alloc];
  v3 = +[NUSourceSchema identifier];
  v4 = [(NUSourceSchema *)v2 initWithIdentifier:v3 settings:MEMORY[0x1E695E0F8]];

  return v4;
}

+ (NUIdentifier)identifier
{
  v2 = [NUIdentifier alloc];
  v3 = +[NUVersion versionOne];
  v4 = [(NUIdentifier *)v2 initWithNamespace:@"com.apple.photo" name:@"Source" version:v3];

  return v4;
}

@end