@interface CPApplicationLauncher
- (BOOL)_acquireAssertionForBundleID:(id)d;
- (BOOL)_sessionAlreadyAuthorizingOrAuthorizedForPiP:(id)p;
- (CPApplicationLauncher)initWithSpatialApplicationManager:(id)manager;
- (NSString)placementSceneIdentifier;
- (id)_authorizationForActivitySession:(id)session;
- (id)_authorizationsForBundleID:(id)d;
- (id)_openApplicationOptionsForActivitySession:(id)session options:(int64_t)options;
- (id)_sessionIDForActivity:(id)activity;
- (void)_authorizePiPForActivity:(id)activity withCompletion:(id)completion;
- (void)_handleStateTransitionForAuthorization:(id)authorization activitySession:(id)session state:(int64_t)state;
- (void)_insertAuth:(id)auth completion:(id)completion forSessionID:(id)d;
- (void)_insertBKSAssertion:(id)assertion forBundleID:(id)d;
- (void)_invalidateBKSAssertionForBundleID:(id)d;
- (void)_launchAndAcquireAssertionIfNecessaryForActivitySession:(id)session options:(int64_t)options completion:(id)completion;
- (void)_launchAppForActivitySession:(id)session options:(int64_t)options completion:(id)completion;
- (void)_launchApplicationForActivitySession:(id)session options:(int64_t)options completion:(id)completion;
- (void)_revokeAndRemoveAuthForSessionID:(id)d;
- (void)_revokeAuthorizations:(id)authorizations;
- (void)_validatePiPStartedFor:(id)for bundleID:(id)d;
- (void)authorizePiPForActivity:(id)activity withCompletion:(id)completion;
- (void)launchAppForActivitySession:(id)session options:(int64_t)options completion:(id)completion;
- (void)revokeBackgroundAuthorizationForBundleID:(id)d;
- (void)revokeBackgroundAuthorizationForSession:(id)session;
- (void)setPlacementSceneIdentifier:(id)identifier;
@end

@implementation CPApplicationLauncher

- (CPApplicationLauncher)initWithSpatialApplicationManager:(id)manager
{
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = CPApplicationLauncher;
  v5 = [(CPApplicationLauncher *)&v19 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.copresence.applauncher", 0);
    workQueue = v5->_workQueue;
    v5->_workQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sessionIDtoAuthMap = v5->_sessionIDtoAuthMap;
    v5->_sessionIDtoAuthMap = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sessionIDtoCompletionMap = v5->_sessionIDtoCompletionMap;
    v5->_sessionIDtoCompletionMap = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bundleIDToAssertionMap = v5->_bundleIDToAssertionMap;
    v5->_bundleIDToAssertionMap = v12;

    v14 = objc_alloc_init(CPFeatureFlags);
    featureFlags = v5->_featureFlags;
    v5->_featureFlags = v14;

    v16 = [[CPApplicationLauncherSwift alloc] initWithSpatialApplicationManager:managerCopy];
    newApplicationLauncher = v5->_newApplicationLauncher;
    v5->_newApplicationLauncher = v16;
  }

  return v5;
}

- (NSString)placementSceneIdentifier
{
  featureFlags = [(CPApplicationLauncher *)self featureFlags];
  newApplicationLauncherEnabled = [featureFlags newApplicationLauncherEnabled];

  if (newApplicationLauncherEnabled)
  {
    placementSceneIdentifier = [(CPApplicationLauncherSwift *)self->_newApplicationLauncher placementSceneIdentifier];
  }

  else
  {
    placementSceneIdentifier = 0;
  }

  return placementSceneIdentifier;
}

- (void)setPlacementSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  featureFlags = [(CPApplicationLauncher *)self featureFlags];
  newApplicationLauncherEnabled = [featureFlags newApplicationLauncherEnabled];

  if (newApplicationLauncherEnabled)
  {
    [(CPApplicationLauncherSwift *)self->_newApplicationLauncher setPlacementSceneIdentifier:identifierCopy];
  }
}

