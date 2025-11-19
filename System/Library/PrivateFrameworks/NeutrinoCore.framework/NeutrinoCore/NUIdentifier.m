@interface NUIdentifier
+ (BOOL)validateIdentifierString:(id)a3 error:(id *)a4;
+ (BOOL)validateIdentifierString:(id)a3 namespace:(id *)a4 name:(id *)a5 version:(id *)a6;
+ (BOOL)validateName:(id)a3;
+ (BOOL)validateNamespace:(id)a3;
+ (NUIdentifier)identifierWithString:(id)a3 error:(id *)a4;
+ (id)defaultNamespace;
+ (id)identifierRegularExpression;
+ (id)latestIdentifierWithName:(id)a3;
+ (id)latestIdentifierWithNamespace:(id)a3 name:(id)a4;
+ (id)validNameRegularExpression;
+ (id)validNameSpaceRegularExpression;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIdentifier:(id)a3;
- (NSString)stringRepresentation;
- (NUIdentifier)identifierWithVersion:(id)a3;
- (NUIdentifier)init;
- (NUIdentifier)initWithName:(id)a3;
- (NUIdentifier)initWithName:(id)a3 version:(id)a4;
- (NUIdentifier)initWithNamespace:(id)a3 name:(id)a4 version:(id)a5;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation NUIdentifier

- (BOOL)isEqualToIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NUIdentifier *)self namespace];
  v6 = [v4 namespace];
  v7 = [v5 isEqualToString:v6];

  if (v7 && (-[NUIdentifier name](self, "name"), v8 = objc_claimAutoreleasedReturnValue(), [v4 name], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, v10))
  {
    v11 = [(NUIdentifier *)self version];
    v12 = [v4 version];
    v13 = [v11 isEqualToVersion:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUIdentifier *)self isEqualToIdentifier:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = 0x1891E4D530AE31 * [(NSString *)self->_namespace hash];
  v4 = 0x10E270B8F4A859 * [(NSString *)self->_name hash];
  return v4 ^ v3 ^ (0x17A9B71420B2E9 * [(NUVersion *)self->_version hash]);
}

- (NUIdentifier)identifierWithVersion:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v11 = NUAssertLogger_23196();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "version != nil"];
      *buf = 138543362;
      v28 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_23196();
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

    _NUAssertFailHandler("[NUIdentifier identifierWithVersion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 78, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "version != nil");
  }

  v5 = v4;
  v6 = [NUIdentifier alloc];
  v7 = [(NUIdentifier *)self namespace];
  v8 = [(NUIdentifier *)self name];
  v9 = [(NUIdentifier *)v6 initWithNamespace:v7 name:v8 version:v5];

  return v9;
}

- (NSString)stringRepresentation
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NUIdentifier *)self namespace];
  v5 = [(NUIdentifier *)self name];
  v6 = [(NUIdentifier *)self version];
  v7 = [v6 stringRepresentation];
  v8 = [v3 stringWithFormat:@"%@:%@~%@", v4, v5, v7];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUIdentifier *)self namespace];
  v6 = [(NUIdentifier *)self name];
  v7 = [(NUIdentifier *)self version];
  v8 = [v3 stringWithFormat:@"<%@:%p ns:%@ name:%@ version:%@>", v4, self, v5, v6, v7];

  return v8;
}

