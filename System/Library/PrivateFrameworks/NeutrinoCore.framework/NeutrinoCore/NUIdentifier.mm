@interface NUIdentifier
+ (BOOL)validateIdentifierString:(id)string error:(id *)error;
+ (BOOL)validateIdentifierString:(id)string namespace:(id *)namespace name:(id *)name version:(id *)version;
+ (BOOL)validateName:(id)name;
+ (BOOL)validateNamespace:(id)namespace;
+ (NUIdentifier)identifierWithString:(id)string error:(id *)error;
+ (id)defaultNamespace;
+ (id)identifierRegularExpression;
+ (id)latestIdentifierWithName:(id)name;
+ (id)latestIdentifierWithNamespace:(id)namespace name:(id)name;
+ (id)validNameRegularExpression;
+ (id)validNameSpaceRegularExpression;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIdentifier:(id)identifier;
- (NSString)stringRepresentation;
- (NUIdentifier)identifierWithVersion:(id)version;
- (NUIdentifier)init;
- (NUIdentifier)initWithName:(id)name;
- (NUIdentifier)initWithName:(id)name version:(id)version;
- (NUIdentifier)initWithNamespace:(id)namespace name:(id)name version:(id)version;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation NUIdentifier

- (BOOL)isEqualToIdentifier:(id)identifier
{
  identifierCopy = identifier;
  namespace = [(NUIdentifier *)self namespace];
  namespace2 = [identifierCopy namespace];
  v7 = [namespace isEqualToString:namespace2];

  if (v7 && (-[NUIdentifier name](self, "name"), v8 = objc_claimAutoreleasedReturnValue(), [identifierCopy name], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, v10))
  {
    version = [(NUIdentifier *)self version];
    version2 = [identifierCopy version];
    v13 = [version isEqualToVersion:version2];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUIdentifier *)self isEqualToIdentifier:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  v3 = 0x1891E4D530AE31 * [(NSString *)self->_namespace hash];
  v4 = 0x10E270B8F4A859 * [(NSString *)self->_name hash];
  return v4 ^ v3 ^ (0x17A9B71420B2E9 * [(NUVersion *)self->_version hash]);
}

- (NUIdentifier)identifierWithVersion:(id)version
{
  v31 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  if (!versionCopy)
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

    _NUAssertFailHandler("[NUIdentifier identifierWithVersion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 78, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "version != nil");
  }

  v5 = versionCopy;
  v6 = [NUIdentifier alloc];
  namespace = [(NUIdentifier *)self namespace];
  name = [(NUIdentifier *)self name];
  v9 = [(NUIdentifier *)v6 initWithNamespace:namespace name:name version:v5];

  return v9;
}

- (NSString)stringRepresentation
{
  v3 = MEMORY[0x1E696AEC0];
  namespace = [(NUIdentifier *)self namespace];
  name = [(NUIdentifier *)self name];
  version = [(NUIdentifier *)self version];
  stringRepresentation = [version stringRepresentation];
  v8 = [v3 stringWithFormat:@"%@:%@~%@", namespace, name, stringRepresentation];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  namespace = [(NUIdentifier *)self namespace];
  name = [(NUIdentifier *)self name];
  version = [(NUIdentifier *)self version];
  v8 = [v3 stringWithFormat:@"<%@:%p ns:%@ name:%@ version:%@>", v4, self, namespace, name, version];

  return v8;
}