- (void)launchAppForActivitySession:(id)session options:(int64_t)options completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  featureFlags = [(CPApplicationLauncher *)self featureFlags];
  newApplicationLauncherEnabled = [featureFlags newApplicationLauncherEnabled];

  if (newApplicationLauncherEnabled)
  {
    [(CPApplicationLauncherSwift *)self->_newApplicationLauncher launchAppForActivitySession:sessionCopy options:options completion:completionCopy];
  }

  else
  {
    workQueue = [(CPApplicationLauncher *)self workQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__CPApplicationLauncher_launchAppForActivitySession_options_completion___block_invoke;
    v13[3] = &unk_1E7A45A60;
    v13[4] = self;
    v14 = sessionCopy;
    optionsCopy = options;
    v15 = completionCopy;
    dispatch_async(workQueue, v13);
  }
}

- (void)revokeBackgroundAuthorizationForBundleID:(id)d
{
  dCopy = d;
  featureFlags = [(CPApplicationLauncher *)self featureFlags];
  newApplicationLauncherEnabled = [featureFlags newApplicationLauncherEnabled];

  if (newApplicationLauncherEnabled)
  {
    [(CPApplicationLauncherSwift *)self->_newApplicationLauncher revokeBackgroundAuthorizationForBundleID:dCopy];
  }

  else
  {
    workQueue = [(CPApplicationLauncher *)self workQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__CPApplicationLauncher_revokeBackgroundAuthorizationForBundleID___block_invoke;
    v8[3] = &unk_1E7A45A88;
    v9 = dCopy;
    selfCopy = self;
    dispatch_async(workQueue, v8);
  }
}

void __66__CPApplicationLauncher_revokeBackgroundAuthorizationForBundleID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) length];
  v3 = CPDefaultLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v9 = 136315394;
      v10 = "[CPApplicationLauncher revokeBackgroundAuthorizationForBundleID:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1AEB26000, v4, OS_LOG_TYPE_INFO, "%s Request to remove pip authorizations for %@", &v9, 0x16u);
    }

    v4 = [*(a1 + 40) _authorizationsForBundleID:*(a1 + 32)];
    if ([v4 count])
    {
      [*(a1 + 40) _revokeAuthorizations:v4];
    }

    else
    {
      v6 = CPDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v9 = 136315394;
        v10 = "[CPApplicationLauncher revokeBackgroundAuthorizationForBundleID:]_block_invoke";
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_1AEB26000, v6, OS_LOG_TYPE_INFO, "%s [PiP] No existing background pip authorizations to remove for %@", &v9, 0x16u);
      }
    }

    [*(a1 + 40) _invalidateBKSAssertionForBundleID:*(a1 + 32)];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __66__CPApplicationLauncher_revokeBackgroundAuthorizationForBundleID___block_invoke_cold_1();
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)revokeBackgroundAuthorizationForSession:(id)session
{
  sessionCopy = session;
  featureFlags = [(CPApplicationLauncher *)self featureFlags];
  newApplicationLauncherEnabled = [featureFlags newApplicationLauncherEnabled];

  if (newApplicationLauncherEnabled)
  {
    [(CPApplicationLauncherSwift *)self->_newApplicationLauncher revokeBackgroundAuthorizationForSession:sessionCopy];
  }

  else
  {
    workQueue = [(CPApplicationLauncher *)self workQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__CPApplicationLauncher_revokeBackgroundAuthorizationForSession___block_invoke;
    v8[3] = &unk_1E7A45A88;
    v9 = sessionCopy;
    selfCopy = self;
    dispatch_async(workQueue, v8);
  }
}

void __65__CPApplicationLauncher_revokeBackgroundAuthorizationForSession___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = CPDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[CPApplicationLauncher revokeBackgroundAuthorizationForSession:]_block_invoke";
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1AEB26000, v2, OS_LOG_TYPE_INFO, "%s Request to remove pip authorizations for %@", buf, 0x16u);
  }

  v4 = [*(a1 + 40) _authorizationForActivitySession:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 40);
    v13 = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    [v6 _revokeAuthorizations:v7];
  }

  else
  {
    v7 = CPDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 136315394;
      v15 = "[CPApplicationLauncher revokeBackgroundAuthorizationForSession:]_block_invoke";
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1AEB26000, v7, OS_LOG_TYPE_INFO, "%s No pip authorizations found for %@", buf, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) activity];
  v11 = [v10 bundleIdentifier];
  [v9 _invalidateBKSAssertionForBundleID:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_launchAppForActivitySession:(id)session options:(int64_t)options completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  workQueue = [(CPApplicationLauncher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ((options & 1) == 0)
  {
    goto LABEL_4;
  }

  activity = [sessionCopy activity];
  metadata = [activity metadata];
  context = [metadata context];
  typedIdentifier = [context typedIdentifier];
  v15 = [typedIdentifier isEqualToString:*MEMORY[0x1E69D8F70]];

  if (v15)
  {
    v16 = [(CPApplicationLauncher *)self _sessionIDForActivity:sessionCopy];
    v17 = objc_alloc(MEMORY[0x1E69BCB58]);
    activity2 = [sessionCopy activity];
    bundleIdentifier = [activity2 bundleIdentifier];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __73__CPApplicationLauncher__launchAppForActivitySession_options_completion___block_invoke;
    v24 = &unk_1E7A45AD8;
    selfCopy = self;
    v26 = sessionCopy;
    v20 = [v17 initWithActivitySessionIdentifier:v16 appBundleIdentifier:bundleIdentifier stateTransitionHandler:&v21];

    [(CPApplicationLauncher *)self _insertAuth:v20 completion:completionCopy forSessionID:v16, v21, v22, v23, v24, selfCopy];
  }

  else
  {
LABEL_4:
    [(CPApplicationLauncher *)self _launchAndAcquireAssertionIfNecessaryForActivitySession:sessionCopy options:options completion:completionCopy];
  }
}

void __73__CPApplicationLauncher__launchAppForActivitySession_options_completion___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = CPDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = stateNameForPGBackgroundPIPAuthorizationState(a3);
    v8 = [v5 activitySessionIdentifier];
    *buf = 136315650;
    v18 = "[CPApplicationLauncher _launchAppForActivitySession:options:completion:]_block_invoke";
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1AEB26000, v6, OS_LOG_TYPE_INFO, "%s Got PGBackgroundPIPAuthorization authorization transitioned to state %@ for session id %@", buf, 0x20u);
  }

  v9 = [*(a1 + 32) workQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__CPApplicationLauncher__launchAppForActivitySession_options_completion___block_invoke_62;
  v13[3] = &unk_1E7A45AB0;
  v10 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v5;
  v15 = v10;
  v16 = a3;
  v11 = v5;
  dispatch_async(v9, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_launchApplicationForActivitySession:(id)session options:(int64_t)options completion:(id)completion
{
  completionCopy = completion;
  sessionCopy = session;
  workQueue = [(CPApplicationLauncher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  activity = [sessionCopy activity];
  representativeBundleIdentifier = [activity representativeBundleIdentifier];

  v13 = [(CPApplicationLauncher *)self _openApplicationOptionsForActivitySession:sessionCopy options:options];

  serviceWithDefaultShellEndpoint = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__CPApplicationLauncher__launchApplicationForActivitySession_options_completion___block_invoke;
  v17[3] = &unk_1E7A45B28;
  v17[4] = self;
  v18 = representativeBundleIdentifier;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = representativeBundleIdentifier;
  [serviceWithDefaultShellEndpoint openApplication:v16 withOptions:v13 completion:v17];
}

void __81__CPApplicationLauncher__launchApplicationForActivitySession_options_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__CPApplicationLauncher__launchApplicationForActivitySession_options_completion___block_invoke_2;
  v11[3] = &unk_1E7A45B00;
  v12 = v5;
  v13 = a1[5];
  v8 = a1[6];
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __81__CPApplicationLauncher__launchApplicationForActivitySession_options_completion___block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = CPDefaultLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = a1[5];
      v10 = 136315394;
      v11 = "[CPApplicationLauncher _launchApplicationForActivitySession:options:completion:]_block_invoke_2";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1AEB26000, v4, OS_LOG_TYPE_INFO, "%s Successfully launched application with bundle identifier %@", &v10, 0x16u);
    }

    v6 = *(a1[7] + 16);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __81__CPApplicationLauncher__launchApplicationForActivitySession_options_completion___block_invoke_2_cold_1(a1);
    }

    v7 = a1[6];
    v6 = *(a1[7] + 16);
  }

  result = v6();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_openApplicationOptionsForActivitySession:(id)session options:(int64_t)options
{
  optionsCopy = options;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = dictionary;
  if (optionsCopy)
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E699F8E8]];
  }

  else
  {
    v7 = TUUnlockDeviceWithPromptFrontBoardOptionsDictionary();
    [v6 addEntriesFromDictionary:v7];
  }

  v8 = [MEMORY[0x1E699FB70] optionsWithDictionary:v6];

  return v8;
}

