@interface MIInstalledInfoGatherer
- (BOOL)_populateBundleRecord:(id)a3 error:(id *)a4;
- (BOOL)_populateBundleRecordValues:(id)a3 signingInfo:(id)a4 error:(id *)a5;
- (MIInstalledInfoGatherer)initWithAppExtensionBundle:(id)a3 inBundleIdentifier:(id)a4 dataContainer:(id)a5;
- (MIInstalledInfoGatherer)initWithAppExtensionBundle:(id)a3 inBundleIdentifier:(id)a4 dataContainers:(id)a5;
- (MIInstalledInfoGatherer)initWithBundle:(id)a3 dataContainer:(id)a4;
- (MIInstalledInfoGatherer)initWithBundle:(id)a3 dataContainers:(id)a4;
- (MIInstalledInfoGatherer)initWithBundleContainer:(id)a3 dataContainer:(id)a4;
- (MIInstalledInfoGatherer)initWithBundleContainer:(id)a3 dataContainers:(id)a4;
- (MIInstalledInfoGatherer)initWithBundleContainer:(id)a3 forPersona:(id)a4;
- (MIInstalledInfoGatherer)initWithBundleContainer:(id)a3 forPersonas:(id)a4;
- (id)_buildBundlePersonaRecordWithDataContainer:(id)a3;
- (id)_groupContainersDictionaryForPersona:(id)a3;
- (id)_sandboxEnvironmentForDataContainer:(id)a3;
- (id)_stashedAppRecordForStashedContainer:(id)a3;
- (id)_staticDiskUsage;
- (id)bundleRecordWithError:(id *)a3;
- (void)_fixUpForBuiltInAppParallelPlaceholder;
- (void)_initWithAppExtensionBundle:(id)a3 inBundleIdentifier:(id)a4 dataContainers:(id)a5;
- (void)_initWithBundle:(id)a3 dataContainers:(id)a4;
- (void)_initWithBundleContainer:(id)a3 dataContainers:(id)a4;
- (void)_initWithBundleContainer:(id)a3 forPersonas:(id)a4;
- (void)_populateAppExtensionRecordValues:(id)a3;
- (void)_populateAppRecordValues:(id)a3;
- (void)_populatePlaceholderRecordValues:(id)a3 signingInfo:(id)a4;
@end

@implementation MIInstalledInfoGatherer

- (void)_fixUpForBuiltInAppParallelPlaceholder
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = [(MIInstalledInfoGatherer *)self bundle];
  v4 = [v3 isRemovableSystemApp];

  if ((v4 & 1) == 0)
  {
    v5 = [(MIInstalledInfoGatherer *)self bundle];
    v6 = [v5 bundleType];

    if (v6 <= 5 && ((1 << v6) & 0x26) != 0)
    {
      v7 = [(MIInstalledInfoGatherer *)self bundle];
      v8 = [v7 isPlaceholder];

      if (!v8)
      {
        v14 = [(MIInstalledInfoGatherer *)self bundle];
        if (!v14)
        {
LABEL_62:

          return;
        }

        v15 = [(MIInstalledInfoGatherer *)self bundleContainer];

        if (!v15)
        {
          v16 = [(MIInstalledInfoGatherer *)self bundle];
          v17 = [v16 identifier];
          v60 = 0;
          v18 = [MIBundleContainer appBundleContainerWithIdentifier:v17 createIfNeeded:0 created:0 error:&v60];
          v14 = v60;

          if (v18)
          {
            v19 = [v18 bundle];
            v20 = [v19 isPlaceholder];

            if (v20)
            {
              v21 = [v18 bundle];
              builtInAppParallelPlaceholderBundle = self->_builtInAppParallelPlaceholderBundle;
              self->_builtInAppParallelPlaceholderBundle = v21;
            }

            goto LABEL_62;
          }

          v52 = [v14 domain];
          if ([v52 isEqualToString:@"MIContainerManagerErrorDomain"])
          {
            v53 = [v14 code];

            if (v53 == 21)
            {
              goto LABEL_62;
            }
          }

          else
          {
          }

          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v54 = [(MIInstalledInfoGatherer *)self bundle];
            v56 = [v54 identifier];
            MOLogWrite();
          }

          goto LABEL_62;
        }

LABEL_51:
        v14 = 0;
        goto LABEL_62;
      }

      switch(v6)
      {
        case 5u:
          v27 = +[MIDaemonConfiguration sharedInstance];
          v28 = [v27 coreServicesAppBundleIDToInfoMap];
          v29 = [(MIInstalledInfoGatherer *)self bundle];
          v30 = [v29 identifier];
          v13 = [v28 objectForKeyedSubscript:v30];

          if (v13)
          {
            goto LABEL_23;
          }

          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_51;
          }

          break;
        case 2u:
          v23 = +[MIDaemonConfiguration sharedInstance];
          v24 = [v23 internalAppBundleIDToInfoMap];
          v25 = [(MIInstalledInfoGatherer *)self bundle];
          v26 = [v25 identifier];
          v13 = [v24 objectForKeyedSubscript:v26];

          if (v13)
          {
            goto LABEL_23;
          }

          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_51;
          }

          break;
        case 1u:
          v9 = +[MIDaemonConfiguration sharedInstance];
          v10 = [v9 systemAppBundleIDToInfoMap];
          v11 = [(MIInstalledInfoGatherer *)self bundle];
          v12 = [v11 identifier];
          v13 = [v10 objectForKeyedSubscript:v12];

          if (!v13)
          {
            if (gLogHandle && *(gLogHandle + 44) < 3)
            {
              goto LABEL_51;
            }

            break;
          }

