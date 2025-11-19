@interface MIFilesystemScanner
- (BOOL)_scanAppsDirectory:(id)a3 withError:(id *)a4;
- (BOOL)_scanBundleContainersWithClass:(unint64_t)a3 withError:(id *)a4 ignoredErrorOccurredOnOneOrMoreItems:(BOOL *)a5;
- (BOOL)_scanExtensionKitDirectory:(id)a3 withError:(id *)a4;
- (BOOL)_scanExtensionKitLocations:(id)a3 withError:(id *)a4;
- (BOOL)_scanFrameworkDirectory:(id)a3 withError:(id *)a4;
- (BOOL)_scanFrameworksLocationsWithError:(id *)a3;
- (BOOL)performScanWithError:(id *)a3;
- (MIFilesystemScanner)init;
- (MIFilesystemScanner)initWithScanOptions:(unint64_t)a3;
- (MIFilesystemScanner)initWithScanOptions:(unint64_t)a3 personaUniqueString:(id)a4;
- (MIFilesystemScannerDelegate)delegate;
- (id)builtInExtensionKitExtensionsDirectories;
@end

@implementation MIFilesystemScanner

- (BOOL)_scanAppsDirectory:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v7 = +[MIFileManager defaultManager];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__MIFilesystemScanner__scanAppsDirectory_withError___block_invoke;
  v17[3] = &unk_1E7AE1AC0;
  v17[4] = self;
  v17[5] = v18;
  v8 = [v7 enumerateURLsForItemsInDirectoryAtURL:v6 ignoreSymlinks:1 withBlock:v17];

  if (!v8)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v16 = [v6 path];
      MOLogWrite();
    }

    v8 = 0;
    goto LABEL_9;
  }

  v9 = [v8 domain];
  if ([v9 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v10 = [v8 code];

    if (v10 != 2)
    {
      goto LABEL_11;
    }

LABEL_9:
    v12 = 1;
    goto LABEL_15;
  }

LABEL_11:
  v13 = _CreateAndLogError("[MIFilesystemScanner _scanAppsDirectory:withError:]", 76, @"MIInstallerErrorDomain", 27, v8, 0, @"Failed to enumerate %@", v11, v6);

  if (a4)
  {
    v14 = v13;
    v12 = 0;
    *a4 = v13;
  }

  else
  {
    v12 = 0;
  }

  v8 = v13;
LABEL_15:

  _Block_object_dispose(v18, 8);
  return v12;
}

uint64_t __52__MIFilesystemScanner__scanAppsDirectory_withError___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 4)
  {
    v7 = [v5 pathExtension];
    if (![v7 isEqualToString:@"app"])
    {
LABEL_19:

      goto LABEL_20;
    }

    v26 = 0;
    v8 = [(MIBundle *)MIExecutableBundle bundleForURL:v6 error:&v26];
    v9 = v26;
    v10 = v9;
    if (v8)
    {
      if (([v8 isPlaceholder] & 1) != 0 || (objc_msgSend(v8, "executableURL"), (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (v12 = v11, +[MIFileManager defaultManager](MIFileManager, "defaultManager"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "executableURL"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "itemDoesNotExistAtURL:", v14), v14, v13, v12, !v15))
      {
        v19 = [*(a1 + 32) delegate];
        v20 = [*(a1 + 32) personaUniqueString];
        v25 = v10;
        v21 = [v19 scanExecutableBundle:v8 inContainer:0 forPersona:v20 withError:&v25];
        v22 = v25;

        if (v21)
        {
          ++*(*(*(a1 + 40) + 8) + 24);
        }

        v10 = v22;
        goto LABEL_18;
      }

      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
LABEL_18:

        goto LABEL_19;
      }

      v16 = [v8 bundleURL];
      v17 = [v16 path];
      v18 = [v8 executableURL];
      v24 = [v18 path];
      MOLogWrite();
    }

    else
    {
      if (_IsMalformedBundleError(v9) || gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_18;
      }

      v16 = [v6 path];
      MOLogWrite();
    }

    goto LABEL_18;
  }

LABEL_20:

  return 1;
}

