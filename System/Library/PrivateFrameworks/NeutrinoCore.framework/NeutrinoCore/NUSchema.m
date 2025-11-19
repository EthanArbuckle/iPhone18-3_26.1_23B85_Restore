@interface NUSchema
+ (BOOL)serializeMediaType:(int64_t)a3 intoDictionary:(id)a4 error:(id *)a5;
+ (BOOL)validateIdentifiable:(id)a3 error:(id *)a4;
+ (BOOL)validateIdentifiable:(id)a3 type:(int64_t)a4 error:(id *)a5;
+ (BOOL)validateSchemaIdentifier:(id)a3 type:(int64_t)a4 error:(id *)a5;
+ (BOOL)validateSchemaType:(id)a3 error:(id *)a4;
+ (id)copyIdentifiableItem:(id)a3;
+ (id)copyItem:(id)a3 schemaIdentifier:(id)a4;
+ (id)deserializeContentsFromDictionary:(id)a3 error:(id *)a4;
+ (id)deserializeFromDictionary:(id)a3 error:(id *)a4;
+ (id)deserializeIdentifiableItem:(id)a3 error:(id *)a4;
+ (id)deserializeIdentifierFromDictionary:(id)a3 error:(id *)a4;
+ (id)deserializeItem:(id)a3 schemaIdentifier:(id)a4 error:(id *)a5;
+ (id)deserializeSchemaFromArray:(id)a3 error:(id *)a4;
+ (id)reservedPropertyNames;
+ (id)serializeIdentifiableItem:(id)a3 error:(id *)a4;
+ (id)serializeItem:(id)a3 schemaIdentifier:(id)a4 error:(id *)a5;
+ (int64_t)deserializeMediaTypeFromDictionary:(id)a3;
+ (int64_t)schemaTypeFromString:(id)a3 error:(id *)a4;
- (BOOL)deserializeIdentifierFromDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSchema:(id)a3;
- (BOOL)isValid:(id *)a3;
- (BOOL)itemIsResolved:(id)a3;
- (BOOL)resolveItem:(id)a3 resolver:(id)a4 error:(id *)a5;
- (BOOL)serializeIdentifier:(id)a3 intoDictionary:(id)a4 error:(id *)a5;
- (BOOL)serializeIntoDictionary:(id)a3 error:(id *)a4;
- (BOOL)validateIdentifier:(id)a3 error:(id *)a4;
- (NUSchema)initWithAttributes:(id)a3;
- (NUSchema)initWithIdentifier:(id)a3 attributes:(id)a4;
- (id)schemaDependencies;
- (int64_t)type;
- (unint64_t)hash;
@end

@implementation NUSchema

- (BOOL)resolveItem:(id)a3 resolver:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
    v13 = [v9 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v12];
    *buf = 138543362;
    v34 = v13;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v14 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v14 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
      }

      goto LABEL_8;
    }

    if (v14 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v15 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AF00];
      v17 = v15;
      v18 = [v16 callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v19;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v20 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = MEMORY[0x1E696AF00];
    v23 = specific;
    v24 = v20;
    v25 = [v22 callStackSymbols];
    v26 = [v25 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v34 = specific;
    v35 = 2114;
    v36 = v26;
    _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  _NUAssertFailHandler("[NUSchema resolveItem:resolver:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 520, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v29, v30, v31, v32, v28);
}

- (BOOL)itemIsResolved:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
  }

  v4 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
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
  _NUAssertFailHandler("[NUSchema itemIsResolved:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 516, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v25, v26, v27, v28, v24);
}

- (id)schemaDependencies
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      v12 = [v10 callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    v19 = [v16 callStackSymbols];
    v20 = [v19 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NUSchema schemaDependencies]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 512, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

- (BOOL)serializeIntoDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(NUSchema *)self identifier];
  v7 = [v6 stringRepresentation];
  [v5 setObject:v7 forKeyedSubscript:@"identifier"];

  return 1;
}

