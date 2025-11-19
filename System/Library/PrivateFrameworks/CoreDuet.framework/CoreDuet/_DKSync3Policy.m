@interface _DKSync3Policy
+ (BOOL)cloudSyncDisabled;
+ (BOOL)rapportSyncDisabled;
+ (id)computePolicyDictionaryWithDefaultSyncPolicyDict:(id)a3 syncPolicyOverridesDict:(id)a4 topLevelDefaultsPolicy:(id)a5;
+ (id)computedPolicyDictionary;
+ (id)configurationPlistForFilename:(id)a3;
+ (id)disabledPolicy;
+ (id)policyCache;
+ (id)productVersion;
+ (id)syncPolicyConfigPathForFilename:(id)a3;
+ (id)userDefaults;
+ (void)_possiblyAddToArray:(id)a3 ifTransport:(int64_t)a4 existsInTransports:(int64_t)a5;
+ (void)addToDictionary:(id)a3 streamNamesToAlwaysSync:(id)a4;
+ (void)fillPolicyCache:(id)a3 bySplittingPolicyDictionary:(id)a4;
+ (void)handleDownloadSyncPolicyResponse:(id)a3 data:(id)a4 error:(id)a5;
+ (void)overrideDictionary:(id)a3 withOverrides:(id)a4;
+ (void)possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays:(unint64_t)a3;
- (BOOL)_anyFeaturePropertyValueWithKey:(id)a3 getterBlock:(id)a4;
- (_DKSync3Policy)init;
- (id)description;
- (uint64_t)periodicSyncCadenceInMinutesMinimumValue;
- (unint64_t)_maximumPropertyValueWithKey:(id)a3 policies:(id)a4 skipZeroValues:(BOOL)a5;
- (unint64_t)_minimumPropertyValueWithKey:(id)a3 policies:(id)a4 skipZeroValues:(BOOL)a5;
- (unint64_t)minimumTimeBetweenSyncsInSecondsMaximumValue;
@end

@implementation _DKSync3Policy

+ (id)policyCache
{
  objc_opt_self();
  if (policyCache_onceToken_0 != -1)
  {
    +[_DKSync3Policy policyCache];
  }

  v0 = policyCache_policyCache_0;

  return v0;
}

+ (id)disabledPolicy
{
  if (disabledPolicy_onceToken != -1)
  {
    +[_DKSync3Policy disabledPolicy];
  }

  v3 = disabledPolicy_policy;

  return v3;
}

+ (id)computedPolicyDictionary
{
  v3 = [_DKSync3Policy configurationPlistForFilename:@"Policies/com.apple.coreduet.knowledge.syncPolicies3.plist"];
  v4 = [a1 userDefaults];
  v5 = [v4 objectForKey:@"Sync3Policies"];

  v6 = [a1 userDefaults];
  v7 = [v6 objectForKey:@"Sync3Policy"];

  v8 = [a1 computePolicyDictionaryWithDefaultSyncPolicyDict:v3 syncPolicyOverridesDict:v5 topLevelDefaultsPolicy:v7];

  return v8;
}