LABEL_23:
          v31 = [v13 objectForKeyedSubscript:@"com.apple.MobileInstallation.bundleURL"];

          if (v31)
          {
            v66 = 0;
            v32 = [(MIBundle *)MIExecutableBundle bundleForURL:v31 error:&v66];
            v14 = v66;
            if (v32)
            {
              v33 = objc_opt_new();
              v62 = 0u;
              v63 = 0u;
              v64 = 0u;
              v65 = 0u;
              v34 = [(MIInstalledInfoGatherer *)self personaUniqueStrings];
              v35 = [(MIBundleContainer *)v34 countByEnumeratingWithState:&v62 objects:v67 count:16];
              if (v35)
              {
                v36 = v35;
                v59 = v33;
                v57 = v31;
                v37 = 0;
                v38 = *v63;
                obj = v34;
                while (2)
                {
                  v39 = 0;
                  v40 = v37;
                  v41 = v14;
                  do
                  {
                    if (*v63 != v38)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v42 = *(*(&v62 + 1) + 8 * v39);
                    v61 = v41;
                    v37 = [v32 dataContainerForPersona:v42 error:&v61];
                    v14 = v61;

                    if (v37)
                    {
                      [v59 addObject:v37];
                    }

                    else
                    {
                      v43 = [v14 domain];
                      if (![v43 isEqualToString:@"MIContainerManagerErrorDomain"])
                      {

LABEL_56:
                        if (!gLogHandle || *(gLogHandle + 44) >= 3)
                        {
                          MOLogWrite();
                        }

                        v31 = v57;
                        bundleContainer = obj;
                        v33 = v59;
                        goto LABEL_60;
                      }

                      v44 = [v14 code];

                      if (v44 != 21)
                      {
                        goto LABEL_56;
                      }
                    }

                    ++v39;
                    v40 = v37;
                    v41 = v14;
                  }

                  while (v36 != v39);
                  v34 = obj;
                  v36 = [(MIBundleContainer *)obj countByEnumeratingWithState:&v62 objects:v67 count:16];
                  if (v36)
                  {
                    continue;
                  }

                  break;
                }

                v31 = v57;
                v33 = v59;
              }

              v45 = [v33 copy];
              dataContainers = self->_dataContainers;
              self->_dataContainers = v45;

              v47 = [(MIInstalledInfoGatherer *)self bundle];
              v48 = self->_builtInAppParallelPlaceholderBundle;
              self->_builtInAppParallelPlaceholderBundle = v47;

              objc_storeStrong(&self->_bundle, v32);
              bundleContainer = self->_bundleContainer;
              self->_bundleContainer = 0;
LABEL_60:
            }

            else if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              v55 = [v31 path];
              MOLogWrite();
            }

            goto LABEL_62;
          }

          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_51;
          }

LABEL_43:
          v50 = [(MIInstalledInfoGatherer *)self bundle];
          MOLogWrite();
LABEL_50:

          goto LABEL_51;
        default:
          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_51;
          }

          goto LABEL_43;
      }

      v50 = [(MIInstalledInfoGatherer *)self bundle];
      v51 = [v50 identifier];
      MOLogWrite();

      goto LABEL_50;
    }
  }
}

- (void)_initWithBundle:(id)a3 dataContainers:(id)a4
{
  objc_storeStrong(&self->_bundle, a3);
  v7 = a3;
  v8 = a4;
  v9 = [v8 copy];

  dataContainers = self->_dataContainers;
  self->_dataContainers = v9;

  [(MIInstalledInfoGatherer *)self _fixUpForBuiltInAppParallelPlaceholder];
}

- (MIInstalledInfoGatherer)initWithBundle:(id)a3 dataContainers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MIInstalledInfoGatherer;
  v8 = [(MIInstalledInfoGatherer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MIInstalledInfoGatherer *)v8 _initWithBundle:v6 dataContainers:v7];
  }

  return v9;
}

- (MIInstalledInfoGatherer)initWithBundle:(id)a3 dataContainer:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MIInstalledInfoGatherer;
  v8 = [(MIInstalledInfoGatherer *)&v11 init];
  if (v8)
  {
    if (v7)
    {
      v12[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    else
    {
      v9 = 0;
    }

    [(MIInstalledInfoGatherer *)v8 _initWithBundle:v6 dataContainers:v9];
  }

  return v8;
}

- (void)_initWithBundleContainer:(id)a3 forPersonas:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MIBundleContainer *)v6 bundle];
  bundle = self->_bundle;
  self->_bundle = v8;

  bundleContainer = self->_bundleContainer;
  self->_bundleContainer = v6;
  v11 = v6;

  v12 = [v7 copy];
  personaUniqueStrings = self->_personaUniqueStrings;
  self->_personaUniqueStrings = v12;

  [(MIInstalledInfoGatherer *)self _fixUpForBuiltInAppParallelPlaceholder];
}

