@interface MILaunchServicesDatabaseGatherer
+ (BOOL)enumerateAppExtensionsInBundle:(id)bundle forPersona:(id)persona updatingAppExtensionParentID:(BOOL)d ensureAppExtensionsAreExecutable:(BOOL)executable installProfiles:(BOOL)profiles error:(id *)error enumerator:(id)enumerator;
+ (id)_createDataContainerAndSetDataProtectionForBundle:(id)bundle forPersona:(id)persona error:(id *)error;
+ (id)_createPluginDataContainerForAppexBundle:(id)bundle forPersona:(id)persona setParent:(id)parent;
+ (id)entryForBundle:(id)bundle inContainer:(id)container forPersona:(id)persona withError:(id *)error;
+ (id)fetchInfoForBundle:(id)bundle forPersona:(id)persona inContainer:(id)container withError:(id *)error;
- (BOOL)_markDriverKitExtensionsExecutableInBundle:(id)bundle withError:(id *)error;
- (BOOL)_scanAppExtensionsInBundle:(id)bundle inBundleContainer:(id)container withError:(id *)error;
- (BOOL)_scanBundle:(id)bundle inContainer:(id)container addingToBundleSet:(id)set enumeratingEntry:(id)entry withError:(id *)error;
- (BOOL)performGatherWithError:(id *)error;
- (BOOL)scanAppExtensionsInFrameworkBundle:(id)bundle withError:(id *)error;
- (BOOL)scanExecutableBundle:(id)bundle inContainer:(id)container forPersona:(id)persona withError:(id *)error;
- (MILaunchServicesDatabaseGatherer)initWithOptions:(unint64_t)options personaUniqueString:(id)string enumerator:(id)enumerator;
- (id)_setForEntry:(id)entry;
- (void)errorOccurred:(id)occurred;
@end

@implementation MILaunchServicesDatabaseGatherer

- (MILaunchServicesDatabaseGatherer)initWithOptions:(unint64_t)options personaUniqueString:(id)string enumerator:(id)enumerator
{
  stringCopy = string;
  enumeratorCopy = enumerator;
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

    v27 = MEMORY[0x1B2733890](enumeratorCopy);
    enumerator = v11->_enumerator;
    v11->_enumerator = v27;

    v11->_gatherOptions = options;
    objc_storeStrong(&v11->_personaUniqueString, string);
  }

  return v11;
}

+ (id)_createPluginDataContainerForAppexBundle:(id)bundle forPersona:(id)persona setParent:(id)parent
{
  bundleCopy = bundle;
  personaCopy = persona;
  parentCopy = parent;
  v16 = 0;
  v15 = 0;
  v10 = [bundleCopy dataContainerCreatingIfNeeded:1 forPersona:personaCopy makeLive:1 created:&v16 error:&v15];
  v11 = v15;
  if (v10)
  {
    if (parentCopy && (v16 & 1) == 0)
    {
      [v10 setParentBundleID:parentCopy];
    }

    v12 = v10;
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    identifier = [bundleCopy identifier];
    MOLogWrite();
  }

  return v10;
}

