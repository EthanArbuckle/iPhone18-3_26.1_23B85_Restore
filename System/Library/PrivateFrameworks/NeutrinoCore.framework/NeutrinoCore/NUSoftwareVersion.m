@interface NUSoftwareVersion
+ (id)_frameworkVersion;
+ (id)currentSoftwareVersion;
+ (id)frameworkVersion;
+ (id)softwareVersionFromArchivalRepresentation:(id)a3;
+ (id)systemBuildVersion;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSoftwareVersion:(id)a3;
- (id)archivalRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation NUSoftwareVersion

- (BOOL)isEqualToSoftwareVersion:(id)a3
{
  v5 = a3;
  v6 = [(NUSoftwareVersion *)self platform];
  if (v6 || ([v5 platform], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [v5 platform];
    v8 = [(NUSoftwareVersion *)self platform];
    v9 = [v7 isEqualToString:v8];

    if (v6)
    {

      if (!v9)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if ((v9 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  v10 = [(NUSoftwareVersion *)self buildNumber];
  if (v10 || ([v5 buildNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = [v5 buildNumber];
    v12 = [(NUSoftwareVersion *)self buildNumber];
    v13 = [v11 isEqualToString:v12];

    if (v10)
    {

      if (!v13)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if ((v13 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  v14 = [(NUSoftwareVersion *)self appVersion];
  if (!v14)
  {
    v3 = [v5 appVersion];
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  v15 = [v5 appVersion];
  v16 = [(NUSoftwareVersion *)self appVersion];
  v17 = [v15 isEqualToString:v16];

  if (!v14)
  {

    if (v17)
    {
      goto LABEL_17;
    }

LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  if (!v17)
  {
    goto LABEL_19;
  }

LABEL_17:
  v18 = [v5 schemaRevision];
  v19 = v18 == [(NUSoftwareVersion *)self schemaRevision];
LABEL_20:

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUSoftwareVersion *)self isEqualToSoftwareVersion:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NUSoftwareVersion *)self platform];
  v4 = 0x191F1574B62ABFLL * [v3 hash];

  v5 = [(NUSoftwareVersion *)self buildNumber];
  v6 = 0x1C0BFE615F565DLL * [v5 hash];

  v7 = [(NUSoftwareVersion *)self appVersion];
  v8 = 0x3BB41398110FFLL * [v7 hash];

  return v6 ^ v4 ^ v8 ^ (0x23338B35E717C9 * [(NUSoftwareVersion *)self schemaRevision]);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NUSoftwareVersion allocWithZone:a3];
  objc_storeStrong(&v4->_platform, self->_platform);
  objc_storeStrong(&v4->_buildNumber, self->_buildNumber);
  objc_storeStrong(&v4->_appVersion, self->_appVersion);
  v4->_schemaRevision = self->_schemaRevision;
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUSoftwareVersion *)self platform];
  v6 = [(NUSoftwareVersion *)self buildNumber];
  v7 = [(NUSoftwareVersion *)self appVersion];
  v8 = [v3 stringWithFormat:@"<%@:%p platform=%@ buildNumber=%@ appVersion=%@ schemaRevision=%ld>", v4, self, v5, v6, v7, -[NUSoftwareVersion schemaRevision](self, "schemaRevision")];

  return v8;
}

+ (id)_frameworkVersion
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  if (!v3)
  {
    v10 = NUAssertLogger_5637();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bundle not found for class: %@", a1];
      *buf = 138543362;
      v65 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_5637();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v35;
        v66 = 2114;
        v67 = v39;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSoftwareVersion _frameworkVersion]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSoftwareVersion.m", 87, @"Bundle not found for class: %@", v40, v41, v42, v43, a1);
  }

  v4 = v3;
  v5 = [v3 infoDictionary];
  if (!v5)
  {
    v17 = NUAssertLogger_5637();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = [v4 bundlePath];
      v20 = [v18 stringWithFormat:@"Failed to load Info.plist for bundle at path: %@", v19];
      *buf = 138543362;
      v65 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_5637();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v44;
        v66 = 2114;
        v67 = v48;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v49 = [v4 bundlePath];
    _NUAssertFailHandler("+[NUSoftwareVersion _frameworkVersion]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSoftwareVersion.m", 90, @"Failed to load Info.plist for bundle at path: %@", v50, v51, v52, v53, v49);
  }

  v6 = v5;
  v7 = [v5 objectForKey:*MEMORY[0x1E695E500]];
  if (!v7)
  {
    v26 = NUAssertLogger_5637();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = MEMORY[0x1E696AEC0];
      v28 = [v4 bundlePath];
      v29 = [v27 stringWithFormat:@"Failed to get version for bundle at path: %@", v28];
      *buf = 138543362;
      v65 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_5637();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v54;
        v66 = 2114;
        v67 = v58;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v59 = [v4 bundlePath];
    _NUAssertFailHandler("+[NUSoftwareVersion _frameworkVersion]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSoftwareVersion.m", 93, @"Failed to get version for bundle at path: %@", v60, v61, v62, v63, v59);
  }

  v8 = v7;

  return v8;
}

+ (id)frameworkVersion
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__NUSoftwareVersion_frameworkVersion__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (frameworkVersion_onceToken != -1)
  {
    dispatch_once(&frameworkVersion_onceToken, block);
  }

  v2 = frameworkVersion_version;

  return v2;
}

uint64_t __37__NUSoftwareVersion_frameworkVersion__block_invoke(uint64_t a1)
{
  frameworkVersion_version = [*(a1 + 32) _frameworkVersion];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)systemBuildVersion
{
  if (systemBuildVersion_onceToken != -1)
  {
    dispatch_once(&systemBuildVersion_onceToken, &__block_literal_global_5665);
  }

  v3 = systemBuildVersion_buildVersion;

  return v3;
}

uint64_t __39__NUSoftwareVersion_systemBuildVersion__block_invoke()
{
  systemBuildVersion_buildVersion = _CFCopySystemVersionDictionaryValue();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)currentSoftwareVersion
{
  v3 = objc_opt_new();
  [v3 setPlatform:@"iOS"];
  v4 = [a1 systemBuildVersion];
  [v3 setBuildNumber:v4];

  v5 = [a1 frameworkVersion];
  [v3 setAppVersion:v5];

  [v3 setSchemaRevision:1];

  return v3;
}

- (id)archivalRepresentation
{
  v3 = objc_opt_new();
  v4 = [(NUSoftwareVersion *)self platform];

  if (v4)
  {
    v5 = [(NUSoftwareVersion *)self platform];
    [v3 setObject:v5 forKeyedSubscript:@"platform"];
  }

  v6 = [(NUSoftwareVersion *)self buildNumber];

  if (v6)
  {
    v7 = [(NUSoftwareVersion *)self buildNumber];
    [v3 setObject:v7 forKeyedSubscript:@"buildNumber"];
  }

  v8 = [(NUSoftwareVersion *)self appVersion];

  if (v8)
  {
    v9 = [(NUSoftwareVersion *)self appVersion];
    [v3 setObject:v9 forKeyedSubscript:@"appVersion"];
  }

  if ([(NUSoftwareVersion *)self schemaRevision])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NUSoftwareVersion schemaRevision](self, "schemaRevision")}];
    [v3 setObject:v10 forKeyedSubscript:@"schemaRevision"];
  }

  return v3;
}

+ (id)softwareVersionFromArchivalRepresentation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_new();
    v5 = [v3 objectForKeyedSubscript:@"platform"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setPlatform:v5];
    }

    v6 = [v3 objectForKeyedSubscript:@"buildNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setBuildNumber:v6];
    }

    v7 = [v3 objectForKeyedSubscript:@"appVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setAppVersion:v7];
    }

    v8 = [v3 objectForKeyedSubscript:@"schemaRevision"];
    if (objc_opt_respondsToSelector())
    {
      [v4 setSchemaRevision:{objc_msgSend(v8, "integerValue")}];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end