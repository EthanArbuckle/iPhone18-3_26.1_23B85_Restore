@interface MILaunchServicesDatabaseGatherer
+ (BOOL)enumerateAppExtensionsInBundle:(id)a3 forPersona:(id)a4 updatingAppExtensionParentID:(BOOL)a5 ensureAppExtensionsAreExecutable:(BOOL)a6 installProfiles:(BOOL)a7 error:(id *)a8 enumerator:(id)a9;
+ (id)_createDataContainerAndSetDataProtectionForBundle:(id)a3 forPersona:(id)a4 error:(id *)a5;
+ (id)_createPluginDataContainerForAppexBundle:(id)a3 forPersona:(id)a4 setParent:(id)a5;
+ (id)entryForBundle:(id)a3 inContainer:(id)a4 forPersona:(id)a5 withError:(id *)a6;
+ (id)fetchInfoForBundle:(id)a3 forPersona:(id)a4 inContainer:(id)a5 withError:(id *)a6;
- (BOOL)_markDriverKitExtensionsExecutableInBundle:(id)a3 withError:(id *)a4;
- (BOOL)_scanAppExtensionsInBundle:(id)a3 inBundleContainer:(id)a4 withError:(id *)a5;
- (BOOL)_scanBundle:(id)a3 inContainer:(id)a4 addingToBundleSet:(id)a5 enumeratingEntry:(id)a6 withError:(id *)a7;
- (BOOL)performGatherWithError:(id *)a3;
- (BOOL)scanAppExtensionsInFrameworkBundle:(id)a3 withError:(id *)a4;
- (BOOL)scanExecutableBundle:(id)a3 inContainer:(id)a4 forPersona:(id)a5 withError:(id *)a6;
- (MILaunchServicesDatabaseGatherer)initWithOptions:(unint64_t)a3 personaUniqueString:(id)a4 enumerator:(id)a5;
- (id)_setForEntry:(id)a3;
- (void)errorOccurred:(id)a3;
@end

@implementation MILaunchServicesDatabaseGatherer

- (MILaunchServicesDatabaseGatherer)initWithOptions:(unint64_t)a3 personaUniqueString:(id)a4 enumerator:(id)a5
{
  v9 = a4;
  v10 = a5;
  v30.receiver = self;
  v30.super_class = MILaunchServicesDatabaseGatherer;
  v11 = [(MILaunchServicesDatabaseGatherer *)&v30 init];
  if (v11)
  {
    v12 = objc_opt_new();
    internalApps = v11->_internalApps;
    v11->_internalApps = v12;

    v14 = objc_opt_new();
    systemApps = v11->_systemApps;
    v11->_systemApps = v14;

    v16 = objc_opt_new();
    userApps = v11->_userApps;
    v11->_userApps = v16;

    v18 = objc_opt_new();
    appExtensions = v11->_appExtensions;
    v11->_appExtensions = v18;

    v20 = objc_opt_new();
    frameworks = v11->_frameworks;
    v11->_frameworks = v20;

    v22 = objc_opt_new();
    coreServices = v11->_coreServices;
    v11->_coreServices = v22;

    v24 = objc_opt_new();
    systemAppPlaceholders = v11->_systemAppPlaceholders;
    v11->_systemAppPlaceholders = v24;

    v26 = +[MIDaemonConfiguration sharedInstance];
    v11->_shouldUpdateAppExtensionDataContainersWithParentID = [v26 haveUpdatedAppExtensionDataContainersWithParentID] ^ 1;

    if (v11->_shouldUpdateAppExtensionDataContainersWithParentID && (!gLogHandle || *(gLogHandle + 44) >= 5))
    {
      MOLogWrite();
    }

    v27 = MEMORY[0x1B2733890](v10);
    enumerator = v11->_enumerator;
    v11->_enumerator = v27;

    v11->_gatherOptions = a3;
    objc_storeStrong(&v11->_personaUniqueString, a4);
  }

  return v11;
}

