@interface NUComposition
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToComposition:(id)composition;
- (BOOL)isResolved;
- (BOOL)resolve:(id)resolve error:(id *)error;
- (NSDictionary)contents;
- (NSString)debugDescription;
- (NSString)description;
- (NUComposition)init;
- (NUComposition)initWithCompositionSchema:(id)schema;
- (NUComposition)initWithIdentifier:(id)identifier;
- (NUIdentifier)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation NUComposition

- (BOOL)resolve:(id)resolve error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  resolveCopy = resolve;
  if (!resolveCopy)
  {
    v11 = NUAssertLogger_70();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "resolver != nil"];
      *buf = 138543362;
      v28 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_70();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUComposition resolve:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUComposition.m", 181, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "resolver != nil");
  }

  v7 = resolveCopy;
  schema = [(NUComposition *)self schema];
  v9 = [schema resolveItem:self resolver:v7 error:error];

  return v9;
}

- (BOOL)isResolved
{
  selfCopy = self;
  schema = [(NUComposition *)self schema];
  LOBYTE(selfCopy) = [schema itemIsResolved:selfCopy];

  return selfCopy;
}

- (BOOL)isEqualToComposition:(id)composition
{
  v69 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (!compositionCopy)
  {
    v25 = NUAssertLogger_70();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "other != nil"];
      *buf = 138543362;
      v66 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_70();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        callStackSymbols = [v33 callStackSymbols];
        v36 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v32;
        v67 = 2114;
        v68 = v36;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUComposition isEqualToComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUComposition.m", 144, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "other != nil");
  }

  v5 = compositionCopy;
  identifier = [(NUComposition *)self identifier];
  identifier2 = [v5 identifier];
  v8 = [identifier isEqualToIdentifier:identifier2];

  if (!v8)
  {
    v23 = 0;
    goto LABEL_31;
  }

  schema = [(NUComposition *)self schema];
  if (!schema)
  {
    v41 = NUAssertLogger_70();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = MEMORY[0x1E696AEC0];
      identifier3 = [(NUComposition *)self identifier];
      v44 = [v42 stringWithFormat:@"No schema registered for identifier '%@'", identifier3];
      *buf = 138543362;
      v66 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v46 = NUAssertLogger_70();
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
    if (v45)
    {
      if (v47)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        callStackSymbols3 = [v51 callStackSymbols];
        v54 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v50;
        v67 = 2114;
        v68 = v54;
        _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v47)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v49 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v49;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    identifier4 = [(NUComposition *)self identifier];
    _NUAssertFailHandler("[NUComposition isEqualToComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUComposition.m", 156, @"No schema registered for identifier '%@'", v56, v57, v58, v59, identifier4);
  }

  v10 = schema;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  contents = [schema contents];
  v12 = [contents countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (!v12)
  {
    v23 = 1;
    goto LABEL_30;
  }

  v13 = v12;
  v14 = *v61;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v61 != v14)
      {
        objc_enumerationMutation(contents);
      }

      v16 = *(*(&v60 + 1) + 8 * i);
      v17 = [(NUComposition *)self valueForKey:v16];
      v18 = [v5 valueForKey:v16];
      v19 = v18;
      if (v17)
      {
        v20 = 1;
      }

      else
      {
        v20 = v18 == 0;
      }

      if (!v20)
      {
        v17 = 0;
LABEL_29:

        v23 = 0;
        goto LABEL_30;
      }

      if (v17)
      {
        v21 = v18 == 0;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        v19 = 0;
        goto LABEL_29;
      }

      if (v17)
      {
        v22 = v18 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (!v22 && ([v17 isEqual:v18] & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v13 = [contents countByEnumeratingWithState:&v60 objects:v64 count:16];
    v23 = 1;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_30:

LABEL_31:
  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUComposition *)self isEqualToComposition:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  identifier = [(NUComposition *)self identifier];
  v3 = 0x100FC8C025E859 * [identifier hash];

  return v3;
}

- (NUIdentifier)identifier
{
  schema = [(NUComposition *)self schema];
  identifier = [schema identifier];

  return identifier;
}

- (NSDictionary)contents
{
  v18 = *MEMORY[0x1E69E9840];
  schema = [(NUComposition *)self schema];
  if (schema)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    contents = [schema contents];
    v6 = [contents countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(contents);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [(NUComposition *)self valueForKey:v10];
          if (v11)
          {
            [v4 setObject:v11 forKeyedSubscript:v10];
          }
        }

        v7 = [contents countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v27 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{\n"];
  selfCopy = self;
  contents = [(NUComposition *)self contents];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [contents allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [contents objectForKeyedSubscript:v10];
        v12 = [v11 debugDescription];
        [v3 appendFormat:@"\t%@ = %@, \n", v10, v12];
      }

      v7 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  [v3 appendString:@"}"];
  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  identifier = [(NUComposition *)selfCopy identifier];
  mediaType = [(NUComposition *)selfCopy mediaType];
  if (mediaType > 3)
  {
    v17 = @"Invalid";
  }

  else
  {
    v17 = off_1E81098D0[mediaType];
  }

  v18 = v17;
  v19 = [v13 stringWithFormat:@"<%@:%p id=%@ mediaType=%@ contents=%@>", v14, selfCopy, identifier, v18, v3];

  return v19;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(NUComposition *)self identifier];
  mediaType = [(NUComposition *)self mediaType];
  if (mediaType > 3)
  {
    v7 = @"Invalid";
  }

  else
  {
    v7 = off_1E81098D0[mediaType];
  }

  v8 = v7;
  contents = [(NUComposition *)self contents];
  v10 = [v3 stringWithFormat:@"<%@:%p id=%@ mediaType=%@ contents=%@>", v4, self, identifier, v8, contents];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v48 = *MEMORY[0x1E69E9840];
  schema = [(NUComposition *)self schema];
  if (!schema)
  {
    v9 = NUAssertLogger_70();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AEC0];
      identifier = [(NUComposition *)self identifier];
      v12 = [v10 stringWithFormat:@"No schema registered for identifier '%@'", identifier];
      *buf = 138543362;
      v45 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_70();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v25;
        v46 = 2114;
        v47 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    identifier2 = [(NUComposition *)self identifier];
    _NUAssertFailHandler("[NUComposition copyWithZone:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUComposition.m", 61, @"No schema registered for identifier '%@'", v31, v32, v33, v34, identifier2);
  }

  v5 = schema;
  v6 = [schema copyComposition:self];
  if (!v6)
  {
    v18 = NUAssertLogger_70();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[NUComposition copy] failed. check logs for more details. composition: %@", self];
      *buf = 138543362;
      v45 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_70();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
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
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUComposition copyWithZone:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUComposition.m", 65, @"[NUComposition copy] failed. check logs for more details. composition: %@", v40, v41, v42, v43, self);
  }

  v7 = v6;

  return v7;
}

- (NUComposition)initWithIdentifier:(id)identifier
{
  v81 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v12 = NUAssertLogger_70();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v78 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_70();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols = [v41 callStackSymbols];
        v44 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v40;
        v79 = 2114;
        v80 = v44;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUComposition initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUComposition.m", 44, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "identifier != nil");
  }

  v5 = identifierCopy;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v19 = NUAssertLogger_70();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to instantiate abstract class %@", objc_opt_class()];
      *buf = 138543362;
      v78 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_70();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        callStackSymbols3 = [v50 callStackSymbols];
        v53 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v49;
        v79 = 2114;
        v80 = v53;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v54 = objc_opt_class();
    _NUAssertFailHandler("[NUComposition initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUComposition.m", 45, @"Unable to instantiate abstract class %@", v55, v56, v57, v58, v54);
  }

  v7 = +[NUSchemaRegistry sharedRegistry];
  v8 = [v7 schemaWithIdentifier:v5];
  if (!v8)
  {
    v26 = NUAssertLogger_70();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to instantiate composition with invalid identifier %@", v5];
      *buf = 138543362;
      v78 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_70();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
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
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUComposition initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUComposition.m", 49, @"Unable to instantiate composition with invalid identifier %@", v64, v65, v66, v67, v5);
  }

  v9 = v8;
  if ([v8 type] != 4)
  {
    v33 = NUAssertLogger_70();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempted to instantiate composition with invalid schema type %@", v9];
      *buf = 138543362;
      v78 = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_70();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v37)
      {
        v68 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v69 = MEMORY[0x1E696AF00];
        v70 = v68;
        callStackSymbols7 = [v69 callStackSymbols];
        v72 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v68;
        v79 = 2114;
        v80 = v72;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUComposition initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUComposition.m", 50, @"Attempted to instantiate composition with invalid schema type %@", v73, v74, v75, v76, v9);
  }

  v10 = [(NUComposition *)self initWithCompositionSchema:v9];

  return v10;
}

- (NUComposition)initWithCompositionSchema:(id)schema
{
  v30 = *MEMORY[0x1E69E9840];
  schemaCopy = schema;
  if (!schemaCopy)
  {
    v9 = NUAssertLogger_70();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "compositionSchema != nil"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_70();
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
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUComposition initWithCompositionSchema:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUComposition.m", 33, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "compositionSchema != nil");
  }

  v5 = schemaCopy;
  v25.receiver = self;
  v25.super_class = NUComposition;
  v6 = [(NUComposition *)&v25 init];
  schema = v6->_schema;
  v6->_schema = v5;

  return v6;
}

- (NUComposition)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_78);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_78);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_78);
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
  _NUAssertFailHandler("[NUComposition init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUComposition.m", 28, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end