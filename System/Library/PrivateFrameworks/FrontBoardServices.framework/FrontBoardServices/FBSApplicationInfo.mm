@interface FBSApplicationInfo
+ (id)_configureEnvironment:(id)environment withInfo:(id)info isPreApex:(BOOL)apex;
+ (unint64_t)_applicationTypeForProxy:(id)proxy;
+ (unint64_t)_applicationTypeForRecord:(id)record;
- (BOOL)builtOnOrAfterSDKVersion:(id)version;
- (BOOL)supportsDeviceFamily:(unint64_t)family;
- (FBSApplicationInfo)initWithApplicationProxy:(id)proxy;
- (FBSApplicationInfo)initWithApplicationRecord:(id)record;
- (NSDictionary)entitlements;
- (id)_initWithApplicationProxy:(id)proxy record:(id)record appIdentity:(id)identity processIdentity:(id)processIdentity overrideURL:(id)l;
- (id)_initWithBundleIdentifier:(id)identifier url:(id)url;
- (id)_initWithBundleProxy:(id)proxy overrideURL:(id)l;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)succinctDescriptionBuilder;
- (unint64_t)unauthoritativeTrustState;
- (void)_overrideTags:(id)tags;
- (void)_synchronize:(id)_synchronize;
@end

@implementation FBSApplicationInfo

- (unint64_t)unauthoritativeTrustState
{
  v3 = objc_opt_new();
  v4 = [v3 trustStateForApplication:self];

  return v4;
}

- (id)_initWithBundleIdentifier:(id)identifier url:(id)url
{
  identifierCopy = identifier;
  urlCopy = url;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this initializer is unavailable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138544642;
    v14 = v10;
    v15 = 2114;
    v16 = v12;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = @"FBSApplicationInfo.m";
    v21 = 1024;
    v22 = 72;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithBundleProxy:(id)proxy overrideURL:(id)l
{
  proxyCopy = proxy;
  lCopy = l;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this initializer is unavailable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138544642;
    v14 = v10;
    v15 = 2114;
    v16 = v12;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = @"FBSApplicationInfo.m";
    v21 = 1024;
    v22 = 77;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
}

- (FBSApplicationInfo)initWithApplicationProxy:(id)proxy
{
  proxyCopy = proxy;
  v5 = objc_autoreleasePoolPush();
  fbs_correspondingApplicationRecord = [proxyCopy fbs_correspondingApplicationRecord];
  identities = [fbs_correspondingApplicationRecord identities];
  firstObject = [identities firstObject];

  v9 = [fbs_correspondingApplicationRecord fbs_processIdentityForApplicationIdentity:firstObject];
  v10 = [(FBSApplicationInfo *)self _initWithApplicationProxy:proxyCopy record:fbs_correspondingApplicationRecord appIdentity:firstObject processIdentity:v9 overrideURL:0];

  objc_autoreleasePoolPop(v5);
  return v10;
}

- (FBSApplicationInfo)initWithApplicationRecord:(id)record
{
  recordCopy = record;
  v5 = objc_autoreleasePoolPush();
  fbs_correspondingApplicationProxy = [recordCopy fbs_correspondingApplicationProxy];
  identities = [recordCopy identities];
  firstObject = [identities firstObject];

  v9 = [recordCopy fbs_processIdentityForApplicationIdentity:firstObject];
  v10 = [(FBSApplicationInfo *)self _initWithApplicationProxy:fbs_correspondingApplicationProxy record:recordCopy appIdentity:firstObject processIdentity:v9 overrideURL:0];

  objc_autoreleasePoolPop(v5);
  return v10;
}

- (id)_initWithApplicationProxy:(id)proxy record:(id)record appIdentity:(id)identity processIdentity:(id)processIdentity overrideURL:(id)l
{
  v48 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  recordCopy = record;
  identityCopy = identity;
  processIdentityCopy = processIdentity;
  lCopy = l;
  context = objc_autoreleasePoolPush();
  if (_initWithApplicationProxy_record_appIdentity_processIdentity_overrideURL__onceToken != -1)
  {
    [FBSApplicationInfo _initWithApplicationProxy:record:appIdentity:processIdentity:overrideURL:];
  }

  bundleURL = [proxyCopy bundleURL];
  if (!bundleURL || ([proxyCopy appState], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isValid"), v18, !processIdentityCopy) || !identityCopy || !recordCopy || (v19 & 1) == 0)
  {
    if (lCopy)
    {
      v33 = lCopy;
    }

    v34 = FBSLogApplicationLibrary();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v41 = proxyCopy;
      v42 = 2114;
      v43 = recordCopy;
      v44 = 2114;
      v45 = identityCopy;
      v46 = 2114;
      v47 = processIdentityCopy;
      _os_log_error_impl(&dword_1A2DBB000, v34, OS_LOG_TYPE_ERROR, "Invalid application proxy %{public}@, record %{public}@, app identity %{public}@, or process identity %{public}@", buf, 0x2Au);
    }

    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid Application Proxy provided"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBSApplicationInfo _initWithApplicationProxy:a2 record:self appIdentity:v35 processIdentity:? overrideURL:?];
    }

    [v35 UTF8String];
    _bs_set_crash_log_message();
  }

  v38 = processIdentityCopy;
  v39.receiver = self;
  v39.super_class = FBSApplicationInfo;
  v20 = [(FBSBundleInfo *)&v39 _initWithBundleProxy:proxyCopy overrideURL:bundleURL];
  v21 = v20;
  if (v20)
  {
    v20[22] = 0;
    [proxyCopy objectsForInfoDictionaryKeys:_initWithApplicationProxy_record_appIdentity_processIdentity_overrideURL____infoKeys];
    objc_claimAutoreleasedReturnValue();
    [proxyCopy entitlementValuesForKeys:_initWithApplicationProxy_record_appIdentity_processIdentity_overrideURL____entitlementKeys];
    objc_claimAutoreleasedReturnValue();
    *(v21 + 27) = [FBSApplicationInfo _applicationTypeForProxy:proxyCopy];
    objc_storeStrong(v21 + 14, identity);
    v22 = [v38 copy];
    v23 = *(v21 + 15);
    *(v21 + 15) = v22;

    canonicalExecutablePath = [proxyCopy canonicalExecutablePath];
    if (canonicalExecutablePath)
    {
      v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:canonicalExecutablePath isDirectory:0];
      v26 = *(v21 + 16);
      *(v21 + 16) = v25;
    }

    bundleContainerURL = [proxyCopy bundleContainerURL];
    v28 = *(v21 + 17);
    *(v21 + 17) = bundleContainerURL;

    dataContainerURL = [proxyCopy dataContainerURL];
    v30 = *(v21 + 18);
    *(v21 + 18) = dataContainerURL;

    v21[18] = [recordCopy codeSignatureVersion];
    [bundleURL path];
    objc_claimAutoreleasedReturnValue();
    BSModificationDateForPath();
  }

  v31 = 0;

  objc_autoreleasePoolPop(context);
  return v31;
}