+ (id)_createPluginDataContainerForAppexBundle:(id)a3 forPersona:(id)a4 setParent:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v16 = 0;
  v15 = 0;
  v10 = [v7 dataContainerCreatingIfNeeded:1 forPersona:v8 makeLive:1 created:&v16 error:&v15];
  v11 = v15;
  if (v10)
  {
    if (v9 && (v16 & 1) == 0)
    {
      [v10 setParentBundleID:v9];
    }

    v12 = v10;
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v14 = [v7 identifier];
    MOLogWrite();
  }

  return v10;
}

+ (BOOL)enumerateAppExtensionsInBundle:(id)a3 forPersona:(id)a4 updatingAppExtensionParentID:(BOOL)a5 ensureAppExtensionsAreExecutable:(BOOL)a6 installProfiles:(BOOL)a7 error:(id *)a8 enumerator:(id)a9
{
  v64 = a6;
  v65 = a7;
  v66 = a5;
  v97 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v62 = a4;
  v63 = a9;
  v11 = [v10 identifier];
  v93 = 0;
  v61 = v10;
  v12 = [v10 appExtensionBundlesWithError:&v93];
  v13 = v93;
  if (!v12)
  {
    v52 = 0;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    IsMalformedBundleError = _IsMalformedBundleError(v13);
    v53 = a8;
    v51 = v61;
    if (a8)
    {
      goto LABEL_64;
    }

    goto LABEL_66;
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v59 = v12;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
  if (!v14)
  {
LABEL_57:

    IsMalformedBundleError = 1;
    v51 = v61;
    v52 = v59;
    goto LABEL_66;
  }

  v15 = v14;
  v74 = *v90;
  v69 = v11;
LABEL_4:
  v16 = 0;
  v67 = v15;
  while (1)
  {
    if (*v90 != v74)
    {
      objc_enumerationMutation(obj);
    }

    v17 = *(*(&v89 + 1) + 8 * v16);
    v88 = v13;
    v18 = [v17 validateBundleMetadataWithError:{&v88, v56, v57, v58}];
    v19 = v88;

    if (v18)
    {
      break;
    }

    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_55;
    }

    v20 = [v17 bundleURL];
    v21 = [v20 path];
    v56 = v21;
    MOLogWrite();
LABEL_54:

LABEL_55:
    v13 = v19;
    if (++v16 == v15)
    {
      v15 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
      if (v15)
      {
        goto LABEL_4;
      }

      goto LABEL_57;
    }
  }

  v20 = objc_opt_new();
  if (v66)
  {
    v21 = v11;
  }

  else
  {
    v21 = 0;
  }

  v22 = +[MIDaemonConfiguration sharedInstance];
  v23 = [v22 deviceHasPersonas];

  if (!v23)
  {
    v26 = [objc_opt_class() _createPluginDataContainerForAppexBundle:v17 forPersona:0 setParent:v21];
    if (v26)
    {
      [v20 addObject:v26];
    }

LABEL_31:

    if (v64)
    {
      v82 = v19;
      v33 = [v17 makeExecutableWithError:&v82];
      v34 = v82;
      v35 = v19;
      v19 = v34;

      if ((v33 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        v56 = [v17 identifier];
        v57 = v19;
        MOLogWrite();
      }
    }

    if (v65)
    {
      [v17 installEmbeddedProvisioningProfileWithProgress:0];
    }

    v36 = [MIInstalledInfoGatherer alloc];
    v37 = [v20 copy];
    v38 = [(MIInstalledInfoGatherer *)v36 initWithAppExtensionBundle:v17 inBundleIdentifier:v11 dataContainers:v37];

    v81 = v19;
    v39 = [(MIInstalledInfoGatherer *)v38 bundleRecordWithError:&v81];
    v76 = v81;

    if (v39)
    {
      v70 = v39;
      v71 = v38;
      v72 = v20;
      v73 = v16;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v40 = v20;
      v41 = [v40 countByEnumeratingWithState:&v77 objects:v94 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v78;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v78 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v77 + 1) + 8 * i);
            v46 = [v45 rawContainer];
            v47 = [v46 isNew];

            if (v47)
            {
              v48 = +[MIContainerProtectionManager defaultManager];
              [v48 setDataProtectionOnDataContainer:v45 forNewBundle:v17 retryIfLocked:0];
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v77 objects:v94 count:16];
        }

        while (v42);
      }

      v49 = [v17 identifier];
      v39 = v70;
      (v63)[2](v63, v49, v70);
      v11 = v69;
      v20 = v72;
      v16 = v73;
      v38 = v71;
    }

    else
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_53;
      }

      v49 = [v17 identifier];
      v57 = v11;
      v58 = v76;
      v56 = v49;
      MOLogWrite();
    }

