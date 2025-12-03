@interface NUSource
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSource:(id)source;
- (BOOL)isResolved;
- (BOOL)resolve:(id)resolve error:(id *)error;
- (NSString)description;
- (NUSource)init;
- (NUSource)initWithIdentifier:(id)identifier;
- (NUSource)initWithSourceSchema:(id)schema;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation NUSource

- (BOOL)resolve:(id)resolve error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  resolveCopy = resolve;
  if (!resolveCopy)
  {
    v11 = NUAssertLogger_9314();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "resolver != nil"];
      *buf = 138543362;
      v28 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_9314();
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

    _NUAssertFailHandler("[NUSource resolve:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUSource.m", 496, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "resolver != nil");
  }

  v7 = resolveCopy;
  if (![(NUSource *)self isResolved])
  {
    v8 = [v7 resolveSource:self error:error];
    [(NUSource *)self setDefinition:v8];
  }

  isResolved = [(NUSource *)self isResolved];

  return isResolved;
}

- (BOOL)isResolved
{
  definition = [(NUSource *)self definition];
  v3 = definition != 0;

  return v3;
}

- (BOOL)isEqualToSource:(id)source
{
  sourceCopy = source;
  identifier = [(NUSource *)self identifier];
  identifier2 = [sourceCopy identifier];
  v7 = [identifier isEqualToIdentifier:identifier2];

  if (v7 && (-[NUSource assetIdentifier](self, "assetIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), [sourceCopy assetIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v10))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    schema = [(NUSource *)self schema];
    settings = [schema settings];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __28__NUSource_isEqualToSource___block_invoke;
    v15[3] = &unk_1E810A8D0;
    v15[4] = self;
    v16 = sourceCopy;
    v17 = &v18;
    [settings enumerateKeysAndObjectsUsingBlock:v15];

    v13 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void __28__NUSource_isEqualToSource___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUSource *)self isEqualToSource:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  identifier = [(NUSource *)self identifier];
  v4 = 0x192B6B3B458B45 * [identifier hash];

  assetIdentifier = [(NUSource *)self assetIdentifier];
  v6 = 0xA084B4AF59895 * [assetIdentifier hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(NUSource *)self identifier];
  assetIdentifier = [(NUSource *)self assetIdentifier];
  settings = [(NUSource *)self settings];
  definition = [(NUSource *)self definition];
  v9 = [v3 stringWithFormat:@"<%@:%p id=%@ assetIdentifier=%@ settings=%@ definition=%@>", v4, self, identifier, assetIdentifier, settings, definition];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  objc_storeStrong((v4 + 16), self->_schema);
  v5 = [(NSString *)self->_assetIdentifier copy];
  v6 = *(v4 + 24);
  *(v4 + 24) = v5;

  v7 = [(NSMutableDictionary *)self->_settings mutableCopy];
  v8 = *(v4 + 8);
  *(v4 + 8) = v7;

  objc_storeStrong((v4 + 32), self->_definition);
  return v4;
}

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

- (NUSource)initWithIdentifier:(id)identifier
{
  v62 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v10 = NUAssertLogger_9314();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v59 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_9314();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v31;
        v60 = 2114;
        v61 = v35;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSource initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUSource.m", 401, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "identifier != nil");
  }

  v5 = identifierCopy;
  v6 = +[NUSchemaRegistry sharedRegistry];
  v7 = [v6 schemaWithIdentifier:v5];

  if (!v7)
  {
    v17 = NUAssertLogger_9314();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to instantiate source with unregistered identifier %@", v5];
      *buf = 138543362;
      v59 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_9314();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols3 = [v41 callStackSymbols];
        v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v40;
        v60 = 2114;
        v61 = v44;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSource initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUSource.m", 404, @"Unable to instantiate source with unregistered identifier %@", v45, v46, v47, v48, v5);
  }

  if ([v7 type] != 3)
  {
    v24 = NUAssertLogger_9314();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempted to instantiate source with invalid schema type %@", v7];
      *buf = 138543362;
      v59 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_9314();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        callStackSymbols5 = [v50 callStackSymbols];
        v53 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v49;
        v60 = 2114;
        v61 = v53;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSource initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUSource.m", 405, @"Attempted to instantiate source with invalid schema type %@", v54, v55, v56, v57, v7);
  }

  v8 = [(NUSource *)self initWithSourceSchema:v7];

  return v8;
}

- (NUSource)initWithSourceSchema:(id)schema
{
  v35 = *MEMORY[0x1E69E9840];
  schemaCopy = schema;
  if (!schemaCopy)
  {
    v14 = NUAssertLogger_9314();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceSchema != nil"];
      *buf = 138543362;
      v32 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_9314();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v21;
        v33 = 2114;
        v34 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSource initWithSourceSchema:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUSource.m", 393, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "sourceSchema != nil");
  }

  v5 = schemaCopy;
  v30.receiver = self;
  v30.super_class = NUSource;
  v6 = [(NUSource *)&v30 init];
  schema = v6->_schema;
  v6->_schema = v5;
  v8 = v5;

  v9 = objc_alloc(MEMORY[0x1E695DF90]);
  settings = [(NUSourceSchema *)v8 settings];
  v11 = [v9 initWithCapacity:{objc_msgSend(settings, "count")}];
  settings = v6->_settings;
  v6->_settings = v11;

  return v6;
}

- (NUSource)init
{
  v3 = +[NUSourceSchema sharedSourceSchema];
  v4 = [(NUSource *)self initWithSourceSchema:v3];

  return v4;
}

@end