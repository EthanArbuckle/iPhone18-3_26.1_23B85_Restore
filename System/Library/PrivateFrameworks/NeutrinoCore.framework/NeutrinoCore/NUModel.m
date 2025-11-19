@interface NUModel
+ (BOOL)validateArray:(id)a3 error:(id *)a4;
+ (BOOL)validateBool:(id)a3 error:(id *)a4;
+ (BOOL)validateIdentifier:(id)a3 error:(id *)a4;
+ (BOOL)validateName:(id)a3 error:(id *)a4;
+ (BOOL)validateNumber:(id)a3 error:(id *)a4;
+ (BOOL)validatePattern:(id)a3 error:(id *)a4;
+ (BOOL)validatePropertyName:(id)a3 error:(id *)a4;
+ (BOOL)validateString:(id)a3 error:(id *)a4;
+ (BOOL)validateStringArray:(id)a3 error:(id *)a4;
+ (id)_deserializeObjectOfClass:(Class)a3 fromDictionary:(id)a4 key:(id)a5 error:(id *)a6;
+ (id)deserializeArrayFromDictionary:(id)a3 key:(id)a4 error:(id *)a5;
+ (id)deserializeAttribute:(id)a3 value:(id)a4 error:(id *)a5;
+ (id)deserializeDictionaryFromDictionary:(id)a3 key:(id)a4 error:(id *)a5;
+ (id)deserializeFromDictionary:(id)a3 error:(id *)a4;
+ (id)deserializeStringFromDictionary:(id)a3 key:(id)a4 error:(id *)a5;
+ (id)reservedPropertyNames;
- (BOOL)isValid:(id *)a3;
- (BOOL)serializeAttribute:(id)a3 value:(id)a4 intoDictionary:(id)a5 error:(id *)a6;
- (BOOL)serializeIntoDictionary:(id)a3 error:(id *)a4;
- (BOOL)validate:(id)a3 error:(id *)a4;
- (BOOL)validateAttribute:(id)a3 value:(id)a4 error:(id *)a5;
- (BOOL)validateAttributes:(id *)a3;
- (NUModel)initWithAttributes:(id)a3;
- (id)copy:(id)a3;
- (id)deserialize:(id)a3 error:(id *)a4;
- (id)serialize:(id)a3 error:(id *)a4;
- (id)serializeAsDictionary:(id *)a3;
@end

@implementation NUModel

+ (id)deserializeAttribute:(id)a3 value:(id)a4 error:(id *)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = NUAssertLogger_7609();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v44 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("+[NUModel deserializeAttribute:value:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 429, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "identifier != nil");
  }

  if (!a5)
  {
    v18 = NUAssertLogger_7609();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v44 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("+[NUModel deserializeAttribute:value:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 430, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v9 = v8;
  *a5 = [NUError invalidError:@"Unsupported attribute" object:v7];

  return 0;
}

+ (id)deserializeDictionaryFromDictionary:(id)a3 key:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 _deserializeObjectOfClass:objc_opt_class() fromDictionary:v9 key:v8 error:a5];

  return v10;
}

+ (id)deserializeArrayFromDictionary:(id)a3 key:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 _deserializeObjectOfClass:objc_opt_class() fromDictionary:v9 key:v8 error:a5];

  return v10;
}

+ (id)deserializeStringFromDictionary:(id)a3 key:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 _deserializeObjectOfClass:objc_opt_class() fromDictionary:v9 key:v8 error:a5];

  return v10;
}

+ (id)_deserializeObjectOfClass:(Class)a3 fromDictionary:(id)a4 key:(id)a5 error:(id *)a6
{
  v69 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v17 = NUAssertLogger_7609();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v66 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_7609();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v38;
        v67 = 2114;
        v68 = v42;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUModel _deserializeObjectOfClass:fromDictionary:key:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 382, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "dictionary != nil");
  }

  v11 = v10;
  if (!v10)
  {
    v24 = NUAssertLogger_7609();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "key != nil"];
      *buf = 138543362;
      v66 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_7609();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        v50 = [v48 callStackSymbols];
        v51 = [v50 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v47;
        v67 = 2114;
        v68 = v51;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUModel _deserializeObjectOfClass:fromDictionary:key:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 383, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, "key != nil");
  }

  if (!a6)
  {
    v31 = NUAssertLogger_7609();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v66 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_7609();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v35)
      {
        v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        v59 = [v57 callStackSymbols];
        v60 = [v59 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v56;
        v67 = 2114;
        v68 = v60;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUModel _deserializeObjectOfClass:fromDictionary:key:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 384, @"Invalid parameter not satisfying: %s", v61, v62, v63, v64, "error != NULL");
  }

  v12 = [v9 objectForKeyedSubscript:v10];
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      goto LABEL_10;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"in [NUModel _deserializeObjectOfClass] Key:%@ is not Class:%@", v11, a3];
    *a6 = [NUError mismatchError:v15 object:v12];
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"in [NUModel _deserializeObjectOfClass] Missing Key:%@", v11];
    *a6 = [NUError missingError:v14 object:v9];
  }

  v13 = 0;