LABEL_53:
    v15 = v67;
    v19 = v76;
    goto LABEL_54;
  }

  if (v62)
  {
    v75 = v19;
    v24 = v16;
    v25 = [MEMORY[0x1E695DFD8] setWithObject:?];
LABEL_21:
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v26 = v25;
    v28 = [v26 countByEnumeratingWithState:&v83 objects:v95 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v84;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v84 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v32 = [objc_opt_class() _createPluginDataContainerForAppexBundle:v17 forPersona:*(*(&v83 + 1) + 8 * j) setParent:v21];
          if (v32)
          {
            [v20 addObject:v32];
          }
        }

        v29 = [v26 countByEnumeratingWithState:&v83 objects:v95 count:16];
      }

      while (v29);
    }

    v16 = v24;
    v11 = v69;
    v19 = v75;
    goto LABEL_31;
  }

  v27 = v20;
  v87 = v19;
  v25 = _AllPersonasAssociatedWithIdentifier(v11, &v87);
  v13 = v87;

  if (v25)
  {
    v24 = v16;
    v75 = v13;
    v20 = v27;
    goto LABEL_21;
  }

  IsMalformedBundleError = 0;
  v53 = a8;
  v51 = v61;
  v52 = v59;
  if (!a8)
  {
    goto LABEL_66;
  }

LABEL_64:
  if (!IsMalformedBundleError)
  {
    v54 = v13;
    IsMalformedBundleError = 0;
    *v53 = v13;
  }

LABEL_66:

  return IsMalformedBundleError;
}

+ (id)_createDataContainerAndSetDataProtectionForBundle:(id)a3 forPersona:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v17 = 0;
  v16 = 0;
  v9 = [v7 dataContainerCreatingIfNeeded:1 forPersona:v8 makeLive:1 created:&v17 error:&v16];
  v10 = v16;
  if (v9)
  {
    if (v17 == 1)
    {
      v11 = +[MIContainerProtectionManager defaultManager];
      [v11 setDataProtectionOnDataContainer:v9 forNewBundle:v7 retryIfLocked:0];
    }
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v12 = [v7 bundleURL];
      v15 = [v12 path];
      MOLogWrite();
    }

    if (a5)
    {
      v13 = v10;
      *a5 = v10;
    }
  }

  return v9;
}

