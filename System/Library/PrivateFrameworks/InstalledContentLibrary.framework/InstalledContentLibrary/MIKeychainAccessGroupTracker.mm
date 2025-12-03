@interface MIKeychainAccessGroupTracker
+ (id)sharedTracker;
- (BOOL)_onQueue_addReferencesForBundle:(id)bundle error:(id *)error;
- (BOOL)_onQueue_removeReferencesForBundle:(id)bundle error:(id *)error;
- (BOOL)_onQueue_updateReferencesWithOldBundle:(id)bundle newBundle:(id)newBundle error:(id *)error;
- (BOOL)_removeGroupsWithError:(id)error error:(id *)a4;
- (MIKeychainAccessGroupTracker)init;
- (id)_keychainAccessGroupsForApp:(id)app error:(id *)error;
- (id)_keychainAccessGroupsForBundle:(id)bundle error:(id *)error;
- (void)_onQueue_discoverReferences;
@end

@implementation MIKeychainAccessGroupTracker

+ (id)sharedTracker
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MIKeychainAccessGroupTracker_sharedTracker__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedTracker_onceToken != -1)
  {
    dispatch_once(&sharedTracker_onceToken, block);
  }

  v2 = sharedTracker_sharedInstance;

  return v2;
}

uint64_t __45__MIKeychainAccessGroupTracker_sharedTracker__block_invoke()
{
  sharedTracker_sharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (MIKeychainAccessGroupTracker)init
{
  v8.receiver = self;
  v8.super_class = MIKeychainAccessGroupTracker;
  v2 = [(MIKeychainAccessGroupTracker *)&v8 init];
  if (v2 && (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v3 = objc_claimAutoreleasedReturnValue(), v4 = dispatch_queue_create("com.apple.installd.MIKeychainAccessGroupTracker", v3), q = v2->_q, v2->_q = v4, q, v3, !v2->_q))
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  return v6;
}

- (void)_onQueue_discoverReferences
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [(MIKeychainAccessGroupTracker *)self q];
  dispatch_assert_queue_V2(v3);

  mach_absolute_time();
  v4 = objc_opt_new();
  v5 = +[MIDaemonConfiguration sharedInstance];
  systemAppBundleIDToInfoMap = [v5 systemAppBundleIDToInfoMap];

  if (systemAppBundleIDToInfoMap)
  {
    [v4 addObject:systemAppBundleIDToInfoMap];
  }

  v7 = +[MIDaemonConfiguration sharedInstance];
  internalAppBundleIDToInfoMap = [v7 internalAppBundleIDToInfoMap];

  if (internalAppBundleIDToInfoMap)
  {
    [v4 addObject:internalAppBundleIDToInfoMap];
  }

  v9 = +[MIDaemonConfiguration sharedInstance];
  coreServicesAppBundleIDToInfoMap = [v9 coreServicesAppBundleIDToInfoMap];

  if (coreServicesAppBundleIDToInfoMap)
  {
    [v4 addObject:coreServicesAppBundleIDToInfoMap];
  }

  v11 = objc_opt_new();
  [(MIKeychainAccessGroupTracker *)self setRefs:v11];

  v43 = 0;
  v12 = [MIBundleContainer allAppBundleContainersWithError:&v43];
  v13 = v43;
  if (v12)
  {
    v30 = v12;
    v32 = v4;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v39 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
    v31 = coreServicesAppBundleIDToInfoMap;
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v39 + 1) + 8 * i);
          bundle = [v19 bundle];
          if (bundle)
          {
            v38 = v13;
            v21 = [(MIKeychainAccessGroupTracker *)self _onQueue_addReferencesForBundle:bundle error:&v38];
            v22 = v38;

            if (!v21 && gLogHandle && *(gLogHandle + 44) >= 7)
            {
              v29 = bundle;
              MOLogWrite();
            }

            v13 = v22;
          }

          else if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v29 = v19;
            MOLogWrite();
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v16);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = v32;
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v34 + 1) + 8 * j);
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __59__MIKeychainAccessGroupTracker__onQueue_discoverReferences__block_invoke;
          v33[3] = &unk_1E7AE1BE0;
          v33[4] = self;
          [v28 enumerateKeysAndObjectsUsingBlock:{v33, v29}];
        }

        v25 = [v23 countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v25);
    }

    mach_absolute_time();
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }

    coreServicesAppBundleIDToInfoMap = v31;
    v4 = v32;
    v12 = v30;
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }
}

