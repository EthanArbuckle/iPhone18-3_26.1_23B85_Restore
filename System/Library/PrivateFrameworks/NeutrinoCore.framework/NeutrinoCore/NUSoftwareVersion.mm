@interface NUSoftwareVersion
+ (id)_frameworkVersion;
+ (id)currentSoftwareVersion;
+ (id)frameworkVersion;
+ (id)softwareVersionFromArchivalRepresentation:(id)representation;
+ (id)systemBuildVersion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSoftwareVersion:(id)version;
- (id)archivalRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation NUSoftwareVersion

- (BOOL)isEqualToSoftwareVersion:(id)version
{
  versionCopy = version;
  platform = [(NUSoftwareVersion *)self platform];
  if (platform || ([versionCopy platform], (appVersion2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    platform2 = [versionCopy platform];
    platform3 = [(NUSoftwareVersion *)self platform];
    v9 = [platform2 isEqualToString:platform3];

    if (platform)
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

  buildNumber = [(NUSoftwareVersion *)self buildNumber];
  if (buildNumber || ([versionCopy buildNumber], (appVersion2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    buildNumber2 = [versionCopy buildNumber];
    buildNumber3 = [(NUSoftwareVersion *)self buildNumber];
    v13 = [buildNumber2 isEqualToString:buildNumber3];

    if (buildNumber)
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

  appVersion = [(NUSoftwareVersion *)self appVersion];
  if (!appVersion)
  {
    appVersion2 = [versionCopy appVersion];
    if (!appVersion2)
    {
      goto LABEL_17;
    }
  }

  appVersion3 = [versionCopy appVersion];
  appVersion4 = [(NUSoftwareVersion *)self appVersion];
  v17 = [appVersion3 isEqualToString:appVersion4];

  if (!appVersion)
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
  schemaRevision = [versionCopy schemaRevision];
  v19 = schemaRevision == [(NUSoftwareVersion *)self schemaRevision];
LABEL_20:

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUSoftwareVersion *)self isEqualToSoftwareVersion:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  platform = [(NUSoftwareVersion *)self platform];
  v4 = 0x191F1574B62ABFLL * [platform hash];

  buildNumber = [(NUSoftwareVersion *)self buildNumber];
  v6 = 0x1C0BFE615F565DLL * [buildNumber hash];

  appVersion = [(NUSoftwareVersion *)self appVersion];
  v8 = 0x3BB41398110FFLL * [appVersion hash];

  return v6 ^ v4 ^ v8 ^ (0x23338B35E717C9 * [(NUSoftwareVersion *)self schemaRevision]);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NUSoftwareVersion allocWithZone:zone];
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
  platform = [(NUSoftwareVersion *)self platform];
  buildNumber = [(NUSoftwareVersion *)self buildNumber];
  appVersion = [(NUSoftwareVersion *)self appVersion];
  v8 = [v3 stringWithFormat:@"<%@:%p platform=%@ buildNumber=%@ appVersion=%@ schemaRevision=%ld>", v4, self, platform, buildNumber, appVersion, -[NUSoftwareVersion schemaRevision](self, "schemaRevision")];

  return v8;
}

+ (id)_frameworkVersion
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:self];
  if (!v3)
  {
    v10 = NUAssertLogger_5637();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bundle not found for class: %@", self];
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
        callStackSymbols = [v36 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v35;
        v66 = 2114;
        v67 = v39;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSoftwareVersion _frameworkVersion]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSoftwareVersion.m", 87, @"Bundle not found for class: %@", v40, v41, v42, v43, self);
  }

  v4 = v3;
  infoDictionary = [v3 infoDictionary];
  if (!infoDictionary)
  {
    v17 = NUAssertLogger_5637();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = MEMORY[0x1E696AEC0];
      bundlePath = [v4 bundlePath];
      v20 = [v18 stringWithFormat:@"Failed to load Info.plist for bundle at path: %@", bundlePath];
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
        callStackSymbols3 = [v45 callStackSymbols];
        v48 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v44;
        v66 = 2114;
        v67 = v48;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    bundlePath2 = [v4 bundlePath];
    _NUAssertFailHandler("+[NUSoftwareVersion _frameworkVersion]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSoftwareVersion.m", 90, @"Failed to load Info.plist for bundle at path: %@", v50, v51, v52, v53, bundlePath2);
  }

  v6 = infoDictionary;
  v7 = [infoDictionary objectForKey:*MEMORY[0x1E695E500]];
  if (!v7)
  {
    v26 = NUAssertLogger_5637();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = MEMORY[0x1E696AEC0];
      bundlePath3 = [v4 bundlePath];
      v29 = [v27 stringWithFormat:@"Failed to get version for bundle at path: %@", bundlePath3];
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
        callStackSymbols5 = [v55 callStackSymbols];
        v58 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v54;
        v66 = 2114;
        v67 = v58;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    bundlePath4 = [v4 bundlePath];
    _NUAssertFailHandler("+[NUSoftwareVersion _frameworkVersion]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSoftwareVersion.m", 93, @"Failed to get version for bundle at path: %@", v60, v61, v62, v63, bundlePath4);
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
  block[4] = self;
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
  systemBuildVersion = [self systemBuildVersion];
  [v3 setBuildNumber:systemBuildVersion];

  frameworkVersion = [self frameworkVersion];
  [v3 setAppVersion:frameworkVersion];

  [v3 setSchemaRevision:1];

  return v3;
}

- (id)archivalRepresentation
{
  v3 = objc_opt_new();
  platform = [(NUSoftwareVersion *)self platform];

  if (platform)
  {
    platform2 = [(NUSoftwareVersion *)self platform];
    [v3 setObject:platform2 forKeyedSubscript:@"platform"];
  }

  buildNumber = [(NUSoftwareVersion *)self buildNumber];

  if (buildNumber)
  {
    buildNumber2 = [(NUSoftwareVersion *)self buildNumber];
    [v3 setObject:buildNumber2 forKeyedSubscript:@"buildNumber"];
  }

  appVersion = [(NUSoftwareVersion *)self appVersion];

  if (appVersion)
  {
    appVersion2 = [(NUSoftwareVersion *)self appVersion];
    [v3 setObject:appVersion2 forKeyedSubscript:@"appVersion"];
  }

  if ([(NUSoftwareVersion *)self schemaRevision])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NUSoftwareVersion schemaRevision](self, "schemaRevision")}];
    [v3 setObject:v10 forKeyedSubscript:@"schemaRevision"];
  }

  return v3;
}

+ (id)softwareVersionFromArchivalRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_new();
    v5 = [representationCopy objectForKeyedSubscript:@"platform"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setPlatform:v5];
    }

    v6 = [representationCopy objectForKeyedSubscript:@"buildNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setBuildNumber:v6];
    }

    v7 = [representationCopy objectForKeyedSubscript:@"appVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setAppVersion:v7];
    }

    v8 = [representationCopy objectForKeyedSubscript:@"schemaRevision"];
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