+ (id)entryForBundle:(id)a3 inContainer:(id)a4 forPersona:(id)a5 withError:(id *)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_new();
  if (![v9 needsDataContainer])
  {
    v21 = a6;
    v22 = 0;
LABEL_31:
    v37 = [MIInstalledInfoGatherer alloc];
    v38 = [v12 copy];
    if (v10)
    {
      v39 = [(MIInstalledInfoGatherer *)v37 initWithBundleContainer:v10 dataContainers:v38];
    }

    else
    {
      v39 = [(MIInstalledInfoGatherer *)v37 initWithBundle:v9 dataContainers:v38];
    }

    v23 = v39;

    v50 = v22;
    v40 = [v23 bundleRecordWithError:&v50];
    v24 = v50;

    if (v40)
    {
      goto LABEL_43;
    }

    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      a6 = v21;
      if (v21)
      {
        goto LABEL_40;
      }

      goto LABEL_42;
    }

    v15 = [v9 identifier];
    MOLogWrite();
    a6 = v21;
    goto LABEL_38;
  }

  v13 = +[MIDaemonConfiguration sharedInstance];
  v14 = [v13 deviceHasPersonas];

  if (!v14)
  {
    v51 = 0;
    v23 = [objc_opt_class() _createDataContainerAndSetDataProtectionForBundle:v9 forPersona:0 error:&v51];
    v24 = v51;
    if (!v23)
    {
      goto LABEL_39;
    }

    v21 = a6;
    [v12 addObject:v23];
    goto LABEL_30;
  }

  v49 = v11;
  v15 = +[MIUserManagement sharedInstance];
  v16 = [v15 enterprisePersonaUniqueString];
  v58 = 0;
  v17 = [v15 multiPersonaSADAppBundleIDsWithError:&v58];
  v19 = v58;
  v48 = v17;
  if (v17)
  {
    v47 = v16;
    if (v49)
    {
      v20 = [MEMORY[0x1E695DFD8] setWithObject:?];
LABEL_11:
      v45 = v15;
      v46 = v10;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v23 = v20;
      v26 = [v23 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v54;
        v24 = v19;
        v44 = a6;
        while (2)
        {
          v29 = 0;
          v30 = v24;
          do
          {
            if (*v54 != v28)
            {
              objc_enumerationMutation(v23);
            }

            v31 = *(*(&v53 + 1) + 8 * v29);
            v32 = objc_opt_class();
            v52 = v30;
            v33 = [v32 _createDataContainerAndSetDataProtectionForBundle:v9 forPersona:v31 error:&v52];
            v24 = v52;

            if (!v33)
            {

              v19 = v23;
              v15 = v45;
              v10 = v46;
              a6 = v44;
              v16 = v47;
              goto LABEL_21;
            }

            [v12 addObject:v33];

            ++v29;
            v30 = v24;
          }

          while (v27 != v29);
          v27 = [v23 countByEnumeratingWithState:&v53 objects:v59 count:16];
          a6 = v44;
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v24 = v19;
      }

      v10 = v46;
      if (v47)
      {
        v34 = [v9 identifier];
        v35 = [v48 containsObject:v34];

        if (v35)
        {
          v36 = [v9 dataContainerCreatingIfNeeded:0 forPersona:v47 makeLive:1 created:0 error:0];
          if (v36)
          {
            [v12 addObject:v36];
          }
        }
      }

      v21 = a6;

      v11 = v49;
LABEL_30:

      v22 = v24;
      goto LABEL_31;
    }

    v25 = [v9 identifier];
    v57 = v19;
    v20 = _AllPersonasAssociatedWithIdentifier(v25, &v57);
    v24 = v57;

    v16 = v47;
    v19 = v24;
    if (v20)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = _CreateAndLogError("+[MILaunchServicesDatabaseGatherer entryForBundle:inContainer:forPersona:withError:]", 299, @"MIInstallerErrorDomain", 4, v19, 0, @"Failed to query multi persona SAD apps from UserManagement", v18, v43);
LABEL_21:
  }

  v23 = 0;
  v11 = v49;
LABEL_38:

LABEL_39:
  if (a6)
  {
LABEL_40:
    v41 = v24;
    v40 = 0;
    *a6 = v24;
    goto LABEL_43;
  }

LABEL_42:
  v40 = 0;
LABEL_43:

  return v40;
}

+ (id)fetchInfoForBundle:(id)a3 forPersona:(id)a4 inContainer:(id)a5 withError:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v30 = 0;
  v12 = [objc_opt_class() entryForBundle:v9 inContainer:v11 forPersona:v10 withError:&v30];

  v13 = v30;
  if (!v12)
  {
    v22 = 0;
    v18 = 0;
    v17 = 0;
    if (!a6)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = [v9 identifier];
  [v15 setObject:v12 forKeyedSubscript:v16];

  [v14 addObject:v12];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __88__MILaunchServicesDatabaseGatherer_fetchInfoForBundle_forPersona_inContainer_withError___block_invoke;
  v27[3] = &unk_1E7AE24C8;
  v17 = v15;
  v28 = v17;
  v18 = v14;
  v29 = v18;
  v19 = MEMORY[0x1B2733890](v27);
  v26 = v13;
  v20 = [objc_opt_class() enumerateAppExtensionsInBundle:v9 forPersona:v10 updatingAppExtensionParentID:0 ensureAppExtensionsAreExecutable:0 installProfiles:0 error:&v26 enumerator:v19];
  v21 = v26;

  if (v20)
  {
    v22 = [v18 copy];
  }

  else
  {
    v22 = 0;
  }

  v13 = v21;
  if (a6)
  {
LABEL_8:
    if (v13)
    {
      v23 = v13;
      *a6 = v13;
    }
  }

LABEL_10:
  v24 = v22;

  return v22;
}