uint64_t __95__FBSApplicationInfo__initWithApplicationProxy_record_appIdentity_processIdentity_overrideURL___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"disabled", @"UIInterfaceOrientation", @"UISupportedInterfaceOrientations", @"UIRequiresPersistentWiFi", @"BKDisplayBrightnessAbsoluteOverride", @"UISupportedExternalAccessoryProtocols", @"MallocBehavior", @"SBMachServices", @"NSAdvertisingAttributionReportEndpoint", 0}];
  v1 = _initWithApplicationProxy_record_appIdentity_processIdentity_overrideURL____infoKeys;
  _initWithApplicationProxy_record_appIdentity_processIdentity_overrideURL____infoKeys = v0;

  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  _initWithApplicationProxy_record_appIdentity_processIdentity_overrideURL____entitlementKeys = [v2 initWithObjects:{*MEMORY[0x1E69C7678], @"application-identifier", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (NSDictionary)entitlements
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__FBSApplicationInfo_entitlements__block_invoke;
  v4[3] = &unk_1E76BCDB0;
  v4[4] = self;
  [(FBSApplicationInfo *)self _synchronize:v4];
  return self->_lazy_entitlements;
}

void __34__FBSApplicationInfo_entitlements__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (!v1[8])
  {
    v3 = MEMORY[0x1E69635E0];
    v4 = [v1 bundleIdentifier];
    v5 = [v3 applicationProxyForIdentifier:v4];

    v6 = FBSLogApplicationLibrary();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = [*v2 bundleIdentifier];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_1A2DBB000, v7, OS_LOG_TYPE_INFO, "inefficient loading of all entitlements for '%@'", &v11, 0xCu);
      }

      v9 = [v5 entitlements];
      v7 = v9;
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = MEMORY[0x1E695E0F8];
      }

      objc_storeStrong(*v2 + 8, v10);
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __34__FBSApplicationInfo_entitlements__block_invoke_cold_1(v2, v7);
    }
  }
}

- (BOOL)supportsDeviceFamily:(unint64_t)family
{
  deviceFamilies = self->_deviceFamilies;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:family];
  LOBYTE(deviceFamilies) = [(NSArray *)deviceFamilies containsObject:v4];

  return deviceFamilies;
}

- (BOOL)builtOnOrAfterSDKVersion:(id)version
{
  sdkVersion = self->_sdkVersion;
  if (sdkVersion)
  {
    LOBYTE(sdkVersion) = [(NSString *)sdkVersion compare:version options:64]< 2;
  }

  return sdkVersion;
}

- (void)_overrideTags:(id)tags
{
  tagsCopy = tags;
  if (!self->_initialized)
  {
    BSEqualObjects();
  }

  [FBSApplicationInfo _overrideTags:a2];
}

