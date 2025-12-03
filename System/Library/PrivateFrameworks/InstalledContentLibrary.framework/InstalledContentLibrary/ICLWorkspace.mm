@interface ICLWorkspace
+ (id)_connectionToInstallationDaemonWithError:(id *)error;
+ (id)defaultWorkspace;
- (BOOL)enumerateBuiltInSystemContentWithBlock:(id)block error:(id *)error;
- (BOOL)enumerateCryptexContentWithBlock:(id)block error:(id *)error;
- (BOOL)triggerRegistrationForContainerizedContentWithOptions:(id)options withError:(id *)error;
- (ICLWorkspace)init;
- (id)bundleIDsForContainerizedContentWithError:(id *)error;
- (id)bundleRecordsForLaunchServicesWithWrapperURL:(id)l forBundleIdentifier:(id)identifier withError:(id *)error;
- (id)bundleRecordsWithFrameworkURL:(id)l options:(id)options withError:(id *)error;
- (id)containerizedAppBundleRecordsForIdentity:(id)identity inDomain:(unint64_t)domain options:(id)options withError:(id *)error;
- (id)diskUsageForLaunchServicesWithBundleIDs:(id)ds options:(id)options withError:(id *)error;
- (id)infoForLaunchServicesWithWrapperURL:(id)l forBundleIdentifier:(id)identifier withError:(id *)error;
- (void)triggerRegistrationForContainerizedContentWithOptions:(id)options completion:(id)completion;
- (void)triggerRegistrationForDiskImageContentWithOptions:(id)options completion:(id)completion;
@end

@implementation ICLWorkspace

- (ICLWorkspace)init
{
  v3.receiver = self;
  v3.super_class = ICLWorkspace;
  return [(ICLWorkspace *)&v3 init];
}

+ (id)defaultWorkspace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__ICLWorkspace_defaultWorkspace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultWorkspace_onceToken != -1)
  {
    dispatch_once(&defaultWorkspace_onceToken, block);
  }

  v2 = defaultWorkspace_defaultInstance;

  return v2;
}

uint64_t __32__ICLWorkspace_defaultWorkspace__block_invoke()
{
  defaultWorkspace_defaultInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)enumerateBuiltInSystemContentWithBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v17 = 1;
  if ((container_invalidate_code_signing_cache() & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    MOLogWrite();
  }

  v6 = [MILaunchServicesDatabaseGatherer alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__ICLWorkspace_enumerateBuiltInSystemContentWithBlock_error___block_invoke;
  v15[3] = &unk_1E7AE1E10;
  v7 = blockCopy;
  v16 = v7;
  v8 = [(MILaunchServicesDatabaseGatherer *)v6 initWithOptions:2 enumerator:v15];
  v14 = 0;
  v9 = [(MILaunchServicesDatabaseGatherer *)v8 performGatherWithError:&v14];
  v10 = v14;
  v11 = v10;
  if (error && !v9)
  {
    v12 = v10;
    *error = v11;
  }

  return v9;
}

void __61__ICLWorkspace_enumerateBuiltInSystemContentWithBlock_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)bundleIDsForContainerizedContentWithError:(id *)error
{
  v4 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__ICLWorkspace_bundleIDsForContainerizedContentWithError___block_invoke;
  v10[3] = &unk_1E7AE1E38;
  v5 = v4;
  v11 = v5;
  v6 = [MIMCMContainer enumerateContainersWithClass:1 forPersona:0 isTransient:0 identifiers:0 groupIdentifiers:0 usingBlock:v10];
  if (v6)
  {

    v5 = 0;
  }

  if (error && !v5)
  {
    v7 = v6;
    *error = v6;
  }

  v8 = [v5 copy];

  return v8;
}

uint64_t __58__ICLWorkspace_bundleIDsForContainerizedContentWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 addObject:v3];

  return 1;
}

