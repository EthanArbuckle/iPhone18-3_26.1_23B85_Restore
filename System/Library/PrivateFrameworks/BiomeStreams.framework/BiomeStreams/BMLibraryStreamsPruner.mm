@interface BMLibraryStreamsPruner
+ (unint64_t)domain;
+ (void)_enumerateAllPruningTriggersForPolicy:(id)policy block:(id)block;
+ (void)_pruneStream:(id)stream policy:(id)policy trigger:(id)trigger parameters:(id)parameters;
+ (void)_pruneStreamsWithPolicy:(id)policy parameters:(id)parameters;
+ (void)pruneForResetKeyboardDictionary;
+ (void)pruneForResetPrivacyAndLocationWarnings;
+ (void)pruneLearnFromThisAppDisabled:(id)disabled;
+ (void)pruneSiriAndDictationHistory;
+ (void)pruneSiriDisabled;
+ (void)pruneWithDeletedContactIdentifiers:(id)identifiers;
+ (void)pruneWithDeletedIntentGroupIdentifiers:(id)identifiers bundleId:(id)id;
+ (void)pruneWithDeletedIntentIdentifiers:(id)identifiers bundleId:(id)id;
+ (void)pruneWithInstalledApplications:(id)applications installedAppExtensions:(id)extensions;
+ (void)pruneWithUninstalledBundleIdentifier:(id)identifier;
@end

@implementation BMLibraryStreamsPruner

+ (unint64_t)domain
{
  if (domain_onceToken != -1)
  {
    +[BMLibraryStreamsPruner domain];
  }

  return serviceDomain;
}

void __32__BMLibraryStreamsPruner_domain__block_invoke()
{
  v0 = [MEMORY[0x1E698E9D8] current];
  serviceDomain = [v0 isRunningInUserContext] ^ 1;
}

+ (void)_enumerateAllPruningTriggersForPolicy:(id)policy block:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = BiomeLibraryAndInternalLibraryNode();
  allStreams = [v7 allStreams];

  obj = allStreams;
  v25 = [allStreams countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v24 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v9;
        v10 = *(*(&v31 + 1) + 8 * v9);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        configuration = [v10 configuration];
        pruningTriggers = [configuration pruningTriggers];

        v13 = [pruningTriggers countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v28;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(pruningTriggers);
              }

              v17 = *(*(&v27 + 1) + 8 * i);
              identifier = [v17 identifier];
              v19 = [identifier isEqual:policyCopy];

              if (v19)
              {
                v20 = objc_autoreleasePoolPush();
                blockCopy[2](blockCopy, v10, v17);
                objc_autoreleasePoolPop(v20);
              }
            }

            v14 = [pruningTriggers countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v14);
        }

        v9 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x1E69E9840];
}

+ (void)_pruneStreamsWithPolicy:(id)policy parameters:(id)parameters
{
  v29 = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  parametersCopy = parameters;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [self domain];
    v9 = BMStringForServiceDomain();
    *buf = 138543874;
    selfCopy = self;
    v25 = 2114;
    v26 = v9;
    v27 = 2114;
    v28 = policyCopy;
    _os_log_impl(&dword_1848EE000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ pruning all streams in %{public}@ domain with policy: %{public}@", buf, 0x20u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__BMLibraryStreamsPruner__pruneStreamsWithPolicy_parameters___block_invoke;
  v14[3] = &unk_1E6E53890;
  v17 = &v19;
  selfCopy2 = self;
  v10 = policyCopy;
  v15 = v10;
  v11 = parametersCopy;
  v16 = v11;
  [self _enumerateAllPruningTriggersForPolicy:v10 block:v14];
  if (!v20[3])
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BMLibraryStreamsPruner *)self _pruneStreamsWithPolicy:v10 parameters:v12];
    }
  }

  _Block_object_dispose(&v19, 8);
  v13 = *MEMORY[0x1E69E9840];
}

