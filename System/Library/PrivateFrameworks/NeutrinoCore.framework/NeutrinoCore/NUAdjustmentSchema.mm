@interface NUAdjustmentSchema
+ (id)deserializeFromDictionary:(id)dictionary error:(id *)error;
- (BOOL)deserializeSettings:(id)settings fromDictionary:(id)dictionary error:(id *)error;
- (BOOL)isValid:(id *)valid;
- (BOOL)serializeIntoDictionary:(id)dictionary error:(id *)error;
- (BOOL)serializeSettings:(id)settings intoDictionary:(id)dictionary error:(id *)error;
- (BOOL)validate:(id)validate error:(id *)error;
- (BOOL)validateAdjustment:(id)adjustment error:(id *)error;
- (BOOL)validateSettings:(id *)settings;
- (BOOL)validateSettings:(id)settings error:(id *)error;
- (NUAdjustmentSchema)initWithIdentifier:(id)identifier attributes:(id)attributes;
- (NUAdjustmentSchema)initWithIdentifier:(id)identifier settings:(id)settings;
- (id)copy:(id)copy;
- (id)copyAdjustment:(id)adjustment;
- (id)deserialize:(id)deserialize error:(id *)error;
- (id)deserializeAdjustment:(id)adjustment error:(id *)error;
- (id)modelForProperty:(id)property;
- (id)serialize:(id)serialize error:(id *)error;
- (id)serializeAdjustment:(id)adjustment error:(id *)error;
- (void)enumerateProperties:(id)properties;
@end

@implementation NUAdjustmentSchema

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

    _NUAssertFailHandler("[NUAdjustmentSchema serializeIntoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 857, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "dictionary != nil");
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

    _NUAssertFailHandler("[NUAdjustmentSchema serializeIntoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 858, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "error != NULL");
  }

  v7 = dictionaryCopy;
  [dictionaryCopy setObject:@"Adjustment" forKeyedSubscript:@"isa"];
  settings = self->_settings;
  v49 = 0;
  if ([NUSetting serializeSettings:settings intoDictionary:v7 key:@"settings" error:&v49])
  {
    v48.receiver = self;
    v48.super_class = NUAdjustmentSchema;
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
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "adjustment != nil"];
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

    _NUAssertFailHandler("[NUAdjustmentSchema deserializeSettings:fromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 830, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "adjustment != nil");
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

    _NUAssertFailHandler("[NUAdjustmentSchema deserializeSettings:fromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 831, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "dictionary != nil");
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

    _NUAssertFailHandler("[NUAdjustmentSchema deserializeSettings:fromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 832, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != NULL");
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
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "adjustment != nil"];
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

    _NUAssertFailHandler("[NUAdjustmentSchema serializeSettings:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 798, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "adjustment != nil");
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

    _NUAssertFailHandler("[NUAdjustmentSchema serializeSettings:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 799, @"Invalid parameter not satisfying: %s", v57, v58, v59, v60, "dictionary != nil");
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

    _NUAssertFailHandler("[NUAdjustmentSchema serializeSettings:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 800, @"Invalid parameter not satisfying: %s", v66, v67, v68, v69, "error != NULL");
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

- (id)deserializeAdjustment:(id)adjustment error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  adjustmentCopy = adjustment;
  if (!adjustmentCopy)
  {
    v15 = NUAssertLogger_18635();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v50 = v16;
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
        v50 = v29;
        v51 = 2114;
        v52 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAdjustmentSchema deserializeAdjustment:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 771, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "dictionary != nil");
  }

  if (!error)
  {
    v22 = NUAssertLogger_18635();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v50 = v23;
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
        v50 = v38;
        v51 = 2114;
        v52 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAdjustmentSchema deserializeAdjustment:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 772, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v7 = adjustmentCopy;
  v48 = 0;
  v8 = [(NUSchema *)self deserializeIdentifierFromDictionary:adjustmentCopy error:&v48];
  v9 = v48;
  if (v8)
  {
    v10 = [[NUGenericAdjustment alloc] initWithAdjustmentSchema:self];
    v47 = 0;
    v11 = [(NUAdjustmentSchema *)self deserializeSettings:v10 fromDictionary:v7 error:&v47];
    v12 = v47;

    if (v11)
    {
      v13 = v10;
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to deserialize settings" object:v7 underlyingError:v12];
      *error = v13 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to deserialize identifier" object:v7 underlyingError:v9];
    *error = v13 = 0;
    v12 = v9;
  }

  return v13;
}

- (id)serializeAdjustment:(id)adjustment error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  adjustmentCopy = adjustment;
  if (!adjustmentCopy)
  {
    v17 = NUAssertLogger_18635();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "adjustment != nil"];
      *buf = 138543362;
      v52 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_18635();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v31;
        v53 = 2114;
        v54 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAdjustmentSchema serializeAdjustment:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 748, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "adjustment != nil");
  }

  if (!error)
  {
    v24 = NUAssertLogger_18635();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v52 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_18635();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols3 = [v41 callStackSymbols];
        v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v40;
        v53 = 2114;
        v54 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAdjustmentSchema serializeAdjustment:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 749, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "error != NULL");
  }

  v7 = adjustmentCopy;
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_settings, "count") + 1}];
  identifier = [v7 identifier];
  v50 = 0;
  v10 = [(NUSchema *)self serializeIdentifier:identifier intoDictionary:v8 error:&v50];
  v11 = v50;

  if (v10)
  {
    v49 = 0;
    v12 = [(NUAdjustmentSchema *)self serializeSettings:v7 intoDictionary:v8 error:&v49];
    v13 = v49;

    if (v12)
    {
      v14 = v8;
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to serialize settings" object:v7 underlyingError:v13];
      *error = v14 = 0;
    }

    v11 = v13;
  }

  else
  {
    identifier2 = [v7 identifier];
    *error = [NUError errorWithCode:1 reason:@"Failed to serialize identifier" object:identifier2 underlyingError:v11];

    v14 = 0;
  }

  return v14;
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

    _NUAssertFailHandler("[NUAdjustmentSchema deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 734, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "object != nil");
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

    _NUAssertFailHandler("[NUAdjustmentSchema deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 735, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v7 = deserializeCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NUAdjustmentSchema *)self deserializeAdjustment:v7 error:error];
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

    _NUAssertFailHandler("[NUAdjustmentSchema serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 720, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "object != nil");
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

    _NUAssertFailHandler("[NUAdjustmentSchema serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 721, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v7 = serializeCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NUAdjustmentSchema *)self serializeAdjustment:v7 error:error];
  }

  else
  {
    [NUError mismatchError:@"Not an adjustment" object:v7];
    *error = v8 = 0;
  }

  return v8;
}

- (id)modelForProperty:(id)property
{
  v28 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  if (!propertyCopy)
  {
    v8 = NUAssertLogger_18635();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_18635();
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
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAdjustmentSchema modelForProperty:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 713, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "name != nil");
  }

  v5 = propertyCopy;
  v6 = [(NSDictionary *)self->_settings objectForKeyedSubscript:propertyCopy];

  return v6;
}

- (void)enumerateProperties:(id)properties
{
  v29 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (!propertiesCopy)
  {
    v7 = NUAssertLogger_18635();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v26 = v8;
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
        v26 = v14;
        v27 = 2114;
        v28 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAdjustmentSchema enumerateProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 704, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "block != nil");
  }

  settings = self->_settings;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __42__NUAdjustmentSchema_enumerateProperties___block_invoke;
  v23[3] = &unk_1E810B1E8;
  v24 = propertiesCopy;
  v6 = propertiesCopy;
  [(NSDictionary *)settings enumerateKeysAndObjectsUsingBlock:v23];
}