- (MIInstalledInfoGatherer)initWithBundleContainer:(id)a3 forPersonas:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MIInstalledInfoGatherer;
  v8 = [(MIInstalledInfoGatherer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MIInstalledInfoGatherer *)v8 _initWithBundleContainer:v6 forPersonas:v7];
  }

  return v9;
}

- (MIInstalledInfoGatherer)initWithBundleContainer:(id)a3 forPersona:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MIInstalledInfoGatherer;
  v8 = [(MIInstalledInfoGatherer *)&v11 init];
  if (v8)
  {
    if (v7)
    {
      v12[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    else
    {
      v9 = 0;
    }

    [(MIInstalledInfoGatherer *)v8 _initWithBundleContainer:v6 forPersonas:v9];
  }

  return v8;
}

- (void)_initWithBundleContainer:(id)a3 dataContainers:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  v10 = [v7 bundle];
  bundle = self->_bundle;
  self->_bundle = v10;

  objc_storeStrong(&self->_bundleContainer, a3);
  v12 = [v8 copy];
  dataContainers = self->_dataContainers;
  self->_dataContainers = v12;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = [v19 personaUniqueString];

        if (v20)
        {
          v21 = [v19 personaUniqueString];
          [v9 addObject:v21];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v22 = [v9 copy];
  personaUniqueStrings = self->_personaUniqueStrings;
  self->_personaUniqueStrings = v22;

  [(MIInstalledInfoGatherer *)self _fixUpForBuiltInAppParallelPlaceholder];
}

- (MIInstalledInfoGatherer)initWithBundleContainer:(id)a3 dataContainer:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MIInstalledInfoGatherer;
  v8 = [(MIInstalledInfoGatherer *)&v11 init];
  if (v8)
  {
    if (v7)
    {
      v12[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    else
    {
      v9 = 0;
    }

    [(MIInstalledInfoGatherer *)v8 _initWithBundleContainer:v6 dataContainers:v9];
  }

  return v8;
}

- (MIInstalledInfoGatherer)initWithBundleContainer:(id)a3 dataContainers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MIInstalledInfoGatherer;
  v8 = [(MIInstalledInfoGatherer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MIInstalledInfoGatherer *)v8 _initWithBundleContainer:v6 dataContainers:v7];
  }

  return v9;
}

- (void)_initWithAppExtensionBundle:(id)a3 inBundleIdentifier:(id)a4 dataContainers:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_new();
  objc_storeStrong(&self->_bundle, a3);
  v13 = [v11 copy];
  dataContainers = self->_dataContainers;
  self->_dataContainers = v13;

  objc_storeStrong(&self->_owningBundleIdentifier, a4);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        v21 = [v20 personaUniqueString];

        if (v21)
        {
          v22 = [v20 personaUniqueString];
          [v12 addObject:v22];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  v23 = [v12 copy];
  personaUniqueStrings = self->_personaUniqueStrings;
  self->_personaUniqueStrings = v23;
}

- (MIInstalledInfoGatherer)initWithAppExtensionBundle:(id)a3 inBundleIdentifier:(id)a4 dataContainers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MIInstalledInfoGatherer;
  v11 = [(MIInstalledInfoGatherer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MIInstalledInfoGatherer *)v11 _initWithAppExtensionBundle:v8 inBundleIdentifier:v9 dataContainers:v10];
  }

  return v12;
}

- (MIInstalledInfoGatherer)initWithAppExtensionBundle:(id)a3 inBundleIdentifier:(id)a4 dataContainer:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MIInstalledInfoGatherer;
  v11 = [(MIInstalledInfoGatherer *)&v14 init];
  if (v11)
  {
    if (v10)
    {
      v15[0] = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    }

    else
    {
      v12 = 0;
    }

    [(MIInstalledInfoGatherer *)v11 _initWithAppExtensionBundle:v8 inBundleIdentifier:v9 dataContainers:v12];
  }

  return v11;
}

- (id)_sandboxEnvironmentForDataContainer:(id)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [a3 containerURL];
    v4 = [v3 URLByAppendingPathComponent:@"tmp" isDirectory:1];
    v5 = [v3 path];
    v6 = v5;
    if (v4 && v5)
    {
      v10[0] = @"HOME";
      v10[1] = @"CFFIXED_USER_HOME";
      v11[0] = v5;
      v11[1] = v5;
      v10[2] = @"TMPDIR";
      v7 = [v4 path];
      v11[2] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
    }

    else
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_groupContainersDictionaryForPersona:(id)a3
{
  v4 = a3;
  v5 = [(MIInstalledInfoGatherer *)self bundle];
  v6 = [v5 identifier];

  v7 = [(MIInstalledInfoGatherer *)self dataContainers];

  if (v7)
  {
    v15 = 0;
    v8 = [MIContainer groupContainerURLsForBundleIdentifier:v6 forPersona:v4 error:&v15];
    v9 = v15;
    if (!v8 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v13 = v4;
      v14 = v9;
      v12 = v6;
      MOLogWrite();
    }

    v10 = [v8 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_staticDiskUsage
{
  v3 = [(MIInstalledInfoGatherer *)self bundleContainer];

  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(MIInstalledInfoGatherer *)self bundleContainer];
    v6 = [v4 numberWithUnsignedLongLong:{objc_msgSend(v5, "diskUsage")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_stashedAppRecordForStashedContainer:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MIInstalledInfoGatherer alloc];
  v7 = [(MIInstalledInfoGatherer *)self personaUniqueStrings];
  v8 = [(MIInstalledInfoGatherer *)v6 initWithBundleContainer:v4 forPersonas:v7];

  v18 = 0;
  LOBYTE(v6) = [(MIInstalledInfoGatherer *)v8 _populateBundleRecord:v5 error:&v18];
  v9 = v18;
  v10 = v9;
  if (v6)
  {
    v17 = v9;
    v11 = [v4 stashMetadataWithError:&v17];
    v12 = v17;

    if (v11)
    {
      v13 = [v11 dateStashed];
      [v5 setStashedAtTimestamp:v13];

      v14 = [v11 dateOriginallyInstalled];
      [v5 setStashOriginalInstallTimestamp:v14];
    }

    else
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }

      v14 = v12;
      v12 = 0;
    }

    v15 = v5;
    v10 = v12;
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v15 = 0;
  }

  return v15;
}

- (id)_buildBundlePersonaRecordWithDataContainer:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 personaUniqueString];
  v7 = [v4 containerURL];
  [v5 setDataContainerURL:v7];

  v8 = [(MIInstalledInfoGatherer *)self _sandboxEnvironmentForDataContainer:v4];

  [v5 setEnvironmentVariables:v8];
  v9 = [(MIInstalledInfoGatherer *)self _groupContainersDictionaryForPersona:v6];
  [v5 setGroupContainerURLs:v9];

  return v5;
}