void __59__MIKeychainAccessGroupTracker__onQueue_discoverReferences__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"com.apple.MobileInstallation.bundleURL"];
  if (v6)
  {
    v14 = 0;
    v7 = [(MIBundle *)MIExecutableBundle bundleForURL:v6 error:&v14];
    v8 = v14;
    if (v7)
    {
      v9 = *(a1 + 32);
      v13 = v8;
      v10 = [v9 _onQueue_addReferencesForBundle:v7 error:&v13];
      v11 = v13;

      if ((v10 & 1) == 0 && gLogHandle && *(gLogHandle + 44) >= 7)
      {
        MOLogWrite();
      }

      v8 = v11;
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v12 = [v6 path];
      MOLogWrite();
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (BOOL)_onQueue_addReferencesForBundle:(id)bundle error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v7 = [(MIKeychainAccessGroupTracker *)self q];
  dispatch_assert_queue_V2(v7);

  refs = [(MIKeychainAccessGroupTracker *)self refs];

  if (!refs)
  {
    [(MIKeychainAccessGroupTracker *)self _onQueue_discoverReferences];
  }

  v25 = 0;
  v9 = [(MIKeychainAccessGroupTracker *)self _keychainAccessGroupsForApp:bundleCopy error:&v25];
  v10 = v25;
  if (v9)
  {
    if (![v9 count])
    {
      goto LABEL_19;
    }

    errorCopy = error;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          refs2 = [(MIKeychainAccessGroupTracker *)self refs];
          [refs2 addObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v13);
    }

    error = errorCopy;
  }

  else if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    MOLogWrite();
  }

  if (error && !v9)
  {
    v18 = v10;
    *error = v10;
  }

LABEL_19:

  return v9 != 0;
}

- (BOOL)_onQueue_updateReferencesWithOldBundle:(id)bundle newBundle:(id)newBundle error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  newBundleCopy = newBundle;
  v9 = [(MIKeychainAccessGroupTracker *)self q];
  dispatch_assert_queue_V2(v9);

  v10 = objc_opt_new();
  refs = [(MIKeychainAccessGroupTracker *)self refs];

  if (!refs)
  {
    [(MIKeychainAccessGroupTracker *)self _onQueue_discoverReferences];
  }

  v53 = 0;
  v12 = [(MIKeychainAccessGroupTracker *)self _keychainAccessGroupsForApp:bundleCopy error:&v53];
  v13 = v53;
  v14 = v13;
  if (!v12)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v15 = 0;
    if (!error)
    {
      goto LABEL_47;
    }

    goto LABEL_16;
  }

  v52 = v13;
  v15 = [(MIKeychainAccessGroupTracker *)self _keychainAccessGroupsForApp:newBundleCopy error:&v52];
  v16 = v52;

  if (!v15)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v15 = 0;
    v14 = v16;
    if (!error)
    {
      goto LABEL_47;
    }

    goto LABEL_16;
  }

  if (([v12 isEqualToSet:v15] & 1) == 0)
  {
    errorCopy = error;
    v39 = v16;
    v41 = v10;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v40 = v12;
    v19 = v12;
    v20 = [v19 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v49;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v49 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v48 + 1) + 8 * i);
          if (([v15 containsObject:v24] & 1) == 0)
          {
            if (!gLogHandle || *(gLogHandle + 44) >= 5)
            {
              identifier = [newBundleCopy identifier];
              v37 = v24;
              MOLogWrite();
            }

            v25 = [(MIKeychainAccessGroupTracker *)self refs:identifier];
            [v25 removeObject:v24];

            refs2 = [(MIKeychainAccessGroupTracker *)self refs];
            v27 = [refs2 countForObject:v24];

            if (!v27)
            {
              [v41 addObject:v24];
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v21);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v15 = v15;
    v28 = [v15 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v45;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v45 != v30)
          {
            objc_enumerationMutation(v15);
          }

          v32 = *(*(&v44 + 1) + 8 * j);
          if (([v19 containsObject:v32] & 1) == 0)
          {
            if (!gLogHandle || *(gLogHandle + 44) >= 5)
            {
              identifier = [newBundleCopy identifier];
              v37 = v32;
              MOLogWrite();
            }

            v33 = [(MIKeychainAccessGroupTracker *)self refs:identifier];
            [v33 addObject:v32];
          }
        }

        v29 = [v15 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v29);
    }

    v10 = v41;
    if (![v41 count])
    {
      v17 = 1;
      v12 = v40;
      v16 = v39;
      goto LABEL_49;
    }

    v43 = v39;
    v34 = [(MIKeychainAccessGroupTracker *)self _removeGroupsWithError:v41 error:&v43];
    v14 = v43;

    v12 = v40;
    if (v34)
    {
      v17 = 1;
      goto LABEL_48;
    }

    error = errorCopy;
    if (!errorCopy)
    {
LABEL_47:
      v17 = 0;
      goto LABEL_48;
    }

