@interface LNAvailabilityChecker
+ (BOOL)isInternalInstall;
+ (id)currentBuildVersion;
- (BOOL)availableForCurrentPlatformVersion;
- (LNAvailabilityChecker)initWithAvailabilityAnnotations:(id)a3;
- (id)availabilityWithPlatform:(id)a3 platformVersion:(id)a4;
- (id)currentSystemVersion;
@end

@implementation LNAvailabilityChecker

+ (BOOL)isInternalInstall
{
  if (isInternalInstall_onceToken[0] != -1)
  {
    dispatch_once(isInternalInstall_onceToken, &__block_literal_global_34);
  }

  return isInternalInstall_isInternal;
}

uint64_t __42__LNAvailabilityChecker_isInternalInstall__block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  isInternalInstall_isInternal = result;
  return result;
}

- (id)currentSystemVersion
{
  if (currentSystemVersion_onceToken != -1)
  {
    dispatch_once(&currentSystemVersion_onceToken, &__block_literal_global_5211);
  }

  if (currentSystemVersion_systemVersion)
  {
    v3 = currentSystemVersion_systemVersion;
  }

  else
  {
    v3 = @"Unknown";
  }

  return v3;
}

- (BOOL)availableForCurrentPlatformVersion
{
  v3 = [(LNAvailabilityChecker *)self currentPlatformName];
  v4 = [(LNAvailabilityChecker *)self currentSystemVersion];
  v5 = [(LNAvailabilityChecker *)self availabilityWithPlatform:v3 platformVersion:v4];
  v6 = [v5 objectForKeyedSubscript:v3];
  if (v6)
  {
    v7 = v6 == @"LNAvailabilityResultUnavailable";
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;

  return v8;
}

void __45__LNAvailabilityChecker_currentSystemVersion__block_invoke()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = currentSystemVersion_systemVersion;
  currentSystemVersion_systemVersion = v1;
}

- (id)availabilityWithPlatform:(id)a3 platformVersion:(id)a4
{
  v34[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(LNAvailabilityChecker *)self availabilityAnnotations];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69AC258]];
  v10 = [v9 _availabilityResultWithoutSystemVersion];
  v11 = v10;
  v12 = @"LNAvailabilityResultAvailable";
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = objc_alloc(MEMORY[0x1E695DF90]);
  v15 = *MEMORY[0x1E69AC250];
  v33[0] = *MEMORY[0x1E69AC208];
  v33[1] = v15;
  v34[0] = v13;
  v34[1] = v13;
  v16 = *MEMORY[0x1E69AC228];
  v33[2] = *MEMORY[0x1E69AC218];
  v33[3] = v16;
  v34[2] = v13;
  v34[3] = v13;
  v33[4] = *MEMORY[0x1E69AC238];
  v34[4] = v13;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:5];
  v18 = [v14 initWithDictionary:v17];

  v19 = [(LNAvailabilityChecker *)self availabilityAnnotations];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __66__LNAvailabilityChecker_availabilityWithPlatform_platformVersion___block_invoke;
  v28[3] = &unk_1E74B1070;
  v29 = v6;
  v20 = v18;
  v30 = v20;
  v31 = v13;
  v32 = v7;
  v21 = v7;
  v22 = v13;
  v23 = v6;
  [v19 enumerateKeysAndObjectsUsingBlock:v28];

  v24 = v32;
  v25 = v20;

  v26 = *MEMORY[0x1E69E9840];
  return v20;
}

void __66__LNAvailabilityChecker_availabilityWithPlatform_platformVersion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (([v14 isEqualToString:*MEMORY[0x1E69AC258]] & 1) == 0)
  {
    v6 = [v14 isEqualToString:*(a1 + 32)];
    v7 = *(a1 + 48);
    if (v6)
    {
      [v5 _availabilityResultWithSystemVersion:*(a1 + 56)];
    }

    else
    {
      [v5 _availabilityResultWithoutSystemVersion];
    }
    v8 = ;
    v9 = v8;
    v10 = @"LNAvailabilityResultDeprecated";
    if (v8 != @"LNAvailabilityResultDeprecated" && v7 != @"LNAvailabilityResultDeprecated")
    {
      v10 = @"LNAvailabilityResultAvailable";
    }

    if (v8 == @"LNAvailabilityResultUnavailable" || v7 == @"LNAvailabilityResultUnavailable")
    {
      v13 = @"LNAvailabilityResultUnavailable";
    }

    else
    {
      v13 = v10;
    }

    [*(a1 + 40) setObject:v13 forKeyedSubscript:v14];
  }
}

- (LNAvailabilityChecker)initWithAvailabilityAnnotations:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LNAvailabilityChecker;
  v5 = [(LNAvailabilityChecker *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    availabilityAnnotations = v5->_availabilityAnnotations;
    v5->_availabilityAnnotations = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)currentBuildVersion
{
  if (currentBuildVersion_onceToken != -1)
  {
    dispatch_once(&currentBuildVersion_onceToken, &__block_literal_global_29);
  }

  if (currentBuildVersion_buildVersion)
  {
    v3 = currentBuildVersion_buildVersion;
  }

  else
  {
    v3 = @"Unknown";
  }

  return v3;
}

void __44__LNAvailabilityChecker_currentBuildVersion__block_invoke()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = currentBuildVersion_buildVersion;
  currentBuildVersion_buildVersion = v1;
}

@end