+ (id)computePolicyDictionaryWithDefaultSyncPolicyDict:(id)a3 syncPolicyOverridesDict:(id)a4 topLevelDefaultsPolicy:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 mutableCopy];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;
  v13 = [v8 objectForKeyedSubscript:@"Version"];
  [v13 floatValue];
  v15 = v14;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v9 objectForKeyedSubscript:@"Version"];
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v16 floatValue], v17 < v15))
    {
      v18 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [objc_opt_class() description];
        v27 = 138543362;
        v28 = v19;
        _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_INFO, "%{public}@: Sync policy is invalid and/or old, removing saved policies from default", &v27, 0xCu);
      }

      if (!+[_DKCloudUtilities isUnitTesting])
      {
        v20 = [a1 userDefaults];
        [v20 removeObjectForKey:@"Sync3Policies"];
      }

      v9 = MEMORY[0x1E695E0F8];
    }

    if ([v9 count])
    {
      v21 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        +[_DKSync3Policy computePolicyDictionaryWithDefaultSyncPolicyDict:syncPolicyOverridesDict:topLevelDefaultsPolicy:];
      }

      [a1 overrideDictionary:v12 withOverrides:v9];
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 count])
  {
    v22 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      +[_DKSync3Policy computePolicyDictionaryWithDefaultSyncPolicyDict:syncPolicyOverridesDict:topLevelDefaultsPolicy:];
    }

    [a1 overrideDictionary:v12 withOverrides:v10];
    v23 = [v10 objectForKeyedSubscript:@"StreamNamesToAlwaysSync"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 count])
    {
      [a1 addToDictionary:v12 streamNamesToAlwaysSync:v23];
    }
  }

  if (![v12 count])
  {
    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SyncDisabled"];
  }

  v24 = [v12 copy];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (void)overrideDictionary:(id)a3 withOverrides:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v42 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v29;
    v11 = 0x1E695D000uLL;
    *&v8 = 138544386;
    v25 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v5 objectForKeyedSubscript:{v13, v25}];
        v15 = [v6 objectForKeyedSubscript:v13];
        if (v14 && ((v16 = *(v11 + 3872), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (v17 = *(v11 + 3872), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
        {
          v18 = *(v11 + 3872);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (v19 = *(v11 + 3872), objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v20 = v15;
            v21 = [v14 mutableCopy];
            [v21 addEntriesFromDictionary:v20];

            [v5 setObject:v21 forKeyedSubscript:v13];
            v11 = 0x1E695D000;
          }

          else
          {
            v22 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v27 = [objc_opt_class() description];
              v26 = objc_opt_class();
              v23 = objc_opt_class();
              *buf = v25;
              v33 = v27;
              v34 = 2114;
              v35 = v13;
              v36 = 2114;
              v37 = v26;
              v11 = 0x1E695D000;
              v38 = 2114;
              v39 = v23;
              v40 = 2112;
              v41 = v5;
              _os_log_error_impl(&dword_191750000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Ignoring override due to type mismatch for key %{public}@ (%{public}@ vs. %{public}@: %@", buf, 0x34u);
            }
          }
        }

        else
        {
          [v5 setObject:v15 forKeyedSubscript:v13];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v28 objects:v42 count:16];
    }

    while (v9);
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (void)addToDictionary:(id)a3 streamNamesToAlwaysSync:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v38 = a4;
  v37 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    v10 = 0x1E695D000uLL;
    v11 = 0x1E695D000uLL;
    v35 = *v49;
    v36 = v6;
    do
    {
      v12 = 0;
      v39 = v8;
      do
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v48 + 1) + 8 * v12);
        v14 = [v6 objectForKeyedSubscript:v13];
        v15 = *(v10 + 3872);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v14 objectForKeyedSubscript:@"StreamNames"];
          v17 = *(v11 + 3784);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v16 mutableCopy];
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v19 = v38;
            v20 = [v19 countByEnumeratingWithState:&v44 objects:v53 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v45;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v45 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v44 + 1) + 8 * i);
                  if (([v18 containsObject:v24] & 1) == 0)
                  {
                    [v18 addObject:v24];
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v44 objects:v53 count:16];
              }

              while (v21);
            }

            [v37 setObject:v18 forKeyedSubscript:v13];
            v9 = v35;
            v6 = v36;
            v10 = 0x1E695D000;
            v11 = 0x1E695D000;
            v8 = v39;
          }
        }

        ++v12;
      }

      while (v12 != v8);
      v8 = [v6 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v8);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = v37;
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v40 + 1) + 8 * j);
        v31 = [v25 objectForKeyedSubscript:v30];
        v32 = [v6 objectForKeyedSubscript:v30];
        v33 = [v32 mutableCopy];
        [v33 setObject:v31 forKeyedSubscript:@"StreamNames"];
        [v6 setObject:v33 forKeyedSubscript:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v27);
  }

  v34 = *MEMORY[0x1E69E9840];
}