+ (id)_connectionToInstallationDaemonWithError:(id *)error
{
  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.mobile.installd" options:0];
  if (!v4)
  {
    v10 = _CreateAndLogError("+[ICLWorkspace _connectionToInstallationDaemonWithError:]", 136, ICLWorkspaceErrorDomain[0], 2, 0, 0, @"Failed to create connection to %@", v5, @"com.apple.mobile.installd");
    if (!error)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = v10;
    v6 = 0;
    *error = v10;
    goto LABEL_10;
  }

  v6 = v4;
  v7 = MobileInstallerProtocolInterface();
  [v6 setRemoteObjectInterface:v7];

  if (xpc_user_sessions_enabled())
  {
    if (xpc_user_sessions_get_foreground_uid() == -101)
    {
      v8 = ICLWorkspaceErrorDomain[0];
      xpc_strerror();
      v10 = _CreateAndLogError("+[ICLWorkspace _connectionToInstallationDaemonWithError:]", 147, v8, 2, 0, 0, @"xpc_user_sessions_get_foreground_uid() failed with error %d - %s", v9, 0);

      if (!error)
      {
LABEL_5:
        v6 = 0;
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    _xpcConnection = [v6 _xpcConnection];
    xpc_connection_set_target_user_session_uid();
  }

  [v6 resume];
  v10 = 0;
LABEL_10:

  return v6;
}

- (void)triggerRegistrationForContainerizedContentWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v21 = 0;
  v7 = [objc_opt_class() _connectionToInstallationDaemonWithError:&v21];
  v8 = v21;
  if (v7)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __81__ICLWorkspace_triggerRegistrationForContainerizedContentWithOptions_completion___block_invoke;
    v18[3] = &unk_1E7AE1E60;
    v9 = v7;
    v19 = v9;
    v20 = completionCopy;
    v10 = MEMORY[0x1B2733890](v18);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __81__ICLWorkspace_triggerRegistrationForContainerizedContentWithOptions_completion___block_invoke_2;
    v16 = &unk_1E7AE1E88;
    v17 = v10;
    v11 = v10;
    v12 = [v9 remoteObjectProxyWithErrorHandler:&v13];
    [v12 triggerRegistrationForContainerizedContentForOptions:optionsCopy withCompletion:{v11, v13, v14, v15, v16}];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, v8);
  }
}

void __81__ICLWorkspace_triggerRegistrationForContainerizedContentWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)triggerRegistrationForContainerizedContentWithOptions:(id)options withError:(id *)error
{
  optionsCopy = options;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v6 = objc_opt_class();
  v7 = v20;
  obj = v20[5];
  v8 = [v6 _connectionToInstallationDaemonWithError:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__ICLWorkspace_triggerRegistrationForContainerizedContentWithOptions_withError___block_invoke;
    v13[3] = &unk_1E7AE1EB0;
    v13[4] = &v19;
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__ICLWorkspace_triggerRegistrationForContainerizedContentWithOptions_withError___block_invoke_2;
    v12[3] = &unk_1E7AE1ED8;
    v12[4] = &v19;
    v12[5] = &v15;
    [v9 triggerRegistrationForContainerizedContentForOptions:optionsCopy withCompletion:v12];

    [v8 invalidate];
  }

  v10 = *(v16 + 24);
  if (error && (v16[3] & 1) == 0)
  {
    *error = v20[5];
    v10 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v10 & 1;
}

void __80__ICLWorkspace_triggerRegistrationForContainerizedContentWithOptions_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)triggerRegistrationForDiskImageContentWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v21 = 0;
  v7 = [objc_opt_class() _connectionToInstallationDaemonWithError:&v21];
  v8 = v21;
  if (v7)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__ICLWorkspace_triggerRegistrationForDiskImageContentWithOptions_completion___block_invoke;
    v18[3] = &unk_1E7AE1E60;
    v9 = v7;
    v19 = v9;
    v20 = completionCopy;
    v10 = MEMORY[0x1B2733890](v18);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __77__ICLWorkspace_triggerRegistrationForDiskImageContentWithOptions_completion___block_invoke_2;
    v16 = &unk_1E7AE1E88;
    v17 = v10;
    v11 = v10;
    v12 = [v9 remoteObjectProxyWithErrorHandler:&v13];
    [v12 triggerRegistrationForDiskImageContentForOptions:optionsCopy withCompletion:{v11, v13, v14, v15, v16}];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, v8);
  }
}