LABEL_16:
    v18 = v14;
    v17 = 0;
    *error = v14;
LABEL_48:
    v16 = v14;
    goto LABEL_49;
  }

  v17 = 1;
LABEL_49:

  return v17;
}

- (BOOL)_onQueue_removeReferencesForBundle:(id)bundle error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v7 = [(MIKeychainAccessGroupTracker *)self q];
  dispatch_assert_queue_V2(v7);

  v8 = objc_opt_new();
  refs = [(MIKeychainAccessGroupTracker *)self refs];

  if (!refs)
  {
    [(MIKeychainAccessGroupTracker *)self _onQueue_discoverReferences];
  }

  v36 = 0;
  v10 = [(MIKeychainAccessGroupTracker *)self _keychainAccessGroupsForApp:bundleCopy error:&v36];
  v11 = v36;
  v12 = v11;
  if (!v10)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    if (!error)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  errorCopy = error;
  v29 = v11;
  v30 = v10;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        if (!gLogHandle || *(gLogHandle + 44) >= 5)
        {
          identifier = [bundleCopy identifier];
          v27 = v18;
          MOLogWrite();
        }

        v19 = [(MIKeychainAccessGroupTracker *)self refs:identifier];
        [v19 removeObject:v18];

        refs2 = [(MIKeychainAccessGroupTracker *)self refs];
        v21 = [refs2 countForObject:v18];

        if (!v21)
        {
          [v8 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v15);
  }

  if (![v8 count])
  {
    v23 = 1;
    v12 = v29;
    v10 = v30;
    goto LABEL_27;
  }

  v31 = v29;
  v22 = [(MIKeychainAccessGroupTracker *)self _removeGroupsWithError:v8 error:&v31];
  v12 = v31;

  if (!v22)
  {
    error = errorCopy;
    v10 = v30;
    if (!errorCopy)
    {
LABEL_26:
      v23 = 0;
      goto LABEL_27;
    }

LABEL_23:
    v24 = v12;
    v23 = 0;
    *error = v12;
    goto LABEL_27;
  }

  v23 = 1;
  v10 = v30;
LABEL_27:

  return v23;
}

- (BOOL)_removeGroupsWithError:(id)error error:(id *)a4
{
  errorCopy = error;
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    MOLogWrite();
  }

  v7 = SecItemDeleteAllWithAccessGroups();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = _CreateAndLogError("[MIKeychainAccessGroupTracker _removeGroupsWithError:error:]", 373, @"MIInstallerErrorDomain", 125, 0, 0, @"Failed to remove keychain items %@", v6, errorCopy);

    if (a4)
    {
      v9 = v8;
      *a4 = v8;
    }
  }

  return v7;
}