- (BOOL)_scanFrameworkDirectory:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v7 = +[MIFileManager defaultManager];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__MIFilesystemScanner__scanFrameworkDirectory_withError___block_invoke;
  v17[3] = &unk_1E7AE1AC0;
  v17[4] = self;
  v17[5] = v18;
  v8 = [v7 enumerateURLsForItemsInDirectoryAtURL:v6 ignoreSymlinks:1 withBlock:v17];

  if (!v8)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v16 = [v6 path];
      MOLogWrite();
    }

    v8 = 0;
    goto LABEL_9;
  }

  v9 = [v8 domain];
  if ([v9 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v10 = [v8 code];

    if (v10 != 2)
    {
      goto LABEL_11;
    }

LABEL_9:
    v12 = 1;
    goto LABEL_15;
  }

LABEL_11:
  v13 = _CreateAndLogError("[MIFilesystemScanner _scanFrameworkDirectory:withError:]", 159, @"MIInstallerErrorDomain", 27, v8, 0, @"Failed to enumerate %@", v11, v6);

  if (a4)
  {
    v14 = v13;
    v12 = 0;
    *a4 = v13;
  }

  else
  {
    v12 = 0;
  }

  v8 = v13;
LABEL_15:

  _Block_object_dispose(v18, 8);
  return v12;
}

uint64_t __57__MIFilesystemScanner__scanFrameworkDirectory_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pathExtension];
  if ([v4 isEqualToString:@"framework"] && !+[MIBundle bundleIsInDenyList:](MIBundle, "bundleIsInDenyList:", v3))
  {
    v5 = *(*(a1 + 32) + 16);
    if ((v5 & 0x80) != 0)
    {
      v6 = [v3 URLByAppendingPathComponent:@"PlugIns" isDirectory:1];
      v7 = +[MIFileManager defaultManager];
      v8 = [v7 itemDoesNotExistAtURL:v6];

      if (v8)
      {
        v9 = [v3 URLByAppendingPathComponent:@"Extensions" isDirectory:1];
        v10 = +[MIFileManager defaultManager];
        v11 = [v10 itemDoesNotExistAtURL:v9];

        if (v11)
        {

          goto LABEL_21;
        }
      }
    }

    v24 = 0;
    v12 = [(MIBundle *)MIExecutableBundle bundleForURL:v3 error:&v24];
    v13 = v24;
    v14 = v13;
    if (!v12)
    {
      if (_IsMalformedBundleError(v13) || gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_20;
      }

      v16 = [v3 path];
      MOLogWrite();
LABEL_19:

LABEL_20:
      goto LABEL_21;
    }

    v15 = [*(a1 + 32) delegate];
    v16 = v15;
    if ((v5 & 0x80) != 0)
    {
      v23 = v14;
      v20 = [v15 scanAppExtensionsInFrameworkBundle:v12 withError:&v23];
      v19 = v23;

      if ((v20 & 1) == 0)
      {
LABEL_18:
        v14 = v19;
        goto LABEL_19;
      }
    }

    else
    {
      v17 = [*(a1 + 32) personaUniqueString];
      v22 = v14;
      v18 = [v16 scanExecutableBundle:v12 inContainer:0 forPersona:v17 withError:&v22];
      v19 = v22;

      if (!v18)
      {
        goto LABEL_18;
      }
    }

    ++*(*(*(a1 + 40) + 8) + 24);
    goto LABEL_18;
  }

LABEL_21:

  return 1;
}

- (BOOL)_scanFrameworksLocationsWithError:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = +[MIDaemonConfiguration sharedInstance];
  v5 = [v4 allFrameworksDirectories];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v16 = 0;
        v12 = [(MIFilesystemScanner *)self _scanFrameworkDirectory:v11 withError:&v16];
        v13 = v16;
        if (!v12)
        {
          v14 = [(MIFilesystemScanner *)self delegate];
          [v14 errorOccurred:v13];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return 1;
}