- (void)_launchAndAcquireAssertionIfNecessaryForActivitySession:(id)session options:(int64_t)options completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  workQueue = [(CPApplicationLauncher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__CPApplicationLauncher__launchAndAcquireAssertionIfNecessaryForActivitySession_options_completion___block_invoke;
  v13[3] = &unk_1E7A45B50;
  v13[4] = self;
  v14 = sessionCopy;
  v15 = completionCopy;
  optionsCopy = options;
  v11 = completionCopy;
  v12 = sessionCopy;
  [(CPApplicationLauncher *)self _launchApplicationForActivitySession:v12 options:options completion:v13];
}

uint64_t __100__CPApplicationLauncher__launchAndAcquireAssertionIfNecessaryForActivitySession_options_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      goto LABEL_4;
    }

    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) activity];
    v8 = [v7 bundleIdentifier];
    LOBYTE(v6) = [v6 _acquireAssertionForBundleID:v8];

    if ((v6 & 1) == 0)
    {
      v12 = *(a1 + 48);
      if (!v12)
      {
        goto LABEL_11;
      }

      v10 = *(v12 + 16);
    }

    else
    {
LABEL_4:
      v9 = *(a1 + 48);
      if (!v9)
      {
        goto LABEL_11;
      }

      v10 = *(v9 + 16);
    }
  }

  else
  {
    v11 = *(a1 + 48);
    if (!v11)
    {
      goto LABEL_11;
    }

    v10 = *(v11 + 16);
  }

  v10();