- (id)_keychainAccessGroupsForBundle:(id)bundle error:(id *)error
{
  bundleCopy = bundle;
  v18 = 0;
  v6 = [bundleCopy codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:0 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v18];
  v7 = v18;
  if (v6)
  {
    v8 = objc_opt_new();
    entitlements = [v6 entitlements];
    v10 = MICopyKeychainAccessGroupEntitlement(entitlements);

    if (v10)
    {
      [v8 addObjectsFromArray:v10];
    }

    entitlements2 = [v6 entitlements];
    v12 = MICopyApplicationGroupEntitlement(entitlements2);

    if (v12)
    {
      [v8 addObjectsFromArray:v12];
    }

    entitlements3 = [v6 entitlements];
    v14 = MICopyApplicationIdentifierEntitlement(entitlements3);

    if (v14)
    {
      [v8 addObject:v14];
    }

    v15 = [v8 copy];
  }

  else
  {
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      MOLogWrite();
    }

    if (error)
    {
      v16 = v7;
      v15 = 0;
      *error = v7;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)_keychainAccessGroupsForApp:(id)app error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  appCopy = app;
  v7 = objc_opt_new();
  v50 = 0;
  v8 = [(MIKeychainAccessGroupTracker *)self _keychainAccessGroupsForBundle:appCopy error:&v50];
  v9 = v50;
  if (!v8)
  {
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      MOLogWrite();
    }

    v22 = 0;
    v12 = 0;
    v30 = 0;
    v11 = v9;
    if (!error)
    {
      goto LABEL_38;
    }

LABEL_36:
    if (!v30)
    {
      v31 = v11;
      *error = v11;
    }

    goto LABEL_38;
  }

  [v7 unionSet:v8];
  v49 = v9;
  v10 = [appCopy appExtensionBundlesWithError:&v49];
  v11 = v49;

  if (!v10)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v22 = 0;
    v12 = 0;
    v30 = 0;
    if (!error)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v35 = v8;
  errorCopy = error;
  v37 = v7;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    while (2)
    {
      v16 = 0;
      v17 = v11;
      do
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v45 + 1) + 8 * v16);
        v44 = v17;
        v19 = [(MIKeychainAccessGroupTracker *)self _keychainAccessGroupsForBundle:v18 error:&v44];
        v11 = v44;

        if (!v19)
        {
          v7 = v37;
          if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            MOLogWrite();
          }

          v22 = 0;
          v30 = 0;
          goto LABEL_30;
        }

        [v37 unionSet:v19];

        ++v16;
        v17 = v11;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v20 = v11;

  v43 = v11;
  v21 = [appCopy xpcServiceBundlesWithError:&v43];
  v11 = v43;

  if (!v21)
  {
    v7 = v37;
    v8 = v35;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v22 = 0;
    v30 = 0;
    error = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v34 = appCopy;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    while (2)
    {
      v26 = 0;
      v27 = v11;
      do
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v39 + 1) + 8 * v26);
        v38 = v27;
        v29 = [(MIKeychainAccessGroupTracker *)self _keychainAccessGroupsForBundle:v28 error:&v38];
        v11 = v38;

        if (!v29)
        {
          if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            MOLogWrite();
          }

          v30 = 0;
          appCopy = v34;
          v7 = v37;
          goto LABEL_30;
        }

        [v37 unionSet:v29];

        ++v26;
        v27 = v11;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  v7 = v37;
  v30 = [v37 copy];
  appCopy = v34;
LABEL_30:
  v8 = v35;
  error = errorCopy;
  if (errorCopy)
  {
    goto LABEL_36;
  }

LABEL_38:
  v32 = v30;

  return v30;
}

@end