- (BOOL)_scanExtensionKitDirectory:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v7 = +[MIFileManager defaultManager];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__MIFilesystemScanner__scanExtensionKitDirectory_withError___block_invoke;
  v17[3] = &unk_1E7AE1AC0;
  v17[4] = self;
  v17[5] = v18;
  v8 = [v7 enumerateURLsForItemsInDirectoryAtURL:v6 ignoreSymlinks:1 withBlock:v17];

  if (!v8)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v16 = [v6 path];
      MOLogWrite();
    }

    v8 = 0;
    goto LABEL_9;
  }

  v9 = [v8 domain];
  if ([v9 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v10 = [v8 code];

    if (v10 != 2)
    {
      goto LABEL_11;
    }

LABEL_9:
    v12 = 1;
    goto LABEL_15;
  }

LABEL_11:
  v13 = _CreateAndLogError("[MIFilesystemScanner _scanExtensionKitDirectory:withError:]", 227, @"MIInstallerErrorDomain", 27, v8, 0, @"Failed to enumerate %@", v11, v6);

  if (a4)
  {
    v14 = v13;
    v12 = 0;
    *a4 = v13;
  }

  else
  {
    v12 = 0;
  }

  v8 = v13;
LABEL_15:

  _Block_object_dispose(v18, 8);
  return v12;
}

uint64_t __60__MIFilesystemScanner__scanExtensionKitDirectory_withError___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 4)
  {
    v7 = [v5 pathExtension];
    if (![v7 isEqualToString:@"appex"])
    {
LABEL_9:

      goto LABEL_10;
    }

    v17 = 0;
    v8 = [(MIBundle *)MIExtensionKitBundle bundleForURL:v6 error:&v17];
    v9 = v17;
    v10 = v9;
    if (v8)
    {
      v11 = [*(a1 + 32) delegate];
      v12 = [*(a1 + 32) personaUniqueString];
      v16 = v10;
      v13 = [v11 scanExecutableBundle:v8 inContainer:0 forPersona:v12 withError:&v16];
      v14 = v16;

      if (v13)
      {
        ++*(*(*(a1 + 40) + 8) + 24);
      }

      v10 = v14;
    }

    else
    {
      if (_IsMalformedBundleError(v9) || gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_8;
      }

      v11 = [v6 path];
      MOLogWrite();
    }

LABEL_8:
    goto LABEL_9;
  }

LABEL_10:

  return 1;
}

- (id)builtInExtensionKitExtensionsDirectories
{
  v2 = +[MIDaemonConfiguration sharedInstance];
  v3 = [v2 builtInExtensionKitExtensionsDirectories];

  return v3;
}

- (BOOL)_scanExtensionKitLocations:(id)a3 withError:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v15 = 0;
        v11 = [(MIFilesystemScanner *)self _scanExtensionKitDirectory:v10 withError:&v15];
        v12 = v15;
        if (!v11)
        {
          v13 = [(MIFilesystemScanner *)self delegate];
          [v13 errorOccurred:v12];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return 1;
}

- (BOOL)_scanBundleContainersWithClass:(unint64_t)a3 withError:(id *)a4 ignoredErrorOccurredOnOneOrMoreItems:(BOOL *)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = objc_autoreleasePoolPush();
  v40 = self;
  v10 = [(MIFilesystemScanner *)self personaUniqueString];
  if (v10)
  {
    v49 = 0;
    v11 = &v49;
    v12 = [(MIContainer *)MIBundleContainer containersWithClass:a3 personaUniqueString:v10 error:&v49];
  }

  else
  {
    v48 = 0;
    v11 = &v48;
    v12 = [(MIContainer *)MIBundleContainer containersWithClass:a3 error:&v48];
  }

  v13 = v12;
  v15 = *v11;
  if (v13)
  {
    v42 = [(MIFilesystemScanner *)v40 delegate];
    if (!v42 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      MOLogWrite();
    }

    v35 = v10;
    context = v9;
    v37 = v13;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v13;
    v16 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v16)
    {
      v17 = v16;
      v39 = 0;
      v41 = *v45;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v45 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v44 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          v21 = [v19 bundle];
          v22 = v21;
          if (v21)
          {
            v23 = a5;
            v24 = [v21 emergencyOffloadVersion];
            if (v24 && (!gLogHandle || *(gLogHandle + 44) >= 3))
            {
              v33 = [v22 identifier];
              v34 = v24;
              MOLogWrite();
            }

            v25 = [(MIFilesystemScanner *)v40 personaUniqueString:v33];
            v43 = v15;
            v26 = [v42 scanExecutableBundle:v22 inContainer:v19 forPersona:v25 withError:&v43];
            v27 = v43;

            if (v26)
            {
              ++v39;
              v15 = v27;
              a5 = v23;
            }

            else
            {
              a5 = v23;
              if (v23)
              {
                *v23 = 1;
              }

              v15 = v27;
            }
          }

          else
          {
            if (a5)
            {
              *a5 = 1;
            }

            v24 = [v19 identifier];
            v29 = _CreateAndLogError("[MIFilesystemScanner _scanBundleContainersWithClass:withError:ignoredErrorOccurredOnOneOrMoreItems:]", 289, @"MIInstallerErrorDomain", 36, 0, 0, @"No bundle found in container %@ skipping.", v28, v24);;
            [v42 errorOccurred:v29];
          }

          objc_autoreleasePoolPop(v20);
        }

        v17 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v17);
    }

    objc_autoreleasePoolPop(context);
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }

    v13 = v37;
  }

  else
  {
    v30 = _CreateAndLogError("[MIFilesystemScanner _scanBundleContainersWithClass:withError:ignoredErrorOccurredOnOneOrMoreItems:]", 275, @"MIInstallerErrorDomain", 4, v15, 0, @"Failed to scan for bundle containers of content class %ld", v14, a3);

    objc_autoreleasePoolPop(v9);
    if (a4)
    {
      v31 = v30;
      *a4 = v30;
    }

    v15 = v30;
  }

  return v13 != 0;
}