- (NUIdentifier)initWithNamespace:(id)a3 name:(id)a4 version:(id)a5
{
  v104 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v19 = NUAssertLogger_23196();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "namespace != nil"];
      *buf = 138543362;
      v101 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_23196();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v101 = v54;
        v102 = 2114;
        v103 = v58;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v101 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIdentifier initWithNamespace:name:version:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 43, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "namespace != nil");
  }

  if (!v9)
  {
    v26 = NUAssertLogger_23196();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v101 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_23196();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
      {
        v63 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v64 = MEMORY[0x1E696AF00];
        v65 = v63;
        v66 = [v64 callStackSymbols];
        v67 = [v66 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v101 = v63;
        v102 = 2114;
        v103 = v67;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v101 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIdentifier initWithNamespace:name:version:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 44, @"Invalid parameter not satisfying: %s", v68, v69, v70, v71, "name != nil");
  }

  v11 = v10;
  if (!v10)
  {
    v33 = NUAssertLogger_23196();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "version != nil"];
      *buf = 138543362;
      v101 = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_23196();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v37)
      {
        v72 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v73 = MEMORY[0x1E696AF00];
        v74 = v72;
        v75 = [v73 callStackSymbols];
        v76 = [v75 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v101 = v72;
        v102 = 2114;
        v103 = v76;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      v38 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [v38 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v101 = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIdentifier initWithNamespace:name:version:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 45, @"Invalid parameter not satisfying: %s", v77, v78, v79, v80, "version != nil");
  }

  if (([objc_opt_class() validateNamespace:v8] & 1) == 0)
  {
    v40 = NUAssertLogger_23196();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid namespace: %@", v8];
      *buf = 138543362;
      v101 = v41;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v43 = NUAssertLogger_23196();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (v42)
    {
      if (v44)
      {
        v81 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v82 = MEMORY[0x1E696AF00];
        v83 = v81;
        v84 = [v82 callStackSymbols];
        v85 = [v84 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v101 = v81;
        v102 = 2114;
        v103 = v85;
        _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      v45 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [v45 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v101 = v46;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIdentifier initWithNamespace:name:version:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 48, @"Invalid namespace: %@", v86, v87, v88, v89, v8);
  }

  if (([objc_opt_class() validateName:v9] & 1) == 0)
  {
    v47 = NUAssertLogger_23196();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid name: %@", v9];
      *buf = 138543362;
      v101 = v48;
      _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v50 = NUAssertLogger_23196();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
    if (v49)
    {
      if (v51)
      {
        v90 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v91 = MEMORY[0x1E696AF00];
        v92 = v90;
        v93 = [v91 callStackSymbols];
        v94 = [v93 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v101 = v90;
        v102 = 2114;
        v103 = v94;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      v52 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v101 = v53;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIdentifier initWithNamespace:name:version:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 49, @"Invalid name: %@", v95, v96, v97, v98, v9);
  }

  v99.receiver = self;
  v99.super_class = NUIdentifier;
  v12 = [(NUIdentifier *)&v99 init];
  v13 = [v8 copy];
  v14 = v12->_namespace;
  v12->_namespace = v13;

  v15 = [v9 copy];
  name = v12->_name;
  v12->_name = v15;

  version = v12->_version;
  v12->_version = v11;

  return v12;
}

- (NUIdentifier)initWithName:(id)a3 version:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() defaultNamespace];
  v9 = [(NUIdentifier *)self initWithNamespace:v8 name:v7 version:v6];

  return v9;
}

- (NUIdentifier)initWithName:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() defaultVersion];
  v6 = [(NUIdentifier *)self initWithName:v4 version:v5];

  return v6;
}

- (NUIdentifier)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_132_23210);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_132_23210);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_132_23210);
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
  _NUAssertFailHandler("[NUIdentifier init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 28, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (id)validNameRegularExpression
{
  if (validNameRegularExpression_onceToken != -1)
  {
    dispatch_once(&validNameRegularExpression_onceToken, &__block_literal_global_75_23268);
  }

  v3 = validNameRegularExpression_regex;

  return v3;
}

void __42__NUIdentifier_validNameRegularExpression__block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[a-zA-Z][a-zA-Z0-9_]*" options:0 error:&v19];
  v1 = v19;
  v2 = validNameRegularExpression_regex;
  validNameRegularExpression_regex = v0;

  if (!validNameRegularExpression_regex)
  {
    v3 = NUAssertLogger_23196();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create regular expression: %@", v1];
      *buf = 138543362;
      v21 = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger_23196();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = MEMORY[0x1E696AF00];
        v12 = v10;
        v13 = [v11 callStackSymbols];
        v14 = [v13 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v10;
        v22 = 2114;
        v23 = v14;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier validNameRegularExpression]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 275, @"Failed to create regular expression: %@", v15, v16, v17, v18, v1);
  }
}