void __77__ICLWorkspace_triggerRegistrationForDiskImageContentWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (id)infoForLaunchServicesWithWrapperURL:(id)l forBundleIdentifier:(id)identifier withError:(id *)error
{
  v5 = [(ICLWorkspace *)self bundleRecordsForLaunchServicesWithWrapperURL:l forBundleIdentifier:identifier withError:error];
  v6 = [ICLBundleRecord bundleRecordArrayToInfoDictionaryArray:v5];

  return v6;
}

- (id)bundleRecordsForLaunchServicesWithWrapperURL:(id)l forBundleIdentifier:(id)identifier withError:(id *)error
{
  v7 = _CreateAndLogError("[ICLWorkspace bundleRecordsForLaunchServicesWithWrapperURL:forBundleIdentifier:withError:]", 307, ICLWorkspaceErrorDomain[0], 4, 0, 0, @"%s is unavailable on this platform", v5, "[ICLWorkspace bundleRecordsForLaunchServicesWithWrapperURL:forBundleIdentifier:withError:]");
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (BOOL)enumerateCryptexContentWithBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v6 = [MILaunchServicesDatabaseGatherer alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__ICLWorkspace_enumerateCryptexContentWithBlock_error___block_invoke;
  v15[3] = &unk_1E7AE1E10;
  v7 = blockCopy;
  v16 = v7;
  v8 = [(MILaunchServicesDatabaseGatherer *)v6 initWithOptions:8 enumerator:v15];
  v14 = 0;
  v9 = [(MILaunchServicesDatabaseGatherer *)v8 performGatherWithError:&v14];
  v10 = v14;
  v11 = v10;
  if (error && !v9)
  {
    v12 = v10;
    *error = v11;
  }

  return v9;
}

void __55__ICLWorkspace_enumerateCryptexContentWithBlock_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)bundleRecordsWithFrameworkURL:(id)l options:(id)options withError:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  objc_opt_class();
  v11 = lCopy;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v16 = _CreateAndLogError("[ICLWorkspace bundleRecordsWithFrameworkURL:options:withError:]", 363, @"MIInstallerErrorDomain", 25, 0, 0, @"frameworkBundleURL parameter was not a valid URL", v13, path);
    goto LABEL_18;
  }

  if (optionsCopy)
  {
    objc_opt_class();
    v14 = optionsCopy;
    v15 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;

    if (!v15)
    {
      v16 = _CreateAndLogError("[ICLWorkspace bundleRecordsWithFrameworkURL:options:withError:]", 368, @"MIInstallerErrorDomain", 25, 0, 0, @"options parameter was not a dictionary", v17, path);
      v12 = 0;
LABEL_20:
      v25 = 0;
      if (!error)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    path = [v11 path];
    v30 = optionsCopy;
    MOLogWrite();
  }

  v40 = 0;
  v12 = [(MIBundle *)MIExecutableBundle bundleForURL:v11 error:&v40, path, v30];
  v16 = v40;
  if (!v12)
  {
LABEL_18:
    v15 = 0;
    goto LABEL_20;
  }

  v33 = v10;
  v34 = v9;
  errorCopy = error;
  v18 = +[MIGlobalConfiguration sharedInstance];
  primaryPersonaString = [v18 primaryPersonaString];
  v39 = v16;
  v15 = [MILaunchServicesDatabaseGatherer entryForBundle:v12 inContainer:0 forPersona:primaryPersonaString withError:&v39];
  v20 = v39;

  if (v15)
  {
    identifier = [v12 identifier];
    [v10 setObject:v15 forKeyedSubscript:identifier];

    [v34 addObject:v15];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __64__ICLWorkspace_bundleRecordsWithFrameworkURL_options_withError___block_invoke;
    v36[3] = &unk_1E7AE1F00;
    v37 = v10;
    v31 = v34;
    v38 = v31;
    v22 = MEMORY[0x1B2733890](v36);
    v23 = +[MIGlobalConfiguration sharedInstance];
    primaryPersonaString2 = [v23 primaryPersonaString];
    v35 = v20;
    LODWORD(identifier) = [MILaunchServicesDatabaseGatherer enumerateAppExtensionsInBundle:v12 forPersona:primaryPersonaString2 updatingAppExtensionParentID:0 ensureAppExtensionsAreExecutable:0 installProfiles:0 error:&v35 enumerator:v22];
    v16 = v35;

    if (identifier)
    {
      v25 = [v31 copy];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    v16 = v20;
  }

  error = errorCopy;
  v10 = v33;
  v9 = v34;
  if (errorCopy)
  {
LABEL_25:
    if (!v25)
    {
      v26 = v16;
      *error = v16;
    }
  }

LABEL_27:
  v27 = v25;

  return v25;
}

void __64__ICLWorkspace_bundleRecordsWithFrameworkURL_options_withError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v12];

  if (v6)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v7 = [*(a1 + 32) objectForKeyedSubscript:{v12, v12}];
      v8 = [v7 bundleURL];
      v9 = [v8 path];
      v10 = [v5 bundleURL];
      v11 = [v10 path];
      MOLogWrite();
    }
  }

  else
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v12];
    [*(a1 + 40) addObject:v5];
  }
}