LABEL_11:

  return MEMORY[0x1EEE66BE0]();
}

- (id)_sessionIDForActivity:(id)activity
{
  uUID = [activity UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)_insertBKSAssertion:(id)assertion forBundleID:(id)d
{
  assertionCopy = assertion;
  dCopy = d;
  workQueue = [(CPApplicationLauncher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (assertionCopy && [dCopy length])
  {
    bundleIDToAssertionMap = [(CPApplicationLauncher *)self bundleIDToAssertionMap];
    [bundleIDToAssertionMap setObject:assertionCopy forKeyedSubscript:dCopy];
  }

  else
  {
    bundleIDToAssertionMap = CPDefaultLog();
    if (os_log_type_enabled(bundleIDToAssertionMap, OS_LOG_TYPE_ERROR))
    {
      [CPApplicationLauncher _insertBKSAssertion:forBundleID:];
    }
  }
}

- (void)_invalidateBKSAssertionForBundleID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  workQueue = [(CPApplicationLauncher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([dCopy length])
  {
    bundleIDToAssertionMap = [(CPApplicationLauncher *)self bundleIDToAssertionMap];
    v7 = [bundleIDToAssertionMap objectForKeyedSubscript:dCopy];

    bundleIDToAssertionMap2 = CPDefaultLog();
    v9 = os_log_type_enabled(bundleIDToAssertionMap2, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        v11 = 136315394;
        v12 = "[CPApplicationLauncher _invalidateBKSAssertionForBundleID:]";
        v13 = 2112;
        v14 = dCopy;
        _os_log_impl(&dword_1AEB26000, bundleIDToAssertionMap2, OS_LOG_TYPE_INFO, "%s Removing process assertion for %@", &v11, 0x16u);
      }

      [v7 invalidate];
      bundleIDToAssertionMap2 = [(CPApplicationLauncher *)self bundleIDToAssertionMap];
      [bundleIDToAssertionMap2 removeObjectForKey:dCopy];
    }

    else if (v9)
    {
      v11 = 136315394;
      v12 = "[CPApplicationLauncher _invalidateBKSAssertionForBundleID:]";
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&dword_1AEB26000, bundleIDToAssertionMap2, OS_LOG_TYPE_INFO, "%s No existing process assertion for %@", &v11, 0x16u);
    }
  }

  else
  {
    v7 = CPDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CPApplicationLauncher _invalidateBKSAssertionForBundleID:];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_acquireAssertionForBundleID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  workQueue = [(CPApplicationLauncher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [CPProcessAssertion processAssertionWithBundleIdentifier:dCopy];
  acquire = [v6 acquire];
  if (acquire)
  {
    [(CPApplicationLauncher *)self _insertBKSAssertion:v6 forBundleID:dCopy];
    v8 = CPDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[CPApplicationLauncher _acquireAssertionForBundleID:]";
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&dword_1AEB26000, v8, OS_LOG_TYPE_INFO, "%s Acquired assertion for %@", &v11, 0x16u);
    }
  }

  else
  {
    v8 = CPDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CPApplicationLauncher _acquireAssertionForBundleID:];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return acquire;
}

- (void)_validatePiPStartedFor:(id)for bundleID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  forCopy = for;
  dCopy = d;
  workQueue = [(CPApplicationLauncher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sessionIDtoAuthMap = [(CPApplicationLauncher *)self sessionIDtoAuthMap];
  v10 = [sessionIDtoAuthMap objectForKeyedSubscript:forCopy];

  state = [v10 state];
  v12 = CPDefaultLog();
  v13 = v12;
  if (state == 3)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[CPApplicationLauncher _validatePiPStartedFor:bundleID:]";
      v17 = 2112;
      v18 = dCopy;
      _os_log_impl(&dword_1AEB26000, v13, OS_LOG_TYPE_INFO, "%s [PiP] %@ started pip successfully", &v15, 0x16u);
    }

    [(CPApplicationLauncher *)self _invokeAndDequeueCompletionForSessionID:forCopy success:1 error:0];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CPApplicationLauncher _validatePiPStartedFor:bundleID:];
    }

    [(CPApplicationLauncher *)self _invalidateBKSAssertionForBundleID:dCopy];
    [(CPApplicationLauncher *)self _revokeAndRemoveAuthForSessionID:forCopy];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleStateTransitionForAuthorization:(id)authorization activitySession:(id)session state:(int64_t)state
{
  v23 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  sessionCopy = session;
  workQueue = [(CPApplicationLauncher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (state > 2)
  {
    if (state == 3)
    {
      activitySessionIdentifier = [authorizationCopy activitySessionIdentifier];
      [(CPApplicationLauncher *)self _invokeAndDequeueCompletionForSessionID:activitySessionIdentifier success:1 error:0];
    }

    else
    {
      if (state != 4 && state != 5)
      {
        goto LABEL_11;
      }

      activitySessionIdentifier = [authorizationCopy activitySessionIdentifier];
      [(CPApplicationLauncher *)self _revokeAndRemoveAuthForSessionID:activitySessionIdentifier];
    }

    goto LABEL_14;
  }

  if (state < 2)
  {
    goto LABEL_14;
  }

  if (state == 2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __86__CPApplicationLauncher__handleStateTransitionForAuthorization_activitySession_state___block_invoke;
    v15[3] = &unk_1E7A45B78;
    v15[4] = self;
    v16 = authorizationCopy;
    [(CPApplicationLauncher *)self _launchAndAcquireAssertionIfNecessaryForActivitySession:sessionCopy options:1 completion:v15];

    goto LABEL_14;
  }

LABEL_11:
  v12 = CPDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    *buf = 136315650;
    v18 = "[CPApplicationLauncher _handleStateTransitionForAuthorization:activitySession:state:]";
    v19 = 2112;
    v20 = authorizationCopy;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_1AEB26000, v12, OS_LOG_TYPE_INFO, "%s [PiP] Got unexpected auth state %@ for authorization %@", buf, 0x20u);
  }

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
}

void __86__CPApplicationLauncher__handleStateTransitionForAuthorization_activitySession_state___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = dispatch_time(0, 10000000000);
    v4 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__CPApplicationLauncher__handleStateTransitionForAuthorization_activitySession_state___block_invoke_2;
    block[3] = &unk_1E7A45A88;
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v10 = v5;
    dispatch_after(v3, v4, block);
  }

  else
  {
    v6 = *(a1 + 32);
    v8 = [*(a1 + 40) activitySessionIdentifier];
    v7 = [CPError errorWithCode:22];
    [v6 _invokeAndDequeueCompletionForSessionID:v8 success:0 error:v7];
  }
}

