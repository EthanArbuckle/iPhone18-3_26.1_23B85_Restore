@interface CPLFingerprintContext
+ (CPLFingerprintContext)sharedContext;
+ (int64_t)defaultAccountEPPCapabilityInUniverseName:(id)name;
+ (void)initialize;
+ (void)setSharedContext:(id)context;
+ (void)setupFingerprintContextForTests;
- (BOOL)usesMMCSv2AsDefault;
- (CPLFingerprintContext)initWithBoundaryKey:(id)key;
- (CPLFingerprintContext)initWithFingerprintSchemeV1:(id)v1 fingerprintSchemeV2:(id)v2;
- (CPLFingerprintScheme)fingerprintSchemeForNewMasterAsset;
- (CPLFingerprintSchemeV2)mmcsv2FingerprintScheme;
- (NSData)boundaryKey;
- (id)_sourceDescriptionForSource:(void *)source;
- (id)fingerprintSchemeForFingerprint:(id)fingerprint;
- (id)fingerprintSchemeForSignature:(id)signature;
- (uint64_t)_usesMMCSv2AsDefault;
- (void)refreshBoundaryKeyWithSource:(id)source completionHandler:(id)handler;
- (void)setBoundaryKey:(id)key;
- (void)updateWithAccountEPPCapability:(int64_t)capability source:(id)source;
- (void)updateWithStatus:(id)status configuration:(id)configuration;
@end

@implementation CPLFingerprintContext

- (void)updateWithAccountEPPCapability:(int64_t)capability source:(id)source
{
  sourceCopy = source;
  if (+[CPLFingerprintScheme supportsEPP])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v9 = __63__CPLFingerprintContext_updateWithAccountEPPCapability_source___block_invoke;
    v10 = &unk_1E861B128;
    capabilityCopy = capability;
    selfCopy = self;
    v12 = sourceCopy;
    v7 = v8;
    os_unfair_lock_lock(&self->_lock);
    v9(v7);
    os_unfair_lock_unlock(&self->_lock);
  }
}

void __63__CPLFingerprintContext_updateWithAccountEPPCapability_source___block_invoke(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  v3 = a1[4];
  v4 = +[CPLFingerprintContext sharedContext];

  if (v3 != v4)
  {
    v5 = v2 == 3;
    v6 = a1[4];
    if (*(v6 + 12) != v5)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [CPLStatus descriptionForAccountEPPCapability:a1[6]];
          v9 = a1[5];
          v10 = @"NO";
          v15 = 138543874;
          v16 = v8;
          if (v2 == 3)
          {
            v10 = @"YES";
          }

          v17 = 2114;
          v18 = v9;
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Account capability is %{public}@ (%{public}@) - switching EPP enabled to %@", &v15, 0x20u);
        }

        v6 = a1[4];
      }

      *(v6 + 12) = v5;
    }

    goto LABEL_14;
  }

  if ((v2 == 3) == [_sharedDefaults BOOLForKey:@"CPLEPPEnabled"])
  {
LABEL_14:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  [_sharedDefaults setBool:v2 == 3 forKey:@"CPLEPPEnabled"];
  v11 = _sharedDefaults;
  v12 = a1[5];
  v13 = *MEMORY[0x1E69E9840];

  [v11 setObject:v12 forKey:@"CPLEPPEnabledSource"];
}