- (MIFilesystemScanner)initWithScanOptions:(unint64_t)a3 personaUniqueString:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MIFilesystemScanner;
  v8 = [(MIFilesystemScanner *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_options = a3;
    objc_storeStrong(&v8->_personaUniqueString, a4);
  }

  return v9;
}

- (MIFilesystemScanner)initWithScanOptions:(unint64_t)a3
{
  v5 = +[MIDaemonConfiguration sharedInstance];
  v6 = [v5 primaryPersonaString];
  v7 = [(MIFilesystemScanner *)self initWithScanOptions:a3 personaUniqueString:v6];

  return v7;
}

- (MIFilesystemScanner)init
{
  v3 = +[MIDaemonConfiguration sharedInstance];
  v4 = [v3 primaryPersonaString];
  v5 = [(MIFilesystemScanner *)self initWithScanOptions:8063 personaUniqueString:v4];

  return v5;
}

- (BOOL)performScanWithError:(id *)a3
{
  v139 = *MEMORY[0x1E69E9840];
  v4 = +[MIFileManager defaultManager];
  v5 = [(MIFilesystemScanner *)self delegate];
  v6 = [(MIFilesystemScanner *)self options];
  if (v6)
  {
    v130 = 0;
    v8 = [(MIFilesystemScanner *)self _scanBundleContainersWithClass:1 withError:&v130 ignoredErrorOccurredOnOneOrMoreItems:0];
    v7 = v130;
    if (!v8)
    {
      [v5 errorOccurred:v7];
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = +[ICLFeatureFlags appReferencesEnabled];
  if ((v6 & 0x400) != 0 && v9)
  {
    v129 = v7;
    v10 = [(MIFilesystemScanner *)self _scanBundleContainersWithClass:14 withError:&v129 ignoredErrorOccurredOnOneOrMoreItems:0];
    v11 = v129;

    if (!v10)
    {
      [v5 errorOccurred:v11];
    }
  }

  else
  {
    v11 = v7;
  }

  v102 = v5;
  v103 = self;
  if ((v6 & 2) == 0)
  {
    v12 = v11;
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_12;
    }

LABEL_22:
    v16 = v12;
    if ((v6 & 8) != 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    v23 = v16;
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v17 = +[MIDaemonConfiguration sharedInstance];
  v18 = [v17 systemAppsDirectory];
  v128 = v11;
  v19 = [(MIFilesystemScanner *)self _scanAppsDirectory:v18 withError:&v128];
  v12 = v128;

  if (v19)
  {
    v5 = v102;
  }

  else
  {
    v5 = v102;
    [v102 errorOccurred:v12];
  }

  if ((v6 & 0x20) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v13 = +[MIDaemonConfiguration sharedInstance];
  v14 = [v13 coreServicesDirectory];
  v127 = v12;
  v15 = [(MIFilesystemScanner *)self _scanAppsDirectory:v14 withError:&v127];
  v16 = v127;

  if (v15)
  {
    v5 = v102;
  }

  else
  {
    v5 = v102;
    [v102 errorOccurred:v16];
  }

  if ((v6 & 8) == 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  v20 = +[MIDaemonConfiguration sharedInstance];
  v21 = [v20 internalAppsDirectory];
  v126 = v16;
  v22 = [(MIFilesystemScanner *)self _scanAppsDirectory:v21 withError:&v126];
  v23 = v126;

  if (v22)
  {
    v5 = v102;
  }

  else
  {
    v5 = v102;
    [v102 errorOccurred:v23];
  }

  if ((v6 & 0x40) == 0)
  {
LABEL_28:
    v27 = v23;
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

LABEL_24:
  v24 = +[MIDaemonConfiguration sharedInstance];
  v25 = [v24 systemAppPlaceholdersDirectory];
  v125 = v23;
  v26 = [(MIFilesystemScanner *)self _scanAppsDirectory:v25 withError:&v125];
  v27 = v125;

  if (v26)
  {
    v5 = v102;
  }

  else
  {
    v5 = v102;
    [v102 errorOccurred:v27];
  }

  if ((v6 & 0x10) != 0)
  {
LABEL_29:
    v124 = v27;
    v28 = [(MIFilesystemScanner *)self _scanFrameworksLocationsWithError:&v124];
    v29 = v124;

    if (!v28)
    {
      [v5 errorOccurred:v29];
    }

    if ((v6 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  v29 = v27;
  if ((v6 & 0x800) == 0)
  {
LABEL_32:
    v30 = v29;
    goto LABEL_38;
  }

LABEL_36:
  v31 = [(MIFilesystemScanner *)self builtInExtensionKitExtensionsDirectories];
  v123 = v29;
  v32 = [(MIFilesystemScanner *)self _scanExtensionKitLocations:v31 withError:&v123];
  v30 = v123;

  if (!v32)
  {
    [v5 errorOccurred:v30];
  }

LABEL_38:
  if ((v6 & 0x200) != 0)
  {
    v33 = +[MIDaemonConfiguration sharedInstance];
    v34 = [v33 cryptexAppsDirectory];
    v122 = v30;
    v35 = [v4 realPathForURL:v34 allowNonExistentPathComponents:0 isDirectory:1 error:&v122];
    v36 = v122;

    if (v35)
    {
      v121 = v36;
      v37 = [(MIFilesystemScanner *)self _scanAppsDirectory:v35 withError:&v121];
      v38 = v121;

      v36 = v38;
      v5 = v102;
      if (v37)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v39 = [v36 domain];
      v5 = v102;
      if ([v39 isEqualToString:*MEMORY[0x1E696A798]])
      {
        v40 = [v36 code];

        if (v40 == 2)
        {
          goto LABEL_47;
        }
      }

      else
      {
      }
    }

    [v5 errorOccurred:v36];
LABEL_47:

    v30 = v36;
  }

  v100 = v6;
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_67;
  }

  v41 = +[MIDaemonConfiguration sharedInstance];
  v42 = [v41 cryptexFrameworksDirectories];

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v43 = v42;
  v44 = [v43 countByEnumeratingWithState:&v117 objects:v137 count:16];
  if (!v44)
  {
    goto LABEL_64;
  }

  v45 = v44;
  v46 = *v118;
  v47 = *MEMORY[0x1E696A798];
  do
  {
    for (i = 0; i != v45; ++i)
    {
      if (*v118 != v46)
      {
        objc_enumerationMutation(v43);
      }

      v49 = *(*(&v117 + 1) + 8 * i);

      v116 = 0;
      v50 = [v4 realPathForURL:v49 allowNonExistentPathComponents:0 isDirectory:1 error:&v116];
      v51 = v116;
      v30 = v51;
      if (v50)
      {
        v115 = v51;
        v52 = [(MIFilesystemScanner *)v103 _scanAppsDirectory:v50 withError:&v115];
        v53 = v115;

        v30 = v53;
        if (!v52)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v54 = [v51 domain];
        if (([v54 isEqualToString:v47] & 1) == 0)
        {

LABEL_61:
          [v102 errorOccurred:v30];
          goto LABEL_62;
        }

        v55 = [v30 code];

        if (v55 != 2)
        {
          goto LABEL_61;
        }
      }

LABEL_62:
    }

    v45 = [v43 countByEnumeratingWithState:&v117 objects:v137 count:16];
  }

  while (v45);
LABEL_64:
  v56 = v30;

  v57 = +[MIDaemonConfiguration sharedInstance];
  v58 = [v57 cryptexExtensionKitExtensionsDirectories];
  v114 = v30;
  v59 = [(MIFilesystemScanner *)v103 _scanExtensionKitLocations:v58 withError:&v114];
  v30 = v114;

  v5 = v102;
  if (!v59)
  {
    [v102 errorOccurred:v30];
  }

  v6 = v100;
LABEL_67:
  v101 = v4;
  if ((v6 & 4) != 0)
  {
    v60 = [MEMORY[0x1E695DF70] array];
    v61 = MIDiskImageManagerProxy();
    v62 = [v61 attachedContentPathsForEntityType:1];

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v63 = v62;
    v64 = [v63 countByEnumeratingWithState:&v131 objects:v138 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v132;
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v132 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v68 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v131 + 1) + 8 * j) isDirectory:1];
          v69 = [v68 URLByAppendingPathComponent:@"Applications" isDirectory:1];
          [v60 addObject:v69];
        }

        v65 = [v63 countByEnumeratingWithState:&v131 objects:v138 count:16];
      }

      while (v65);
    }

    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v99 = v60;
      MOLogWrite();
    }

    v70 = [v60 copy];

    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v71 = v70;
    v72 = [v71 countByEnumeratingWithState:&v110 objects:v136 count:16];
    v5 = v102;
    if (v72)
    {
      v73 = v72;
      v74 = *v111;
      do
      {
        v75 = 0;
        v76 = v30;
        do
        {
          if (*v111 != v74)
          {
            objc_enumerationMutation(v71);
          }

          v77 = *(*(&v110 + 1) + 8 * v75);
          v109 = v76;
          v78 = [(MIFilesystemScanner *)v103 _scanAppsDirectory:v77 withError:&v109];
          v30 = v109;

          if (!v78)
          {
            [v102 errorOccurred:v30];
          }

          ++v75;
          v76 = v30;
        }

        while (v73 != v75);
        v73 = [v71 countByEnumeratingWithState:&v110 objects:v136 count:16];
      }

      while (v73);
    }

    v6 = v100;
    v4 = v101;
  }

  if ((v6 & 0x1000) != 0)
  {
    v79 = [MEMORY[0x1E695DF70] array];
    v80 = MIDiskImageManagerProxy();
    v81 = [v80 attachedContentPathsForEntityType:2];

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v82 = v81;
    v83 = [v82 countByEnumeratingWithState:&v131 objects:v138 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v132;
      do
      {
        for (k = 0; k != v84; ++k)
        {
          if (*v132 != v85)
          {
            objc_enumerationMutation(v82);
          }

          v87 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v131 + 1) + 8 * k) isDirectory:1];
          v88 = [v87 URLByAppendingPathComponent:@"Applications" isDirectory:1];
          [v79 addObject:v88];
        }

        v84 = [v82 countByEnumeratingWithState:&v131 objects:v138 count:16];
      }

      while (v84);
    }

    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v99 = v79;
      MOLogWrite();
    }

    v89 = [v79 copy];

    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v90 = v89;
    v91 = [v90 countByEnumeratingWithState:&v105 objects:v135 count:16];
    v5 = v102;
    if (v91)
    {
      v92 = v91;
      v93 = *v106;
      do
      {
        v94 = 0;
        v95 = v30;
        do
        {
          if (*v106 != v93)
          {
            objc_enumerationMutation(v90);
          }

          v96 = *(*(&v105 + 1) + 8 * v94);
          v104 = v95;
          v97 = [(MIFilesystemScanner *)v103 _scanAppsDirectory:v96 withError:&v104];
          v30 = v104;

          if (!v97)
          {
            [v102 errorOccurred:v30];
          }

          ++v94;
          v95 = v30;
        }

        while (v92 != v94);
        v92 = [v90 countByEnumeratingWithState:&v105 objects:v135 count:16];
      }

      while (v92);
    }

    v4 = v101;
  }

  return 1;
}

- (MIFilesystemScannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end