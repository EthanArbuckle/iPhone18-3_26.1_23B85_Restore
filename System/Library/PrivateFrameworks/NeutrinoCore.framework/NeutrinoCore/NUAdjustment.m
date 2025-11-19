@interface NUAdjustment
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAdjustment:(id)a3;
- (NSDictionary)settings;
- (NSString)debugDescription;
- (NSString)description;
- (NUAdjustment)init;
- (NUAdjustment)initWithAdjustmentSchema:(id)a3;
- (NUAdjustment)initWithIdentifier:(id)a3;
- (NUIdentifier)identifier;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)reset;
@end

@implementation NUAdjustment

- (void)reset
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [(NUAdjustment *)self schema];
  if (!v3)
  {
    v13 = NUAssertLogger_17098();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = [(NUAdjustment *)self identifier];
      v16 = [v14 stringWithFormat:@"No schema registered for identifier '%@'", v15];
      *buf = 138543362;
      v38 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_17098();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v22;
        v39 = 2114;
        v40 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v27 = [(NUAdjustment *)self identifier];
    _NUAssertFailHandler("[NUAdjustment reset]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUAdjustment.m", 188, @"No schema registered for identifier '%@'", v28, v29, v30, v31, v27);
  }

  v4 = v3;
  v5 = [v3 settings];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = [v11 defaultValue];
        [(NUAdjustment *)self setValue:v12 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v7);
  }
}

- (BOOL)isEqualToAdjustment:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NUAdjustment *)self identifier];
  v6 = [v4 identifier];
  v7 = [v5 isEqualToIdentifier:v6];

  if (v7)
  {
    v8 = [(NUAdjustment *)self schema];
    v9 = v8;
    if (!v8)
    {
      v13 = NUAssertLogger_17098();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = MEMORY[0x1E696AEC0];
        v15 = [(NUAdjustment *)self identifier];
        v16 = [v14 stringWithFormat:@"No schema registered for identifier '%@'", v15];
        *buf = 138543362;
        *&buf[4] = v16;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v18 = NUAssertLogger_17098();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v19)
        {
          v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v23 = MEMORY[0x1E696AF00];
          v24 = v22;
          v25 = [v23 callStackSymbols];
          v26 = [v25 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          *&buf[4] = v22;
          *&buf[12] = 2114;
          *&buf[14] = v26;
          v27 = v26;
          _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v19)
      {
        v20 = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v21;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v28 = [(NUAdjustment *)self identifier];
      _NUAssertFailHandler("[NUAdjustment isEqualToAdjustment:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUAdjustment.m", 162, @"No schema registered for identifier '%@'", v29, v30, v31, v32, v28);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v37 = 1;
    v10 = [v8 settings];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __36__NUAdjustment_isEqualToAdjustment___block_invoke;
    v33[3] = &unk_1E810A8D0;
    v33[4] = self;
    v34 = v4;
    v35 = buf;
    [v10 enumerateKeysAndObjectsUsingBlock:v33];

    v11 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __36__NUAdjustment_isEqualToAdjustment___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = a3;
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 valueForKey:v8];
  v10 = [*(a1 + 40) valueForKey:v8];

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    v12 = [v15 defaultValue];
    v13 = v10;
    goto LABEL_9;
  }

  if (v9 && !v10)
  {
    v12 = [v15 defaultValue];
    v13 = v9;
LABEL_9:
    v14 = [v13 isEqual:v12];

    if (v14)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v9 && v10 && ([v9 isEqual:v10] & 1) == 0)
  {
LABEL_10:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_11:
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUAdjustment *)self isEqualToAdjustment:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(NUAdjustment *)self identifier];
  v3 = 0x4EA01FA48FF05 * [v2 hash];

  return v3;
}

- (NUIdentifier)identifier
{
  v2 = [(NUAdjustment *)self schema];
  v3 = [v2 identifier];

  return v3;
}

- (NSDictionary)settings
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(NUAdjustment *)self schema];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v3 settings];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [(NUAdjustment *)self valueForKey:v10];
          if (v11)
          {
            [v4 setObject:v11 forKeyedSubscript:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)debugDescription
{
  v3 = [(NUAdjustment *)self settings];
  v4 = [(NUAdjustment *)self identifier];
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"PortraitVideo"];

  if (v6)
  {
    v7 = [v3 mutableCopy];
    v8 = [v7 objectForKeyedSubscript:@"disparityKeyframes"];
    v9 = v8;
    if (v8 && [v8 count] >= 6)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu keyframes", objc_msgSend(v9, "count")];
      [v7 setObject:v10 forKeyedSubscript:@"disparityKeyframes"];
    }

    v11 = [v7 objectForKeyedSubscript:@"cinematographyState"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:@"user_tracks"];
      if (v13)
      {
        v14 = [v12 mutableCopy];
        [v14 setObject:@"user_tracks; removing for clarity" forKeyedSubscript:@"user_tracks"];
        [v7 setObject:v14 forKeyedSubscript:@"cinematographyState"];
      }
    }
  }

  else
  {
    v7 = v3;
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = objc_opt_class();
  v17 = [(NUAdjustment *)self identifier];
  v18 = [v15 stringWithFormat:@"<%@:%p> id=%@ settings=%@", v16, self, v17, v7];

  return v18;
}