void __86__CPApplicationLauncher__handleStateTransitionForAuthorization_activitySession_state___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) activitySessionIdentifier];
  v3 = [*(a1 + 40) appBundleIdentifier];
  [v2 _validatePiPStartedFor:v4 bundleID:v3];
}

- (void)_revokeAndRemoveAuthForSessionID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  workQueue = [(CPApplicationLauncher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sessionIDtoAuthMap = [(CPApplicationLauncher *)self sessionIDtoAuthMap];
  v7 = [sessionIDtoAuthMap objectForKeyedSubscript:dCopy];

  if (v7)
  {
    v8 = CPDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 136315650;
      v13 = "[CPApplicationLauncher _revokeAndRemoveAuthForSessionID:]";
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&dword_1AEB26000, v8, OS_LOG_TYPE_INFO, "%s [PiP] Revoking and removing auth %@ sessionID %@", &v12, 0x20u);
    }

    [v7 revoke];
    sessionIDtoAuthMap2 = [(CPApplicationLauncher *)self sessionIDtoAuthMap];
    [sessionIDtoAuthMap2 removeObjectForKey:dCopy];
  }

  v10 = [CPError errorWithCode:23];
  [(CPApplicationLauncher *)self _invokeAndDequeueCompletionForSessionID:dCopy success:0 error:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_insertAuth:(id)auth completion:(id)completion forSessionID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dCopy = d;
  authCopy = auth;
  workQueue = [(CPApplicationLauncher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sessionIDtoAuthMap = [(CPApplicationLauncher *)self sessionIDtoAuthMap];
  v13 = [sessionIDtoAuthMap objectForKeyedSubscript:dCopy];

  if (v13)
  {
    v14 = CPDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v19 = 136315650;
      v20 = "[CPApplicationLauncher _insertAuth:completion:forSessionID:]";
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = dCopy;
      _os_log_impl(&dword_1AEB26000, v14, OS_LOG_TYPE_INFO, "%s [PiP] Revoking and removing auth %@ sessionID %@", &v19, 0x20u);
    }

    [v13 revoke];
  }

  sessionIDtoAuthMap2 = [(CPApplicationLauncher *)self sessionIDtoAuthMap];
  [sessionIDtoAuthMap2 setObject:authCopy forKeyedSubscript:dCopy];

  if (completionCopy)
  {
    v16 = _Block_copy(completionCopy);
    sessionIDtoCompletionMap = [(CPApplicationLauncher *)self sessionIDtoCompletionMap];
    [sessionIDtoCompletionMap setObject:v16 forKeyedSubscript:dCopy];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)_sessionAlreadyAuthorizingOrAuthorizedForPiP:(id)p
{
  pCopy = p;
  workQueue = [(CPApplicationLauncher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sessionIDtoAuthMap = [(CPApplicationLauncher *)self sessionIDtoAuthMap];
  v7 = [sessionIDtoAuthMap objectForKeyedSubscript:pCopy];

  if (v7)
  {
    v8 = ([v7 state] - 1) < 3;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_authorizePiPForActivity:(id)activity withCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  completionCopy = completion;
  workQueue = [(CPApplicationLauncher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [(CPApplicationLauncher *)self _sessionIDForActivity:activityCopy];
  if ([(CPApplicationLauncher *)self _sessionAlreadyAuthorizingOrAuthorizedForPiP:v9])
  {
    completionCopy[2](completionCopy, v9 != 0, 0);
  }

  else
  {
    activity = [activityCopy activity];
    metadata = [activity metadata];
    context = [metadata context];
    typedIdentifier = [context typedIdentifier];
    v14 = [typedIdentifier isEqualToString:@"CPGroupActivityWatchTogetherContext"];

    if (v14)
    {
      v15 = CPDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v30 = "[CPApplicationLauncher _authorizePiPForActivity:withCompletion:]";
        v31 = 2112;
        v32 = activityCopy;
        _os_log_impl(&dword_1AEB26000, v15, OS_LOG_TYPE_INFO, "%s [PiP] Requesting PiP auth for activity session %@", buf, 0x16u);
      }

      v16 = objc_alloc(MEMORY[0x1E69BCB58]);
      activity2 = [activityCopy activity];
      bundleIdentifier = [activity2 bundleIdentifier];
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __65__CPApplicationLauncher__authorizePiPForActivity_withCompletion___block_invoke;
      v26 = &unk_1E7A45AD8;
      selfCopy = self;
      v19 = v9;
      v28 = v19;
      v20 = [v16 initWithActivitySessionIdentifier:v19 appBundleIdentifier:bundleIdentifier stateTransitionHandler:&v23];

      [(CPApplicationLauncher *)self _insertAuth:v20 completion:completionCopy forSessionID:v19, v23, v24, v25, v26, selfCopy];
    }

    else
    {
      v21 = [CPError errorWithCode:23];
      (completionCopy)[2](completionCopy, 0, v21);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __65__CPApplicationLauncher__authorizePiPForActivity_withCompletion___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = CPDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = stateNameForPGBackgroundPIPAuthorizationState(a3);
    v8 = [v5 activitySessionIdentifier];
    *buf = 136315650;
    v17 = "[CPApplicationLauncher _authorizePiPForActivity:withCompletion:]_block_invoke";
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_1AEB26000, v6, OS_LOG_TYPE_INFO, "%s [PiP] PGBackgroundPIPAuthorization authorization transitioned to state %@ for sessionID %@", buf, 0x20u);
  }

  v9 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CPApplicationLauncher__authorizePiPForActivity_withCompletion___block_invoke_73;
  block[3] = &unk_1E7A45BA0;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v15 = a3;
  block[4] = v10;
  v14 = v11;
  dispatch_async(v9, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __65__CPApplicationLauncher__authorizePiPForActivity_withCompletion___block_invoke_73(uint64_t a1)
{
  v2 = *(a1 + 48);
  if ((v2 - 4) >= 2)
  {
    if (v2 == 2)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);

      [v3 _invokeAndDequeueCompletionForSessionID:v4 success:1 error:0];
    }
  }

  else
  {
    v5 = [CPError errorWithCode:23];
    [*(a1 + 32) _invokeAndDequeueCompletionForSessionID:*(a1 + 40) success:0 error:v5];
  }
}

- (void)authorizePiPForActivity:(id)activity withCompletion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  featureFlags = [(CPApplicationLauncher *)self featureFlags];
  newApplicationLauncherEnabled = [featureFlags newApplicationLauncherEnabled];

  if (newApplicationLauncherEnabled)
  {
    [(CPApplicationLauncherSwift *)self->_newApplicationLauncher authorizePiPForActivitySession:activityCopy completion:completionCopy];
  }

  else
  {
    workQueue = [(CPApplicationLauncher *)self workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__CPApplicationLauncher_authorizePiPForActivity_withCompletion___block_invoke;
    block[3] = &unk_1E7A45BC8;
    block[4] = self;
    v12 = activityCopy;
    v13 = completionCopy;
    dispatch_async(workQueue, block);
  }
}

- (id)_authorizationsForBundleID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  workQueue = [(CPApplicationLauncher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  sessionIDtoAuthMap = [(CPApplicationLauncher *)self sessionIDtoAuthMap];
  allValues = [sessionIDtoAuthMap allValues];

  v9 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        appBundleIdentifier = [v13 appBundleIdentifier];
        v15 = [appBundleIdentifier isEqualToString:dCopy];

        if (v15)
        {
          [v6 addObject:v13];
        }
      }

      v10 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v6 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_authorizationForActivitySession:(id)session
{
  v4 = [(CPApplicationLauncher *)self _sessionIDForActivity:session];
  if (v4)
  {
    sessionIDtoAuthMap = [(CPApplicationLauncher *)self sessionIDtoAuthMap];
    v6 = [sessionIDtoAuthMap objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_revokeAuthorizations:(id)authorizations
{
  v27 = *MEMORY[0x1E69E9840];
  authorizationsCopy = authorizations;
  if ([authorizationsCopy count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = authorizationsCopy;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = CPDefaultLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            activitySessionIdentifier = [v10 activitySessionIdentifier];
            *buf = 136315650;
            v21 = "[CPApplicationLauncher _revokeAuthorizations:]";
            v22 = 2112;
            v23 = v10;
            v24 = 2112;
            v25 = activitySessionIdentifier;
            _os_log_impl(&dword_1AEB26000, v11, OS_LOG_TYPE_INFO, "%s [PiP] Revoking and removing auth %@ sessionID %@", buf, 0x20u);
          }

          [v10 revoke];
          sessionIDtoAuthMap = [(CPApplicationLauncher *)self sessionIDtoAuthMap];
          v14 = [(CPApplicationLauncher *)self _sessionIDForAuthorization:v10];
          [sessionIDtoAuthMap removeObjectForKey:v14];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v7);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __66__CPApplicationLauncher_revokeBackgroundAuthorizationForBundleID___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __81__CPApplicationLauncher__launchApplicationForActivitySession_options_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_insertBKSAssertion:forBundleID:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_1AEB26000, v2, OS_LOG_TYPE_ERROR, "%s Error inserting assertion %@ for bundleID %@", v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_invalidateBKSAssertionForBundleID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_acquireAssertionForBundleID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_validatePiPStartedFor:bundleID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end