void __88__MILaunchServicesDatabaseGatherer_fetchInfoForBundle_forPersona_inContainer_withError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)_scanAppExtensionsInBundle:(id)a3 inBundleContainer:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __91__MILaunchServicesDatabaseGatherer__scanAppExtensionsInBundle_inBundleContainer_withError___block_invoke;
  v19[3] = &unk_1E7AE24F0;
  v19[4] = self;
  v9 = MEMORY[0x1B2733890](v19);
  if ([v8 bundleType] == 10)
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v12 = objc_opt_class();
    v13 = [(MILaunchServicesDatabaseGatherer *)self personaUniqueString];
    shouldUpdateAppExtensionDataContainersWithParentID = self->_shouldUpdateAppExtensionDataContainersWithParentID;
    v15 = a4 != 0;
    v18 = 0;
    v11 = 1;
    LOBYTE(v12) = [v12 enumerateAppExtensionsInBundle:v8 forPersona:v13 updatingAppExtensionParentID:shouldUpdateAppExtensionDataContainersWithParentID ensureAppExtensionsAreExecutable:v15 installProfiles:1 error:&v18 enumerator:v9];
    v10 = v18;

    if ((v12 & 1) == 0)
    {
      if (a5)
      {
        v16 = v10;
        v11 = 0;
        *a5 = v10;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

void __91__MILaunchServicesDatabaseGatherer__scanAppExtensionsInBundle_inBundleContainer_withError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) appExtensions];
  v7 = [v6 containsObject:v11];

  if (!v7)
  {
    v9 = [*(a1 + 32) enumerator];
    (v9)[2](v9, v5, 0);

    v8 = [*(a1 + 32) appExtensions];
    [v8 addObject:v11];
    goto LABEL_6;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v8 = [v5 bundleURL];
    v10 = [v8 path];
    MOLogWrite();

LABEL_6:
  }
}

- (BOOL)_markDriverKitExtensionsExecutableInBundle:(id)a3 withError:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v5 = [a3 driverKitExtensionBundlesWithError:&v23];
  v6 = v23;
  if (!v5)
  {
    v15 = 0;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      v11 = 0;
      v12 = v6;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * v11);
        v18 = v12;
        v14 = [v13 makeExecutableWithError:&v18];
        v6 = v18;

        if (!v14)
        {
          v15 = 0;
          goto LABEL_12;
        }

        [v13 installEmbeddedProvisioningProfileWithProgress:0];
        [v13 installMacStyleEmbeddedProvisioningProfileWithProgress:0];
        ++v11;
        v12 = v6;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_12:

  if (a4)
  {
LABEL_15:
    if (!v15)
    {
      v16 = v6;
      *a4 = v6;
    }
  }

LABEL_17:

  return v15;
}

- (id)_setForEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationType];
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = [(MILaunchServicesDatabaseGatherer *)self coreServices];
      goto LABEL_16;
    }

    if (v5 == 2)
    {
      v6 = [(MILaunchServicesDatabaseGatherer *)self systemApps];
      goto LABEL_16;
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        v6 = [(MILaunchServicesDatabaseGatherer *)self systemAppPlaceholders];
        goto LABEL_16;
      case 4:
        v6 = [(MILaunchServicesDatabaseGatherer *)self userApps];
        goto LABEL_16;
      case 5:
        v6 = [(MILaunchServicesDatabaseGatherer *)self internalApps];
LABEL_16:
        v7 = v6;
        goto LABEL_17;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(MILaunchServicesDatabaseGatherer *)self appExtensions];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(MILaunchServicesDatabaseGatherer *)self frameworks];
    goto LABEL_16;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v7 = 0;