- (NSString)description
{
  v3 = [(NUAdjustment *)self settings];
  v4 = [v3 description];

  if ([v4 length] >= 0x65)
  {
    v5 = [v4 substringToIndex:75];
    v6 = [v5 stringByAppendingString:@"..."];

    v4 = v6;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = [(NUAdjustment *)self identifier];
  v10 = [v7 stringWithFormat:@"<%@:%p> id=%@ settings=%@", v8, self, v9, v4];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = [(NUAdjustment *)self schema];
  if (!v4)
  {
    v9 = NUAssertLogger_17098();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [(NUAdjustment *)self identifier];
      v12 = [v10 stringWithFormat:@"No schema registered for identifier '%@'", v11];
      *buf = 138543362;
      v45 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_17098();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v25;
        v46 = 2114;
        v47 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v30 = [(NUAdjustment *)self identifier];
    _NUAssertFailHandler("[NUAdjustment copyWithZone:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUAdjustment.m", 51, @"No schema registered for identifier '%@'", v31, v32, v33, v34, v30);
  }

  v5 = v4;
  v6 = [v4 copyAdjustment:self];
  if (!v6)
  {
    v18 = NUAssertLogger_17098();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[NUAdjustment copyWithZone] failed. check logs for more details. adjustment: %@", self];
      *buf = 138543362;
      v45 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_17098();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAdjustment copyWithZone:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUAdjustment.m", 55, @"[NUAdjustment copyWithZone] failed. check logs for more details. adjustment: %@", v40, v41, v42, v43, self);
  }

  v7 = v6;

  return v7;
}

- (NUAdjustment)initWithIdentifier:(id)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v12 = NUAssertLogger_17098();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v78 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_17098();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v40;
        v79 = 2114;
        v80 = v44;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAdjustment initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUAdjustment.m", 34, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "identifier != nil");
  }

  v5 = v4;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v19 = NUAssertLogger_17098();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to instantiate abstract class %@", objc_opt_class()];
      *buf = 138543362;
      v78 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_17098();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        v52 = [v50 callStackSymbols];
        v53 = [v52 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v49;
        v79 = 2114;
        v80 = v53;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v54 = objc_opt_class();
    _NUAssertFailHandler("[NUAdjustment initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUAdjustment.m", 35, @"Unable to instantiate abstract class %@", v55, v56, v57, v58, v54);
  }

  v7 = +[NUSchemaRegistry sharedRegistry];
  v8 = [v7 schemaWithIdentifier:v5];
  if (!v8)
  {
    v26 = NUAssertLogger_17098();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to instantiate adjustment with invalid identifier %@", v5];
      *buf = 138543362;
      v78 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_17098();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        v62 = [v60 callStackSymbols];
        v63 = [v62 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v59;
        v79 = 2114;
        v80 = v63;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAdjustment initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUAdjustment.m", 39, @"Unable to instantiate adjustment with invalid identifier %@", v64, v65, v66, v67, v5);
  }

  v9 = v8;
  if ([v8 type] != 1)
  {
    v33 = NUAssertLogger_17098();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempted to instantiate adjustment with invalid schema type %@", v9];
      *buf = 138543362;
      v78 = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_17098();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v37)
      {
        v68 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v69 = MEMORY[0x1E696AF00];
        v70 = v68;
        v71 = [v69 callStackSymbols];
        v72 = [v71 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v68;
        v79 = 2114;
        v80 = v72;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      v38 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [v38 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAdjustment initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUAdjustment.m", 40, @"Attempted to instantiate adjustment with invalid schema type %@", v73, v74, v75, v76, v9);
  }

  v10 = [(NUAdjustment *)self initWithAdjustmentSchema:v9];

  return v10;
}

- (NUAdjustment)initWithAdjustmentSchema:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_17098();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "adjustmentSchema != nil"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_17098();
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

    _NUAssertFailHandler("[NUAdjustment initWithAdjustmentSchema:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUAdjustment.m", 26, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "adjustmentSchema != nil");
  }

  v5 = v4;
  v25.receiver = self;
  v25.super_class = NUAdjustment;
  v6 = [(NUAdjustment *)&v25 init];
  schema = v6->_schema;
  v6->_schema = v5;

  return v6;
}

- (NUAdjustment)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_17111);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_17111);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_17111);
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
  _NUAssertFailHandler("[NUAdjustment init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUAdjustment.m", 21, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end