@interface MIInstalledInfoGatherer
- (BOOL)_populateBundleRecord:(id)record error:(id *)error;
- (BOOL)_populateBundleRecordValues:(id)values signingInfo:(id)info error:(id *)error;
- (MIInstalledInfoGatherer)initWithAppExtensionBundle:(id)bundle inBundleIdentifier:(id)identifier dataContainer:(id)container;
- (MIInstalledInfoGatherer)initWithAppExtensionBundle:(id)bundle inBundleIdentifier:(id)identifier dataContainers:(id)containers;
- (MIInstalledInfoGatherer)initWithBundle:(id)bundle dataContainer:(id)container;
- (MIInstalledInfoGatherer)initWithBundle:(id)bundle dataContainers:(id)containers;
- (MIInstalledInfoGatherer)initWithBundleContainer:(id)container dataContainer:(id)dataContainer;
- (MIInstalledInfoGatherer)initWithBundleContainer:(id)container dataContainers:(id)containers;
- (MIInstalledInfoGatherer)initWithBundleContainer:(id)container forPersona:(id)persona;
- (MIInstalledInfoGatherer)initWithBundleContainer:(id)container forPersonas:(id)personas;
- (id)_buildBundlePersonaRecordWithDataContainer:(id)container;
- (id)_groupContainersDictionaryForPersona:(id)persona;
- (id)_sandboxEnvironmentForDataContainer:(id)container;
- (id)_stashedAppRecordForStashedContainer:(id)container;
- (id)_staticDiskUsage;
- (id)bundleRecordWithError:(id *)error;
- (void)_fixUpForBuiltInAppParallelPlaceholder;
- (void)_initWithAppExtensionBundle:(id)bundle inBundleIdentifier:(id)identifier dataContainers:(id)containers;
- (void)_initWithBundle:(id)bundle dataContainers:(id)containers;
- (void)_initWithBundleContainer:(id)container dataContainers:(id)containers;
- (void)_initWithBundleContainer:(id)container forPersonas:(id)personas;
- (void)_populateAppExtensionRecordValues:(id)values;
- (void)_populateAppRecordValues:(id)values;
- (void)_populatePlaceholderRecordValues:(id)values signingInfo:(id)info;
@end

@implementation MIInstalledInfoGatherer

- (void)_fixUpForBuiltInAppParallelPlaceholder
{
  v68 = *MEMORY[0x1E69E9840];
  bundle = [(MIInstalledInfoGatherer *)self bundle];
  isRemovableSystemApp = [bundle isRemovableSystemApp];

  if ((isRemovableSystemApp & 1) == 0)
  {
    bundle2 = [(MIInstalledInfoGatherer *)self bundle];
    bundleType = [bundle2 bundleType];

    if (bundleType <= 5 && ((1 << bundleType) & 0x26) != 0)
    {
      bundle3 = [(MIInstalledInfoGatherer *)self bundle];
      isPlaceholder = [bundle3 isPlaceholder];

      if (!isPlaceholder)
      {
        bundle4 = [(MIInstalledInfoGatherer *)self bundle];
        if (!bundle4)
        {
LABEL_62:

          return;
        }

        bundleContainer = [(MIInstalledInfoGatherer *)self bundleContainer];

        if (!bundleContainer)
        {
          bundle5 = [(MIInstalledInfoGatherer *)self bundle];
          identifier = [bundle5 identifier];
          v60 = 0;
          v18 = [MIBundleContainer appBundleContainerWithIdentifier:identifier createIfNeeded:0 created:0 error:&v60];
          bundle4 = v60;

          if (v18)
          {
            bundle6 = [v18 bundle];
            isPlaceholder2 = [bundle6 isPlaceholder];

            if (isPlaceholder2)
            {
              bundle7 = [v18 bundle];
              builtInAppParallelPlaceholderBundle = self->_builtInAppParallelPlaceholderBundle;
              self->_builtInAppParallelPlaceholderBundle = bundle7;
            }

            goto LABEL_62;
          }

          domain = [bundle4 domain];
          if ([domain isEqualToString:@"MIContainerManagerErrorDomain"])
          {
            code = [bundle4 code];

            if (code == 21)
            {
              goto LABEL_62;
            }
          }

          else
          {
          }

          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            bundle8 = [(MIInstalledInfoGatherer *)self bundle];
            identifier2 = [bundle8 identifier];
            MOLogWrite();
          }

          goto LABEL_62;
        }

LABEL_51:
        bundle4 = 0;
        goto LABEL_62;
      }

      switch(bundleType)
      {
        case 5u:
          v27 = +[MIDaemonConfiguration sharedInstance];
          coreServicesAppBundleIDToInfoMap = [v27 coreServicesAppBundleIDToInfoMap];
          bundle9 = [(MIInstalledInfoGatherer *)self bundle];
          identifier3 = [bundle9 identifier];
          v13 = [coreServicesAppBundleIDToInfoMap objectForKeyedSubscript:identifier3];

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
          internalAppBundleIDToInfoMap = [v23 internalAppBundleIDToInfoMap];
          bundle10 = [(MIInstalledInfoGatherer *)self bundle];
          identifier4 = [bundle10 identifier];
          v13 = [internalAppBundleIDToInfoMap objectForKeyedSubscript:identifier4];

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
          systemAppBundleIDToInfoMap = [v9 systemAppBundleIDToInfoMap];
          bundle11 = [(MIInstalledInfoGatherer *)self bundle];
          identifier5 = [bundle11 identifier];
          v13 = [systemAppBundleIDToInfoMap objectForKeyedSubscript:identifier5];

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
            bundle4 = v66;
            if (v32)
            {
              v33 = objc_opt_new();
              v62 = 0u;
              v63 = 0u;
              v64 = 0u;
              v65 = 0u;
              personaUniqueStrings = [(MIInstalledInfoGatherer *)self personaUniqueStrings];
              v35 = [(MIBundleContainer *)personaUniqueStrings countByEnumeratingWithState:&v62 objects:v67 count:16];
              if (v35)
              {
                v36 = v35;
                v59 = v33;
                v57 = v31;
                v37 = 0;
                v38 = *v63;
                obj = personaUniqueStrings;
                while (2)
                {
                  v39 = 0;
                  v40 = v37;
                  v41 = bundle4;
                  do
                  {
                    if (*v63 != v38)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v42 = *(*(&v62 + 1) + 8 * v39);
                    v61 = v41;
                    v37 = [v32 dataContainerForPersona:v42 error:&v61];
                    bundle4 = v61;

                    if (v37)
                    {
                      [v59 addObject:v37];
                    }

                    else
                    {
                      domain2 = [bundle4 domain];
                      if (![domain2 isEqualToString:@"MIContainerManagerErrorDomain"])
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

                      code2 = [bundle4 code];

                      if (code2 != 21)
                      {
                        goto LABEL_56;
                      }
                    }

                    ++v39;
                    v40 = v37;
                    v41 = bundle4;
                  }

                  while (v36 != v39);
                  personaUniqueStrings = obj;
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

              bundle12 = [(MIInstalledInfoGatherer *)self bundle];
              v48 = self->_builtInAppParallelPlaceholderBundle;
              self->_builtInAppParallelPlaceholderBundle = bundle12;

              objc_storeStrong(&self->_bundle, v32);
              bundleContainer = self->_bundleContainer;
              self->_bundleContainer = 0;
LABEL_60:
            }

            else if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              path = [v31 path];
              MOLogWrite();
            }

            goto LABEL_62;
          }

          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_51;
          }

LABEL_43:
          bundle13 = [(MIInstalledInfoGatherer *)self bundle];
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

      bundle13 = [(MIInstalledInfoGatherer *)self bundle];
      identifier6 = [bundle13 identifier];
      MOLogWrite();

      goto LABEL_50;
    }
  }
}