- (id)copyAdjustment:(id)adjustment
{
  v53 = *MEMORY[0x1E69E9840];
  adjustmentCopy = adjustment;
  if (!adjustmentCopy)
  {
    v26 = NUAssertLogger_18635();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "adjustment != nil"];
      *buf = 138543362;
      v50 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_18635();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols = [v34 callStackSymbols];
        v37 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v33;
        v51 = 2114;
        v52 = v37;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAdjustmentSchema copyAdjustment:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 667, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "adjustment != nil");
  }

  v43 = adjustmentCopy;
  identifier = [adjustmentCopy identifier];
  identifier2 = [(NUSchema *)self identifier];
  v7 = [identifier isEqualToIdentifier:identifier2];

  if (v7)
  {
    v8 = [[NUGenericAdjustment alloc] initWithAdjustmentSchema:self];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = self->_settings;
    v9 = [(NSDictionary *)obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    v10 = v43;
    if (v9)
    {
      v11 = v9;
      v12 = *v45;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v44 + 1) + 8 * i);
          v15 = [v10 valueForKey:v14];
          if (v15)
          {
            v16 = [(NSDictionary *)self->_settings objectForKeyedSubscript:v14];
            v17 = [v16 copy:v15];
            if (!v17)
            {
              if (_NULogOnceToken != -1)
              {
                dispatch_once(&_NULogOnceToken, &__block_literal_global_557);
              }

              v21 = _NULogger;
              if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v50 = v16;
                v51 = 2112;
                v52 = v15;
                _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "failure in [NUAdjustment copyAdjustment]. [setting copy:value] returned nil. setting:%@ value:%@ ", buf, 0x16u);
              }

              v19 = 0;
              v10 = v43;
              goto LABEL_24;
            }

            v18 = v17;

            v10 = v43;
          }

          else
          {
            v18 = 0;
          }

          [(NUGenericAdjustment *)v8 setValue:v18 forKey:v14];
        }

        v11 = [(NSDictionary *)obj countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v19 = v8;
LABEL_24:
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_557);
    }

    v20 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      v23 = v20;
      identifier3 = [v43 identifier];
      identifier4 = [(NUSchema *)self identifier];
      *buf = 138412546;
      v50 = identifier3;
      v51 = 2112;
      v52 = identifier4;
      v10 = v43;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "failure in [NUAdjustment copyAdjustment]. %@ != %@", buf, 0x16u);

      v19 = 0;
    }

    else
    {
      v19 = 0;
      v10 = v43;
    }
  }

  return v19;
}