- (void)_synchronize:(id)_synchronize
{
  if (_synchronize)
  {
    _synchronizeCopy = _synchronize;
    os_unfair_lock_lock(&self->_lock);
    _synchronizeCopy[2](_synchronizeCopy);

    os_unfair_lock_unlock(&self->_lock);
  }
}

+ (unint64_t)_applicationTypeForProxy:(id)proxy
{
  applicationType = [proxy applicationType];
  if ([applicationType isEqual:*MEMORY[0x1E69635A8]] & 1) != 0 || (objc_msgSend(applicationType, "isEqual:", *MEMORY[0x1E6963570]))
  {
    v4 = 1;
  }

  else if ([applicationType isEqual:*MEMORY[0x1E6963578]])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

+ (unint64_t)_applicationTypeForRecord:(id)record
{
  fbs_correspondingApplicationProxy = [record fbs_correspondingApplicationProxy];
  v5 = [self _applicationTypeForProxy:fbs_correspondingApplicationProxy];

  return v5;
}

+ (id)_configureEnvironment:(id)environment withInfo:(id)info isPreApex:(BOOL)apex
{
  apexCopy = apex;
  environmentCopy = environment;
  infoCopy = info;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __63__FBSApplicationInfo__configureEnvironment_withInfo_isPreApex___block_invoke;
  v23 = &unk_1E76BCDD8;
  v25 = &v26;
  v9 = environmentCopy;
  v24 = v9;
  v10 = MEMORY[0x1A58E80F0](&v20);
  v11 = v10;
  if (apexCopy)
  {
    (*(v10 + 16))(v10, @"MallocCorruptionAbort", @"0");
  }

  v12 = [infoCopy dictionaryForKey:{@"MallocBehavior", v20, v21, v22, v23}];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 bs_safeNumberForKey:@"NanoAllocator"];
    v15 = v14;
    if (v14)
    {
      if ([v14 BOOLValue])
      {
        v16 = @"1";
      }

      else
      {
        v16 = @"0";
      }

      (v11)[2](v11, @"MallocNanoZone", v16);
    }
  }

  v17 = v27[5];
  if (!v17)
  {
    v17 = v9;
  }

  v18 = v17;

  _Block_object_dispose(&v26, 8);

  return v18;
}

void __63__FBSApplicationInfo__configureEnvironment_withInfo_isPreApex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1 + 32)];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v6 setObject:v5 forKey:v10];
}

- (id)succinctDescriptionBuilder
{
  v8.receiver = self;
  v8.super_class = FBSApplicationInfo;
  succinctDescriptionBuilder = [(FBSBundleInfo *)&v8 succinctDescriptionBuilder];
  fbs_personaUniqueString = [(LSApplicationIdentity *)self->_applicationIdentity fbs_personaUniqueString];

  if (fbs_personaUniqueString)
  {
    fbs_personaUniqueString2 = [(LSApplicationIdentity *)self->_applicationIdentity fbs_personaUniqueString];
    v6 = [succinctDescriptionBuilder appendObject:fbs_personaUniqueString2 withName:@"persona"];
  }

  return succinctDescriptionBuilder;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSApplicationInfo *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__FBSApplicationInfo_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __60__FBSApplicationInfo_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sdkVersion];
  v4 = [v2 appendObject:v3 withName:@"sdk"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) signerIdentity];
  v7 = [v5 appendObject:v6 withName:@"signerIdentity" skipIfNil:1];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) bundleContainerURL];
  v10 = [v9 path];
  v11 = [v8 appendObject:v10 withName:@"bundleContainer" skipIfNil:1];

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) dataContainerURL];
  v14 = [v13 path];
  v15 = [v12 appendObject:v14 withName:@"dataContainer" skipIfNil:1];

  v16 = *(a1 + 32);
  v17 = [*(a1 + 40) tags];
  [v16 appendArraySection:v17 withName:@"tags" skipIfEmpty:1];

  v18 = *(a1 + 32);
  v19 = [*(a1 + 40) customMachServices];
  [v18 appendArraySection:v19 withName:@"machServices" skipIfEmpty:1];
}

- (void)_initWithApplicationProxy:(uint64_t)a3 record:appIdentity:processIdentity:overrideURL:.cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138544642;
  v9 = v4;
  OUTLINED_FUNCTION_0();
  v10 = @"FBSApplicationInfo.m";
  v11 = 1024;
  v12 = 137;
  v13 = v7;
  v14 = a3;
  _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

void __34__FBSApplicationInfo_entitlements__block_invoke_cold_1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*a1 bundleIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_ERROR, "failed to load entitlements for '%@' because we could not find the proxy", &v4, 0xCu);
}

- (void)_overrideTags:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can not call this method after initialization has finished"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138544642;
    v8 = v3;
    OUTLINED_FUNCTION_0();
    v9 = @"FBSApplicationInfo.m";
    v10 = 1024;
    v11 = 371;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end