- (NUIdentifier)initWithNamespace:(id)namespace name:(id)name version:(id)version
{
  v104 = *MEMORY[0x1E69E9840];
  namespaceCopy = namespace;
  nameCopy = name;
  versionCopy = version;
  if (!namespaceCopy)
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
        callStackSymbols = [v55 callStackSymbols];
        v58 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v101 = v54;
        v102 = 2114;
        v103 = v58;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v101 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIdentifier initWithNamespace:name:version:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 43, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "namespace != nil");
  }

  if (!nameCopy)
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
        callStackSymbols3 = [v64 callStackSymbols];
        v67 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v101 = v63;
        v102 = 2114;
        v103 = v67;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v101 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIdentifier initWithNamespace:name:version:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 44, @"Invalid parameter not satisfying: %s", v68, v69, v70, v71, "name != nil");
  }

  v11 = versionCopy;
  if (!versionCopy)
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
        callStackSymbols5 = [v73 callStackSymbols];
        v76 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v101 = v72;
        v102 = 2114;
        v103 = v76;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v101 = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIdentifier initWithNamespace:name:version:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 45, @"Invalid parameter not satisfying: %s", v77, v78, v79, v80, "version != nil");
  }

  if (([objc_opt_class() validateNamespace:namespaceCopy] & 1) == 0)
  {
    v40 = NUAssertLogger_23196();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      namespaceCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid namespace: %@", namespaceCopy];
      *buf = 138543362;
      v101 = namespaceCopy;
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
        callStackSymbols7 = [v82 callStackSymbols];
        v85 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v101 = v81;
        v102 = 2114;
        v103 = v85;
        _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v101 = v46;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIdentifier initWithNamespace:name:version:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 48, @"Invalid namespace: %@", v86, v87, v88, v89, namespaceCopy);
  }

  if (([objc_opt_class() validateName:nameCopy] & 1) == 0)
  {
    v47 = NUAssertLogger_23196();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid name: %@", nameCopy];
      *buf = 138543362;
      v101 = nameCopy;
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
        callStackSymbols9 = [v91 callStackSymbols];
        v94 = [callStackSymbols9 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v101 = v90;
        v102 = 2114;
        v103 = v94;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      callStackSymbols10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [callStackSymbols10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v101 = v53;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIdentifier initWithNamespace:name:version:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 49, @"Invalid name: %@", v95, v96, v97, v98, nameCopy);
  }

  v99.receiver = self;
  v99.super_class = NUIdentifier;
  v12 = [(NUIdentifier *)&v99 init];
  v13 = [namespaceCopy copy];
  v14 = v12->_namespace;
  v12->_namespace = v13;

  v15 = [nameCopy copy];
  name = v12->_name;
  v12->_name = v15;

  version = v12->_version;
  v12->_version = v11;

  return v12;
}

- (NUIdentifier)initWithName:(id)name version:(id)version
{
  versionCopy = version;
  nameCopy = name;
  defaultNamespace = [objc_opt_class() defaultNamespace];
  v9 = [(NUIdentifier *)self initWithNamespace:defaultNamespace name:nameCopy version:versionCopy];

  return v9;
}

- (NUIdentifier)initWithName:(id)name
{
  nameCopy = name;
  defaultVersion = [objc_opt_class() defaultVersion];
  v6 = [(NUIdentifier *)self initWithName:nameCopy version:defaultVersion];

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

+ (BOOL)validateName:(id)name
{
  v34 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
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
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v21;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier validateName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 259, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "string != nil");
  }

  v5 = nameCopy;
  v6 = [nameCopy length];
  validNameRegularExpression = [self validNameRegularExpression];
  v8 = [validNameRegularExpression rangeOfFirstMatchInString:v5 options:4 range:{0, v6}];
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

+ (BOOL)validateNamespace:(id)namespace
{
  v34 = *MEMORY[0x1E69E9840];
  namespaceCopy = namespace;
  if (!namespaceCopy)
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
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v21;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier validateNamespace:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 237, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "string != nil");
  }

  v5 = namespaceCopy;
  v6 = [namespaceCopy length];
  validNameSpaceRegularExpression = [self validNameSpaceRegularExpression];
  v8 = [validNameSpaceRegularExpression rangeOfFirstMatchInString:v5 options:4 range:{0, v6}];
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