- (void)_initWithBundle:(id)bundle dataContainers:(id)containers
{
  objc_storeStrong(&self->_bundle, bundle);
  bundleCopy = bundle;
  containersCopy = containers;
  v9 = [containersCopy copy];

  dataContainers = self->_dataContainers;
  self->_dataContainers = v9;

  [(MIInstalledInfoGatherer *)self _fixUpForBuiltInAppParallelPlaceholder];
}

- (MIInstalledInfoGatherer)initWithBundle:(id)bundle dataContainers:(id)containers
{
  bundleCopy = bundle;
  containersCopy = containers;
  v11.receiver = self;
  v11.super_class = MIInstalledInfoGatherer;
  v8 = [(MIInstalledInfoGatherer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MIInstalledInfoGatherer *)v8 _initWithBundle:bundleCopy dataContainers:containersCopy];
  }

  return v9;
}

- (MIInstalledInfoGatherer)initWithBundle:(id)bundle dataContainer:(id)container
{
  v12[1] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = MIInstalledInfoGatherer;
  v8 = [(MIInstalledInfoGatherer *)&v11 init];
  if (v8)
  {
    if (containerCopy)
    {
      v12[0] = containerCopy;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    else
    {
      v9 = 0;
    }

    [(MIInstalledInfoGatherer *)v8 _initWithBundle:bundleCopy dataContainers:v9];
  }

  return v8;
}

- (void)_initWithBundleContainer:(id)container forPersonas:(id)personas
{
  containerCopy = container;
  personasCopy = personas;
  bundle = [(MIBundleContainer *)containerCopy bundle];
  bundle = self->_bundle;
  self->_bundle = bundle;

  bundleContainer = self->_bundleContainer;
  self->_bundleContainer = containerCopy;
  v11 = containerCopy;

  v12 = [personasCopy copy];
  personaUniqueStrings = self->_personaUniqueStrings;
  self->_personaUniqueStrings = v12;

  [(MIInstalledInfoGatherer *)self _fixUpForBuiltInAppParallelPlaceholder];
}

- (MIInstalledInfoGatherer)initWithBundleContainer:(id)container forPersonas:(id)personas
{
  containerCopy = container;
  personasCopy = personas;
  v11.receiver = self;
  v11.super_class = MIInstalledInfoGatherer;
  v8 = [(MIInstalledInfoGatherer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MIInstalledInfoGatherer *)v8 _initWithBundleContainer:containerCopy forPersonas:personasCopy];
  }

  return v9;
}