+ (void)_pruneStream:(id)stream policy:(id)policy trigger:(id)trigger parameters:(id)parameters
{
  v38 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  policyCopy = policy;
  triggerCopy = trigger;
  parametersCopy = parameters;
  triggerCondition = [triggerCopy triggerCondition];
  if (triggerCondition && (v15 = triggerCondition, [triggerCopy triggerCondition], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "evaluateWithObject:substitutionVariables:", 0, parametersCopy), v16, v15, (v17 & 1) == 0))
  {
    pruningPredicate = __biome_log_for_category();
    if (os_log_type_enabled(pruningPredicate, OS_LOG_TYPE_INFO))
    {
      identifier = [streamCopy identifier];
      *buf = 138543618;
      selfCopy2 = self;
      v34 = 2114;
      v35 = identifier;
      _os_log_impl(&dword_1848EE000, pruningPredicate, OS_LOG_TYPE_INFO, "%{public}@ - no pruning needed for %{public}@ - trigger condition evaluated to NO", buf, 0x16u);
    }
  }

  else
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [streamCopy identifier];
      *buf = 138543874;
      selfCopy2 = self;
      v34 = 2114;
      v35 = identifier2;
      v36 = 2114;
      v37 = policyCopy;
      _os_log_impl(&dword_1848EE000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ pruning stream: %{public}@ with policy: %{public}@", buf, 0x20u);
    }

    pruningPredicate = [triggerCopy pruningPredicate];
    if (pruningPredicate && ([MEMORY[0x1E696AE18] predicateWithValue:1], v21 = objc_claimAutoreleasedReturnValue(), v22 = -[NSObject isEqual:](pruningPredicate, "isEqual:", v21), v21, !v22))
    {
      pruner = [streamCopy pruner];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __65__BMLibraryStreamsPruner__pruneStream_policy_trigger_parameters___block_invoke_2;
      v27[3] = &unk_1E6E538D8;
      v28 = pruningPredicate;
      v29 = parametersCopy;
      selfCopy3 = self;
      v30 = streamCopy;
      [pruner deleteWithPolicy:policyCopy eventsPassingTest:v27];

      pruner2 = v28;
    }

    else
    {
      pruner2 = [streamCopy pruner];
      [pruner2 deleteWithPolicy:policyCopy eventsPassingTest:&__block_literal_global_5];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __65__BMLibraryStreamsPruner__pruneStream_policy_trigger_parameters___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [*(a1 + 32) evaluateWithObject:v4 substitutionVariables:*(a1 + 40)];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (void)pruneWithInstalledApplications:(id)applications installedAppExtensions:(id)extensions
{
  v19[2] = *MEMORY[0x1E69E9840];
  applicationsCopy = applications;
  extensionsCopy = extensions;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16.opaque[0]) = 0;
    _os_log_impl(&dword_1848EE000, v8, OS_LOG_TYPE_DEFAULT, "BMLibraryStreamsPruner running pruneWithInstalledApplications:installedAppExtensions:", &v16, 2u);
  }

  v9 = _os_activity_create(&dword_1848EE000, "pruneWithInstalledApplications:installedAppExtensions:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v9, &v16);
  v10 = [applicationsCopy setByAddingObjectsFromSet:extensionsCopy];
  v19[0] = &stru_1EF2B2408;
  null = [MEMORY[0x1E695DFB0] null];
  v19[1] = null;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v13 = [v10 setByAddingObjectsFromArray:v12];

  v17 = @"installed";
  v18 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [self _pruneStreamsWithPolicy:@"app-uninstall-nightly" parameters:v14];

  os_activity_scope_leave(&v16);
  v15 = *MEMORY[0x1E69E9840];
}

+ (void)pruneWithUninstalledBundleIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.opaque[0]) = 138412290;
    *(buf.opaque + 4) = identifierCopy;
    _os_log_impl(&dword_1848EE000, v5, OS_LOG_TYPE_DEFAULT, "BMLibraryStreamsPruner running pruneWithUninstalledBundleIdentifier:%@", &buf, 0xCu);
  }

  v6 = _os_activity_create(&dword_1848EE000, "pruneWithUninstalledBundleIdentifier:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  buf.opaque[0] = 0;
  buf.opaque[1] = 0;
  os_activity_scope_enter(v6, &buf);
  v9 = @"uninstalled";
  v10 = identifierCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [self _pruneStreamsWithPolicy:@"app-uninstall" parameters:v7];

  os_activity_scope_leave(&buf);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)pruneWithDeletedIntentIdentifiers:(id)identifiers bundleId:(id)id
{
  v16 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  idCopy = id;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = identifiersCopy;
    *&buf[12] = 2112;
    *&buf[14] = idCopy;
    _os_log_impl(&dword_1848EE000, v8, OS_LOG_TYPE_DEFAULT, "BMLibraryStreamsPruner running pruneWithDeletedIntentIdentifiers:%@ bundleId:%@", buf, 0x16u);
  }

  v9 = _os_activity_create(&dword_1848EE000, "pruneWithDeletedIntentIdentifiers:bundleId:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *buf = 0;
  *&buf[8] = 0;
  os_activity_scope_enter(v9, buf);
  v10 = [MEMORY[0x1E695DFD8] set];
  v14[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:3];
  [self _pruneStreamsWithPolicy:@"intent-deletion" parameters:v11];

  os_activity_scope_leave(buf);
  v12 = *MEMORY[0x1E69E9840];
}