- (BOOL)_populateBundleRecordValues:(id)a3 signingInfo:(id)a4 error:(id *)a5
{
  v137 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(MIInstalledInfoGatherer *)self bundle];
  v125 = self;
  v10 = [(MIInstalledInfoGatherer *)self bundleContainer];
  v11 = [v9 bundleType];
  v12 = [v9 isPlaceholder];
  [v7 setIsPlaceholder:v12];
  v13 = [v9 identifier];
  [v7 setBundleIdentifier:v13];

  v14 = [v9 bundleVersion];
  [v7 setBundleVersion:v14];

  v15 = [v9 bundleShortVersion];
  [v7 setBundleShortVersion:v15];

  v16 = [v9 bundleURL];
  [v7 setBundleURL:v16];

  if ((v11 - 1) > 0xB)
  {
    v17 = 0;
  }

  else
  {
    v17 = qword_1B175DB08[(v11 - 1)];
  }

  [v7 setApplicationType:v17];
  v18 = [v9 counterpartIdentifiers];
  [v7 setCounterpartIdentifiers:v18];

  [v7 setCompatibilityState:{objc_msgSend(v9, "compatibilityState")}];
  [v7 setIsOnMountedDiskImage:v11 == 3];
  v19 = [v8 signatureVersion];
  if (!v19)
  {
    if ((v11 - 1) < 6 || v11 == 9)
    {
      v19 = [v9 bundleSignatureVersionWithError:0];
    }

    else
    {
      v19 = 0;
    }
  }

  [v7 setSignatureVersion:v19];
  [v7 setIsContainerized:{objc_msgSend(v9, "needsDataContainer")}];
  if (v8)
  {
    v20 = [v8 entitlements];
    [v7 setHasAppGroupContainers:MIHasAnyApplicationGroupEntitlements(v20)];

    v21 = [v8 entitlements];
    [v7 setHasSystemContainer:MIHasSystemContainerEntitlement(v21)];

    v22 = [v8 entitlements];
    [v7 setHasSystemGroupContainers:MIHasAnySystemGroupEntitlements(v22)];

    v23 = [v9 codeSignatureVerificationState];
    if ((v23 - 1) <= 1)
    {
      v24 = v12;
      v12 = v19;
      v135 = 0;
      v25 = [v9 updateMCMWithCodeSigningInfoAsAdvanceCopy:0 withError:&v135];
      v26 = v135;
      if ((v25 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        v107 = [v9 identifier];
        v109 = v26;
        MOLogWrite();
      }

      v19 = v12;
      LODWORD(v12) = v24;
    }

    if (([v8 signingInfoSource] & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      [v7 setCodeSigningInfoNotAuthoritative:1];
    }

    if (v23 == 1)
    {

      v8 = 0;
    }

    v27 = [v8 entitlements];
    [v7 setEntitlements:v27];

    v28 = [v8 signerIdentity];
    v29 = [v8 codeSignerType];
    if ((v29 - 1) >= 6)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }

    [v7 setCodeSignerType:v30];
    v31 = [v8 codeSignerType];
    if (v28)
    {
      v32 = v31;
      [v7 setSignerIdentity:v28];
      if (v32 == 3)
      {
        v33 = [v8 profileValidationType];
        if ((v33 - 1) >= 4)
        {
          v34 = 0;
        }

        else
        {
          v34 = v33;
        }

        [v7 setProfileValidationType:v34];
      }

      v35 = [v8 signerOrganization];
      [v7 setSignerOrganization:v35];
    }

    v36 = [v8 teamIdentifier];
    [v7 setTeamIdentifier:v36];

    v37 = [v8 codeInfoIdentifier];
    [v7 setCodeInfoIdentifier:v37];
  }

  else
  {
    [v7 setCodeSigningInfoNotAuthoritative:1];
  }

  if ([v9 codeSignatureVerificationState] == 6)
  {
    [v7 setIsNoLongerCompatible:1];
  }

  else if ([v9 codeSignatureVerificationState] != 1)
  {
    v38 = [v9 identifier];
    [v7 setCodeInfoIdentifier:v38];
  }

  v39 = [(MIInstalledInfoGatherer *)v125 dataContainers];
  v40 = v39;
  if (v11 == 6 && !v39)
  {
    v41 = [v9 bundleURL];
    v43 = _CreateAndLogError("[MIInstalledInfoGatherer _populateBundleRecordValues:signingInfo:error:]", 602, @"MIInstallerErrorDomain", 4, 0, 0, @"Discovered app extension without data containers %@", v42, v41);
    goto LABEL_37;
  }

  v43 = 0;
  v121 = v10;
  v122 = v39;
  if (v11 == 4)
  {
    v52 = @"user";
    if (!v10)
    {
LABEL_116:
      v53 = v43;
      v41 = [v9 bundleURL];
      _CreateAndLogError("[MIInstalledInfoGatherer _populateBundleRecordValues:signingInfo:error:]", 641, @"MIInstallerErrorDomain", 4, 0, 0, @"Discovered %@ app without bundle container %@", v103, v52);
      goto LABEL_117;
    }
  }

  else
  {
    if (v11 != 1)
    {
      goto LABEL_48;
    }

    v117 = v12;
    v113 = v19;
    v46 = [v9 bundleParentDirectoryURL];
    v47 = [v46 path];
    v48 = +[MIDaemonConfiguration sharedInstance];
    v49 = [v48 systemAppsDirectory];
    v50 = [v49 path];
    v51 = [v47 isEqualToString:v50];

    if (v51)
    {
      v43 = 0;
      v10 = v121;
      v40 = v122;
      v19 = v113;
      v11 = 1;
      goto LABEL_48;
    }

    if (v117)
    {
      v134 = 0;
      v67 = [v9 lsInstallTypeWithError:&v134];
      v68 = v134;
      v10 = v121;
      v19 = v113;
      if (v67)
      {
        v119 = v68;
        if ([v67 unsignedIntegerValue] == 7)
        {
          v69 = 3;
        }

        else if ([v67 unsignedIntegerValue] == 8)
        {
          v69 = 4;
        }

        else
        {
          v69 = 1;
        }
      }

      else
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v107 = v9;
          v109 = v68;
          MOLogWrite();
        }

        v119 = 0;
        v69 = 1;
      }

      v75 = [MISystemAppState sharedList:v107];
      v102 = [v9 identifier];
      [v75 addIdentifier:v102 withState:v69];
    }

    else
    {
      v67 = +[MISystemAppState sharedList];
      v75 = [v9 identifier];
      [v67 addIdentifier:v75 withState:1];
      v119 = 0;
      v10 = v121;
      v19 = v113;
    }

    v40 = v122;
    v11 = 1;

    v52 = @"system";
    v43 = v119;
    if (!v10)
    {
      goto LABEL_116;
    }
  }

  if (!v40 && [v10 shouldHaveCorrespondingDataContainer])
  {
    v53 = v43;
    v41 = [v9 bundleURL];
    _CreateAndLogError("[MIInstalledInfoGatherer _populateBundleRecordValues:signingInfo:error:]", 646, @"MIInstallerErrorDomain", 4, 0, 0, @"Discovered %@ app without data container %@", v54, v52);
    v43 = LABEL_117:;

LABEL_37:
    if (a5)
    {
      v44 = v43;
      v45 = 0;
      *a5 = v43;
    }

    else
    {
      v45 = 0;
    }

    goto LABEL_131;
  }