+ (BOOL)validateIdentifierString:(id)string namespace:(id *)namespace name:(id *)name version:(id *)version
{
  v44 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (!stringCopy)
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
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v31;
        v42 = 2114;
        v43 = v35;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier validateIdentifierString:namespace:name:version:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 189, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "string != nil");
  }

  v11 = stringCopy;
  v12 = [stringCopy length];
  identifierRegularExpression = [self identifierRegularExpression];
  v14 = [identifierRegularExpression firstMatchInString:v11 options:0 range:{0, v12}];

  if (v14 && ([v14 range], v12 == v15) && objc_msgSend(v14, "numberOfRanges") == 4)
  {
    v16 = [v14 rangeAtIndex:1];
    if (namespace && v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *namespace = [v11 substringWithRange:{v16, v17}];
    }

    v18 = [v14 rangeAtIndex:2];
    if (name && v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *name = [v11 substringWithRange:{v18, v19}];
    }

    v20 = [v14 rangeAtIndex:3];
    v22 = 1;
    if (version && v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *version = [v11 substringWithRange:{v20, v21}];
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (BOOL)validateIdentifierString:(id)string error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (!stringCopy)
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
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v31;
        v54 = 2114;
        v55 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier validateIdentifierString:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 155, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "string != nil");
  }

  if (!error)
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
        callStackSymbols3 = [v41 callStackSymbols];
        v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v40;
        v54 = 2114;
        v55 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier validateIdentifierString:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 156, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "error != NULL");
  }

  v7 = stringCopy;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v8 = [self validateIdentifierString:stringCopy namespace:&v51 name:&v50 version:&v49];
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
    *error = v15;
    goto LABEL_15;
  }

  if (v9 && ([self validateNamespace:v9] & 1) == 0)
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

  if (([self validateName:v10] & 1) == 0)
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

+ (NUIdentifier)identifierWithString:(id)string error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (!stringCopy)
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
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v24;
        v38 = 2114;
        v39 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUIdentifier identifierWithString:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUIdentifier.m", 105, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "string != nil");
  }

  v7 = stringCopy;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v8 = [self validateIdentifierString:stringCopy namespace:&v35 name:&v34 version:&v33];
  defaultNamespace = v35;
  v10 = v34;
  v11 = v33;
  if ((v8 & 1) == 0)
  {
    v13 = @"Invalid identifier string";
    v14 = v7;
    goto LABEL_13;
  }

  if (defaultNamespace && ([self validateNamespace:defaultNamespace] & 1) == 0)
  {
    v13 = @"Invalid identifier namespace";
    v14 = defaultNamespace;
    goto LABEL_13;
  }

  if (!v10 || ([self validateName:v10] & 1) == 0)
  {
    v13 = @"Invalid identifier name";
    v14 = v10;
    goto LABEL_13;
  }

  if (v11)
  {
    defaultVersion = [NUVersion versionWithString:v11];
    if (!defaultVersion)
    {
      v13 = @"Invalid identifier version";
      v14 = v11;
LABEL_13:
      [NUError invalidError:v13 object:v14];
      *error = v15 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    defaultVersion = 0;
  }

  if (!defaultNamespace)
  {
    defaultNamespace = [self defaultNamespace];
  }

  if (!defaultVersion)
  {
    defaultVersion = [self defaultVersion];
  }

  v15 = [[self alloc] initWithNamespace:defaultNamespace name:v10 version:defaultVersion];

LABEL_14:

  return v15;
}

+ (id)latestIdentifierWithNamespace:(id)namespace name:(id)name
{
  namespaceCopy = namespace;
  nameCopy = name;
  v8 = +[NUSchemaRegistry sharedRegistry];
  v9 = [v8 latestVersionWithNamespace:namespaceCopy name:nameCopy];

  if (v9)
  {
    v10 = [[self alloc] initWithNamespace:namespaceCopy name:nameCopy version:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)latestIdentifierWithName:(id)name
{
  nameCopy = name;
  defaultNamespace = [self defaultNamespace];
  v6 = [self latestIdentifierWithNamespace:defaultNamespace name:nameCopy];

  return v6;
}

+ (id)defaultNamespace
{
  v2 = +[NUFactory sharedFactory];
  defaultNamespace = [v2 defaultNamespace];

  return defaultNamespace;
}

@end