- (BOOL)isEqualToSchema:(id)a3
{
  v4 = a3;
  v5 = [(NUSchema *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqualToIdentifier:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUSchema *)self isEqualToSchema:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(NUSchema *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)deserializeIdentifierFromDictionary:(id)a3 error:(id *)a4
{
  v6 = [NUSchema deserializeIdentifierFromDictionary:a3 error:?];
  if (v6)
  {
    v7 = [(NUSchema *)self validateIdentifier:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)serializeIdentifier:(id)a3 intoDictionary:(id)a4 error:(id *)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v14 = NUAssertLogger_18635();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v63 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_18635();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v35;
        v64 = 2114;
        v65 = v39;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchema serializeIdentifier:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 230, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "identifier != nil");
  }

  v10 = v9;
  if (!v9)
  {
    v21 = NUAssertLogger_18635();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v63 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_18635();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v25)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v44;
        v64 = 2114;
        v65 = v48;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchema serializeIdentifier:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 231, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "dictionary != nil");
  }

  if (!a5)
  {
    v28 = NUAssertLogger_18635();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v63 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_18635();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        v56 = [v54 callStackSymbols];
        v57 = [v56 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v53;
        v64 = 2114;
        v65 = v57;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchema serializeIdentifier:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 232, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "error != NULL");
  }

  v11 = [(NUSchema *)self validateIdentifier:v8 error:a5];
  if (v11)
  {
    v12 = [v8 stringRepresentation];
    [v10 setObject:v12 forKeyedSubscript:@"identifier"];
  }

  return v11;
}

- (BOOL)validateIdentifier:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v11 = NUAssertLogger_18635();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v44 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_18635();
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
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchema validateIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 149, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "identifier != nil");
  }

  if (!a4)
  {
    v18 = NUAssertLogger_18635();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v44 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_18635();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchema validateIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 150, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v7 = v6;
  v8 = [(NUSchema *)self identifier];
  v9 = [v7 isEqualToIdentifier:v8];

  if ((v9 & 1) == 0)
  {
    *a4 = [NUError mismatchError:@"Identifier mismatch" object:v7];
  }

  return v9;
}

- (BOOL)isValid:(id *)a3
{
  v10 = 0;
  v5 = [(NUModel *)self validateAttributes:&v10];
  if (!v5)
  {
    v6 = v10;
    v7 = [NUError errorWithCode:2 reason:@"Invalid attributes" object:self underlyingError:v6];
    v8 = v7;

    *a3 = v7;
  }

  return v5;
}

- (NUSchema)initWithIdentifier:(id)a3 attributes:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = NUAssertLogger_18635();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v30 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_18635();
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

    _NUAssertFailHandler("[NUSchema initWithIdentifier:attributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 49, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "identifier != nil");
  }

  v8 = v7;
  v28.receiver = self;
  v28.super_class = NUSchema;
  v9 = [(NUModel *)&v28 initWithAttributes:v7];
  identifier = v9->_identifier;
  v9->_identifier = v6;

  return v9;
}

- (NUSchema)initWithAttributes:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
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
  _NUAssertFailHandler("[NUSchema initWithAttributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 44, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (int64_t)type
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      v12 = [v10 callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    v19 = [v16 callStackSymbols];
    v20 = [v19 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NUSchema type]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 39, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

+ (id)deserializeSchemaFromArray:(id)a3 error:(id *)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v19 = NUAssertLogger_18635();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "array != nil"];
      *buf = 138543362;
      v59 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_18635();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v33;
        v60 = 2114;
        v61 = v37;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema deserializeSchemaFromArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 483, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "array != nil");
  }

  if (!a4)
  {
    v26 = NUAssertLogger_18635();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v59 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_18635();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
      {
        v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        v45 = [v43 callStackSymbols];
        v46 = [v45 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v42;
        v60 = 2114;
        v61 = v46;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema deserializeSchemaFromArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 484, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "error != NULL");
  }

  v7 = v6;
  v51 = a4;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v54;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v54 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v53 + 1) + 8 * v13);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v52 = 0;
      v15 = [a1 deserializeFromDictionary:v14 error:&v52];
      v16 = v52;
      if (!v15)
      {
        *v51 = [NUError errorWithCode:1 reason:@"Failed to deserialize schema" object:v14 underlyingError:v16];

        goto LABEL_15;
      }

      [v8 addObject:v15];

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v53 objects:v57 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    *v51 = [NUError mismatchError:@"Not a dictionary" object:v14];
LABEL_15:

    v17 = 0;
    goto LABEL_16;
  }