LABEL_48:
  v55 = [(MIInstalledInfoGatherer *)v125 owningBundleIdentifier];

  if (v55)
  {
    if (v10)
    {
      goto LABEL_50;
    }

LABEL_77:
    if (v11 == 10)
    {
      [v7 setIsPlaceholder:1];
    }

    if (!v40)
    {
      goto LABEL_130;
    }

    goto LABEL_80;
  }

  v118 = v43;
  v61 = v11;
  v62 = [v9 bundleURL];
  v63 = [v62 URLByAppendingPathComponent:@"Settings.bundle" isDirectory:1];

  v64 = +[MIFileManager defaultManager];
  v133 = 0;
  v65 = [v64 itemExistsAtURL:v63 error:&v133];
  v66 = v133;

  if (v65)
  {
    [v7 setHasSettingsBundle:1];
    v11 = v61;
    goto LABEL_76;
  }

  v70 = [v66 domain];
  if ([v70 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v71 = [v66 code];

    v91 = v71 == 2;
    v11 = v61;
    if (v91)
    {
      goto LABEL_76;
    }
  }

  else
  {

    v11 = v61;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v107 = v63;
    v109 = v66;
    MOLogWrite();
  }

LABEL_76:

  v40 = v122;
  v43 = v118;
  if (!v10)
  {
    goto LABEL_77;
  }

LABEL_50:
  v132 = 0;
  v56 = [v10 bundleMetadataWithError:{&v132, v107, v109}];
  v57 = v132;
  if (!v56)
  {
    v60 = v43;
    goto LABEL_127;
  }

  v58 = [v56 watchKitAppExecutableHash];
  if (!v58)
  {
    v131 = v43;
    v59 = [v9 watchKitAppExecutableHashWithError:&v131];
    v60 = v131;

    v114 = v19;
    if (v59)
    {
      [v56 setWatchKitAppExecutableHash:v59];
      v130 = v60;
      v72 = [v10 saveBundleMetadata:v56 withError:&v130];
      v73 = v130;

      if ((v72 & 1) != 0 || gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_124;
      }

      v74 = [v9 identifier];
      v108 = v74;
      v110 = v73;
      MOLogWrite();
    }

    else
    {
      v74 = [v60 domain];
      if (![v74 isEqualToString:@"MIInstallerErrorDomain"] || objc_msgSend(v60, "code") != 85)
      {
        v100 = [v60 domain];
        if ([v100 isEqualToString:@"MIInstallerErrorDomain"])
        {
          v101 = [v60 code];

          if (v101 == 139)
          {
            v59 = 0;
LABEL_125:
            v10 = v121;
            v19 = v114;
            goto LABEL_126;
          }
        }

        else
        {
        }

        if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          v59 = 0;
          goto LABEL_125;
        }

        v74 = [v9 identifier];
        v108 = v74;
        v110 = v60;
        MOLogWrite();
      }

      v59 = 0;
      v73 = v60;
    }

LABEL_124:
    v60 = v73;
    goto LABEL_125;
  }

  v59 = v58;
  v60 = v43;