+ (void)pruneWithDeletedIntentGroupIdentifiers:(id)identifiers bundleId:(id)id
{
  v16 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  idCopy = id;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = identifiersCopy;
    *&buf[12] = 2112;
    *&buf[14] = idCopy;
    _os_log_impl(&dword_1848EE000, v8, OS_LOG_TYPE_DEFAULT, "BMLibraryStreamsPruner running pruneWithDeletedIntentGroupIdentifiers:%@ bundleId:%@", buf, 0x16u);
  }

  v9 = _os_activity_create(&dword_1848EE000, "pruneWithDeletedIntentGroupIdentifiers:bundleId:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *buf = 0;
  *&buf[8] = 0;
  os_activity_scope_enter(v9, buf);
  v14[0] = idCopy;
  v10 = [MEMORY[0x1E695DFD8] set];
  v13[2] = @"intentGroupIdentifiers";
  v14[1] = v10;
  v14[2] = identifiersCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  [self _pruneStreamsWithPolicy:@"intent-deletion" parameters:v11];

  os_activity_scope_leave(buf);
  v12 = *MEMORY[0x1E69E9840];
}

+ (void)pruneSiriAndDictationHistory
{
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5.opaque[0]) = 0;
    _os_log_impl(&dword_1848EE000, v3, OS_LOG_TYPE_DEFAULT, "BMLibraryStreamsPruner running pruneSiriAndDictationHistory", &v5, 2u);
  }

  v4 = _os_activity_create(&dword_1848EE000, "pruneSiriAndDictationHistory", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v4, &v5);
  [self _pruneStreamsWithPolicy:@"delete-siri-dictation-history" parameters:MEMORY[0x1E695E0F8]];
  os_activity_scope_leave(&v5);
}

+ (void)pruneSiriDisabled
{
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5.opaque[0]) = 0;
    _os_log_impl(&dword_1848EE000, v3, OS_LOG_TYPE_DEFAULT, "BMLibraryStreamsPruner running pruneSiriDisabled", &v5, 2u);
  }

  v4 = _os_activity_create(&dword_1848EE000, "pruneSiriDisabled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v4, &v5);
  [self _pruneStreamsWithPolicy:@"disable-siri" parameters:MEMORY[0x1E695E0F8]];
  os_activity_scope_leave(&v5);
}

+ (void)pruneForResetPrivacyAndLocationWarnings
{
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5.opaque[0]) = 0;
    _os_log_impl(&dword_1848EE000, v3, OS_LOG_TYPE_DEFAULT, "BMLibraryStreamsPruner running pruneForResetPrivacyAndLocationWarnings", &v5, 2u);
  }

  v4 = _os_activity_create(&dword_1848EE000, "pruneForResetPrivacyAndLocationWarnings", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v4, &v5);
  [self _pruneStreamsWithPolicy:@"reset-privacy-and-location-warnings" parameters:MEMORY[0x1E695E0F8]];
  os_activity_scope_leave(&v5);
}

+ (void)pruneLearnFromThisAppDisabled:(id)disabled
{
  v12 = *MEMORY[0x1E69E9840];
  disabledCopy = disabled;
  if ([disabledCopy count])
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.opaque[0]) = 138412290;
      *(buf.opaque + 4) = disabledCopy;
      _os_log_impl(&dword_1848EE000, v5, OS_LOG_TYPE_DEFAULT, "BMLibraryStreamsPruner running pruneLearnFromThisAppDisabled: %@", &buf, 0xCu);
    }

    v6 = _os_activity_create(&dword_1848EE000, "pruneLearnFromThisAppDisabled:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    buf.opaque[0] = 0;
    buf.opaque[1] = 0;
    os_activity_scope_enter(v6, &buf);
    v9 = @"disabledApps";
    v10 = disabledCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [self _pruneStreamsWithPolicy:@"learn-from-this-app" parameters:v7];

    os_activity_scope_leave(&buf);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)pruneForResetKeyboardDictionary
{
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5.opaque[0]) = 0;
    _os_log_impl(&dword_1848EE000, v3, OS_LOG_TYPE_DEFAULT, "BMLibraryStreamsPruner running pruneForResetKeyboardDictionary", &v5, 2u);
  }

  v4 = _os_activity_create(&dword_1848EE000, "pruneForResetKeyboardDictionary", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v4, &v5);
  [self _pruneStreamsWithPolicy:@"reset-keyboard-dictionary" parameters:MEMORY[0x1E695E0F8]];
  os_activity_scope_leave(&v5);
}

+ (void)pruneWithDeletedContactIdentifiers:(id)identifiers
{
  v12 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.opaque[0]) = 138412290;
    *(buf.opaque + 4) = identifiersCopy;
    _os_log_impl(&dword_1848EE000, v5, OS_LOG_TYPE_DEFAULT, "BMLibraryStreamsPruner running pruneWithDeletedContactIdentifiers: %@", &buf, 0xCu);
  }

  v6 = _os_activity_create(&dword_1848EE000, "pruneWithDeletedContactIdentifiers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  buf.opaque[0] = 0;
  buf.opaque[1] = 0;
  os_activity_scope_enter(v6, &buf);
  v9 = @"deleted";
  v10 = identifiersCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [self _pruneStreamsWithPolicy:@"contact-deleted" parameters:v7];

  os_activity_scope_leave(&buf);
  v8 = *MEMORY[0x1E69E9840];
}

@end