LABEL_12:

  v17 = v8;
LABEL_16:

  return v17;
}

+ (id)deserializeFromDictionary:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v13 = NUAssertLogger_18635();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v46 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_18635();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v27;
        v47 = 2114;
        v48 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 441, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "dictionary != nil");
  }

  if (!a4)
  {
    v20 = NUAssertLogger_18635();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v46 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_18635();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v36;
        v47 = 2114;
        v48 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 442, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != NULL");
  }

  v6 = v5;
  v7 = [v5 objectForKeyedSubscript:@"isa"];
  if (!v7)
  {
    v10 = [NUError missingError:@"Missing schema type" object:v6];
LABEL_9:
    v11 = 0;
    *a4 = v10;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [NUError invalidError:@"Invalid schema type" object:v7];
    goto LABEL_9;
  }

  v8 = v7;
  if ([v8 isEqualToString:@"Adjustment"])
  {
    v9 = NUAdjustmentSchema;
  }

  else if ([v8 isEqualToString:@"Array"])
  {
    v9 = NUArraySchema;
  }

  else if ([v8 isEqualToString:@"Composition"])
  {
    v9 = NUCompositionSchema;
  }

  else
  {
    if (![v8 isEqualToString:@"Source"])
    {
      [NUError unknownError:@"Unknown schema type" object:v8];
      *a4 = v11 = 0;
      goto LABEL_17;
    }

    v9 = NUSourceSchema;
  }

  v11 = [(__objc2_class *)v9 deserializeFromDictionary:v6 error:a4];
LABEL_17:

LABEL_18:

  return v11;
}

+ (id)deserializeItem:(id)a3 schemaIdentifier:(id)a4 error:(id *)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v15 = NUAssertLogger_18635();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
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
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v29;
        v49 = 2114;
        v50 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema deserializeItem:schemaIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 398, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "object != nil");
  }

  if (!a5)
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
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v38;
        v49 = 2114;
        v50 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema deserializeItem:schemaIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 399, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v9 = v8;
  v10 = +[NUSchemaRegistry sharedRegistry];
  v11 = [v10 schemaWithIdentifier:v9];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 deserialize:v7 error:a5];
  }

  else
  {
    [NUError unknownError:@"Unknown identifier" object:v9];
    *a5 = v13 = 0;
  }

  return v13;
}

+ (id)serializeItem:(id)a3 schemaIdentifier:(id)a4 error:(id *)a5
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v20 = NUAssertLogger_18635();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "item != nil"];
      *buf = 138543362;
      v70 = v21;
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
        v44 = [v42 callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v41;
        v71 = 2114;
        v72 = v45;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema serializeItem:schemaIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 373, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "item != nil");
  }

  v9 = v8;
  if (!v8)
  {
    v27 = NUAssertLogger_18635();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v70 = v28;
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
        v53 = [v51 callStackSymbols];
        v54 = [v53 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v50;
        v71 = 2114;
        v72 = v54;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema serializeItem:schemaIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 374, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "identifier != nil");
  }

  if (!a5)
  {
    v34 = NUAssertLogger_18635();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v70 = v35;
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
        v62 = [v60 callStackSymbols];
        v63 = [v62 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v59;
        v71 = 2114;
        v72 = v63;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema serializeItem:schemaIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 375, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != NULL");
  }

  v10 = +[NUSchemaRegistry sharedRegistry];
  v11 = [v10 schemaWithIdentifier:v9];
  v12 = v11;
  if (v11)
  {
    v68 = 0;
    v13 = [v11 serialize:v7 error:&v68];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v16 = v68;
      v17 = [NUError errorWithCode:1 reason:@"Failed to serialize item" object:v7 underlyingError:v16];
      v18 = v17;

      *a5 = v17;
    }
  }

  else
  {
    [NUError unknownError:@"Unknown identifier" object:v9];
    *a5 = v14 = 0;
  }

  return v14;
}