- (void)updateWithStatus:(id)status configuration:(id)configuration
{
  statusCopy = status;
  configurationCopy = configuration;
  v7 = CPLCurrentUniverseName();
  maximumAccountEPPCapability = [CPLFingerprintContext defaultAccountEPPCapabilityInUniverseName:v7];

  if (maximumAccountEPPCapability)
  {
    v9 = @"defaults";
    goto LABEL_15;
  }

  if ([configurationCopy shouldDisableEPP])
  {
    v9 = @"configuration";
LABEL_7:
    maximumAccountEPPCapability = 2;
    goto LABEL_15;
  }

  disabledFeatures = [statusCopy disabledFeatures];
  v11 = [disabledFeatures containsObject:@"EPP"];

  if (v11)
  {
    v9 = @"disabled-features";
    goto LABEL_7;
  }

  if (!+[CPLFingerprintScheme supportsEPPAutoEnable])
  {
    goto LABEL_13;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if (![standardUserDefaults BOOLForKey:@"CPLAlwaysAutoEnableEPP"])
  {
    isWalrusEnabled = [statusCopy isWalrusEnabled];

    if (isWalrusEnabled)
    {
      goto LABEL_12;
    }

LABEL_13:
    maximumAccountEPPCapability = 0;
    goto LABEL_14;
  }

LABEL_12:
  maximumAccountEPPCapability = [statusCopy maximumAccountEPPCapability];
LABEL_14:
  v9 = @"status";
LABEL_15:
  [(CPLFingerprintContext *)self updateWithAccountEPPCapability:maximumAccountEPPCapability source:v9];
}

- (id)fingerprintSchemeForFingerprint:(id)fingerprint
{
  fingerprintCopy = fingerprint;
  if (!fingerprintCopy)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Trying to determine a fingerprint scheme without a fingerprint", v13, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFingerprintContext.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v12 lineNumber:220 description:@"Trying to determine a fingerprint scheme without a fingerprint"];

    abort();
  }

  v6 = fingerprintCopy;
  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:fingerprintCopy options:0];
  v8 = [(CPLFingerprintContext *)self fingerprintSchemeForSignature:v7];

  return v8;
}

- (id)fingerprintSchemeForSignature:(id)signature
{
  signatureCopy = signature;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2938;
  v21 = __Block_byref_object_dispose__2939;
  v22 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __55__CPLFingerprintContext_fingerprintSchemeForSignature___block_invoke;
  v13 = &unk_1E861F868;
  selfCopy = self;
  v5 = signatureCopy;
  v15 = v5;
  v16 = &v17;
  v6 = v11;
  os_unfair_lock_lock(&self->_lock);
  v12(v6);
  os_unfair_lock_unlock(&self->_lock);

  v7 = v18[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = +[CPLFingerprintScheme invalidFingerprintScheme];
  }

  v9 = v8;

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __55__CPLFingerprintContext_fingerprintSchemeForSignature___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) isValidSignature:a1[5]];
  v3 = a1[4];
  if (v2)
  {
    v4 = (v3 + 24);
  }

  else
  {
    if (![*(v3 + 16) isValidSignature:a1[5]])
    {
      return;
    }

    v4 = (a1[4] + 16);
  }

  v5 = *v4;
  v6 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v6, v5);
}

- (CPLFingerprintScheme)fingerprintSchemeForNewMasterAsset
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2938;
  v15 = __Block_byref_object_dispose__2939;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __59__CPLFingerprintContext_fingerprintSchemeForNewMasterAsset__block_invoke;
  v8 = &unk_1E861F818;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

void __59__CPLFingerprintContext_fingerprintSchemeForNewMasterAsset__block_invoke(uint64_t a1)
{
  v2 = [(CPLFingerprintContext *)*(a1 + 32) _usesMMCSv2AsDefault];
  v3 = 16;
  if (v2)
  {
    v3 = 24;
  }

  v4 = *(*(a1 + 32) + v3);
  v5 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v5, v4);
}

- (uint64_t)_usesMMCSv2AsDefault
{
  if (!self)
  {
    v3 = 0;
    return v3 & 1;
  }

  v2 = +[CPLFingerprintContext sharedContext];

  if (v2 != self)
  {
    v3 = self[12];
    return v3 & 1;
  }

  v5 = _sharedDefaults;

  return [v5 BOOLForKey:@"CPLEPPEnabled"];
}