LABEL_10:

  return v13;
}

+ (id)reservedPropertyNames
{
  if (reservedPropertyNames_onceToken != -1)
  {
    dispatch_once(&reservedPropertyNames_onceToken, &__block_literal_global_7650);
  }

  v3 = reservedPropertyNames_names;

  return v3;
}

uint64_t __32__NUModel_reservedPropertyNames__block_invoke()
{
  reservedPropertyNames_names = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F3F82D30];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)validatePropertyName:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v12 = NUAssertLogger_7609();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v45 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("+[NUModel validatePropertyName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 349, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "object != nil");
  }

  if (!a4)
  {
    v19 = NUAssertLogger_7609();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v45 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("+[NUModel validatePropertyName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 350, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = v6;
  if ([a1 validateName:v6 error:a4])
  {
    v8 = [a1 reservedPropertyNames];
    v9 = [v8 containsObject:v7];

    if (v9)
    {
      [NUError invalidError:@"Reserved keyword" object:v7];
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)validatePattern:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([a1 validateString:v6 error:a4])
  {
    v7 = [NUPattern patternWithString:v6 error:a4];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)validateIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([a1 validateString:v6 error:a4])
  {
    v7 = [NUIdentifier validateIdentifierString:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)validateName:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([a1 validateString:v6 error:a4])
  {
    if ([NUIdentifier validateName:v6])
    {
      v7 = 1;
    }

    else
    {
      [NUError invalidError:@"Invalid name" object:v6];
      *a4 = v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)validateStringArray:(id)a3 error:(id *)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v19 = NUAssertLogger_7609();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v58 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_7609();
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
        v58 = v33;
        v59 = 2114;
        v60 = v37;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v58 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUModel validateStringArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 279, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "object != nil");
  }

  if (!a4)
  {
    v26 = NUAssertLogger_7609();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v58 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_7609();
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
        v58 = v42;
        v59 = 2114;
        v60 = v46;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v58 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUModel validateStringArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 280, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "error != NULL");
  }

  v7 = v6;
  if ([a1 validateArray:v6 error:a4])
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v53;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v53 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v52 + 1) + 8 * i);
          v51 = 0;
          v14 = [a1 validateString:v13 error:&v51];
          v15 = v51;
          v16 = v15;
          if ((v14 & 1) == 0)
          {
            *a4 = [NUError errorWithCode:5 reason:@"Not a string array" object:v8 underlyingError:v15];

            v17 = 0;
            goto LABEL_15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v52 objects:v56 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v17 = 1;
LABEL_15:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)validateArray:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = NUAssertLogger_7609();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v42 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("+[NUModel validateArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 265, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "object != nil");
  }

  if (!a4)
  {
    v16 = NUAssertLogger_7609();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v42 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("+[NUModel validateArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 266, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "error != NULL");
  }

  v6 = v5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    *a4 = [NUError mismatchError:@"Not an array" object:v6];
  }

  return isKindOfClass & 1;
}

+ (BOOL)validateString:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = NUAssertLogger_7609();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v42 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("+[NUModel validateString:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 251, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "object != nil");
  }

  if (!a4)
  {
    v16 = NUAssertLogger_7609();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v42 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("+[NUModel validateString:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 252, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "error != NULL");
  }

  v6 = v5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    *a4 = [NUError mismatchError:@"Not a string" object:v6];
  }

  return isKindOfClass & 1;
}

+ (BOOL)validateNumber:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = NUAssertLogger_7609();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v44 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("+[NUModel validateNumber:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 222, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "object != nil");
  }

  if (!a4)
  {
    v18 = NUAssertLogger_7609();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v44 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("+[NUModel validateNumber:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 223, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    if ([v7 nu_isNaN])
    {
      v8 = @"Number is NaN";
    }

    else
    {
      if (![v7 nu_isInfinite])
      {
        v9 = 1;
        goto LABEL_11;
      }

      v8 = @"Number is infinite";
    }

    [NUError rangeError:v8 object:v7];
    *a4 = v9 = 0;
LABEL_11:

    goto LABEL_12;
  }

  [NUError mismatchError:@"Not a number" object:v6];
  *a4 = v9 = 0;
LABEL_12:

  return v9;
}

+ (BOOL)validateBool:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v10 = NUAssertLogger_7609();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v43 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_7609();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v24;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUModel validateBool:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 201, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "object != nil");
  }

  if (!a4)
  {
    v17 = NUAssertLogger_7609();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v43 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_7609();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v33;
        v44 = 2114;
        v45 = v37;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUModel validateBool:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 202, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 nu_isBoolean];
    if ((v8 & 1) == 0)
    {
      *a4 = [NUError mismatchError:@"Not a BOOLean" object:v7];
    }
  }

  else
  {
    [NUError mismatchError:@"Not a BOOLean" object:v6];
    *a4 = v8 = 0;
  }

  return v8;
}