+ (void)fillPolicyCache:(id)a3 bySplittingPolicyDictionary:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v5 = a4;
  v26 = objc_opt_new();
  v25 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    v28 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        v12 = [v6 objectForKeyedSubscript:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v8;
          v14 = v12;
          v15 = [v14 objectForKeyedSubscript:@"Feature"];
          if (v15)
          {
            v16 = [[_DKSync3FeaturePolicy alloc] initWithName:v11 properties:v14];
            [v27 setObject:v16 forKey:v11];
            [v26 addObject:v15];
            v17 = [v27 objectForKey:v15];
            if (!v17)
            {
              v17 = objc_opt_new();
              [v27 setObject:v17 forKey:v15];
            }

            v18 = v17;
            v19 = v16;
          }

          else
          {
            v16 = [v14 objectForKeyedSubscript:@"Transport"];
            if (!v16)
            {
              v17 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
              {
                v21 = [objc_opt_class() description];
                *buf = 138543618;
                v34 = v21;
                v35 = 2112;
                v36 = v14;
                _os_log_fault_impl(&dword_191750000, v17, OS_LOG_TYPE_FAULT, "%{public}@: Ignoring unrecognized policy dictionary: %@", buf, 0x16u);
              }

              goto LABEL_11;
            }

            v17 = [[_DKSync3TransportPolicy alloc] initWithName:v11 properties:v14];
            [v27 setObject:v17 forKey:v11];
            v18 = v25;
            v19 = v11;
          }

          [v18 addObject:v19];
LABEL_11:

          v8 = v13;
          v6 = v28;
          goto LABEL_14;
        }

        v14 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v20 = [objc_opt_class() description];
          *buf = 138543618;
          v34 = v20;
          v35 = 2112;
          v36 = v12;
          _os_log_debug_impl(&dword_191750000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Ignoring unrecognized policy object: %@", buf, 0x16u);
        }

LABEL_14:

        ++v10;
      }

      while (v8 != v10);
      v22 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
      v8 = v22;
    }

    while (v22);
  }

  [v27 setObject:v26 forKey:@"_DKSync3PolicyAllFeatures"];
  [v27 setObject:v25 forKey:@"_DKSync3PolicyAllTransports"];
  v23 = [v27 debugDescription];
  NSLog(&cfstr_Policycache.isa, v23);

  v24 = *MEMORY[0x1E69E9840];
}

+ (id)productVersion
{
  v2 = _CFCopySystemVersionDictionary();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 objectForKey:*MEMORY[0x1E695E208]];
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)userDefaults
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreDuet"];

  return v2;
}

+ (BOOL)rapportSyncDisabled
{
  v2 = [a1 userDefaults];
  v3 = [v2 objectForKey:@"Sync3Policy"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"RapportSyncDisabled"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)cloudSyncDisabled
{
  v2 = [a1 userDefaults];
  v3 = [v2 objectForKey:@"Sync3Policy"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"CloudSyncDisabled"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays:(unint64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77___DKSync3Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke;
  block[3] = &unk_1E7367370;
  v4 = @"com.apple.coreduet.sync-policy.policy-download";
  v5 = a1;
  v6 = a3;
  if (possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__initialized_0 != -1)
  {
    dispatch_once(&possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__initialized_0, block);
  }
}

+ (void)handleDownloadSyncPolicyResponse:(id)a3 data:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[_DKSync3Policy handleDownloadSyncPolicyResponse:data:error:];
    }

    goto LABEL_5;
  }

  if ([v8 statusCode] != 200)
  {
    if ([v8 statusCode] != 204 && objc_msgSend(v8, "statusCode") != 205 && objc_msgSend(v8, "statusCode") != 404 && objc_msgSend(v8, "statusCode") != 410)
    {
      goto LABEL_5;
    }

    v12 = objc_opt_new();
    if (!v12)
    {
      goto LABEL_5;
    }

LABEL_19:
    v13 = +[_DKSync3Policy userDefaults];
    v16 = [v13 objectForKey:@"Sync3Policies"];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = objc_opt_new();
    }

    v19 = v18;

    [v13 setValue:v12 forKey:@"Sync3Policies"];
    v20 = [MEMORY[0x1E695DF00] date];
    [v13 setValue:v20 forKey:@"CloudSyncPoliciesLastModified"];

    if (([v12 isEqualToDictionary:v19] & 1) == 0)
    {
      v21 = +[_DKSync3Policy policyCache];
      [v21 removeAllObjects];

      v22 = [MEMORY[0x1E696AD88] defaultCenter];
      [v22 postNotificationName:@"_DKSync3PolicyDidChangeNotification" object:a1 userInfo:0];
    }

    goto LABEL_25;
  }

  v23 = 0;
  v12 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:0 format:0 error:&v23];
  v14 = v23;
  if (!v12)
  {
    v15 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      +[_DKSync3Policy handleDownloadSyncPolicyResponse:data:error:];
    }
  }

  if (v12)
  {
    goto LABEL_19;
  }

LABEL_5:
  if ([v8 statusCode] == 304)
  {
    v12 = +[_DKSync3Policy userDefaults];
    v13 = [MEMORY[0x1E695DF00] date];
    [v12 setValue:v13 forKey:@"CloudSyncPoliciesLastModified"];
LABEL_25:
  }
}

+ (id)syncPolicyConfigPathForFilename:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 pathForResource:v4 ofType:0];

  return v6;
}