- (void)refreshBoundaryKeyWithSource:(id)source completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  handlerCopy = handler;
  if (_shouldUseRealBoundaryKey != 1)
  {
    goto LABEL_11;
  }

  v8 = +[CPLFingerprintContext sharedContext];
  if (v8 != self || !+[CPLFingerprintScheme supportsEPP])
  {

    goto LABEL_11;
  }

  mmcsv2FingerprintScheme = [(CPLFingerprintContext *)self mmcsv2FingerprintScheme];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_11:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_12;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CPLFingerprintContext *)self _sourceDescriptionForSource:sourceCopy];
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Refreshing boundary key for %{public}@", buf, 0xCu);
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__CPLFingerprintContext_refreshBoundaryKeyWithSource_completionHandler___block_invoke;
  v14[3] = &unk_1E861BF48;
  v14[4] = self;
  v15 = sourceCopy;
  v16 = handlerCopy;
  CPLGetAppBoundaryKey(v14);

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
}

- (id)_sourceDescriptionForSource:(void *)source
{
  if (source)
  {
    source = [a2 componentsJoinedByString:@"."];
    v2 = vars8;
  }

  return source;
}

void __72__CPLFingerprintContext_refreshBoundaryKeyWithSource_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(CPLFingerprintContext *)*(a1 + 32) _sourceDescriptionForSource:?];
        v12 = 138543362;
        v13 = v8;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Successfully refreshed boundary key for %{public}@", &v12, 0xCu);
      }
    }

    [*(a1 + 32) setBoundaryKey:v5];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(CPLFingerprintContext *)*(a1 + 32) _sourceDescriptionForSource:?];
      v12 = 138543618;
      v13 = v6;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Failed to refresh boundary key for %{public}@: %@", &v12, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (CPLFingerprintSchemeV2)mmcsv2FingerprintScheme
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2938;
  v15 = __Block_byref_object_dispose__2939;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __48__CPLFingerprintContext_mmcsv2FingerprintScheme__block_invoke;
  v8 = &unk_1E861A850;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setBoundaryKey:(id)key
{
  keyCopy = key;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __40__CPLFingerprintContext_setBoundaryKey___block_invoke;
  v9 = &unk_1E861B290;
  selfCopy = self;
  v5 = keyCopy;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_lock);
  v8(v6);
  os_unfair_lock_unlock(&self->_lock);
}

void __40__CPLFingerprintContext_setBoundaryKey___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 40);
    v4 = [*(*(a1 + 32) + 24) boundaryKey];
    v5 = v4;
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {

      if (!(v3 | v5))
      {
        return;
      }
    }

    else
    {
      v10 = [v3 isEqual:v4];

      if (v10)
      {
        return;
      }
    }
  }

  v7 = [[CPLFingerprintSchemeV2 alloc] initWithBoundaryKey:*(a1 + 40)];
  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = v7;

  MEMORY[0x1EEE66BB8](v7, v9);
}

- (NSData)boundaryKey
{
  mmcsv2FingerprintScheme = [(CPLFingerprintContext *)self mmcsv2FingerprintScheme];
  boundaryKey = [mmcsv2FingerprintScheme boundaryKey];

  return boundaryKey;
}

- (BOOL)usesMMCSv2AsDefault
{
  selfCopy = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __44__CPLFingerprintContext_usesMMCSv2AsDefault__block_invoke;
  v7 = &unk_1E861A850;
  selfCopy2 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&selfCopy->_lock);
  v6(v3);
  os_unfair_lock_unlock(&selfCopy->_lock);

  LOBYTE(selfCopy) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return selfCopy;
}