- (MIInstalledInfoGatherer)initWithBundleContainer:(id)container forPersona:(id)persona
{
  v12[1] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  personaCopy = persona;
  v11.receiver = self;
  v11.super_class = MIInstalledInfoGatherer;
  v8 = [(MIInstalledInfoGatherer *)&v11 init];
  if (v8)
  {
    if (personaCopy)
    {
      v12[0] = personaCopy;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    else
    {
      v9 = 0;
    }

    [(MIInstalledInfoGatherer *)v8 _initWithBundleContainer:containerCopy forPersonas:v9];
  }

  return v8;
}

- (void)_initWithBundleContainer:(id)container dataContainers:(id)containers
{
  v29 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  containersCopy = containers;
  v9 = objc_opt_new();
  bundle = [containerCopy bundle];
  bundle = self->_bundle;
  self->_bundle = bundle;

  objc_storeStrong(&self->_bundleContainer, container);
  v12 = [containersCopy copy];
  dataContainers = self->_dataContainers;
  self->_dataContainers = v12;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = containersCopy;
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
        personaUniqueString = [v19 personaUniqueString];

        if (personaUniqueString)
        {
          personaUniqueString2 = [v19 personaUniqueString];
          [v9 addObject:personaUniqueString2];
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

- (MIInstalledInfoGatherer)initWithBundleContainer:(id)container dataContainer:(id)dataContainer
{
  v12[1] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  dataContainerCopy = dataContainer;
  v11.receiver = self;
  v11.super_class = MIInstalledInfoGatherer;
  v8 = [(MIInstalledInfoGatherer *)&v11 init];
  if (v8)
  {
    if (dataContainerCopy)
    {
      v12[0] = dataContainerCopy;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    else
    {
      v9 = 0;
    }

    [(MIInstalledInfoGatherer *)v8 _initWithBundleContainer:containerCopy dataContainers:v9];
  }

  return v8;
}

- (MIInstalledInfoGatherer)initWithBundleContainer:(id)container dataContainers:(id)containers
{
  containerCopy = container;
  containersCopy = containers;
  v11.receiver = self;
  v11.super_class = MIInstalledInfoGatherer;
  v8 = [(MIInstalledInfoGatherer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MIInstalledInfoGatherer *)v8 _initWithBundleContainer:containerCopy dataContainers:containersCopy];
  }

  return v9;
}

- (void)_initWithAppExtensionBundle:(id)bundle inBundleIdentifier:(id)identifier dataContainers:(id)containers
{
  v30 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  identifierCopy = identifier;
  containersCopy = containers;
  v12 = objc_opt_new();
  objc_storeStrong(&self->_bundle, bundle);
  v13 = [containersCopy copy];
  dataContainers = self->_dataContainers;
  self->_dataContainers = v13;

  objc_storeStrong(&self->_owningBundleIdentifier, identifier);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = containersCopy;
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
        personaUniqueString = [v20 personaUniqueString];

        if (personaUniqueString)
        {
          personaUniqueString2 = [v20 personaUniqueString];
          [v12 addObject:personaUniqueString2];
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

- (MIInstalledInfoGatherer)initWithAppExtensionBundle:(id)bundle inBundleIdentifier:(id)identifier dataContainers:(id)containers
{
  bundleCopy = bundle;
  identifierCopy = identifier;
  containersCopy = containers;
  v14.receiver = self;
  v14.super_class = MIInstalledInfoGatherer;
  v11 = [(MIInstalledInfoGatherer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MIInstalledInfoGatherer *)v11 _initWithAppExtensionBundle:bundleCopy inBundleIdentifier:identifierCopy dataContainers:containersCopy];
  }

  return v12;
}

- (MIInstalledInfoGatherer)initWithAppExtensionBundle:(id)bundle inBundleIdentifier:(id)identifier dataContainer:(id)container
{
  v15[1] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  identifierCopy = identifier;
  containerCopy = container;
  v14.receiver = self;
  v14.super_class = MIInstalledInfoGatherer;
  v11 = [(MIInstalledInfoGatherer *)&v14 init];
  if (v11)
  {
    if (containerCopy)
    {
      v15[0] = containerCopy;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    }

    else
    {
      v12 = 0;
    }

    [(MIInstalledInfoGatherer *)v11 _initWithAppExtensionBundle:bundleCopy inBundleIdentifier:identifierCopy dataContainers:v12];
  }

  return v11;
}

- (id)_sandboxEnvironmentForDataContainer:(id)container
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (container)
  {
    containerURL = [container containerURL];
    v4 = [containerURL URLByAppendingPathComponent:@"tmp" isDirectory:1];
    path = [containerURL path];
    v6 = path;
    if (v4 && path)
    {
      v10[0] = @"HOME";
      v10[1] = @"CFFIXED_USER_HOME";
      v11[0] = path;
      v11[1] = path;
      v10[2] = @"TMPDIR";
      path2 = [v4 path];
      v11[2] = path2;
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

- (id)_groupContainersDictionaryForPersona:(id)persona
{
  personaCopy = persona;
  bundle = [(MIInstalledInfoGatherer *)self bundle];
  identifier = [bundle identifier];

  dataContainers = [(MIInstalledInfoGatherer *)self dataContainers];

  if (dataContainers)
  {
    v15 = 0;
    v8 = [MIContainer groupContainerURLsForBundleIdentifier:identifier forPersona:personaCopy error:&v15];
    v9 = v15;
    if (!v8 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v13 = personaCopy;
      v14 = v9;
      v12 = identifier;
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
  bundleContainer = [(MIInstalledInfoGatherer *)self bundleContainer];

  if (bundleContainer)
  {
    v4 = MEMORY[0x1E696AD98];
    bundleContainer2 = [(MIInstalledInfoGatherer *)self bundleContainer];
    v6 = [v4 numberWithUnsignedLongLong:{objc_msgSend(bundleContainer2, "diskUsage")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_stashedAppRecordForStashedContainer:(id)container
{
  containerCopy = container;
  v5 = objc_opt_new();
  v6 = [MIInstalledInfoGatherer alloc];
  personaUniqueStrings = [(MIInstalledInfoGatherer *)self personaUniqueStrings];
  v8 = [(MIInstalledInfoGatherer *)v6 initWithBundleContainer:containerCopy forPersonas:personaUniqueStrings];

  v18 = 0;
  LOBYTE(v6) = [(MIInstalledInfoGatherer *)v8 _populateBundleRecord:v5 error:&v18];
  v9 = v18;
  v10 = v9;
  if (v6)
  {
    v17 = v9;
    v11 = [containerCopy stashMetadataWithError:&v17];
    v12 = v17;

    if (v11)
    {
      dateStashed = [v11 dateStashed];
      [v5 setStashedAtTimestamp:dateStashed];

      dateOriginallyInstalled = [v11 dateOriginallyInstalled];
      [v5 setStashOriginalInstallTimestamp:dateOriginallyInstalled];
    }

    else
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }

      dateOriginallyInstalled = v12;
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

- (id)_buildBundlePersonaRecordWithDataContainer:(id)container
{
  containerCopy = container;
  v5 = objc_opt_new();
  personaUniqueString = [containerCopy personaUniqueString];
  containerURL = [containerCopy containerURL];
  [v5 setDataContainerURL:containerURL];

  v8 = [(MIInstalledInfoGatherer *)self _sandboxEnvironmentForDataContainer:containerCopy];

  [v5 setEnvironmentVariables:v8];
  v9 = [(MIInstalledInfoGatherer *)self _groupContainersDictionaryForPersona:personaUniqueString];
  [v5 setGroupContainerURLs:v9];

  return v5;
}

- (BOOL)_populateBundleRecordValues:(id)values signingInfo:(id)info error:(id *)error
{
  v137 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  infoCopy = info;
  bundle = [(MIInstalledInfoGatherer *)self bundle];
  selfCopy = self;
  bundleContainer = [(MIInstalledInfoGatherer *)self bundleContainer];
  bundleType = [bundle bundleType];
  isPlaceholder = [bundle isPlaceholder];
  [valuesCopy setIsPlaceholder:isPlaceholder];
  identifier = [bundle identifier];
  [valuesCopy setBundleIdentifier:identifier];

  bundleVersion = [bundle bundleVersion];
  [valuesCopy setBundleVersion:bundleVersion];

  bundleShortVersion = [bundle bundleShortVersion];
  [valuesCopy setBundleShortVersion:bundleShortVersion];

  bundleURL = [bundle bundleURL];
  [valuesCopy setBundleURL:bundleURL];

  if ((bundleType - 1) > 0xB)
  {
    v17 = 0;
  }

  else
  {
    v17 = qword_1B175DB08[(bundleType - 1)];
  }

  [valuesCopy setApplicationType:v17];
  counterpartIdentifiers = [bundle counterpartIdentifiers];
  [valuesCopy setCounterpartIdentifiers:counterpartIdentifiers];

  [valuesCopy setCompatibilityState:{objc_msgSend(bundle, "compatibilityState")}];
  [valuesCopy setIsOnMountedDiskImage:bundleType == 3];
  signatureVersion = [infoCopy signatureVersion];
  if (!signatureVersion)
  {
    if ((bundleType - 1) < 6 || bundleType == 9)
    {
      signatureVersion = [bundle bundleSignatureVersionWithError:0];
    }

    else
    {
      signatureVersion = 0;
    }
  }

  [valuesCopy setSignatureVersion:signatureVersion];
  [valuesCopy setIsContainerized:{objc_msgSend(bundle, "needsDataContainer")}];
  if (infoCopy)
  {
    entitlements = [infoCopy entitlements];
    [valuesCopy setHasAppGroupContainers:MIHasAnyApplicationGroupEntitlements(entitlements)];

    entitlements2 = [infoCopy entitlements];
    [valuesCopy setHasSystemContainer:MIHasSystemContainerEntitlement(entitlements2)];

    entitlements3 = [infoCopy entitlements];
    [valuesCopy setHasSystemGroupContainers:MIHasAnySystemGroupEntitlements(entitlements3)];

    codeSignatureVerificationState = [bundle codeSignatureVerificationState];
    if ((codeSignatureVerificationState - 1) <= 1)
    {
      v24 = isPlaceholder;
      isPlaceholder = signatureVersion;
      v135 = 0;
      v25 = [bundle updateMCMWithCodeSigningInfoAsAdvanceCopy:0 withError:&v135];
      v26 = v135;
      if ((v25 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        identifier2 = [bundle identifier];
        v109 = v26;
        MOLogWrite();
      }

      signatureVersion = isPlaceholder;
      LODWORD(isPlaceholder) = v24;
    }

    if (([infoCopy signingInfoSource] & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      [valuesCopy setCodeSigningInfoNotAuthoritative:1];
    }

    if (codeSignatureVerificationState == 1)
    {

      infoCopy = 0;
    }

    entitlements4 = [infoCopy entitlements];
    [valuesCopy setEntitlements:entitlements4];

    signerIdentity = [infoCopy signerIdentity];
    codeSignerType = [infoCopy codeSignerType];
    if ((codeSignerType - 1) >= 6)
    {
      v30 = 0;
    }

    else
    {
      v30 = codeSignerType;
    }

    [valuesCopy setCodeSignerType:v30];
    codeSignerType2 = [infoCopy codeSignerType];
    if (signerIdentity)
    {
      v32 = codeSignerType2;
      [valuesCopy setSignerIdentity:signerIdentity];
      if (v32 == 3)
      {
        profileValidationType = [infoCopy profileValidationType];
        if ((profileValidationType - 1) >= 4)
        {
          v34 = 0;
        }

        else
        {
          v34 = profileValidationType;
        }

        [valuesCopy setProfileValidationType:v34];
      }

      signerOrganization = [infoCopy signerOrganization];
      [valuesCopy setSignerOrganization:signerOrganization];
    }

    teamIdentifier = [infoCopy teamIdentifier];
    [valuesCopy setTeamIdentifier:teamIdentifier];

    codeInfoIdentifier = [infoCopy codeInfoIdentifier];
    [valuesCopy setCodeInfoIdentifier:codeInfoIdentifier];
  }

  else
  {
    [valuesCopy setCodeSigningInfoNotAuthoritative:1];
  }

  if ([bundle codeSignatureVerificationState] == 6)
  {
    [valuesCopy setIsNoLongerCompatible:1];
  }

  else if ([bundle codeSignatureVerificationState] != 1)
  {
    identifier3 = [bundle identifier];
    [valuesCopy setCodeInfoIdentifier:identifier3];
  }

  dataContainers = [(MIInstalledInfoGatherer *)selfCopy dataContainers];
  v40 = dataContainers;
  if (bundleType == 6 && !dataContainers)
  {
    bundleURL2 = [bundle bundleURL];
    v43 = _CreateAndLogError("[MIInstalledInfoGatherer _populateBundleRecordValues:signingInfo:error:]", 602, @"MIInstallerErrorDomain", 4, 0, 0, @"Discovered app extension without data containers %@", v42, bundleURL2);
    goto LABEL_37;
  }

  v43 = 0;
  v121 = bundleContainer;
  v122 = dataContainers;
  if (bundleType == 4)
  {
    v52 = @"user";
    if (!bundleContainer)
    {
LABEL_116:
      v53 = v43;
      bundleURL2 = [bundle bundleURL];
      _CreateAndLogError("[MIInstalledInfoGatherer _populateBundleRecordValues:signingInfo:error:]", 641, @"MIInstallerErrorDomain", 4, 0, 0, @"Discovered %@ app without bundle container %@", v103, v52);
      goto LABEL_117;
    }
  }

  else
  {
    if (bundleType != 1)
    {
      goto LABEL_48;
    }

    v117 = isPlaceholder;
    v113 = signatureVersion;
    bundleParentDirectoryURL = [bundle bundleParentDirectoryURL];
    path = [bundleParentDirectoryURL path];
    v48 = +[MIDaemonConfiguration sharedInstance];
    systemAppsDirectory = [v48 systemAppsDirectory];
    path2 = [systemAppsDirectory path];
    v51 = [path isEqualToString:path2];

    if (v51)
    {
      v43 = 0;
      bundleContainer = v121;
      v40 = v122;
      signatureVersion = v113;
      bundleType = 1;
      goto LABEL_48;
    }

    if (v117)
    {
      v134 = 0;
      v67 = [bundle lsInstallTypeWithError:&v134];
      v68 = v134;
      bundleContainer = v121;
      signatureVersion = v113;
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
          identifier2 = bundle;
          v109 = v68;
          MOLogWrite();
        }

        v119 = 0;
        v69 = 1;
      }

      identifier5 = [MISystemAppState sharedList:identifier2];
      identifier4 = [bundle identifier];
      [identifier5 addIdentifier:identifier4 withState:v69];
    }

    else
    {
      v67 = +[MISystemAppState sharedList];
      identifier5 = [bundle identifier];
      [v67 addIdentifier:identifier5 withState:1];
      v119 = 0;
      bundleContainer = v121;
      signatureVersion = v113;
    }

    v40 = v122;
    bundleType = 1;

    v52 = @"system";
    v43 = v119;
    if (!bundleContainer)
    {
      goto LABEL_116;
    }
  }

  if (!v40 && [bundleContainer shouldHaveCorrespondingDataContainer])
  {
    v53 = v43;
    bundleURL2 = [bundle bundleURL];
    _CreateAndLogError("[MIInstalledInfoGatherer _populateBundleRecordValues:signingInfo:error:]", 646, @"MIInstallerErrorDomain", 4, 0, 0, @"Discovered %@ app without data container %@", v54, v52);
    v43 = LABEL_117:;

LABEL_37:
    if (error)
    {
      v44 = v43;
      v45 = 0;
      *error = v43;
    }

    else
    {
      v45 = 0;
    }

    goto LABEL_131;
  }

LABEL_48:
  owningBundleIdentifier = [(MIInstalledInfoGatherer *)selfCopy owningBundleIdentifier];

  if (owningBundleIdentifier)
  {
    if (bundleContainer)
    {
      goto LABEL_50;
    }

LABEL_77:
    if (bundleType == 10)
    {
      [valuesCopy setIsPlaceholder:1];
    }

    if (!v40)
    {
      goto LABEL_130;
    }

    goto LABEL_80;
  }

  v118 = v43;
  v61 = bundleType;
  bundleURL3 = [bundle bundleURL];
  v63 = [bundleURL3 URLByAppendingPathComponent:@"Settings.bundle" isDirectory:1];

  v64 = +[MIFileManager defaultManager];
  v133 = 0;
  v65 = [v64 itemExistsAtURL:v63 error:&v133];
  v66 = v133;

  if (v65)
  {
    [valuesCopy setHasSettingsBundle:1];
    bundleType = v61;
    goto LABEL_76;
  }

  domain = [v66 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]])
  {
    code = [v66 code];

    v91 = code == 2;
    bundleType = v61;
    if (v91)
    {
      goto LABEL_76;
    }
  }

  else
  {

    bundleType = v61;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    identifier2 = v63;
    v109 = v66;
    MOLogWrite();
  }

LABEL_76:

  v40 = v122;
  v43 = v118;
  if (!bundleContainer)
  {
    goto LABEL_77;
  }

LABEL_50:
  v132 = 0;
  v56 = [bundleContainer bundleMetadataWithError:{&v132, identifier2, v109}];
  v57 = v132;
  if (!v56)
  {
    v60 = v43;
    goto LABEL_127;
  }

  watchKitAppExecutableHash = [v56 watchKitAppExecutableHash];
  if (!watchKitAppExecutableHash)
  {
    v131 = v43;
    v59 = [bundle watchKitAppExecutableHashWithError:&v131];
    v60 = v131;

    v114 = signatureVersion;
    if (v59)
    {
      [v56 setWatchKitAppExecutableHash:v59];
      v130 = v60;
      v72 = [bundleContainer saveBundleMetadata:v56 withError:&v130];
      v73 = v130;

      if ((v72 & 1) != 0 || gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_124;
      }

      identifier6 = [bundle identifier];
      v108 = identifier6;
      v110 = v73;
      MOLogWrite();
    }

    else
    {
      identifier6 = [v60 domain];
      if (![identifier6 isEqualToString:@"MIInstallerErrorDomain"] || objc_msgSend(v60, "code") != 85)
      {
        domain2 = [v60 domain];
        if ([domain2 isEqualToString:@"MIInstallerErrorDomain"])
        {
          code2 = [v60 code];

          if (code2 == 139)
          {
            v59 = 0;
LABEL_125:
            bundleContainer = v121;
            signatureVersion = v114;
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

        identifier6 = [bundle identifier];
        v108 = identifier6;
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

  v59 = watchKitAppExecutableHash;
  v60 = v43;
LABEL_126:

  v40 = v122;
LABEL_127:
  v104 = [(MIInstalledInfoGatherer *)selfCopy _staticDiskUsage:v108];
  [valuesCopy setStaticDiskUsage:v104];

  if ([bundleContainer hasSerializedPlaceholder])
  {
    serializedPlaceholderURL = [bundleContainer serializedPlaceholderURL];
    [valuesCopy setSerializedPlaceholderURL:serializedPlaceholderURL];
  }

  v43 = v60;
  if (!v40)
  {
LABEL_130:
    v45 = 1;
    goto LABEL_131;
  }

LABEL_80:
  v116 = bundle;
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
    v112 = valuesCopy;
    v115 = signatureVersion;
    v111 = infoCopy;
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
        personaUniqueString = [v86 personaUniqueString];
        v81 = [(MIInstalledInfoGatherer *)selfCopy _buildBundlePersonaRecordWithDataContainer:v86];

        if (personaUniqueString)
        {
          [v124 setObject:v81 forKeyedSubscript:personaUniqueString];
        }

        v88 = +[MIGlobalConfiguration sharedInstance];
        primaryPersonaString = [v88 primaryPersonaString];
        v90 = [personaUniqueString isEqualToString:primaryPersonaString];

        if (personaUniqueString)
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

    infoCopy = v111;
    valuesCopy = v112;
    signatureVersion = v115;
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
  dataContainerURL = [v80 dataContainerURL];
  [valuesCopy setDataContainerURL:dataContainerURL];

  environmentVariables = [v80 environmentVariables];
  [valuesCopy setEnvironmentVariables:environmentVariables];

  groupContainerURLs = [v80 groupContainerURLs];
  [valuesCopy setGroupContainers:groupContainerURLs];

  v96 = +[MIDaemonConfiguration sharedInstance];
  deviceHasPersonas = [v96 deviceHasPersonas];

  v40 = v122;
  if (deviceHasPersonas)
  {
    v98 = [v76 copy];
  }

  else
  {
    v98 = objc_opt_new();
  }

  v99 = v98;
  [valuesCopy setPersonasRecordMap:v98];

  v45 = 1;
  bundle = v116;
  v43 = v120;
  bundleContainer = v121;
LABEL_131:

  return v45;
}

- (void)_populateAppRecordValues:(id)values
{
  v35 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  bundle = [(MIInstalledInfoGatherer *)self bundle];
  bundleType = [bundle bundleType];
  bundleContainer = [(MIInstalledInfoGatherer *)self bundleContainer];
  v7 = [bundle driverKitExtensionBundlesWithError:0];
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

        bundleURL = [*(*(&v29 + 1) + 8 * v13) bundleURL];
        [v8 addObject:bundleURL];

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
    [valuesCopy setDriverKitExtensionURLs:v15];
  }

  if (bundleContainer)
  {
    v16 = +[MIDaemonConfiguration sharedInstance];
    allowsInternalSecurityPolicy = [v16 allowsInternalSecurityPolicy];

    if (allowsInternalSecurityPolicy)
    {
      v18 = [bundleContainer stashedBundleContainerWithError:0];
      if (v18)
      {
        v19 = [(MIInstalledInfoGatherer *)self _stashedAppRecordForStashedContainer:v18];
        v33 = v19;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
        [valuesCopy setStashedVersions:v20];
      }
    }

    containerURL = [bundleContainer containerURL];
    if (containerURL)
    {
      v22 = containerURL;
      hasParallelPlaceholder = [bundleContainer hasParallelPlaceholder];

      if (hasParallelPlaceholder)
      {
        parallelPlaceholderURL = [bundleContainer parallelPlaceholderURL];
        [valuesCopy setParallelPlaceholderURL:parallelPlaceholderURL];
      }
    }

    [valuesCopy setIsUpdatedSystemApp:(bundleType & 0xFFFFFFFB) == 1];
  }

  else
  {
    builtInAppParallelPlaceholderBundle = [(MIInstalledInfoGatherer *)self builtInAppParallelPlaceholderBundle];

    if (builtInAppParallelPlaceholderBundle)
    {
      builtInAppParallelPlaceholderBundle2 = [(MIInstalledInfoGatherer *)self builtInAppParallelPlaceholderBundle];
      bundleURL2 = [builtInAppParallelPlaceholderBundle2 bundleURL];
      [valuesCopy setParallelPlaceholderURL:bundleURL2];
    }
  }
}

- (void)_populateAppExtensionRecordValues:(id)values
{
  valuesCopy = values;
  owningBundleIdentifier = [(MIInstalledInfoGatherer *)self owningBundleIdentifier];
  [valuesCopy setExtensionOwnerBundleID:owningBundleIdentifier];
}

- (void)_populatePlaceholderRecordValues:(id)values signingInfo:(id)info
{
  v64 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  infoCopy = info;
  bundle = [(MIInstalledInfoGatherer *)self bundle];
  bundleContainer = [(MIInstalledInfoGatherer *)self bundleContainer];
  bundleType = [bundle bundleType];
  entitlements = [infoCopy entitlements];
  [valuesCopy setIsOnDemandInstallCapable:MIHasOnDemandInstallCapableEntitlement(entitlements)];
  v12 = MICopyParentIdentifiersEntitlement(entitlements);
  [valuesCopy setParentIdentifiers:v12];

  [valuesCopy setIsSwiftPlaygroundsApp:MIHasSwiftPlaygroundsAppEntitlement(entitlements)];
  v13 = MICopyAppManagementDomainEntitlement(entitlements);
  [valuesCopy setAppManagementDomain:v13];

  [valuesCopy setIsWebNotificationBundle:MIHasWebKitPushBundleEntitlement(entitlements)];
  [valuesCopy setIsBeta:MIHasBetaReportsActiveEntitlement(entitlements)];
  [valuesCopy setIsMarketplace:MIHasMarketplaceEntitlement(entitlements)];
  v53 = bundleContainer;
  if ((bundleType - 1) >= 5 && bundleType != 9)
  {
    v21 = 0;
    if (!bundleContainer)
    {
      goto LABEL_68;
    }

LABEL_31:
    v56 = 0;
    v27 = [bundleContainer bundleMetadataWithError:{&v56, v43}];
    v28 = v56;
    v50 = v28;
    if (v27)
    {
      alternateIconName = [v27 alternateIconName];
      [valuesCopy setAlternateIconName:alternateIconName];

      linkedParentBundleID = [v27 linkedParentBundleID];
      [valuesCopy setLinkedParentBundleID:linkedParentBundleID];

      installDate = [v27 installDate];
      [valuesCopy setInstallDate:installDate];

      if ([bundle isPlaceholder])
      {
        [valuesCopy setPlaceholderFailureReason:{objc_msgSend(v27, "placeholderFailureReason")}];
        goto LABEL_43;
      }
    }

    else
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v44 = bundleContainer;
        v47 = v28;
        MOLogWrite();
      }

      if ([bundle isPlaceholder])
      {
LABEL_43:
        containerURL = [bundleContainer containerURL];
        v52 = infoCopy;
        if (containerURL)
        {
          [valuesCopy setBundleContainerURL:containerURL];
        }

        else if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v44 = bundleContainer;
          MOLogWrite();
        }

        v55 = v21;
        v34 = [bundle lsInstallTypeWithError:{&v55, v44}];
        v35 = v55;

        if (v34)
        {
          [valuesCopy setLsInstallType:v34];
        }

        else
        {
          if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            v45 = bundle;
            v47 = v35;
            MOLogWrite();
          }

          v35 = 0;
        }

        v36 = [bundle watchKitV2AppBundleWithError:{0, v45, v47}];
        v51 = v27;
        if (!v36)
        {
          isEligibleForWatchAppInstall = 1;
LABEL_67:
          [valuesCopy setIsEligibleForWatchAppInstall:{isEligibleForWatchAppInstall, v46, v48}];

          v21 = v35;
          infoCopy = v52;
          goto LABEL_68;
        }

        v54 = v35;
        v37 = [bundleContainer iTunesMetadataWithError:&v54];
        v38 = v54;

        if (v37)
        {
          isEligibleForWatchAppInstall = [v37 isEligibleForWatchAppInstall];
LABEL_66:

          v35 = v38;
          bundleContainer = v53;
          goto LABEL_67;
        }

        userInfo = [v38 userInfo];
        v41 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

        domain = [v41 domain];
        if ([domain isEqualToString:*MEMORY[0x1E696A250]])
        {
          code = [v41 code];

          if (code == 260)
          {
LABEL_65:

            v38 = 0;
            isEligibleForWatchAppInstall = 1;
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

    v32 = [bundle fairPlaySinfInfoWithError:0];
    if (!v32)
    {
      if ([bundle needsSinf])
      {
        v32 = objc_opt_new();
        [v32 setIsMissingRequiredSINF:1];
      }

      else
      {
        v32 = 0;
      }
    }

    [valuesCopy setSinfInfo:v32];

    goto LABEL_43;
  }

  [valuesCopy setIsDeletable:{objc_msgSend(bundle, "isDeletable")}];
  v62 = 0;
  v14 = [bundle installationIdentitySettingIfNotSet:0 withError:&v62];
  v15 = v62;
  v16 = v15;
  if (v14)
  {
    uniqueInstallID = [v14 uniqueInstallID];
    [valuesCopy setUniqueInstallID:uniqueInstallID];

    installSessionID = [v14 installSessionID];
    [valuesCopy setInstallSessionID:installSessionID];
    goto LABEL_15;
  }

  domain2 = [v15 domain];
  if (![domain2 isEqualToString:*MEMORY[0x1E696A798]])
  {

    goto LABEL_11;
  }

  code2 = [v16 code];

  if (code2 != 93)
  {
LABEL_11:
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v43 = bundle;
      v47 = v16;
      MOLogWrite();
    }
  }

  installSessionID = v16;
  v16 = 0;
LABEL_15:

  v61 = v16;
  v22 = [bundle extensionKitBundlesWithError:&v61];
  v21 = v61;

  if (!v22)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v43 = bundle;
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

  [valuesCopy setSupportsAppMigration:v24];
  bundleContainer = v53;
  if (v53)
  {
    goto LABEL_31;
  }

LABEL_68:
}

- (id)bundleRecordWithError:(id *)error
{
  bundle = [(MIInstalledInfoGatherer *)self bundle];
  bundleType = [bundle bundleType];
  if (bundleType <= 6)
  {
    if ((bundleType - 1) < 5 || bundleType == 6)
    {
LABEL_14:
      v9 = objc_opt_new();
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if (bundleType <= 9)
  {
    if (bundleType == 7 || bundleType == 8)
    {
      goto LABEL_14;
    }

    bundleURL = [bundle bundleURL];
    _CreateAndLogError("[MIInstalledInfoGatherer bundleRecordWithError:]", 1008, @"MIInstallerErrorDomain", 4, 0, 0, @"Embedded watch apps don't get reported to Launch Services: %@", v8, bundleURL);
    v12 = LABEL_20:;

    v10 = 0;
    goto LABEL_21;
  }

  if (bundleType != 10)
  {
    if (bundleType == 11 || bundleType == 12)
    {
      goto LABEL_14;
    }

LABEL_19:
    bundleURL = [bundle bundleURL];
    _CreateAndLogError("[MIInstalledInfoGatherer bundleRecordWithError:]", 1012, @"MIInstallerErrorDomain", 4, 0, 0, @"Unable to determine application type for %@", v14, bundleURL);
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
    if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = 0;
  if (!error)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (!v13)
  {
    v15 = v12;
    *error = v12;
  }

LABEL_24:

  return v13;
}

- (BOOL)_populateBundleRecord:(id)record error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  bundle = [(MIInstalledInfoGatherer *)self bundle];
  identifier = [bundle identifier];

  bundle2 = [(MIInstalledInfoGatherer *)self bundle];
  if (MILogHandleForSignpost_onceToken != -1)
  {
    [MIInstalledInfoGatherer _populateBundleRecord:error:];
  }

  v10 = MILogHandleForSignpost_logHandle;
  if (os_signpost_enabled(MILogHandleForSignpost_logHandle))
  {
    *buf = 138412290;
    v28 = identifier;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GenerateDict", "Generating ICL bundle record for %@", buf, 0xCu);
  }

  v26 = 0;
  v11 = [bundle2 codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:0 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v26];
  v12 = v26;
  v13 = v12;
  if (!v11)
  {
    domain = [v12 domain];
    if ([domain isEqualToString:@"MIInstallerErrorDomain"] && objc_msgSend(v13, "code") == 71)
    {
      bundleType = [bundle2 bundleType];

      if (bundleType == 7)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 4)
    {
      bundleURL = [bundle2 bundleURL];
      path = [bundleURL path];
      MOLogWrite();
    }
  }

LABEL_14:

  v25 = 0;
  v17 = [(MIInstalledInfoGatherer *)self _populateBundleRecordValues:recordCopy signingInfo:v11 error:&v25];
  v18 = v25;
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIInstalledInfoGatherer *)self _populateAppRecordValues:recordCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIInstalledInfoGatherer *)self _populateAppExtensionRecordValues:recordCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIInstalledInfoGatherer *)self _populatePlaceholderRecordValues:recordCopy signingInfo:v11];
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
    v30 = identifier;
    _os_signpost_emit_with_name_impl(&dword_1B16A0000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GenerateDict", "%@Done generating ICL bundle record for %@", buf, 0x16u);
  }

  if (error)
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
    *error = v18;
  }

  return v17;
}

@end