+ (id)configurationPlistForFilename:(id)a3
{
  v4 = a3;
  v5 = [a1 syncPolicyConfigPathForFilename:v4];
  if (!v5)
  {
    v6 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[_DKSync3Policy configurationPlistForFilename:];
    }

    goto LABEL_9;
  }

  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v5];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[_DKSync3Policy configurationPlistForFilename:];
    }

LABEL_9:
    v6 = 0;
  }

  return v6;
}

- (_DKSync3Policy)init
{
  v3.receiver = self;
  v3.super_class = _DKSync3Policy;
  result = [(_DKSync3Policy *)&v3 init];
  if (result)
  {
    result->_syncDisabled = 1;
  }

  return result;
}

+ (void)_possiblyAddToArray:(id)a3 ifTransport:(int64_t)a4 existsInTransports:(int64_t)a5
{
  v7 = a3;
  if ((a5 & a4) != 0)
  {
    v8 = [_DKSyncPeerStatusTracker stringForTransports:a4];
    v9 = +[_DKSync3Policy policyCache];
    v10 = [v9 objectForKey:v8];
    v11 = v10;
    if (v10)
    {
      if ((*(v10 + 8) & 1) == 0)
      {
        [v7 addObject:v10];
        goto LABEL_10;
      }

      v12 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        +[_DKSync3Policy _possiblyAddToArray:ifTransport:existsInTransports:];
      }
    }

    else
    {
      v12 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[_DKSync3Policy _possiblyAddToArray:ifTransport:existsInTransports:];
      }
    }

LABEL_10:
  }
}