+ (BOOL)validateName:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v14 = NUAssertLogger_23196();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "string != nil"];
      *buf = 138543362;
      v31 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_23196();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        v24 = [v22 callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v21;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier validateName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 259, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "string != nil");
  }

  v5 = v4;
  v6 = [v4 length];
  v7 = [a1 validNameRegularExpression];
  v8 = [v7 rangeOfFirstMatchInString:v5 options:4 range:{0, v6}];
  v10 = v9;

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 == v6;
  }

  v12 = v11;

  return v12;
}

+ (id)validNameSpaceRegularExpression
{
  if (validNameSpaceRegularExpression_onceToken != -1)
  {
    dispatch_once(&validNameSpaceRegularExpression_onceToken, &__block_literal_global_70_23284);
  }

  v3 = validNameSpaceRegularExpression_regex;

  return v3;
}

void __47__NUIdentifier_validNameSpaceRegularExpression__block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[a-zA-Z][a-zA-Z0-9\\-]*(?:\\.[a-zA-Z][a-zA-Z0-9\\-]*){2 options:}" error:{0, &v19}];
  v1 = v19;
  v2 = validNameSpaceRegularExpression_regex;
  validNameSpaceRegularExpression_regex = v0;

  if (!validNameSpaceRegularExpression_regex)
  {
    v3 = NUAssertLogger_23196();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create regular expression: %@", v1];
      *buf = 138543362;
      v21 = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger_23196();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = MEMORY[0x1E696AF00];
        v12 = v10;
        v13 = [v11 callStackSymbols];
        v14 = [v13 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v10;
        v22 = 2114;
        v23 = v14;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier validNameSpaceRegularExpression]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 252, @"Failed to create regular expression: %@", v15, v16, v17, v18, v1);
  }
}

+ (BOOL)validateNamespace:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v14 = NUAssertLogger_23196();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "string != nil"];
      *buf = 138543362;
      v31 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_23196();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        v24 = [v22 callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v21;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier validateNamespace:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 237, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "string != nil");
  }

  v5 = v4;
  v6 = [v4 length];
  v7 = [a1 validNameSpaceRegularExpression];
  v8 = [v7 rangeOfFirstMatchInString:v5 options:4 range:{0, v6}];
  v10 = v9;

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 == v6;
  }

  v12 = v11;

  return v12;
}

+ (id)identifierRegularExpression
{
  if (identifierRegularExpression_onceToken != -1)
  {
    dispatch_once(&identifierRegularExpression_onceToken, &__block_literal_global_23295);
  }

  v3 = identifierRegularExpression_regex;

  return v3;
}

void __43__NUIdentifier_identifierRegularExpression__block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(?:([A-Za-z.0-9]+):)?([A-Za-z0-9_]+)(?:~([0-9.]+))?" options:0 error:&v19];
  v1 = v19;
  v2 = identifierRegularExpression_regex;
  identifierRegularExpression_regex = v0;

  if (!identifierRegularExpression_regex)
  {
    v3 = NUAssertLogger_23196();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create regular expression: %@", v1];
      *buf = 138543362;
      v21 = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger_23196();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = MEMORY[0x1E696AF00];
        v12 = v10;
        v13 = [v11 callStackSymbols];
        v14 = [v13 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v10;
        v22 = 2114;
        v23 = v14;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier identifierRegularExpression]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 230, @"Failed to create regular expression: %@", v15, v16, v17, v18, v1);
  }
}