+ (id)deserializeIdentifiableItem:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v12 = NUAssertLogger_18635();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v46 = v13;
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
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v26;
        v47 = 2114;
        v48 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema deserializeIdentifiableItem:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 351, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "object != nil");
  }

  if (!a4)
  {
    v19 = NUAssertLogger_18635();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v46 = v20;
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
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v35;
        v47 = 2114;
        v48 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema deserializeIdentifiableItem:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 352, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = 0;
    v8 = [a1 deserializeIdentifierFromDictionary:v7 error:&v44];
    v9 = v44;
    if (v8)
    {
      v10 = [NUSchema deserializeItem:v7 schemaIdentifier:v8 error:a4];
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to deserialize identifier" object:v7 underlyingError:v9];
      *a4 = v10 = 0;
    }
  }

  else
  {
    [NUError mismatchError:@"Not a dictionary" object:v7];
    *a4 = v10 = 0;
  }

  return v10;
}

+ (id)serializeIdentifiableItem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 identifier];
  v7 = [NUSchema serializeItem:v5 schemaIdentifier:v6 error:a4];

  return v7;
}

+ (id)deserializeContentsFromDictionary:(id)a3 error:(id *)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v23 = NUAssertLogger_18635();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v66 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_18635();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        v40 = [v38 callStackSymbols];
        v41 = [v40 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v37;
        v67 = 2114;
        v68 = v41;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema deserializeContentsFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 310, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "dictionary != nil");
  }

  if (!a4)
  {
    v30 = NUAssertLogger_18635();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v66 = v31;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v33 = NUAssertLogger_18635();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v34)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        v49 = [v47 callStackSymbols];
        v50 = [v49 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v46;
        v67 = 2114;
        v68 = v50;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema deserializeContentsFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 311, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "error != NULL");
  }

  v7 = v6;
  v63 = 0;
  v8 = [a1 deserializeDictionaryFromDictionary:v6 key:@"contents" error:&v63];
  v9 = v63;
  if (v8)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v12)
    {
      v13 = v12;
      v55 = a4;
      v56 = v8;
      v14 = *v60;
      v57 = v7;
LABEL_6:
      v15 = 0;
      v16 = v9;
      while (1)
      {
        if (*v60 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v59 + 1) + 8 * v15);
        v18 = [v11 objectForKeyedSubscript:v17];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v58 = 0;
        v19 = [NUIdentifier identifierWithString:v18 error:&v58];
        v9 = v58;

        if (!v19)
        {
          v21 = [NUError errorWithCode:1 reason:@"Failed to parse identifier" object:v17 underlyingError:v9];
          v16 = v9;
          goto LABEL_17;
        }

        [v10 setObject:v19 forKeyedSubscript:v17];

        ++v15;
        v16 = v9;
        if (v13 == v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v59 objects:v64 count:16];
          v8 = v56;
          v7 = v57;
          if (v13)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }
      }

      v21 = [NUError invalidError:@"Not an identifier string" object:v17];
LABEL_17:
      *v55 = v21;

      v20 = 0;
      v9 = v16;
      v8 = v56;
      v7 = v57;
      goto LABEL_18;
    }

LABEL_13:

    v20 = v10;
LABEL_18:
  }

  else
  {
    [NUError errorWithCode:2 reason:@"Invalid contents dictionary" object:v7 underlyingError:v9];
    *a4 = v20 = 0;
  }

  return v20;
}

+ (BOOL)serializeMediaType:(int64_t)a3 intoDictionary:(id)a4 error:(id *)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!v7)
  {
    v12 = NUAssertLogger_18635();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
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
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema serializeMediaType:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 297, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "dictionary != nil");
  }

  if (!a5)
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
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema serializeMediaType:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 298, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v8 = v7;
  if (a3)
  {
    if (a3 > 3)
    {
      v9 = @"Invalid";
    }

    else
    {
      v9 = off_1E81098D0[a3];
    }

    v10 = v9;
    [v8 setObject:v10 forKeyedSubscript:@"media-type"];
  }

  return 1;
}