LABEL_126:

  v40 = v122;
LABEL_127:
  v104 = [(MIInstalledInfoGatherer *)v125 _staticDiskUsage:v108];
  [v7 setStaticDiskUsage:v104];

  if ([v10 hasSerializedPlaceholder])
  {
    v105 = [v10 serializedPlaceholderURL];
    [v7 setSerializedPlaceholderURL:v105];
  }

  v43 = v60;
  if (!v40)
  {
LABEL_130:
    v45 = 1;
    goto LABEL_131;
  }

LABEL_80:
  v116 = v9;
  v120 = v43;
  v76 = objc_opt_new();
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v77 = v40;
  v78 = [v77 countByEnumeratingWithState:&v126 objects:v136 count:16];
  if (v78)
  {
    v79 = v78;
    v124 = v76;
    v112 = v7;
    v115 = v19;
    v111 = v8;
    v80 = 0;
    v81 = 0;
    v82 = *v127;
    do
    {
      v83 = v77;
      v84 = 0;
      v85 = v81;
      do
      {
        if (*v127 != v82)
        {
          objc_enumerationMutation(v83);
        }

        v86 = *(*(&v126 + 1) + 8 * v84);
        v87 = [v86 personaUniqueString];
        v81 = [(MIInstalledInfoGatherer *)v125 _buildBundlePersonaRecordWithDataContainer:v86];

        if (v87)
        {
          [v124 setObject:v81 forKeyedSubscript:v87];
        }

        v88 = +[MIGlobalConfiguration sharedInstance];
        v89 = [v88 primaryPersonaString];
        v90 = [v87 isEqualToString:v89];

        if (v87)
        {
          v91 = v90 == 0;
        }

        else
        {
          v91 = 0;
        }

        if (!v91)
        {
          v92 = v81;

          v80 = v92;
        }

        ++v84;
        v85 = v81;
      }

      while (v79 != v84);
      v77 = v83;
      v79 = [v83 countByEnumeratingWithState:&v126 objects:v136 count:16];
    }

    while (v79);

    v8 = v111;
    v7 = v112;
    v19 = v115;
    v76 = v124;
    if (v80)
    {
      goto LABEL_98;
    }
  }

  else
  {

    v81 = 0;
  }

  v81 = v81;
  v80 = v81;
LABEL_98:
  v93 = [v80 dataContainerURL];
  [v7 setDataContainerURL:v93];

  v94 = [v80 environmentVariables];
  [v7 setEnvironmentVariables:v94];

  v95 = [v80 groupContainerURLs];
  [v7 setGroupContainers:v95];

  v96 = +[MIDaemonConfiguration sharedInstance];
  v97 = [v96 deviceHasPersonas];

  v40 = v122;
  if (v97)
  {
    v98 = [v76 copy];
  }

  else
  {
    v98 = objc_opt_new();
  }

  v99 = v98;
  [v7 setPersonasRecordMap:v98];

  v45 = 1;
  v9 = v116;
  v43 = v120;
  v10 = v121;
LABEL_131:

  return v45;
}

- (void)_populateAppRecordValues:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MIInstalledInfoGatherer *)self bundle];
  v28 = [v5 bundleType];
  v6 = [(MIInstalledInfoGatherer *)self bundleContainer];
  v7 = [v5 driverKitExtensionBundlesWithError:0];
  v8 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v29 + 1) + 8 * v13) bundleURL];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v15 = [v8 copy];
    [v4 setDriverKitExtensionURLs:v15];
  }

  if (v6)
  {
    v16 = +[MIDaemonConfiguration sharedInstance];
    v17 = [v16 allowsInternalSecurityPolicy];

    if (v17)
    {
      v18 = [v6 stashedBundleContainerWithError:0];
      if (v18)
      {
        v19 = [(MIInstalledInfoGatherer *)self _stashedAppRecordForStashedContainer:v18];
        v33 = v19;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
        [v4 setStashedVersions:v20];
      }
    }

    v21 = [v6 containerURL];
    if (v21)
    {
      v22 = v21;
      v23 = [v6 hasParallelPlaceholder];

      if (v23)
      {
        v24 = [v6 parallelPlaceholderURL];
        [v4 setParallelPlaceholderURL:v24];
      }
    }

    [v4 setIsUpdatedSystemApp:(v28 & 0xFFFFFFFB) == 1];
  }

  else
  {
    v25 = [(MIInstalledInfoGatherer *)self builtInAppParallelPlaceholderBundle];

    if (v25)
    {
      v26 = [(MIInstalledInfoGatherer *)self builtInAppParallelPlaceholderBundle];
      v27 = [v26 bundleURL];
      [v4 setParallelPlaceholderURL:v27];
    }
  }
}