+ (BOOL)validateIdentifierString:(id)a3 namespace:(id *)a4 name:(id *)a5 version:(id *)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (!v10)
  {
    v24 = NUAssertLogger_23196();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "string != nil"];
      *buf = 138543362;
      v41 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_23196();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v31;
        v42 = 2114;
        v43 = v35;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier validateIdentifierString:namespace:name:version:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 189, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "string != nil");
  }

  v11 = v10;
  v12 = [v10 length];
  v13 = [a1 identifierRegularExpression];
  v14 = [v13 firstMatchInString:v11 options:0 range:{0, v12}];

  if (v14 && ([v14 range], v12 == v15) && objc_msgSend(v14, "numberOfRanges") == 4)
  {
    v16 = [v14 rangeAtIndex:1];
    if (a4 && v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *a4 = [v11 substringWithRange:{v16, v17}];
    }

    v18 = [v14 rangeAtIndex:2];
    if (a5 && v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *a5 = [v11 substringWithRange:{v18, v19}];
    }

    v20 = [v14 rangeAtIndex:3];
    v22 = 1;
    if (a6 && v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *a6 = [v11 substringWithRange:{v20, v21}];
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (BOOL)validateIdentifierString:(id)a3 error:(id *)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v17 = NUAssertLogger_23196();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "string != nil"];
      *buf = 138543362;
      v53 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_23196();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v31;
        v54 = 2114;
        v55 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier validateIdentifierString:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 155, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "string != nil");
  }

  if (!a4)
  {
    v24 = NUAssertLogger_23196();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v53 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_23196();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v40;
        v54 = 2114;
        v55 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier validateIdentifierString:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 156, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "error != NULL");
  }

  v7 = v6;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v8 = [a1 validateIdentifierString:v6 namespace:&v51 name:&v50 version:&v49];
  v9 = v51;
  v10 = v50;
  v11 = v49;
  if ((v8 & 1) == 0)
  {
    v13 = @"Malformed identifier string";
    v14 = v7;
LABEL_13:
    v15 = [NUError invalidError:v13 object:v14];
LABEL_14:
    v12 = 0;
    *a4 = v15;
    goto LABEL_15;
  }

  if (v9 && ([a1 validateNamespace:v9] & 1) == 0)
  {
    v13 = @"Malformed identifier namespace";
    v14 = v9;
    goto LABEL_13;
  }

  if (!v10)
  {
    v15 = [NUError missingError:@"Missing identifier name" object:v7];
    goto LABEL_14;
  }

  if (([a1 validateName:v10] & 1) == 0)
  {
    v15 = [NUError mismatchError:@"Malformed identifier name" object:v10];
    goto LABEL_14;
  }

  if (v11 && ![NUVersion validateVersionString:v11])
  {
    v13 = @"Malformed identifier version";
    v14 = v11;
    goto LABEL_13;
  }

  v12 = 1;
LABEL_15:

  return v12;
}

+ (NUIdentifier)identifierWithString:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v17 = NUAssertLogger_23196();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "string != nil"];
      *buf = 138543362;
      v37 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_23196();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v24;
        v38 = 2114;
        v39 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier identifierWithString:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 105, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "string != nil");
  }

  v7 = v6;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v8 = [a1 validateIdentifierString:v6 namespace:&v35 name:&v34 version:&v33];
  v9 = v35;
  v10 = v34;
  v11 = v33;
  if ((v8 & 1) == 0)
  {
    v13 = @"Invalid identifier string";
    v14 = v7;
    goto LABEL_13;
  }

  if (v9 && ([a1 validateNamespace:v9] & 1) == 0)
  {
    v13 = @"Invalid identifier namespace";
    v14 = v9;
    goto LABEL_13;
  }

  if (!v10 || ([a1 validateName:v10] & 1) == 0)
  {
    v13 = @"Invalid identifier name";
    v14 = v10;
    goto LABEL_13;
  }

  if (v11)
  {
    v12 = [NUVersion versionWithString:v11];
    if (!v12)
    {
      v13 = @"Invalid identifier version";
      v14 = v11;
LABEL_13:
      [NUError invalidError:v13 object:v14];
      *a4 = v15 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v12 = 0;
  }

  if (!v9)
  {
    v9 = [a1 defaultNamespace];
  }

  if (!v12)
  {
    v12 = [a1 defaultVersion];
  }

  v15 = [[a1 alloc] initWithNamespace:v9 name:v10 version:v12];

LABEL_14:

  return v15;
}

+ (id)latestIdentifierWithNamespace:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NUSchemaRegistry sharedRegistry];
  v9 = [v8 latestVersionWithNamespace:v6 name:v7];

  if (v9)
  {
    v10 = [[a1 alloc] initWithNamespace:v6 name:v7 version:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)latestIdentifierWithName:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultNamespace];
  v6 = [a1 latestIdentifierWithNamespace:v5 name:v4];

  return v6;
}

+ (id)defaultNamespace
{
  v2 = +[NUFactory sharedFactory];
  v3 = [v2 defaultNamespace];

  return v3;
}

@end