+ (int64_t)deserializeMediaTypeFromDictionary:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v10 = NUAssertLogger_18635();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
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

    _NUAssertFailHandler("+[NUSchema deserializeMediaTypeFromDictionary:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 281, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "dictionary != nil");
  }

  v5 = v4;
  v26 = 0;
  v6 = [a1 deserializeStringFromDictionary:v4 key:@"media-type" error:&v26];
  v7 = v6;
  if (v6)
  {
    v8 = mediaTypeFromString(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)deserializeIdentifierFromDictionary:(id)a3 error:(id *)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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

    _NUAssertFailHandler("+[NUSchema deserializeIdentifierFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 246, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "dictionary != nil");
  }

  if (!a4)
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

    _NUAssertFailHandler("+[NUSchema deserializeIdentifierFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 247, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "error != NULL");
  }

  v7 = v6;
  v47 = 0;
  v8 = [a1 deserializeStringFromDictionary:v6 key:@"identifier" error:&v47];
  v9 = v47;
  if (v8)
  {
    v46 = 0;
    v10 = [NUIdentifier identifierWithString:v8 error:&v46];
    v11 = v46;

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      *a4 = [NUError failureError:@"Malformed identifier" object:v8];
    }

    v9 = v11;
  }

  else
  {
    [NUError errorWithCode:2 reason:@"Invalid identifier" object:v7 underlyingError:v9];
    *a4 = v10 = 0;
  }

  return v10;
}

+ (id)copyItem:(id)a3 schemaIdentifier:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v13 = NUAssertLogger_18635();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "item != nil"];
      *buf = 138543362;
      v46 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_18635();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v27;
        v47 = 2114;
        v48 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema copyItem:schemaIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 214, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "item != nil");
  }

  v7 = v6;
  if (!v6)
  {
    v20 = NUAssertLogger_18635();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v46 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_18635();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v36;
        v47 = 2114;
        v48 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema copyItem:schemaIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 215, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "identifier != nil");
  }

  v8 = +[NUSchemaRegistry sharedRegistry];
  v9 = [v8 schemaWithIdentifier:v7];

  if (v9)
  {
    v10 = [v9 copy:v5];
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_557);
    }

    v11 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v46 = v7;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "failure in [NUSchema copyItem]. identifier %@ not found in schema", buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)copyIdentifiableItem:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [a1 copyItem:v4 schemaIdentifier:v5];

  return v6;
}

+ (BOOL)validateIdentifiable:(id)a3 type:(int64_t)a4 error:(id *)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v18 = NUAssertLogger_18635();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "item != nil"];
      *buf = 138543362;
      v52 = v19;
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
        v35 = [v33 callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v32;
        v53 = 2114;
        v54 = v36;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema validateIdentifiable:type:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 178, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "item != nil");
  }

  if (!a5)
  {
    v25 = NUAssertLogger_18635();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v52 = v26;
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
        v44 = [v42 callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v41;
        v53 = 2114;
        v54 = v45;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema validateIdentifiable:type:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 179, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "error != NULL");
  }

  v8 = v7;
  v9 = +[NUSchemaRegistry sharedRegistry];
  v10 = [v8 identifier];
  v11 = [v9 schemaWithIdentifier:v10];

  if (v11)
  {
    if ([v11 type] == a4)
    {
      v50 = 0;
      if ([v11 validate:v8 error:&v50])
      {
        v12 = 1;
      }

      else
      {
        v14 = v50;
        v15 = [NUError errorWithCode:2 reason:@"Failed to validate item" object:v8 underlyingError:v14];
        v16 = v15;

        v12 = 0;
        *a5 = v15;
      }
    }

    else
    {
      [NUError mismatchError:@"Wrong schema type" object:v8];
      *a5 = v12 = 0;
    }
  }

  else
  {
    v13 = [v8 identifier];
    *a5 = [NUError unknownError:@"Unknown schema identifier" object:v13];

    v12 = 0;
  }

  return v12;
}