- (void)_populateAppExtensionRecordValues:(id)a3
{
  v4 = a3;
  v5 = [(MIInstalledInfoGatherer *)self owningBundleIdentifier];
  [v4 setExtensionOwnerBundleID:v5];
}

- (void)_populatePlaceholderRecordValues:(id)a3 signingInfo:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MIInstalledInfoGatherer *)self bundle];
  v9 = [(MIInstalledInfoGatherer *)self bundleContainer];
  v10 = [v8 bundleType];
  v11 = [v7 entitlements];
  [v6 setIsOnDemandInstallCapable:MIHasOnDemandInstallCapableEntitlement(v11)];
  v12 = MICopyParentIdentifiersEntitlement(v11);
  [v6 setParentIdentifiers:v12];

  [v6 setIsSwiftPlaygroundsApp:MIHasSwiftPlaygroundsAppEntitlement(v11)];
  v13 = MICopyAppManagementDomainEntitlement(v11);
  [v6 setAppManagementDomain:v13];

  [v6 setIsWebNotificationBundle:MIHasWebKitPushBundleEntitlement(v11)];
  [v6 setIsBeta:MIHasBetaReportsActiveEntitlement(v11)];
  [v6 setIsMarketplace:MIHasMarketplaceEntitlement(v11)];
  v53 = v9;
  if ((v10 - 1) >= 5 && v10 != 9)
  {
    v21 = 0;
    if (!v9)
    {
      goto LABEL_68;
    }

LABEL_31:
    v56 = 0;
    v27 = [v9 bundleMetadataWithError:{&v56, v43}];
    v28 = v56;
    v50 = v28;
    if (v27)
    {
      v29 = [v27 alternateIconName];
      [v6 setAlternateIconName:v29];

      v30 = [v27 linkedParentBundleID];
      [v6 setLinkedParentBundleID:v30];

      v31 = [v27 installDate];
      [v6 setInstallDate:v31];

      if ([v8 isPlaceholder])
      {
        [v6 setPlaceholderFailureReason:{objc_msgSend(v27, "placeholderFailureReason")}];
        goto LABEL_43;
      }
    }

    else
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v44 = v9;
        v47 = v28;
        MOLogWrite();
      }

      if ([v8 isPlaceholder])
      {
LABEL_43:
        v33 = [v9 containerURL];
        v52 = v7;
        if (v33)
        {
          [v6 setBundleContainerURL:v33];
        }

        else if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v44 = v9;
          MOLogWrite();
        }

        v55 = v21;
        v34 = [v8 lsInstallTypeWithError:{&v55, v44}];
        v35 = v55;

        if (v34)
        {
          [v6 setLsInstallType:v34];
        }

        else
        {
          if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            v45 = v8;
            v47 = v35;
            MOLogWrite();
          }

          v35 = 0;
        }

        v36 = [v8 watchKitV2AppBundleWithError:{0, v45, v47}];
        v51 = v27;
        if (!v36)
        {
          v39 = 1;
LABEL_67:
          [v6 setIsEligibleForWatchAppInstall:{v39, v46, v48}];

          v21 = v35;
          v7 = v52;
          goto LABEL_68;
        }

        v54 = v35;
        v37 = [v9 iTunesMetadataWithError:&v54];
        v38 = v54;

        if (v37)
        {
          v39 = [v37 isEligibleForWatchAppInstall];
LABEL_66:

          v35 = v38;
          v9 = v53;
          goto LABEL_67;
        }

        v40 = [v38 userInfo];
        v41 = [v40 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

        v42 = [v41 domain];
        if ([v42 isEqualToString:*MEMORY[0x1E696A250]])
        {
          v49 = [v41 code];

          if (v49 == 260)
          {
LABEL_65:

            v38 = 0;
            v39 = 1;
            goto LABEL_66;
          }
        }

        else
        {
        }

        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v46 = v53;
          v48 = v38;
          MOLogWrite();
        }

        goto LABEL_65;
      }
    }

    v32 = [v8 fairPlaySinfInfoWithError:0];
    if (!v32)
    {
      if ([v8 needsSinf])
      {
        v32 = objc_opt_new();
        [v32 setIsMissingRequiredSINF:1];
      }

      else
      {
        v32 = 0;
      }
    }

    [v6 setSinfInfo:v32];

    goto LABEL_43;
  }

  [v6 setIsDeletable:{objc_msgSend(v8, "isDeletable")}];
  v62 = 0;
  v14 = [v8 installationIdentitySettingIfNotSet:0 withError:&v62];
  v15 = v62;
  v16 = v15;
  if (v14)
  {
    v17 = [v14 uniqueInstallID];
    [v6 setUniqueInstallID:v17];

    v18 = [v14 installSessionID];
    [v6 setInstallSessionID:v18];
    goto LABEL_15;
  }

  v19 = [v15 domain];
  if (![v19 isEqualToString:*MEMORY[0x1E696A798]])
  {

    goto LABEL_11;
  }

  v20 = [v16 code];

  if (v20 != 93)
  {
LABEL_11:
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v43 = v8;
      v47 = v16;
      MOLogWrite();
    }
  }

  v18 = v16;
  v16 = 0;