- (id)copy:(id)copy
{
  v29 = *MEMORY[0x1E69E9840];
  copyCopy = copy;
  if (!copyCopy)
  {
    v9 = NUAssertLogger_18635();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_18635();
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

    _NUAssertFailHandler("[NUAdjustmentSchema copy:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 654, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "object != nil");
  }

  v5 = copyCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NUAdjustmentSchema *)self copyAdjustment:v5];
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_557);
    }

    v7 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "failure in [NUAdjustment copy]. object is not an NUAdjustment: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
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
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "adjustment != nil"];
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

    _NUAssertFailHandler("[NUAdjustmentSchema validateSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 625, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "adjustment != nil");
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

    _NUAssertFailHandler("[NUAdjustmentSchema validateSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 626, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "error != NULL");
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

- (BOOL)validateAdjustment:(id)adjustment error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  adjustmentCopy = adjustment;
  if (!adjustmentCopy)
  {
    v12 = NUAssertLogger_18635();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "adjustment != nil"];
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

    _NUAssertFailHandler("[NUAdjustmentSchema validateAdjustment:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 605, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "adjustment != nil");
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

    _NUAssertFailHandler("[NUAdjustmentSchema validateAdjustment:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 606, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = adjustmentCopy;
  identifier = [adjustmentCopy identifier];
  v9 = [(NUSchema *)self validateIdentifier:identifier error:error];

  v10 = v9 && [(NUAdjustmentSchema *)self validateSettings:v7 error:error];
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

    _NUAssertFailHandler("[NUAdjustmentSchema validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 591, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "object != nil");
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

    _NUAssertFailHandler("[NUAdjustmentSchema validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 592, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v7 = validateCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NUAdjustmentSchema *)self validateAdjustment:v7 error:error];
  }

  else
  {
    [NUError mismatchError:@"Not an adjustment" object:v7];
    *error = v8 = 0;
  }

  return v8;
}

- (BOOL)validateSettings:(id *)settings
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_settings;
  v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v5)
  {
    v15 = 1;
    goto LABEL_15;
  }

  v6 = v5;
  settingsCopy = settings;
  v7 = *v22;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v21 + 1) + 8 * i);
      v20 = 0;
      settingsCopy = [(NUModel *)NUSchema validatePropertyName:v9 error:&v20, settingsCopy];
      v11 = v20;
      if (!settingsCopy)
      {
        *settingsCopy = [NUError errorWithCode:2 reason:@"Invalid setting name" object:v9 underlyingError:v11];
LABEL_14:

        v15 = 0;
        goto LABEL_15;
      }

      v12 = [(NSDictionary *)self->_settings objectForKeyedSubscript:v9];
      v19 = 0;
      v13 = [v12 isValid:&v19];
      v14 = v19;

      if ((v13 & 1) == 0)
      {
        *settingsCopy = [NUError errorWithCode:2 reason:@"Invalid setting" object:v9 underlyingError:v14];

        v11 = v14;
        goto LABEL_14;
      }
    }

    v6 = [(NSDictionary *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    v15 = 1;
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_15:

  return v15;
}

- (BOOL)isValid:(id *)valid
{
  v31 = *MEMORY[0x1E69E9840];
  if (!valid)
  {
    v10 = NUAssertLogger_18635();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v28 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_18635();
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

    _NUAssertFailHandler("[NUAdjustmentSchema isValid:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 552, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "error != NULL");
  }

  v26 = 0;
  v5 = [(NUAdjustmentSchema *)self validateSettings:&v26];
  if (!v5)
  {
    v6 = v26;
    v7 = [NUError errorWithCode:2 reason:@"Invalid settings" object:self underlyingError:v6];
    v8 = v7;

    *valid = v7;
  }

  return v5;
}

- (NUAdjustmentSchema)initWithIdentifier:(id)identifier settings:(id)settings
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

    _NUAssertFailHandler("[NUAdjustmentSchema initWithIdentifier:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 541, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "settings != nil");
  }

  v8 = settingsCopy;
  v29.receiver = self;
  v29.super_class = NUAdjustmentSchema;
  v9 = [(NUSchema *)&v29 initWithIdentifier:identifierCopy attributes:MEMORY[0x1E695E0F8]];
  v10 = [v8 copy];
  settings = v9->_settings;
  v9->_settings = v10;

  return v9;
}

- (NUAdjustmentSchema)initWithIdentifier:(id)identifier attributes:(id)attributes
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
  _NUAssertFailHandler("[NUAdjustmentSchema initWithIdentifier:attributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 536, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
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

    _NUAssertFailHandler("+[NUAdjustmentSchema deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 874, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "dictionary != nil");
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

    _NUAssertFailHandler("+[NUAdjustmentSchema deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 875, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "error != NULL");
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
      [NUError errorWithCode:1 reason:@"Failed to deserialize adjustment settings" object:v7 underlyingError:v11];
      *error = v12 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to deserialize adjustment identifier" object:v7 underlyingError:v9];
    *error = v12 = 0;
    v11 = v9;
  }

  return v12;
}

@end