+ (id)deserializeFromDictionary:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v9 = NUAssertLogger_7609();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("+[NUModel deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 121, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "error != NULL");
  }

  v7 = v6;
  *a4 = [NUError unsupportedError:@"Abstract model" object:a1];

  return 0;
}

- (BOOL)serializeAttribute:(id)a3 value:(id)a4 intoDictionary:(id)a5 error:(id *)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v14 = NUAssertLogger_7609();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v47 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_7609();
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
        v47 = v28;
        v48 = 2114;
        v49 = v32;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUModel serializeAttribute:value:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 420, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "identifier != nil");
  }

  if (!a6)
  {
    v21 = NUAssertLogger_7609();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v47 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_7609();
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
        v47 = v37;
        v48 = 2114;
        v49 = v41;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUModel serializeAttribute:value:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 421, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "error != NULL");
  }

  v12 = v11;
  *a6 = [NUError invalidError:@"Unsupported attribute" object:v9];

  return 0;
}

- (BOOL)validateAttribute:(id)a3 value:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!a5)
  {
    v11 = NUAssertLogger_7609();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v28 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_7609();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUModel validateAttribute:value:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 193, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "error != NULL");
  }

  v9 = v8;
  *a5 = [NUError invalidError:@"Unsupported attribute" object:v7];

  return 0;
}

- (BOOL)validateAttributes:(id *)a3
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v19 = NUAssertLogger_7609();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v44 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_7609();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v26;
        v45 = 2114;
        v46 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUModel validateAttributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 152, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "error != NULL");
  }

  v4 = [(NSDictionary *)self->_attributes mutableCopy];
  v5 = MEMORY[0x1E695DFD8];
  v6 = [objc_opt_class() requiredAttributes];
  v36 = [v5 setWithArray:v6];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = [objc_opt_class() supportedAttributes];
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v39 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v38 + 1) + 8 * v11);
      v13 = [v4 objectForKeyedSubscript:v12];
      if (v13)
      {
        v37 = 0;
        v14 = [(NUModel *)self validateAttribute:v12 value:v13 error:&v37];
        v15 = v37;
        v16 = v15;
        if (!v14)
        {
          *a3 = [NUError errorWithCode:2 reason:@"Invalid attribute" object:v12 underlyingError:v15];

LABEL_17:
          v17 = 0;
          goto LABEL_18;
        }
      }

      else if ([v36 containsObject:v12])
      {
        [NUError missingError:@"Missing required attribute" object:v12];
        *a3 = v13 = 0;
        goto LABEL_17;
      }

      [v4 removeObjectForKey:v12];

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  if ([v4 count])
  {
    [NUError extraError:@"Extra attributes" object:v4];
    *a3 = v17 = 0;
  }

  else
  {
    v17 = 1;
  }

LABEL_18:

  return v17;
}

- (id)deserialize:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v9 = NUAssertLogger_7609();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("[NUModel deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 135, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "error != NULL");
  }

  v7 = v6;
  *a4 = [NUError unsupportedError:@"Abstract model" object:self];

  return 0;
}

- (id)serialize:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v9 = NUAssertLogger_7609();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("[NUModel serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 128, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "error != NULL");
  }

  v7 = v6;
  *a4 = [NUError unsupportedError:@"Abstract model" object:self];

  return 0;
}

- (BOOL)serializeIntoDictionary:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v9 = NUAssertLogger_7609();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("[NUModel serializeIntoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 114, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "error != NULL");
  }

  v7 = v6;
  *a4 = [NUError unsupportedError:@"Abstract model" object:self];

  return 0;
}

- (id)serializeAsDictionary:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NUModel *)self serializeIntoDictionary:v5 error:a3])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v9 = NUAssertLogger_7609();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("[NUModel validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 85, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "error != NULL");
  }

  v7 = v6;
  *a4 = [NUError unsupportedError:@"Abstract model" object:self];

  return 0;
}

- (BOOL)isValid:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v5 = NUAssertLogger_7609();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v22 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger_7609();
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
        v22 = v12;
        v23 = 2114;
        v24 = v16;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUModel isValid:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 78, @"Invalid parameter not satisfying: %s", v17, v18, v19, v20, "error != NULL");
  }

  *a3 = [NUError unsupportedError:@"Abstract model" object:self];
  return 0;
}

- (id)copy:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_192);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_192);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_192);
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
  _NUAssertFailHandler("[NUModel copy:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 73, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v25, v26, v27, v28, v24);
}

- (NUModel)initWithAttributes:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_7609();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "attributes != nil"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_7609();
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

    _NUAssertFailHandler("[NUModel initWithAttributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUModel.m", 64, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "attributes != nil");
  }

  v5 = v4;
  v6 = [v4 copy];
  attributes = self->_attributes;
  self->_attributes = v6;

  return self;
}

@end