+ (BOOL)enumerateAppExtensionsInBundle:(id)bundle forPersona:(id)persona updatingAppExtensionParentID:(BOOL)d ensureAppExtensionsAreExecutable:(BOOL)executable installProfiles:(BOOL)profiles error:(id *)error enumerator:(id)enumerator
{
  executableCopy = executable;
  profilesCopy = profiles;
  dCopy = d;
  v97 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  personaCopy = persona;
  enumeratorCopy = enumerator;
  identifier = [bundleCopy identifier];
  v93 = 0;
  v61 = bundleCopy;
  v12 = [bundleCopy appExtensionBundlesWithError:&v93];
  v13 = v93;
  if (!v12)
  {
    v52 = 0;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    IsMalformedBundleError = _IsMalformedBundleError(v13);
    errorCopy2 = error;
    v51 = v61;
    if (error)
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
  v69 = identifier;
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
    v18 = [v17 validateBundleMetadataWithError:{&v88, identifier2, v57, v58}];
    v19 = v88;

    if (v18)
    {
      break;
    }

    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_55;
    }

    bundleURL = [v17 bundleURL];
    path = [bundleURL path];
    identifier2 = path;
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

  bundleURL = objc_opt_new();
  if (dCopy)
  {
    path = identifier;
  }

  else
  {
    path = 0;
  }

  v22 = +[MIDaemonConfiguration sharedInstance];
  deviceHasPersonas = [v22 deviceHasPersonas];

  if (!deviceHasPersonas)
  {
    v26 = [objc_opt_class() _createPluginDataContainerForAppexBundle:v17 forPersona:0 setParent:path];
    if (v26)
    {
      [bundleURL addObject:v26];
    }

LABEL_31:

    if (executableCopy)
    {
      v82 = v19;
      v33 = [v17 makeExecutableWithError:&v82];
      v34 = v82;
      v35 = v19;
      v19 = v34;

      if ((v33 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        identifier2 = [v17 identifier];
        v57 = v19;
        MOLogWrite();
      }
    }

    if (profilesCopy)
    {
      [v17 installEmbeddedProvisioningProfileWithProgress:0];
    }

    v36 = [MIInstalledInfoGatherer alloc];
    v37 = [bundleURL copy];
    v38 = [(MIInstalledInfoGatherer *)v36 initWithAppExtensionBundle:v17 inBundleIdentifier:identifier dataContainers:v37];

    v81 = v19;
    v39 = [(MIInstalledInfoGatherer *)v38 bundleRecordWithError:&v81];
    v76 = v81;

    if (v39)
    {
      v70 = v39;
      v71 = v38;
      v72 = bundleURL;
      v73 = v16;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v40 = bundleURL;
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
            rawContainer = [v45 rawContainer];
            isNew = [rawContainer isNew];

            if (isNew)
            {
              v48 = +[MIContainerProtectionManager defaultManager];
              [v48 setDataProtectionOnDataContainer:v45 forNewBundle:v17 retryIfLocked:0];
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v77 objects:v94 count:16];
        }

        while (v42);
      }

      identifier3 = [v17 identifier];
      v39 = v70;
      (enumeratorCopy)[2](enumeratorCopy, identifier3, v70);
      identifier = v69;
      bundleURL = v72;
      v16 = v73;
      v38 = v71;
    }

    else
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_53;
      }

      identifier3 = [v17 identifier];
      v57 = identifier;
      v58 = v76;
      identifier2 = identifier3;
      MOLogWrite();
    }

LABEL_53:
    v15 = v67;
    v19 = v76;
    goto LABEL_54;
  }

  if (personaCopy)
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

          v32 = [objc_opt_class() _createPluginDataContainerForAppexBundle:v17 forPersona:*(*(&v83 + 1) + 8 * j) setParent:path];
          if (v32)
          {
            [bundleURL addObject:v32];
          }
        }

        v29 = [v26 countByEnumeratingWithState:&v83 objects:v95 count:16];
      }

      while (v29);
    }

    v16 = v24;
    identifier = v69;
    v19 = v75;
    goto LABEL_31;
  }

  v27 = bundleURL;
  v87 = v19;
  v25 = _AllPersonasAssociatedWithIdentifier(identifier, &v87);
  v13 = v87;

  if (v25)
  {
    v24 = v16;
    v75 = v13;
    bundleURL = v27;
    goto LABEL_21;
  }

  IsMalformedBundleError = 0;
  errorCopy2 = error;
  v51 = v61;
  v52 = v59;
  if (!error)
  {
    goto LABEL_66;
  }

LABEL_64:
  if (!IsMalformedBundleError)
  {
    v54 = v13;
    IsMalformedBundleError = 0;
    *errorCopy2 = v13;
  }

LABEL_66:

  return IsMalformedBundleError;
}

+ (id)_createDataContainerAndSetDataProtectionForBundle:(id)bundle forPersona:(id)persona error:(id *)error
{
  bundleCopy = bundle;
  personaCopy = persona;
  v17 = 0;
  v16 = 0;
  v9 = [bundleCopy dataContainerCreatingIfNeeded:1 forPersona:personaCopy makeLive:1 created:&v17 error:&v16];
  v10 = v16;
  if (v9)
  {
    if (v17 == 1)
    {
      v11 = +[MIContainerProtectionManager defaultManager];
      [v11 setDataProtectionOnDataContainer:v9 forNewBundle:bundleCopy retryIfLocked:0];
    }
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      bundleURL = [bundleCopy bundleURL];
      path = [bundleURL path];
      MOLogWrite();
    }

    if (error)
    {
      v13 = v10;
      *error = v10;
    }
  }

  return v9;
}