LABEL_17:

  return v7;
}

- (BOOL)_scanBundle:(id)a3 inContainer:(id)a4 addingToBundleSet:(id)a5 enumeratingEntry:(id)a6 withError:(id *)a7
{
  v58 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v12 identifier];
  v17 = [v14 containsObject:v16];

  if (v17)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v18 = [v12 identifier];
      v19 = [v12 bundleURL];
      v53 = [v19 path];
      MOLogWrite();
    }

    v20 = 0;
LABEL_6:
    v21 = 1;
    goto LABEL_41;
  }

  if (v15)
  {
    v22 = [(MILaunchServicesDatabaseGatherer *)self enumerator];
    (v22)[2](v22, v15, 0);
  }

  v23 = [v12 identifier];
  [v14 addObject:v23];

  if (MILogHandleForSignpost_onceToken_0 != -1)
  {
    [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
  }

  v24 = MILogHandleForSignpost_logHandle_0;
  if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
  {
    v25 = v24;
    v26 = [v12 bundleURL];
    v27 = [v26 path];
    *buf = 138412290;
    v57 = v27;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v25, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ScanPlugins", "Scanning plugins in bundle at %@", buf, 0xCu);
  }

  v55 = 0;
  v28 = [(MILaunchServicesDatabaseGatherer *)self _scanAppExtensionsInBundle:v12 inBundleContainer:v13 withError:&v55];
  v20 = v55;
  if (!v28)
  {
    if (MILogHandleForSignpost_onceToken_0 != -1)
    {
      [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
    }

    v43 = MILogHandleForSignpost_logHandle_0;
    if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
    {
      v44 = v43;
      v45 = [v12 bundleURL];
      v46 = [v45 path];
      *buf = 138412290;
      v57 = v46;
      _os_signpost_emit_with_name_impl(&dword_1B16A0000, v44, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ScanPlugins", "[FAIL] Done scanning plugins in bundle at %@", buf, 0xCu);
    }

    if (!a7)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  if (MILogHandleForSignpost_onceToken_0 != -1)
  {
    [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
  }

  v29 = MILogHandleForSignpost_logHandle_0;
  if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
  {
    v30 = v29;
    v31 = [v12 bundleURL];
    v32 = [v31 path];
    *buf = 138412290;
    v57 = v32;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v30, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ScanPlugins", "Done scanning plugins in bundle at %@", buf, 0xCu);
  }

  if (!v13)
  {
    goto LABEL_6;
  }

  if (MILogHandleForSignpost_onceToken_0 != -1)
  {
    [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
  }

  v33 = MILogHandleForSignpost_logHandle_0;
  if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
  {
    v34 = v33;
    v35 = [v12 bundleURL];
    v36 = [v35 path];
    *buf = 138412290;
    v57 = v36;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v34, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MarkDriverKitExtensionsExecutable", "Mark DriverKit extensions in bundle as executable at %@", buf, 0xCu);
  }

  v54 = v20;
  v37 = [(MILaunchServicesDatabaseGatherer *)self _markDriverKitExtensionsExecutableInBundle:v12 withError:&v54];
  v38 = v54;

  if (!v37)
  {
    if (MILogHandleForSignpost_onceToken_0 != -1)
    {
      [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
    }

    v48 = MILogHandleForSignpost_logHandle_0;
    if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
    {
      v49 = v48;
      v50 = [v12 bundleURL];
      v51 = [v50 path];
      *buf = 138412290;
      v57 = v51;
      _os_signpost_emit_with_name_impl(&dword_1B16A0000, v49, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MarkDriverKitExtensionsExecutable", "[FAIL] Done marking DriverKit extensions in bundle as executable at %@", buf, 0xCu);
    }

    v20 = v38;
    if (!a7)
    {
LABEL_40:
      v21 = 0;
      goto LABEL_41;
    }

LABEL_34:
    v47 = v20;
    v21 = 0;
    *a7 = v20;
    goto LABEL_41;
  }

  if (MILogHandleForSignpost_onceToken_0 != -1)
  {
    [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
  }

  v39 = MILogHandleForSignpost_logHandle_0;
  if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
  {
    v40 = v39;
    v41 = [v12 bundleURL];
    v42 = [v41 path];
    *buf = 138412290;
    v57 = v42;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v40, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MarkDriverKitExtensionsExecutable", "Done marking DriverKit extensions in bundle as executable at %@", buf, 0xCu);
  }

  v21 = 1;
  v20 = v38;
LABEL_41:

  return v21;
}

- (BOOL)scanExecutableBundle:(id)a3 inContainer:(id)a4 forPersona:(id)a5 withError:(id *)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (MILogHandleForSignpost_onceToken_0 != -1)
  {
    [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
  }

  v13 = MILogHandleForSignpost_logHandle_0;
  if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
  {
    v14 = v13;
    v15 = [v10 bundleURL];
    v16 = [v15 path];
    *buf = 138412290;
    v38 = v16;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ScanBundle", "Scanning bundle at %@", buf, 0xCu);
  }

  v36 = 0;
  v17 = [objc_opt_class() entryForBundle:v10 inContainer:v11 forPersona:v12 withError:&v36];
  v18 = v36;
  if (v17)
  {
    v19 = [(MILaunchServicesDatabaseGatherer *)self _setForEntry:v17];
    if (v19)
    {
      v21 = v19;
      v35 = v18;
      v22 = [(MILaunchServicesDatabaseGatherer *)self _scanBundle:v10 inContainer:v11 addingToBundleSet:v19 enumeratingEntry:v17 withError:&v35];
      v23 = v35;

      v18 = v21;
    }

    else
    {
      v23 = _CreateAndLogError("[MILaunchServicesDatabaseGatherer scanExecutableBundle:inContainer:forPersona:withError:]", 568, @"MIInstallerErrorDomain", 4, 0, 0, @"Could not find appropriate set for app %@", v20, v17);
      v22 = 0;
    }

    v18 = v23;
    if (!a6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v22 = 0;
    if (!a6)
    {
      goto LABEL_14;
    }
  }

  if (!v22)
  {
    v24 = v18;
    *a6 = v18;
  }

LABEL_14:
  if (v18)
  {
    v25 = v22;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    v26 = [(MILaunchServicesDatabaseGatherer *)self enumerator];

    if (v26)
    {
      v27 = [(MILaunchServicesDatabaseGatherer *)self enumerator];
      (v27)[2](v27, 0, v18);
    }
  }

  if (v22)
  {
    if (MILogHandleForSignpost_onceToken_0 != -1)
    {
      [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
    }

    v28 = MILogHandleForSignpost_logHandle_0;
    if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
    {
      v29 = v28;
      v30 = [v10 bundleURL];
      v31 = [v30 path];
      *buf = 138412290;
      v38 = v31;
      v32 = "Done scanning bundle at %@";
LABEL_29:
      _os_signpost_emit_with_name_impl(&dword_1B16A0000, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ScanBundle", v32, buf, 0xCu);
    }
  }

  else
  {
    if (MILogHandleForSignpost_onceToken_0 != -1)
    {
      [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
    }

    v33 = MILogHandleForSignpost_logHandle_0;
    if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
    {
      v29 = v33;
      v30 = [v10 bundleURL];
      v31 = [v30 path];
      *buf = 138412290;
      v38 = v31;
      v32 = "[FAIL] Done scanning bundle at %@";
      goto LABEL_29;
    }
  }

  return v22;
}

- (BOOL)scanAppExtensionsInFrameworkBundle:(id)a3 withError:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (MILogHandleForSignpost_onceToken_0 != -1)
  {
    [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
  }

  v7 = MILogHandleForSignpost_logHandle_0;
  if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
  {
    v8 = v7;
    v9 = [v6 bundleURL];
    v10 = [v9 path];
    *buf = 138412290;
    v27 = v10;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ScanBundle", "Scanning framework at %@", buf, 0xCu);
  }

  v11 = [(MILaunchServicesDatabaseGatherer *)self frameworks];
  v25 = 0;
  v12 = [(MILaunchServicesDatabaseGatherer *)self _scanBundle:v6 inContainer:0 addingToBundleSet:v11 enumeratingEntry:0 withError:&v25];
  v13 = v25;

  if (a4 && !v12)
  {
    v14 = v13;
    *a4 = v13;
  }

  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    v16 = [(MILaunchServicesDatabaseGatherer *)self enumerator];

    if (v16)
    {
      v17 = [(MILaunchServicesDatabaseGatherer *)self enumerator];
      (v17)[2](v17, 0, v13);
    }
  }

  if (v12)
  {
    if (MILogHandleForSignpost_onceToken_0 != -1)
    {
      [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
    }

    v18 = MILogHandleForSignpost_logHandle_0;
    if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
    {
      v19 = v18;
      v20 = [v6 bundleURL];
      v21 = [v20 path];
      *buf = 138412290;
      v27 = v21;
      v22 = "Done scanning framework at %@";
LABEL_23:
      _os_signpost_emit_with_name_impl(&dword_1B16A0000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ScanBundle", v22, buf, 0xCu);
    }
  }

  else
  {
    if (MILogHandleForSignpost_onceToken_0 != -1)
    {
      [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
    }

    v23 = MILogHandleForSignpost_logHandle_0;
    if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
    {
      v19 = v23;
      v20 = [v6 bundleURL];
      v21 = [v20 path];
      *buf = 138412290;
      v27 = v21;
      v22 = "[FAIL] Done scanning framework at %@";
      goto LABEL_23;
    }
  }

  return v12;
}

- (void)errorOccurred:(id)a3
{
  v6 = a3;
  v4 = [(MILaunchServicesDatabaseGatherer *)self enumerator];

  if (v4)
  {
    v5 = [(MILaunchServicesDatabaseGatherer *)self enumerator];
    (v5)[2](v5, 0, v6);
  }
}

- (BOOL)performGatherWithError:(id *)a3
{
  if (([(MILaunchServicesDatabaseGatherer *)self gatherOptions]& 2) != 0)
  {
    v5 = 2298;
  }

  else if (([(MILaunchServicesDatabaseGatherer *)self gatherOptions]& 4) != 0)
  {
    v5 = 5125;
  }

  else if (([(MILaunchServicesDatabaseGatherer *)self gatherOptions]& 8) != 0)
  {
    v5 = 768;
  }

  else if (([(MILaunchServicesDatabaseGatherer *)self gatherOptions]& 0x10) != 0)
  {
    v5 = 4;
  }

  else
  {
    v5 = 8063;
  }

  v6 = ([(MILaunchServicesDatabaseGatherer *)self gatherOptions]& 1) << 7;
  v7 = [MIFilesystemScanner alloc];
  v8 = [(MILaunchServicesDatabaseGatherer *)self personaUniqueString];
  v9 = [(MIFilesystemScanner *)v7 initWithScanOptions:v6 | v5 personaUniqueString:v8];

  [(MIFilesystemScanner *)v9 setDelegate:self];
  v10 = +[MIDaemonConfiguration sharedInstance];
  [v10 reScanSystemApps];

  v11 = +[MIDaemonConfiguration sharedInstance];
  [v11 reScanInternalApps];

  v12 = +[MIDaemonConfiguration sharedInstance];
  [v12 reScanCoreServicesApps];

  v13 = +[MIKeychainAccessGroupTracker sharedTracker];
  [v13 invalidateCache];

  v14 = [(MIFilesystemScanner *)v9 performScanWithError:a3];
  if (v14 && self->_shouldUpdateAppExtensionDataContainersWithParentID)
  {
    v15 = +[MIDaemonConfiguration sharedInstance];
    [v15 setHaveUpdatedAppExtensionDataContainersWithParentID:1];

    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }
  }

  return v14;
}

@end