+ (BOOL)validateIdentifiable:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = NUAssertLogger_18635();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v42 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_18635();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        v26 = [v24 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v23;
        v43 = 2114;
        v44 = v27;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema validateIdentifiable:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 164, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "object != nil");
  }

  if (!a4)
  {
    v16 = NUAssertLogger_18635();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v42 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_18635();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v20)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        v35 = [v33 callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v32;
        v43 = 2114;
        v44 = v36;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema validateIdentifiable:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 165, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "error != NULL");
  }

  v6 = v5;
  v7 = [v5 conformsToProtocol:&unk_1F3F866A8];
  if ((v7 & 1) == 0)
  {
    *a4 = [NUError mismatchError:@"Object is not identifiable" object:v6];
  }

  return v7;
}

+ (int64_t)schemaTypeFromString:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = NUAssertLogger_18635();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "string != nil"];
      *buf = 138543362;
      v42 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_18635();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        v26 = [v24 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v23;
        v43 = 2114;
        v44 = v27;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema schemaTypeFromString:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 121, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "string != nil");
  }

  if (!a4)
  {
    v16 = NUAssertLogger_18635();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v42 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_18635();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v20)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        v35 = [v33 callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v32;
        v43 = 2114;
        v44 = v36;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema schemaTypeFromString:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 122, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "error != NULL");
  }

  v6 = v5;
  if ([v5 isEqualToString:@"Adjustment"])
  {
    v7 = 1;
  }

  else if ([v6 isEqualToString:@"Composition"])
  {
    v7 = 4;
  }

  else if ([v6 isEqualToString:@"Source"])
  {
    v7 = 3;
  }

  else if ([v6 isEqualToString:@"Array"])
  {
    v7 = 2;
  }

  else
  {
    [NUError unknownError:@"Unknown schema type" object:v6];
    *a4 = v7 = 0;
  }

  return v7;
}

+ (BOOL)validateSchemaType:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([NUModel validateString:v6 error:a4])
  {
    v7 = [a1 schemaTypeFromString:v6 error:a4] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)validateSchemaIdentifier:(id)a3 type:(int64_t)a4 error:(id *)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v15 = NUAssertLogger_18635();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
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
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v29;
        v49 = 2114;
        v50 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema validateSchemaIdentifier:type:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 84, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "identifier != nil");
  }

  if (!a5)
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
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v38;
        v49 = 2114;
        v50 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSchema validateSchemaIdentifier:type:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 85, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v8 = v7;
  v9 = +[NUSchemaRegistry sharedRegistry];
  v10 = [v9 schemaWithIdentifier:v8];
  v11 = v10;
  if (!v10)
  {
    v13 = [NUError unknownError:@"Unknown schema" object:v8];
LABEL_9:
    v12 = 0;
    *a5 = v13;
    goto LABEL_10;
  }

  if (a4 && [v10 type] != a4)
  {
    v13 = [NUError mismatchError:@"Wrong schema type" object:v8];
    goto LABEL_9;
  }

  v12 = 1;
LABEL_10:

  return v12;
}

+ (id)reservedPropertyNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__NUSchema_reservedPropertyNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (reservedPropertyNames_onceToken_19559 != -1)
  {
    dispatch_once(&reservedPropertyNames_onceToken_19559, block);
  }

  v2 = reservedPropertyNames_names_19560;

  return v2;
}

void __33__NUSchema_reservedPropertyNames__block_invoke(uint64_t a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = @"identifier";
  v7[1] = @"media-type";
  v7[2] = @"contents";
  v7[3] = @"settings";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___NUSchema;
  v3 = objc_msgSendSuper2(&v6, sel_reservedPropertyNames);
  v4 = [v3 setByAddingObjectsFromArray:v2];
  v5 = reservedPropertyNames_names_19560;
  reservedPropertyNames_names_19560 = v4;
}

@end