+ (id)entryForBundle:(id)bundle inContainer:(id)container forPersona:(id)persona withError:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  containerCopy = container;
  personaCopy = persona;
  v12 = objc_opt_new();
  if (![bundleCopy needsDataContainer])
  {
    errorCopy4 = error;
    v22 = 0;
LABEL_31:
    v37 = [MIInstalledInfoGatherer alloc];
    v38 = [v12 copy];
    if (containerCopy)
    {
      v39 = [(MIInstalledInfoGatherer *)v37 initWithBundleContainer:containerCopy dataContainers:v38];
    }

    else
    {
      v39 = [(MIInstalledInfoGatherer *)v37 initWithBundle:bundleCopy dataContainers:v38];
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
      error = errorCopy4;
      if (errorCopy4)
      {
        goto LABEL_40;
      }

      goto LABEL_42;
    }

    identifier = [bundleCopy identifier];
    MOLogWrite();
    error = errorCopy4;
    goto LABEL_38;
  }

  v13 = +[MIDaemonConfiguration sharedInstance];
  deviceHasPersonas = [v13 deviceHasPersonas];

  if (!deviceHasPersonas)
  {
    v51 = 0;
    v23 = [objc_opt_class() _createDataContainerAndSetDataProtectionForBundle:bundleCopy forPersona:0 error:&v51];
    v24 = v51;
    if (!v23)
    {
      goto LABEL_39;
    }

    errorCopy4 = error;
    [v12 addObject:v23];
    goto LABEL_30;
  }

  v49 = personaCopy;
  identifier = +[MIUserManagement sharedInstance];
  enterprisePersonaUniqueString = [identifier enterprisePersonaUniqueString];
  v58 = 0;
  v17 = [identifier multiPersonaSADAppBundleIDsWithError:&v58];
  v19 = v58;
  v48 = v17;
  if (v17)
  {
    v47 = enterprisePersonaUniqueString;
    if (v49)
    {
      v20 = [MEMORY[0x1E695DFD8] setWithObject:?];
LABEL_11:
      v45 = identifier;
      v46 = containerCopy;
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
        errorCopy3 = error;
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
            v33 = [v32 _createDataContainerAndSetDataProtectionForBundle:bundleCopy forPersona:v31 error:&v52];
            v24 = v52;

            if (!v33)
            {

              v19 = v23;
              identifier = v45;
              containerCopy = v46;
              error = errorCopy3;
              enterprisePersonaUniqueString = v47;
              goto LABEL_21;
            }

            [v12 addObject:v33];

            ++v29;
            v30 = v24;
          }

          while (v27 != v29);
          v27 = [v23 countByEnumeratingWithState:&v53 objects:v59 count:16];
          error = errorCopy3;
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

      containerCopy = v46;
      if (v47)
      {
        identifier2 = [bundleCopy identifier];
        v35 = [v48 containsObject:identifier2];

        if (v35)
        {
          v36 = [bundleCopy dataContainerCreatingIfNeeded:0 forPersona:v47 makeLive:1 created:0 error:0];
          if (v36)
          {
            [v12 addObject:v36];
          }
        }
      }

      errorCopy4 = error;

      personaCopy = v49;
LABEL_30:

      v22 = v24;
      goto LABEL_31;
    }

    identifier3 = [bundleCopy identifier];
    v57 = v19;
    v20 = _AllPersonasAssociatedWithIdentifier(identifier3, &v57);
    v24 = v57;

    enterprisePersonaUniqueString = v47;
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
  personaCopy = v49;
LABEL_38:

LABEL_39:
  if (error)
  {
LABEL_40:
    v41 = v24;
    v40 = 0;
    *error = v24;
    goto LABEL_43;
  }

LABEL_42:
  v40 = 0;
LABEL_43:

  return v40;
}