- (unint64_t)_minimumPropertyValueWithKey:(id)a3 policies:(id)a4 skipZeroValues:(BOOL)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = *v26;
    v13 = 1;
    *&v9 = 138543618;
    v22 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v15 = [*(*(&v25 + 1) + 8 * i) properties];
        v16 = [v15 objectForKeyedSubscript:v6];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [v16 unsignedIntegerValue];
          if (v17 >= v11)
          {
            v18 = v11;
          }

          else
          {
            v18 = v17;
          }

          if (v13)
          {
            v18 = v17;
          }

          v13 &= v17 == 0 && a5;
          if (v17 != 0 || !a5)
          {
            v11 = v18;
          }
        }

        else if (v16)
        {
          v19 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v23 = [objc_opt_class() description];
            *buf = v22;
            v30 = v23;
            v31 = 2114;
            v32 = v6;
            _os_log_error_impl(&dword_191750000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Invalid non-number type for key %{public}@", buf, 0x16u);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

- (unint64_t)_maximumPropertyValueWithKey:(id)a3 policies:(id)a4 skipZeroValues:(BOOL)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = *v26;
    v13 = 1;
    *&v9 = 138543618;
    v22 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v15 = [*(*(&v25 + 1) + 8 * i) properties];
        v16 = [v15 objectForKeyedSubscript:v6];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [v16 unsignedIntegerValue];
          if (v17 <= v11)
          {
            v18 = v11;
          }

          else
          {
            v18 = v17;
          }

          if (v13)
          {
            v18 = v17;
          }

          v13 &= v17 == 0 && a5;
          if (v17 != 0 || !a5)
          {
            v11 = v18;
          }
        }

        else if (v16)
        {
          v19 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v23 = [objc_opt_class() description];
            *buf = v22;
            v30 = v23;
            v31 = 2114;
            v32 = v6;
            _os_log_error_impl(&dword_191750000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Invalid non-number type for key %{public}@", buf, 0x16u);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)_anyFeaturePropertyValueWithKey:(id)a3 getterBlock:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_featurePolicies;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if (v5[2](v5, *(*(&v12 + 1) + 8 * i)))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (unint64_t)minimumTimeBetweenSyncsInSecondsMaximumValue
{
  if (![(NSArray *)self->_transportPolicies count])
  {
    return 0;
  }

  v3 = [(NSArray *)self->_transportPolicies count];
  transportPolicies = self->_transportPolicies;
  if (v3 == 1)
  {
    v5 = [(NSArray *)self->_transportPolicies firstObject];
    if (v5)
    {
      v6 = v5[9];
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  return [(_DKSync3Policy *)self _maximumPropertyValueWithKey:@"MinimumTimeBetweenSyncsInSeconds" policies:transportPolicies skipZeroValues:1];
}

- (uint64_t)periodicSyncCadenceInMinutesMinimumValue
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  if (![*(a1 + 72) count])
  {
    return 0;
  }

  v2 = [*(v1 + 72) count];
  v3 = *(v1 + 72);
  if (v2 == 1)
  {
    v4 = [*(v1 + 72) firstObject];
    if (v4)
    {
      v1 = v4[10];
    }

    else
    {
      v1 = 0;
    }

    return v1;
  }

  v6 = OUTLINED_FUNCTION_17_2();

  return [v6 _minimumPropertyValueWithKey:? policies:? skipZeroValues:?];
}

- (id)description
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  OUTLINED_FUNCTION_24_2();
  v6 = objc_opt_class();
  NSStringFromClass(v6);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v2 appendFormat:@"%@ { \n"];

  if (self)
  {
    [v2 appendFormat:@"                                 version: %@\n", self->_version];
    if (self->_syncDisabled || ![(NSArray *)self->_featurePolicies count]|| ![(NSArray *)self->_transportPolicies count])
    {
      v7 = @"YES";
      goto LABEL_6;
    }
  }

  else
  {
    [v2 appendFormat:@"                                 version: %@\n", 0];
  }

  v7 = @"NO";
LABEL_6:
  [v2 appendFormat:@"                            syncDisabled: %@\n", v7];
  if (+[_DKSync3Policy cloudSyncDisabled])
  {
    +[_DKSync3Policy cloudSyncDisabled];
    OUTLINED_FUNCTION_26_1();
    [v2 appendFormat:@"                       cloudSyncDisabled: %@\n"];
  }

  if (+[_DKSync3Policy rapportSyncDisabled])
  {
    +[_DKSync3Policy rapportSyncDisabled];
    OUTLINED_FUNCTION_26_1();
    [v2 appendFormat:@"                     rapportSyncDisabled: %@\n"];
  }

  if (self)
  {
    triggeredSyncDelayInSeconds = self->_triggeredSyncDelayInSeconds;
  }

  else
  {
    triggeredSyncDelayInSeconds = 0;
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:triggeredSyncDelayInSeconds];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v2 appendFormat:@"             triggeredSyncDelayInSeconds: %@\n"];

  [_DKSyncPeerStatusTracker stringForTransports:self->_mask];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v2 appendFormat:@"                              transports: %@\n"];

  if ([(NSArray *)self->_sourceDevices count])
  {
    sourceDevices = self->_sourceDevices;
    OUTLINED_FUNCTION_13();
    _CDPrettyPrintCollection(v10, v11, v12, v13);
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_4_0();
    [v2 appendFormat:@"                           sourceDevices: %@\n"];
  }

  if ([(NSArray *)self->_destinationDevices count])
  {
    destinationDevices = self->_destinationDevices;
    OUTLINED_FUNCTION_13();
    _CDPrettyPrintCollection(v15, v16, v17, v18);
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_4_0();
    [v2 appendFormat:@"                      destinationDevices: %@\n"];
  }

  isSingleDevice = self->_isSingleDevice;
  OUTLINED_FUNCTION_26_1();
  [v2 appendFormat:@"                          isSingleDevice: %@\n"];
  isOnPower = self->_isOnPower;
  OUTLINED_FUNCTION_26_1();
  [v2 appendFormat:@"                               isOnPower: %@\n"];
  v21 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_DKSync3Policy periodicSyncCadenceInMinutesMinimumValue](self)];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v2 appendFormat:@"periodicSyncCadenceInMinutesMinimumValue: %@\n"];

  [v2 appendFormat:@"                       transportPolicies: %@\n", self->_transportPolicies];
  [v2 appendFormat:@"                         featurePolicies: %@\n", self->_featurePolicies];
  [v2 appendString:@"}\n"];

  return v2;
}

+ (void)computePolicyDictionaryWithDefaultSyncPolicyDict:syncPolicyOverridesDict:topLevelDefaultsPolicy:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)computePolicyDictionaryWithDefaultSyncPolicyDict:syncPolicyOverridesDict:topLevelDefaultsPolicy:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)handleDownloadSyncPolicyResponse:data:error:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x1E69E9840];
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_16_0() domain];
  [v0 code];
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)handleDownloadSyncPolicyResponse:data:error:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x1E69E9840];
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_16_0() domain];
  [v0 code];
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)configurationPlistForFilename:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v6 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)configurationPlistForFilename:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v6 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_possiblyAddToArray:ifTransport:existsInTransports:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_possiblyAddToArray:ifTransport:existsInTransports:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v6 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

@end