LABEL_15:

  v61 = v16;
  v22 = [v8 extensionKitBundlesWithError:&v61];
  v21 = v61;

  if (!v22)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v43 = v8;
      v47 = v21;
      MOLogWrite();
    }

    v21 = 0;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v24)
  {
    v25 = *v58;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v58 != v25)
        {
          objc_enumerationMutation(v23);
        }

        if ([*(*(&v57 + 1) + 8 * i) extensionPoint] == 4)
        {
          v24 = 1;
          goto LABEL_30;
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v57 objects:v63 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:

  [v6 setSupportsAppMigration:v24];
  v9 = v53;
  if (v53)
  {
    goto LABEL_31;
  }

LABEL_68:
}

- (id)bundleRecordWithError:(id *)a3
{
  v5 = [(MIInstalledInfoGatherer *)self bundle];
  v6 = [v5 bundleType];
  if (v6 <= 6)
  {
    if ((v6 - 1) < 5 || v6 == 6)
    {
LABEL_14:
      v9 = objc_opt_new();
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if (v6 <= 9)
  {
    if (v6 == 7 || v6 == 8)
    {
      goto LABEL_14;
    }

    v7 = [v5 bundleURL];
    _CreateAndLogError("[MIInstalledInfoGatherer bundleRecordWithError:]", 1008, @"MIInstallerErrorDomain", 4, 0, 0, @"Embedded watch apps don't get reported to Launch Services: %@", v8, v7);
    v12 = LABEL_20:;

    v10 = 0;
    goto LABEL_21;
  }

  if (v6 != 10)
  {
    if (v6 == 11 || v6 == 12)
    {
      goto LABEL_14;
    }

LABEL_19:
    v7 = [v5 bundleURL];
    _CreateAndLogError("[MIInstalledInfoGatherer bundleRecordWithError:]", 1012, @"MIInstallerErrorDomain", 4, 0, 0, @"Unable to determine application type for %@", v14, v7);
    goto LABEL_20;
  }

  v9 = [ICLSystemAppPlaceholderRecord alloc];
LABEL_15:
  v10 = v9;
  v17 = 0;
  v11 = [(MIInstalledInfoGatherer *)self _populateBundleRecord:v9 error:&v17];
  v12 = v17;
  if (v11)
  {
    v10 = v10;
    v13 = v10;
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = 0;
  if (!a3)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (!v13)
  {
    v15 = v12;
    *a3 = v12;
  }

LABEL_24:

  return v13;
}

- (BOOL)_populateBundleRecord:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MIInstalledInfoGatherer *)self bundle];
  v8 = [v7 identifier];

  v9 = [(MIInstalledInfoGatherer *)self bundle];
  if (MILogHandleForSignpost_onceToken != -1)
  {
    [MIInstalledInfoGatherer _populateBundleRecord:error:];
  }

  v10 = MILogHandleForSignpost_logHandle;
  if (os_signpost_enabled(MILogHandleForSignpost_logHandle))
  {
    *buf = 138412290;
    v28 = v8;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GenerateDict", "Generating ICL bundle record for %@", buf, 0xCu);
  }

  v26 = 0;
  v11 = [v9 codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:0 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v26];
  v12 = v26;
  v13 = v12;
  if (!v11)
  {
    v14 = [v12 domain];
    if ([v14 isEqualToString:@"MIInstallerErrorDomain"] && objc_msgSend(v13, "code") == 71)
    {
      v15 = [v9 bundleType];

      if (v15 == 7)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 4)
    {
      v16 = [v9 bundleURL];
      v24 = [v16 path];
      MOLogWrite();
    }
  }

LABEL_14:

  v25 = 0;
  v17 = [(MIInstalledInfoGatherer *)self _populateBundleRecordValues:v6 signingInfo:v11 error:&v25];
  v18 = v25;
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIInstalledInfoGatherer *)self _populateAppRecordValues:v6];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIInstalledInfoGatherer *)self _populateAppExtensionRecordValues:v6];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIInstalledInfoGatherer *)self _populatePlaceholderRecordValues:v6 signingInfo:v11];
    }
  }

  if (MILogHandleForSignpost_onceToken != -1)
  {
    [MIInstalledInfoGatherer _populateBundleRecord:error:];
  }

  v19 = MILogHandleForSignpost_logHandle;
  if (os_signpost_enabled(MILogHandleForSignpost_logHandle))
  {
    v20 = @"[FAIL] ";
    if (v17)
    {
      v20 = &stru_1F28762E8;
    }

    *buf = 138412546;
    v28 = v20;
    v29 = 2112;
    v30 = v8;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GenerateDict", "%@Done generating ICL bundle record for %@", buf, 0x16u);
  }

  if (a4)
  {
    v21 = v17;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    v22 = v18;
    *a4 = v18;
  }

  return v17;
}

@end