+ (id)fetchInfoForBundle:(id)bundle forPersona:(id)persona inContainer:(id)container withError:(id *)error
{
  bundleCopy = bundle;
  personaCopy = persona;
  containerCopy = container;
  v30 = 0;
  v12 = [objc_opt_class() entryForBundle:bundleCopy inContainer:containerCopy forPersona:personaCopy withError:&v30];

  v13 = v30;
  if (!v12)
  {
    v22 = 0;
    v18 = 0;
    v17 = 0;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  identifier = [bundleCopy identifier];
  [v15 setObject:v12 forKeyedSubscript:identifier];

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
  v20 = [objc_opt_class() enumerateAppExtensionsInBundle:bundleCopy forPersona:personaCopy updatingAppExtensionParentID:0 ensureAppExtensionsAreExecutable:0 installProfiles:0 error:&v26 enumerator:v19];
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
  if (error)
  {
LABEL_8:
    if (v13)
    {
      v23 = v13;
      *error = v13;
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

- (BOOL)_scanAppExtensionsInBundle:(id)bundle inBundleContainer:(id)container withError:(id *)error
{
  bundleCopy = bundle;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __91__MILaunchServicesDatabaseGatherer__scanAppExtensionsInBundle_inBundleContainer_withError___block_invoke;
  v19[3] = &unk_1E7AE24F0;
  v19[4] = self;
  v9 = MEMORY[0x1B2733890](v19);
  if ([bundleCopy bundleType] == 10)
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v12 = objc_opt_class();
    personaUniqueString = [(MILaunchServicesDatabaseGatherer *)self personaUniqueString];
    shouldUpdateAppExtensionDataContainersWithParentID = self->_shouldUpdateAppExtensionDataContainersWithParentID;
    v15 = container != 0;
    v18 = 0;
    v11 = 1;
    LOBYTE(v12) = [v12 enumerateAppExtensionsInBundle:bundleCopy forPersona:personaUniqueString updatingAppExtensionParentID:shouldUpdateAppExtensionDataContainersWithParentID ensureAppExtensionsAreExecutable:v15 installProfiles:1 error:&v18 enumerator:v9];
    v10 = v18;

    if ((v12 & 1) == 0)
    {
      if (error)
      {
        v16 = v10;
        v11 = 0;
        *error = v10;
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

- (BOOL)_markDriverKitExtensionsExecutableInBundle:(id)bundle withError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v5 = [bundle driverKitExtensionBundlesWithError:&v23];
  v6 = v23;
  if (!v5)
  {
    v15 = 0;
    if (!error)
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

  if (error)
  {
LABEL_15:
    if (!v15)
    {
      v16 = v6;
      *error = v6;
    }
  }

LABEL_17:

  return v15;
}

- (id)_setForEntry:(id)entry
{
  entryCopy = entry;
  applicationType = [entryCopy applicationType];
  if (applicationType <= 2)
  {
    if (applicationType == 1)
    {
      coreServices = [(MILaunchServicesDatabaseGatherer *)self coreServices];
      goto LABEL_16;
    }

    if (applicationType == 2)
    {
      coreServices = [(MILaunchServicesDatabaseGatherer *)self systemApps];
      goto LABEL_16;
    }
  }

  else
  {
    switch(applicationType)
    {
      case 3:
        coreServices = [(MILaunchServicesDatabaseGatherer *)self systemAppPlaceholders];
        goto LABEL_16;
      case 4:
        coreServices = [(MILaunchServicesDatabaseGatherer *)self userApps];
        goto LABEL_16;
      case 5:
        coreServices = [(MILaunchServicesDatabaseGatherer *)self internalApps];
LABEL_16:
        v7 = coreServices;
        goto LABEL_17;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    coreServices = [(MILaunchServicesDatabaseGatherer *)self appExtensions];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    coreServices = [(MILaunchServicesDatabaseGatherer *)self frameworks];
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

- (BOOL)_scanBundle:(id)bundle inContainer:(id)container addingToBundleSet:(id)set enumeratingEntry:(id)entry withError:(id *)error
{
  v58 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  containerCopy = container;
  setCopy = set;
  entryCopy = entry;
  identifier = [bundleCopy identifier];
  v17 = [setCopy containsObject:identifier];

  if (v17)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      identifier2 = [bundleCopy identifier];
      bundleURL = [bundleCopy bundleURL];
      path = [bundleURL path];
      MOLogWrite();
    }

    v20 = 0;
LABEL_6:
    v21 = 1;
    goto LABEL_41;
  }

  if (entryCopy)
  {
    enumerator = [(MILaunchServicesDatabaseGatherer *)self enumerator];
    (enumerator)[2](enumerator, entryCopy, 0);
  }

  identifier3 = [bundleCopy identifier];
  [setCopy addObject:identifier3];

  if (MILogHandleForSignpost_onceToken_0 != -1)
  {
    [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
  }

  v24 = MILogHandleForSignpost_logHandle_0;
  if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
  {
    v25 = v24;
    bundleURL2 = [bundleCopy bundleURL];
    path2 = [bundleURL2 path];
    *buf = 138412290;
    v57 = path2;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v25, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ScanPlugins", "Scanning plugins in bundle at %@", buf, 0xCu);
  }

  v55 = 0;
  v28 = [(MILaunchServicesDatabaseGatherer *)self _scanAppExtensionsInBundle:bundleCopy inBundleContainer:containerCopy withError:&v55];
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
      bundleURL3 = [bundleCopy bundleURL];
      path3 = [bundleURL3 path];
      *buf = 138412290;
      v57 = path3;
      _os_signpost_emit_with_name_impl(&dword_1B16A0000, v44, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ScanPlugins", "[FAIL] Done scanning plugins in bundle at %@", buf, 0xCu);
    }

    if (!error)
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
    bundleURL4 = [bundleCopy bundleURL];
    path4 = [bundleURL4 path];
    *buf = 138412290;
    v57 = path4;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v30, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ScanPlugins", "Done scanning plugins in bundle at %@", buf, 0xCu);
  }

  if (!containerCopy)
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
    bundleURL5 = [bundleCopy bundleURL];
    path5 = [bundleURL5 path];
    *buf = 138412290;
    v57 = path5;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v34, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MarkDriverKitExtensionsExecutable", "Mark DriverKit extensions in bundle as executable at %@", buf, 0xCu);
  }

  v54 = v20;
  v37 = [(MILaunchServicesDatabaseGatherer *)self _markDriverKitExtensionsExecutableInBundle:bundleCopy withError:&v54];
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
      bundleURL6 = [bundleCopy bundleURL];
      path6 = [bundleURL6 path];
      *buf = 138412290;
      v57 = path6;
      _os_signpost_emit_with_name_impl(&dword_1B16A0000, v49, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MarkDriverKitExtensionsExecutable", "[FAIL] Done marking DriverKit extensions in bundle as executable at %@", buf, 0xCu);
    }

    v20 = v38;
    if (!error)
    {
LABEL_40:
      v21 = 0;
      goto LABEL_41;
    }

LABEL_34:
    v47 = v20;
    v21 = 0;
    *error = v20;
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
    bundleURL7 = [bundleCopy bundleURL];
    path7 = [bundleURL7 path];
    *buf = 138412290;
    v57 = path7;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v40, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MarkDriverKitExtensionsExecutable", "Done marking DriverKit extensions in bundle as executable at %@", buf, 0xCu);
  }

  v21 = 1;
  v20 = v38;
LABEL_41:

  return v21;
}

- (BOOL)scanExecutableBundle:(id)bundle inContainer:(id)container forPersona:(id)persona withError:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  containerCopy = container;
  personaCopy = persona;
  if (MILogHandleForSignpost_onceToken_0 != -1)
  {
    [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
  }

  v13 = MILogHandleForSignpost_logHandle_0;
  if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
  {
    v14 = v13;
    bundleURL = [bundleCopy bundleURL];
    path = [bundleURL path];
    *buf = 138412290;
    v38 = path;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ScanBundle", "Scanning bundle at %@", buf, 0xCu);
  }

  v36 = 0;
  v17 = [objc_opt_class() entryForBundle:bundleCopy inContainer:containerCopy forPersona:personaCopy withError:&v36];
  v18 = v36;
  if (v17)
  {
    v19 = [(MILaunchServicesDatabaseGatherer *)self _setForEntry:v17];
    if (v19)
    {
      v21 = v19;
      v35 = v18;
      v22 = [(MILaunchServicesDatabaseGatherer *)self _scanBundle:bundleCopy inContainer:containerCopy addingToBundleSet:v19 enumeratingEntry:v17 withError:&v35];
      v23 = v35;

      v18 = v21;
    }

    else
    {
      v23 = _CreateAndLogError("[MILaunchServicesDatabaseGatherer scanExecutableBundle:inContainer:forPersona:withError:]", 568, @"MIInstallerErrorDomain", 4, 0, 0, @"Could not find appropriate set for app %@", v20, v17);
      v22 = 0;
    }

    v18 = v23;
    if (!error)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v22 = 0;
    if (!error)
    {
      goto LABEL_14;
    }
  }

  if (!v22)
  {
    v24 = v18;
    *error = v18;
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
    enumerator = [(MILaunchServicesDatabaseGatherer *)self enumerator];

    if (enumerator)
    {
      enumerator2 = [(MILaunchServicesDatabaseGatherer *)self enumerator];
      (enumerator2)[2](enumerator2, 0, v18);
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
      bundleURL2 = [bundleCopy bundleURL];
      path2 = [bundleURL2 path];
      *buf = 138412290;
      v38 = path2;
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
      bundleURL2 = [bundleCopy bundleURL];
      path2 = [bundleURL2 path];
      *buf = 138412290;
      v38 = path2;
      v32 = "[FAIL] Done scanning bundle at %@";
      goto LABEL_29;
    }
  }

  return v22;
}

- (BOOL)scanAppExtensionsInFrameworkBundle:(id)bundle withError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  if (MILogHandleForSignpost_onceToken_0 != -1)
  {
    [MILaunchServicesDatabaseGatherer _scanBundle:inContainer:addingToBundleSet:enumeratingEntry:withError:];
  }

  v7 = MILogHandleForSignpost_logHandle_0;
  if (os_signpost_enabled(MILogHandleForSignpost_logHandle_0))
  {
    v8 = v7;
    bundleURL = [bundleCopy bundleURL];
    path = [bundleURL path];
    *buf = 138412290;
    v27 = path;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ScanBundle", "Scanning framework at %@", buf, 0xCu);
  }

  frameworks = [(MILaunchServicesDatabaseGatherer *)self frameworks];
  v25 = 0;
  v12 = [(MILaunchServicesDatabaseGatherer *)self _scanBundle:bundleCopy inContainer:0 addingToBundleSet:frameworks enumeratingEntry:0 withError:&v25];
  v13 = v25;

  if (error && !v12)
  {
    v14 = v13;
    *error = v13;
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
    enumerator = [(MILaunchServicesDatabaseGatherer *)self enumerator];

    if (enumerator)
    {
      enumerator2 = [(MILaunchServicesDatabaseGatherer *)self enumerator];
      (enumerator2)[2](enumerator2, 0, v13);
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
      bundleURL2 = [bundleCopy bundleURL];
      path2 = [bundleURL2 path];
      *buf = 138412290;
      v27 = path2;
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
      bundleURL2 = [bundleCopy bundleURL];
      path2 = [bundleURL2 path];
      *buf = 138412290;
      v27 = path2;
      v22 = "[FAIL] Done scanning framework at %@";
      goto LABEL_23;
    }
  }

  return v12;
}

- (void)errorOccurred:(id)occurred
{
  occurredCopy = occurred;
  enumerator = [(MILaunchServicesDatabaseGatherer *)self enumerator];

  if (enumerator)
  {
    enumerator2 = [(MILaunchServicesDatabaseGatherer *)self enumerator];
    (enumerator2)[2](enumerator2, 0, occurredCopy);
  }
}

- (BOOL)performGatherWithError:(id *)error
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
  personaUniqueString = [(MILaunchServicesDatabaseGatherer *)self personaUniqueString];
  v9 = [(MIFilesystemScanner *)v7 initWithScanOptions:v6 | v5 personaUniqueString:personaUniqueString];

  [(MIFilesystemScanner *)v9 setDelegate:self];
  v10 = +[MIDaemonConfiguration sharedInstance];
  [v10 reScanSystemApps];

  v11 = +[MIDaemonConfiguration sharedInstance];
  [v11 reScanInternalApps];

  v12 = +[MIDaemonConfiguration sharedInstance];
  [v12 reScanCoreServicesApps];

  v13 = +[MIKeychainAccessGroupTracker sharedTracker];
  [v13 invalidateCache];

  v14 = [(MIFilesystemScanner *)v9 performScanWithError:error];
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