uint64_t __44__CPLFingerprintContext_usesMMCSv2AsDefault__block_invoke(uint64_t a1)
{
  result = [(CPLFingerprintContext *)*(a1 + 32) _usesMMCSv2AsDefault];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (CPLFingerprintContext)initWithBoundaryKey:(id)key
{
  keyCopy = key;
  v5 = [[CPLFingerprintSchemeV2 alloc] initWithBoundaryKey:keyCopy];

  v6 = +[CPLFingerprintScheme defaultMMCSv1FingerprintScheme];
  v7 = [(CPLFingerprintContext *)self initWithFingerprintSchemeV1:v6 fingerprintSchemeV2:v5];

  return v7;
}

- (CPLFingerprintContext)initWithFingerprintSchemeV1:(id)v1 fingerprintSchemeV2:(id)v2
{
  v1Copy = v1;
  v2Copy = v2;
  v12.receiver = self;
  v12.super_class = CPLFingerprintContext;
  v9 = [(CPLFingerprintContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_mmcsv1FingerprintScheme, v1);
    objc_storeStrong(&v10->_mmcsv2FingerprintScheme, v2);
    v10->_usesMMCSv2AsDefault = 0;
  }

  return v10;
}

+ (int64_t)defaultAccountEPPCapabilityInUniverseName:(id)name
{
  nameCopy = name;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = standardUserDefaults;
  if (!nameCopy)
  {
    v8 = [standardUserDefaults objectForKey:@"CPLShouldUseMMCSv2Fingerprint"];
    if (!v8)
    {
      v8 = [v5 objectForKey:@"CPLShouldUseMMCSv2"];
      if (!v8)
      {
        v7 = 0;
        goto LABEL_15;
      }
    }

    v6 = v8;
    if (objc_opt_respondsToSelector())
    {
      v7 = v6;
LABEL_9:
      if ([v7 BOOLValue])
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v6 = [@"CPLShouldUseMMCSv2FingerprintIn" stringByAppendingString:nameCopy];
  v7 = [v5 objectForKey:v6];
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {

      v6 = v7;
      goto LABEL_9;
    }

LABEL_13:
    v7 = 0;
  }

LABEL_14:

LABEL_15:
  return v7;
}

+ (void)setupFingerprintContextForTests
{
  v6 = +[CPLHardcodedFingerprintSchemeV2 sharedInstance];
  v3 = [CPLFingerprintContext alloc];
  v4 = +[CPLFingerprintScheme defaultMMCSv1FingerprintScheme];
  v5 = [(CPLFingerprintContext *)v3 initWithFingerprintSchemeV1:v4 fingerprintSchemeV2:v6];

  [self setSharedContext:v5];
}

+ (void)setSharedContext:(id)context
{
  contextCopy = context;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __42__CPLFingerprintContext_setSharedContext___block_invoke;
  v8 = &unk_1E861A940;
  v4 = contextCopy;
  v9 = v4;
  v5 = v6;
  os_unfair_lock_lock(&_sharedContextLock);
  v7(v5);
  os_unfair_lock_unlock(&_sharedContextLock);
}

+ (CPLFingerprintContext)sharedContext
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2938;
  v13 = __Block_byref_object_dispose__2939;
  v14 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __38__CPLFingerprintContext_sharedContext__block_invoke;
  v7 = &unk_1E861B528;
  v8 = &v9;
  v2 = v5;
  os_unfair_lock_lock(&_sharedContextLock);
  v6(v2);
  os_unfair_lock_unlock(&_sharedContextLock);

  v3 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v3;
}

void __38__CPLFingerprintContext_sharedContext__block_invoke(uint64_t a1)
{
  v2 = _sharedContext;
  if (!_sharedContext)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
    v4 = _sharedDefaults;
    _sharedDefaults = v3;

    if (_shouldUseRealBoundaryKey == 1)
    {
      v5 = [[CPLFingerprintSchemeInvalid alloc] initForMMCSv2:1];
    }

    else
    {
      v5 = +[CPLHardcodedFingerprintSchemeV2 sharedInstance];
    }

    v6 = v5;
    v7 = [CPLFingerprintContext alloc];
    v8 = +[CPLFingerprintScheme defaultMMCSv1FingerprintScheme];
    v9 = [(CPLFingerprintContext *)v7 initWithFingerprintSchemeV1:v8 fingerprintSchemeV2:v6];
    v10 = _sharedContext;
    _sharedContext = v9;

    v2 = _sharedContext;
  }

  v11 = (*(*(a1 + 32) + 8) + 40);

  objc_storeStrong(v11, v2);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [standardUserDefaults objectForKey:@"CPLUseRealBoundaryKey"];

    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      _shouldUseRealBoundaryKey = [v3 BOOLValue];
    }

    MEMORY[0x1EEE66BE0]();
  }
}

@end