- (id)containerizedAppBundleRecordsForIdentity:(id)identity inDomain:(unint64_t)domain options:(id)options withError:(id *)error
{
  identityCopy = identity;
  optionsCopy = options;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__7;
  v31 = __Block_byref_object_dispose__7;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7;
  v25 = __Block_byref_object_dispose__7;
  v26 = 0;
  v11 = objc_opt_class();
  v12 = (v22 + 5);
  obj = v22[5];
  v13 = [v11 _connectionToInstallationDaemonWithError:&obj];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __84__ICLWorkspace_containerizedAppBundleRecordsForIdentity_inDomain_options_withError___block_invoke;
    v19[3] = &unk_1E7AE1EB0;
    v19[4] = &v21;
    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v19];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __84__ICLWorkspace_containerizedAppBundleRecordsForIdentity_inDomain_options_withError___block_invoke_2;
    v18[3] = &unk_1E7AE1F28;
    v18[4] = &v21;
    v18[5] = &v27;
    [v14 fetchInfoForContainerizedAppWithIdentity:identityCopy inDomain:domain options:optionsCopy completion:v18];

    [v13 invalidate];
  }

  v15 = v28[5];
  if (error && !v15)
  {
    *error = v22[5];
    v15 = v28[5];
  }

  v16 = v15;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v16;
}

void __84__ICLWorkspace_containerizedAppBundleRecordsForIdentity_inDomain_options_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (id)diskUsageForLaunchServicesWithBundleIDs:(id)ds options:(id)options withError:(id *)error
{
  dsCopy = ds;
  optionsCopy = options;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__7;
  v32 = __Block_byref_object_dispose__7;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  if (optionsCopy)
  {
    v10 = objc_opt_class();
    v11 = (v23 + 5);
    obj = v23[5];
    v12 = [v10 _connectionToInstallationDaemonWithError:&obj];
    objc_storeStrong(v11, obj);
    if (v12)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __74__ICLWorkspace_diskUsageForLaunchServicesWithBundleIDs_options_withError___block_invoke;
      v20[3] = &unk_1E7AE1EB0;
      v20[4] = &v22;
      v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v20];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __74__ICLWorkspace_diskUsageForLaunchServicesWithBundleIDs_options_withError___block_invoke_2;
      v19[3] = &unk_1E7AE1F50;
      v19[4] = &v22;
      v19[5] = &v28;
      [v13 fetchDiskUsageForIdentifiers:dsCopy withOptions:optionsCopy completion:v19];

      [v12 invalidate];
    }
  }

  else
  {
    v14 = _CreateAndLogError("[ICLWorkspace diskUsageForLaunchServicesWithBundleIDs:options:withError:]", 453, @"MIInstallerErrorDomain", 25, 0, 0, @"options dictionary parameter was not specified", v8, v19[0]);
    v15 = v23[5];
    v23[5] = v14;

    v12 = 0;
  }

  v16 = v29[5];
  if (error && !v16)
  {
    *error = v23[5];
    v16 = v29[5];
  }

  v17 = v16;

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v17;
}

void __74__ICLWorkspace_diskUsageForLaunchServicesWithBundleIDs_options_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

@end