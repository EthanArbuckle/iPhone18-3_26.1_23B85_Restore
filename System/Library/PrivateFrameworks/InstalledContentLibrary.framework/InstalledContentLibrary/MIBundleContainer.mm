@interface MIBundleContainer
+ (BOOL)purgeTransientBundleContainersWithError:(id *)error;
+ (BOOL)updateiTunesMetadata:(id)metadata forAppWithIdentifier:(id)identifier error:(id *)error;
+ (id)allAppBundleContainersWithError:(id *)error;
+ (id)appBundleContainerForIdentifier:(id)identifier temporary:(BOOL)temporary inDomain:(unint64_t)domain withError:(id *)error;
+ (id)appBundleContainerWithIdentifier:(id)identifier createIfNeeded:(BOOL)needed created:(BOOL *)created error:(id *)error;
+ (id)pluginKitPluginBundleContainerWithIdentifier:(id)identifier createIfNeeded:(BOOL)needed created:(BOOL *)created error:(id *)error;
+ (id)privateAppBundleContainerWithIdentifier:(id)identifier createIfNeeded:(BOOL)needed created:(BOOL *)created error:(id *)error;
+ (id)privateTempAppBundleContainerWithIdentifier:(id)identifier error:(id *)error;
+ (id)tempAppBundleContainerWithIdentifier:(id)identifier error:(id *)error;
+ (id)tempPluginKitPluginBundleContainerWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_configureBundleWithError:(id *)error;
- (BOOL)_writeRawiTunesMetadataData:(id)data error:(id *)error;
- (BOOL)bestEffortRollbackiTunesMetadata:(id)metadata error:(id *)error;
- (BOOL)captureBundleByMoving:(id)moving withError:(id *)error;
- (BOOL)captureStoreDataFromDirectory:(id)directory doCopy:(BOOL)copy failureIsFatal:(BOOL)fatal includeiTunesMetadata:(BOOL)metadata withError:(id *)error;
- (BOOL)cloneContentFromStashedBundleContainer:(id)container error:(id *)error;
- (BOOL)hasParallelPlaceholder;
- (BOOL)hasSerializedPlaceholder;
- (BOOL)makeContainerLiveReplacingContainer:(id)container reason:(unint64_t)reason waitForDeletion:(BOOL)deletion withError:(id *)error;
- (BOOL)saveBundleMetadata:(id)metadata withError:(id *)error;
- (BOOL)shouldHaveCorrespondingDataContainer;
- (BOOL)stashBundleContainerContents:(id)contents error:(id *)error;
- (BOOL)transferExistingStashesFromContainer:(id)container error:(id *)error;
- (BOOL)writeiTunesMetadata:(id)metadata error:(id *)error;
- (MIBundleContainer)initWithContainer:(id)container error:(id *)error;
- (MIBundleContainer)initWithContainerURL:(id)l expectAppWithin:(BOOL)within error:(id *)error;
- (MIBundleContainer)initWithToken:(id)token options:(unint64_t)options error:(id *)error;
- (NSURL)bundleMetadataURL;
- (NSURL)compatibilityLinkDestination;
- (NSURL)iTunesMetadataURL;
- (NSURL)parallelPlaceholderURL;
- (NSURL)referenceStorageURL;
- (NSURL)serializedPlaceholderURL;
- (NSURL)stashBaseURL;
- (id)_bundleExtensionForContainerClassWithError:(id *)error;
- (id)_stashURLForIndex:(unint64_t)index;
- (id)_stashedBundleContainerForIndex:(unint64_t)index error:(id *)error;
- (id)bundleMetadataWithError:(id *)error;
- (id)iTunesMetadataWithError:(id *)error;
- (unsigned)bundleMaxLinkedSDKVersion;
@end

@implementation MIBundleContainer

+ (id)appBundleContainerForIdentifier:(id)identifier temporary:(BOOL)temporary inDomain:(unint64_t)domain withError:(id *)error
{
  temporaryCopy = temporary;
  identifierCopy = identifier;
  if (domain == 3)
  {
    if (temporaryCopy)
    {
      v18 = 0;
      v12 = [self privateTempAppBundleContainerWithIdentifier:identifierCopy error:&v18];
      v13 = v18;
    }

    else
    {
      v17 = 0;
      v12 = [self privateAppBundleContainerWithIdentifier:identifierCopy createIfNeeded:0 created:0 error:&v17];
      v13 = v17;
    }
  }

  else
  {
    if (domain != 2)
    {
      v14 = _CreateAndLogError("+[MIBundleContainer appBundleContainerForIdentifier:temporary:inDomain:withError:]", 79, @"MIInstallerErrorDomain", 4, 0, 0, @"MIInstallationDomain was not set to either MIInstallationDomainSystemShared or MIInstallationDomainUserPrivate: %lu", v10, domain);
      v12 = 0;
      goto LABEL_11;
    }

    if (temporaryCopy)
    {
      v20 = 0;
      v12 = [self tempAppBundleContainerWithIdentifier:identifierCopy error:&v20];
      v13 = v20;
    }

    else
    {
      v19 = 0;
      v12 = [self appBundleContainerWithIdentifier:identifierCopy createIfNeeded:0 created:0 error:&v19];
      v13 = v19;
    }
  }

  v14 = v13;
LABEL_11:
  if (!(v12 | v14))
  {
    v14 = _CreateAndLogError("+[MIBundleContainer appBundleContainerForIdentifier:temporary:inDomain:withError:]", 85, @"MIInstallerErrorDomain", 26, 0, 0, @"Could not find installed app with identifier %@ in domain %lu", v15, identifierCopy);
  }

  if (error && !v12)
  {
    v14 = v14;
    *error = v14;
  }

  return v12;
}

+ (id)appBundleContainerWithIdentifier:(id)identifier createIfNeeded:(BOOL)needed created:(BOOL *)created error:(id *)error
{
  neededCopy = needed;
  identifierCopy = identifier;
  v11 = +[MIGlobalConfiguration sharedInstance];
  primaryPersonaString = [v11 primaryPersonaString];
  v13 = [self appBundleContainerWithIdentifier:identifierCopy forPersona:primaryPersonaString createIfNeeded:neededCopy created:created error:error];

  return v13;
}

+ (id)pluginKitPluginBundleContainerWithIdentifier:(id)identifier createIfNeeded:(BOOL)needed created:(BOOL *)created error:(id *)error
{
  neededCopy = needed;
  identifierCopy = identifier;
  v11 = +[MIGlobalConfiguration sharedInstance];
  primaryPersonaString = [v11 primaryPersonaString];
  v13 = [self containerWithIdentifier:identifierCopy forPersona:primaryPersonaString ofContentClass:3 createIfNeeded:neededCopy created:created error:error];

  return v13;
}

+ (id)tempAppBundleContainerWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[MIGlobalConfiguration sharedInstance];
  primaryPersonaString = [v7 primaryPersonaString];
  v9 = [self tempContainerWithIdentifier:identifierCopy forPersona:primaryPersonaString ofContentClass:1 error:error];

  return v9;
}

+ (id)privateAppBundleContainerWithIdentifier:(id)identifier createIfNeeded:(BOOL)needed created:(BOOL *)created error:(id *)error
{
  neededCopy = needed;
  identifierCopy = identifier;
  v11 = +[MIGlobalConfiguration sharedInstance];
  primaryPersonaString = [v11 primaryPersonaString];
  v13 = [self containerWithIdentifier:identifierCopy forPersona:primaryPersonaString ofContentClass:14 createIfNeeded:neededCopy created:created error:error];

  return v13;
}

+ (id)privateTempAppBundleContainerWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[MIGlobalConfiguration sharedInstance];
  primaryPersonaString = [v7 primaryPersonaString];
  v9 = [self tempContainerWithIdentifier:identifierCopy forPersona:primaryPersonaString ofContentClass:14 error:error];

  return v9;
}

+ (id)tempPluginKitPluginBundleContainerWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[MIGlobalConfiguration sharedInstance];
  primaryPersonaString = [v7 primaryPersonaString];
  v9 = [self tempContainerWithIdentifier:identifierCopy forPersona:primaryPersonaString ofContentClass:3 error:error];

  return v9;
}

+ (id)allAppBundleContainersWithError:(id *)error
{
  v4 = objc_opt_class();

  return [v4 containersWithClass:1 error:error];
}

+ (BOOL)purgeTransientBundleContainersWithError:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  if (!+[ICLFeatureFlags transientBundleCleanupEnabled])
  {
    v9 = _CreateAndLogError("+[MIBundleContainer purgeTransientBundleContainersWithError:]", 162, @"MIInstallerErrorDomain", 4, 0, 0, @"%s is not enabled", v7, "+[MIBundleContainer purgeTransientBundleContainersWithError:]");
    v21 = 0;
    v8 = 0;
    if (!error)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v36 = 0;
  v8 = [objc_opt_class() containersForIdentifier:0 groupContainerIdentifier:0 ofContentClass:1 forPersona:0 fetchTransient:1 createIfNeeded:0 error:&v36];
  v9 = v36;
  if (!v8)
  {
    v21 = 0;
    if (!error)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v35 = v9;
  v10 = [objc_opt_class() containersForIdentifier:0 groupContainerIdentifier:0 ofContentClass:14 forPersona:0 fetchTransient:1 createIfNeeded:0 error:&v35];
  v11 = v35;

  if (!v10)
  {
    v21 = 0;
    v9 = v11;
    if (!error)
    {
LABEL_30:
      v20 = 0;
      goto LABEL_31;
    }

LABEL_27:
    v22 = v9;
    v20 = 0;
    *error = v9;
    goto LABEL_31;
  }

  selfCopy = self;
  v26 = v11;
  v28 = v8;
  [v5 addObjectsFromArray:v8];
  v27 = v10;
  [v5 addObjectsFromArray:v10];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = v5;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v15 = *v32;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v32 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v31 + 1) + 8 * i);
      if ([v17 isStagedContainer])
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v24 = v17;
LABEL_16:
          MOLogWrite();
          continue;
        }
      }

      else
      {
        [v6 addObject:v17];
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v24 = v17;
          goto LABEL_16;
        }
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
  }

  while (v14);
LABEL_19:

  if (![v6 count])
  {
    v20 = 1;
    v8 = v28;
    v5 = v29;
    v9 = v26;
    v21 = v27;
    goto LABEL_31;
  }

  v18 = [v6 copy];
  v30 = v26;
  v19 = [selfCopy removeContainers:v18 waitForDeletion:0 error:&v30];
  v9 = v30;

  if ((v19 & 1) == 0)
  {
    v8 = v28;
    v5 = v29;
    v21 = v27;
    if (!error)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v20 = 1;
  v8 = v28;
  v5 = v29;
  v21 = v27;
LABEL_31:

  return v20;
}

- (BOOL)hasParallelPlaceholder
{
  v3 = +[MIFileManager defaultManager];
  parallelPlaceholderURL = [(MIBundleContainer *)self parallelPlaceholderURL];
  v5 = [v3 itemExistsAtURL:parallelPlaceholderURL];

  return v5;
}

- (NSURL)parallelPlaceholderURL
{
  containerURL = [(MIContainer *)self containerURL];
  v3 = [containerURL URLByAppendingPathComponent:@"com.apple.mobileinstallation.placeholder" isDirectory:1];

  return v3;
}

- (BOOL)hasSerializedPlaceholder
{
  v3 = +[MIFileManager defaultManager];
  serializedPlaceholderURL = [(MIBundleContainer *)self serializedPlaceholderURL];
  v5 = [v3 itemExistsAtURL:serializedPlaceholderURL];

  return v5;
}

- (NSURL)serializedPlaceholderURL
{
  containerURL = [(MIContainer *)self containerURL];
  v3 = [containerURL URLByAppendingPathComponent:@"SerializedPlaceholder.ipa" isDirectory:0];

  return v3;
}

- (BOOL)writeiTunesMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  v16 = 0;
  v7 = [metadataCopy propertyListDataWithError:&v16];
  v8 = v16;
  v9 = v8;
  if (v7)
  {
    v15 = v8;
    v10 = [(MIBundleContainer *)self _writeRawiTunesMetadataData:v7 error:&v15];
    v11 = v15;

    if (v10)
    {
      [(MIBundleContainer *)self setITunesMetadata:metadataCopy];
      v12 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v11 = v8;
  }

  if (error)
  {
    v13 = v11;
    v12 = 0;
    *error = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_8:

  return v12;
}

- (BOOL)_writeRawiTunesMetadataData:(id)data error:(id *)error
{
  dataCopy = data;
  iTunesMetadataURL = [(MIBundleContainer *)self iTunesMetadataURL];
  v15 = 0;
  v8 = [dataCopy writeToURL:iTunesMetadataURL options:268435457 error:&v15];

  v9 = v15;
  if ((v8 & 1) == 0)
  {
    path = [iTunesMetadataURL path];
    v12 = _CreateAndLogError("[MIBundleContainer _writeRawiTunesMetadataData:error:]", 273, @"MIInstallerErrorDomain", 124, v9, &unk_1F28888A8, @"Failed to write iTunesMetadata to %@", v11, path);

    if (error)
    {
      v13 = v12;
      *error = v12;
    }

    v9 = v12;
  }

  return v8;
}

- (BOOL)bestEffortRollbackiTunesMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  if (metadataCopy)
  {
    v20 = 0;
    v7 = [MIStoreMetadata metadataFromPlistData:metadataCopy error:&v20];
    v8 = v20;
    v9 = v8;
    if (v7)
    {
      v19 = v8;
      v10 = [(MIBundleContainer *)self _writeRawiTunesMetadataData:metadataCopy error:&v19];
      v11 = v19;

      if (v10)
      {
        [(MIBundleContainer *)self setITunesMetadata:v7];

LABEL_7:
        v15 = 1;
        goto LABEL_19;
      }

      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }
    }

    else
    {
      v11 = v8;
    }
  }

  else
  {
    v12 = +[MIFileManager defaultManager];
    iTunesMetadataURL = [(MIBundleContainer *)self iTunesMetadataURL];
    v18 = 0;
    v14 = [v12 removeItemAtURL:iTunesMetadataURL error:&v18];
    v11 = v18;

    if (v14)
    {
      [(MIBundleContainer *)self setITunesMetadata:0];
      goto LABEL_7;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  if (error)
  {
    v16 = v11;
    v15 = 0;
    *error = v11;
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  return v15;
}

+ (BOOL)updateiTunesMetadata:(id)metadata forAppWithIdentifier:(id)identifier error:(id *)error
{
  metadataCopy = metadata;
  v19 = 0;
  v9 = [self appBundleContainerWithIdentifier:identifier createIfNeeded:0 created:0 error:&v19];
  v10 = v19;
  v11 = v10;
  if (v9)
  {
    v18 = v10;
    v12 = [metadataCopy propertyListDataWithError:&v18];
    v13 = v18;

    if (v12)
    {
      v17 = v13;
      v14 = [v9 writeiTunesMetadata:metadataCopy error:&v17];
      v11 = v17;

      if (!error)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v14 = 0;
      v11 = v13;
      if (!error)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v14 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if ((v14 & 1) == 0)
  {
    v15 = v11;
    *error = v11;
  }

LABEL_10:

  return v14;
}

- (id)iTunesMetadataWithError:(id *)error
{
  iTunesMetadata = [(MIBundleContainer *)self iTunesMetadata];
  if (iTunesMetadata)
  {
    v6 = iTunesMetadata;
  }

  else
  {
    iTunesMetadataURL = [(MIBundleContainer *)self iTunesMetadataURL];
    v12 = 0;
    v6 = [MIStoreMetadata metadataFromPlistAtURL:iTunesMetadataURL error:&v12];
    v8 = v12;

    if (v6)
    {
      [(MIBundleContainer *)self setITunesMetadata:v6];
      v9 = v6;
    }

    else if (error)
    {
      v10 = v8;
      *error = v8;
    }
  }

  return v6;
}

- (id)_bundleExtensionForContainerClassWithError:(id *)error
{
  containerClass = [(MIContainer *)self containerClass];
  v6 = 0;
  v7 = @"app";
  if (containerClass != 1 && containerClass != 14)
  {
    v6 = _CreateAndLogError("[MIBundleContainer _bundleExtensionForContainerClassWithError:]", 396, @"MIInstallerErrorDomain", 4, 0, 0, @"BundleContainer can't be created for container type %llu", v4, containerClass);
    if (error)
    {
      v6 = v6;
      v7 = 0;
      *error = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)_configureBundleWithError:(id *)error
{
  containerURL = [(MIContainer *)self containerURL];
  v16 = 0;
  v6 = [(MIBundleContainer *)self _bundleExtensionForContainerClassWithError:&v16];
  v7 = v16;
  v8 = v7;
  if (v6)
  {
    v15 = v7;
    v9 = [[MIExecutableBundle alloc] initWithBundleInContainer:self withExtension:v6 error:&v15];
    v10 = v15;

    bundle = self->_bundle;
    self->_bundle = v9;

    if (!self->_bundle && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      path = [containerURL path];
      MOLogWrite();
    }
  }

  else
  {
    if (error)
    {
      v12 = v7;
      *error = v8;
    }

    v10 = v8;
  }

  return v6 != 0;
}

- (MIBundleContainer)initWithToken:(id)token options:(unint64_t)options error:(id *)error
{
  tokenCopy = token;
  v27.receiver = self;
  v27.super_class = MIBundleContainer;
  v28 = 0;
  v9 = [(MIContainer *)&v27 initWithToken:tokenCopy options:options error:&v28];
  v10 = v28;
  if (v9)
  {
    v26.receiver = v9;
    v26.super_class = MIBundleContainer;
    rawContainer = [(MIContainer *)&v26 rawContainer];

    if (rawContainer)
    {
      if ([tokenCopy hasIdentifiedBundle])
      {
        v25 = v10;
        v12 = [(MIBundleContainer *)v9 _configureBundleWithError:&v25];
        v13 = v25;

        v10 = v13;
        if (!v12)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v13 = v10;
      }
    }

    else
    {
      v16 = [MIExecutableBundle alloc];
      bundleURL = [tokenCopy bundleURL];
      v24 = v10;
      v18 = [(MIBundle *)v16 initWithBundleURL:bundleURL error:&v24];
      v13 = v24;

      bundle = v9->_bundle;
      v9->_bundle = v18;

      v20 = v9->_bundle;
      if (!v20)
      {
        bundleURL2 = [tokenCopy bundleURL];
        v10 = _CreateAndLogError("[MIBundleContainer initWithToken:options:error:]", 443, @"MIInstallerErrorDomain", 4, v13, 0, @"Failed to create app bundle from %@", v22, bundleURL2);

        if (error)
        {
          goto LABEL_6;
        }

LABEL_12:
        v15 = 0;
        goto LABEL_13;
      }

      [(MIExecutableBundle *)v20 setBundleContainer:v9];
    }

    v15 = v9;
    v10 = v13;
    goto LABEL_13;
  }

LABEL_5:
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_6:
  v14 = v10;
  v15 = 0;
  *error = v10;
LABEL_13:

  return v15;
}

- (MIBundleContainer)initWithContainerURL:(id)l expectAppWithin:(BOOL)within error:(id *)error
{
  lCopy = l;
  v21.receiver = self;
  v21.super_class = MIBundleContainer;
  v9 = [(MIContainer *)&v21 initWithContainerURL:lCopy];
  v10 = v9;
  if (within)
  {
    if (v9)
    {
      v20 = 0;
      v11 = [[MIExecutableBundle alloc] initWithBundleInContainer:v9 withExtension:@"app" error:&v20];
      v12 = v20;
      bundle = v10->_bundle;
      v10->_bundle = v11;

      if (v10->_bundle)
      {
LABEL_9:
        v17 = v10;

        goto LABEL_10;
      }

      path = [lCopy path];
      v16 = _CreateAndLogError("[MIBundleContainer initWithContainerURL:expectAppWithin:error:]", 490, @"MIInstallerErrorDomain", 4, v12, 0, @"Failed to find app bundle in container %@ : %@", v15, path);

      v12 = v16;
      if (!error)
      {
LABEL_5:
        v10 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v12 = 0;
      if (!error)
      {
        goto LABEL_5;
      }
    }

    v18 = v12;
    v10 = 0;
    *error = v12;
    goto LABEL_9;
  }

  v17 = v9;
LABEL_10:

  return v17;
}

- (MIBundleContainer)initWithContainer:(id)container error:(id *)error
{
  v14.receiver = self;
  v14.super_class = MIBundleContainer;
  v5 = [(MIContainer *)&v14 initWithContainer:container error:?];
  v6 = v5;
  if (!v5 || [(MIContainer *)v5 status]!= 1)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v13 = 0;
  v7 = [(MIBundleContainer *)v6 _configureBundleWithError:&v13];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
LABEL_7:
    v11 = v6;
    goto LABEL_8;
  }

  if (error)
  {
    v10 = v8;
    v11 = 0;
    *error = v9;
  }

  else
  {
    v11 = 0;
  }

LABEL_8:

  return v11;
}

- (NSURL)iTunesMetadataURL
{
  containerURL = [(MIContainer *)self containerURL];
  v3 = [containerURL URLByAppendingPathComponent:@"iTunesMetadata.plist" isDirectory:0];

  return v3;
}

- (NSURL)bundleMetadataURL
{
  containerURL = [(MIContainer *)self containerURL];
  v3 = [containerURL URLByAppendingPathComponent:@"BundleMetadata.plist" isDirectory:0];

  return v3;
}

- (id)bundleMetadataWithError:(id *)error
{
  bundleMetadata = [(MIBundleContainer *)self bundleMetadata];
  if (bundleMetadata)
  {
    v6 = bundleMetadata;
    v7 = 0;
LABEL_5:
    v10 = [(MIBundleMetadata *)v6 copy];
    bundleMetadataURL = v6;
    goto LABEL_6;
  }

  bundleMetadataURL = [(MIBundleContainer *)self bundleMetadataURL];
  v15 = 0;
  v6 = [MIBundleMetadata metadataFromURL:bundleMetadataURL error:&v15];
  v9 = v15;
  v7 = v9;
  if (v6)
  {
LABEL_4:
    [(MIBundleContainer *)self setBundleMetadata:v6];

    goto LABEL_5;
  }

  domain = [v9 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    code = [v7 code];

    if (code == 260)
    {
      v6 = objc_alloc_init(MIBundleMetadata);
      goto LABEL_4;
    }
  }

  else
  {
  }

  if (error)
  {
    v14 = v7;
    v10 = 0;
    *error = v7;
  }

  else
  {
    v10 = 0;
  }

LABEL_6:

  return v10;
}

- (BOOL)saveBundleMetadata:(id)metadata withError:(id *)error
{
  metadataCopy = metadata;
  bundleMetadataURL = [(MIBundleContainer *)self bundleMetadataURL];
  v13 = 0;
  v8 = [metadataCopy serializeToURL:bundleMetadataURL error:&v13];
  v9 = v13;
  v10 = v9;
  if (v8)
  {
    [(MIBundleContainer *)self setBundleMetadata:metadataCopy];
  }

  else if (error)
  {
    v11 = v9;
    *error = v10;
  }

  return v8;
}

- (BOOL)captureBundleByMoving:(id)moving withError:(id *)error
{
  movingCopy = moving;
  containerURL = [(MIContainer *)self containerURL];
  if (!containerURL)
  {
    v17 = _CreateAndLogError("[MIBundleContainer captureBundleByMoving:withError:]", 581, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed get container URL from %@", v8, self);
    v11 = 0;
    goto LABEL_6;
  }

  bundleName = [movingCopy bundleName];
  v11 = [containerURL URLByAppendingPathComponent:bundleName];

  v12 = +[MIFileManager defaultManager];
  bundleURL = [movingCopy bundleURL];
  v24 = 0;
  v14 = [v12 moveItemAtURL:bundleURL toURL:v11 error:&v24];
  v15 = v24;

  if ((v14 & 1) == 0)
  {
    bundleURL2 = [movingCopy bundleURL];
    v17 = _CreateAndLogError("[MIBundleContainer captureBundleByMoving:withError:]", 587, @"MIInstallerErrorDomain", 20, v15, &unk_1F28888D0, @"Failed to move application at %@ into container path %@", v21, bundleURL2);

    if (error)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  objc_storeStrong(&self->_bundle, moving);
  v23 = v15;
  v16 = [movingCopy setBundleParentDirectoryURL:containerURL error:&v23];
  v17 = v23;

  if (!v16)
  {
LABEL_6:
    if (error)
    {
LABEL_7:
      v19 = v17;
      v18 = 0;
      *error = v17;
      goto LABEL_10;
    }

LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  [movingCopy setBundleContainer:self];
  v18 = 1;
LABEL_10:

  return v18;
}

- (BOOL)makeContainerLiveReplacingContainer:(id)container reason:(unint64_t)reason waitForDeletion:(BOOL)deletion withError:(id *)error
{
  v22.receiver = self;
  v22.super_class = MIBundleContainer;
  v23 = 0;
  v8 = [(MIContainer *)&v22 makeContainerLiveReplacingContainer:container reason:reason waitForDeletion:deletion withError:&v23];
  v9 = v23;
  if (v8)
  {
    containerURL = [(MIContainer *)self containerURL];
    if (containerURL)
    {
      v12 = containerURL;
      bundle = [(MIBundleContainer *)self bundle];
      v21 = v9;
      LOBYTE(v8) = [bundle setBundleParentDirectoryURL:v12 error:&v21];
      v14 = v21;

      v9 = v12;
    }

    else
    {
      v14 = _CreateAndLogError("[MIBundleContainer makeContainerLiveReplacingContainer:reason:waitForDeletion:withError:]", 617, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to get container URL from %@", v11, self);
      LOBYTE(v8) = 0;
    }

    v9 = v14;
  }

  if ([(MIContainer *)self isStagedContainer])
  {
    v20 = 0;
    v15 = [(MIContainer *)self clearStagedUpdateContainerStatusWithError:&v20];
    v16 = v20;
    if (!v15 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      MOLogWrite();
    }
  }

  if (error)
  {
    v17 = v8;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    v18 = v9;
    *error = v9;
  }

  return v8;
}

- (unsigned)bundleMaxLinkedSDKVersion
{
  v14 = 0;
  v3 = [(MIContainer *)self infoValueForKey:@"com.apple.MobileInstallation.BundleMaxLinkedSDKVersion" error:&v14];
  v4 = v14;
  objc_opt_class();
  v5 = v3;
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  if (v6)
  {
    LODWORD(maxLinkedSDKVersion) = [v6 unsignedIntValue];
LABEL_5:
    v8 = v4;
    goto LABEL_6;
  }

  bundle = [(MIBundleContainer *)self bundle];
  maxLinkedSDKVersion = [bundle maxLinkedSDKVersion];

  if (!maxLinkedSDKVersion)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:maxLinkedSDKVersion];
  v13 = v4;
  v12 = [(MIContainer *)self setInfoValue:v11 forKey:@"com.apple.MobileInstallation.BundleMaxLinkedSDKVersion" error:&v13];
  v8 = v13;

  if (!v12 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    MOLogWrite();
  }

LABEL_6:

  return maxLinkedSDKVersion;
}

- (BOOL)shouldHaveCorrespondingDataContainer
{
  bundle = [(MIBundleContainer *)self bundle];
  needsDataContainer = [bundle needsDataContainer];

  return needsDataContainer;
}

- (BOOL)captureStoreDataFromDirectory:(id)directory doCopy:(BOOL)copy failureIsFatal:(BOOL)fatal includeiTunesMetadata:(BOOL)metadata withError:(id *)error
{
  metadataCopy = metadata;
  fatalCopy = fatal;
  copyCopy = copy;
  directoryCopy = directory;
  iTunesMetadataURL = [(MIBundleContainer *)self iTunesMetadataURL];
  containerURL = [(MIContainer *)self containerURL];
  if (containerURL)
  {
    v16 = +[MIFileManager defaultManager];
    v34 = 0;
    LODWORD(copyCopy) = [v16 captureStoreDataFromDirectory:directoryCopy toDirectory:containerURL doCopy:copyCopy failureIsFatal:fatalCopy includeiTunesMetadata:metadataCopy withError:&v34];
    v17 = v34;

    if (copyCopy)
    {
      v18 = !metadataCopy;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = 0;
      v20 = v17;
      if (!error)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v33 = v17;
    v19 = [MIStoreMetadata metadataFromPlistAtURL:iTunesMetadataURL error:&v33];
    v20 = v33;

    if (v19)
    {
      distributorInfo = [v19 distributorInfo];
      if (distributorInfo)
      {
        copyCopy = distributorInfo;
        path = [directoryCopy path];
        v24 = _CreateAndLogError("[MIBundleContainer captureStoreDataFromDirectory:doCopy:failureIsFatal:includeiTunesMetadata:withError:]", 696, @"MIInstallerErrorDomain", 215, 0, 0, @"iTunesMetadata.plist captured from %@ has distributorInfo set this is not allowed. Found distributorInfo: %@", v23, path);;

        LOBYTE(copyCopy) = 0;
        v20 = v24;
        if (!error)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_21:
      [(MIBundleContainer *)self setITunesMetadata:v19];
      LOBYTE(copyCopy) = 1;
      goto LABEL_17;
    }

    userInfo = [v20 userInfo];
    v28 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    domain = [v28 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      code = [v28 code];

      if (code == 260)
      {

        v20 = 0;
        goto LABEL_21;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      path2 = [iTunesMetadataURL path];
      MOLogWrite();
    }
  }

  else
  {
    v20 = _CreateAndLogError("[MIBundleContainer captureStoreDataFromDirectory:doCopy:failureIsFatal:includeiTunesMetadata:withError:]", 673, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to get container URL", v14, v31);
  }

  v19 = 0;
  LOBYTE(copyCopy) = 0;
  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  if ((copyCopy & 1) == 0)
  {
    v25 = v20;
    LOBYTE(copyCopy) = 0;
    *error = v20;
  }

LABEL_17:

  return copyCopy;
}

- (NSURL)stashBaseURL
{
  containerURL = [(MIContainer *)self containerURL];
  v3 = [containerURL URLByAppendingPathComponent:@"com.apple.mobileinstallation.stash" isDirectory:1];

  return v3;
}

- (id)_stashURLForIndex:(unint64_t)index
{
  stashBaseURL = [(MIBundleContainer *)self stashBaseURL];
  index = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", index];
  v6 = [stashBaseURL URLByAppendingPathComponent:index isDirectory:1];

  return v6;
}

- (id)_stashedBundleContainerForIndex:(unint64_t)index error:(id *)error
{
  v6 = [(MIBundleContainer *)self _stashURLForIndex:?];
  v7 = +[MIFileManager defaultManager];
  v22 = 0;
  v8 = [v7 itemExistsAtURL:v6 error:&v22];
  v9 = v22;

  if (v8)
  {
    v21 = v9;
    v10 = [(MIBundleContainer *)[MIStashedBundleContainer alloc] initWithContainerURL:v6 expectAppWithin:1 error:&v21];
    v11 = v21;

    if (v10)
    {
      goto LABEL_8;
    }

    v12 = objc_opt_class();
    containerURL = NSStringFromClass(v12);
    path = [v6 path];
    v16 = _CreateAndLogError("[MIBundleContainer _stashedBundleContainerForIndex:error:]", 746, @"MIInstallerErrorDomain", 4, v11, 0, @"Failed to create %@ instance for %@", v15, containerURL);
    v9 = v11;
  }

  else
  {
    v17 = *MEMORY[0x1E696A250];
    containerURL = [(MIContainer *)self containerURL];
    path = [v6 path];
    v16 = _CreateError("[MIBundleContainer _stashedBundleContainerForIndex:error:]", 740, v17, 260, v9, 0, @"No stash was found in bundle container %@ with index %lu (at %@)", v18, containerURL);
  }

  v11 = v16;

  if (error)
  {
    v19 = v11;
    v10 = 0;
    *error = v11;
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (BOOL)cloneContentFromStashedBundleContainer:(id)container error:(id *)error
{
  containerCopy = container;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__10;
  v34 = __Block_byref_object_dispose__10;
  v35 = 0;
  v7 = +[MIFileManager defaultManager];
  containerURL = [(MIContainer *)self containerURL];
  if (!containerURL)
  {
    v15 = _CreateAndLogError("[MIBundleContainer cloneContentFromStashedBundleContainer:error:]", 793, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed get container URL for %@ when trying to clone content from %@", v8, self);
    bundle = 0;
    v13 = 0;
    goto LABEL_7;
  }

  bundle = [containerCopy bundle];
  if (!bundle)
  {
    containerURL2 = [containerCopy containerURL];
    v18 = _CreateAndLogError("[MIBundleContainer cloneContentFromStashedBundleContainer:error:]", 799, @"MIInstallerErrorDomain", 4, 0, 0, @"Could not locate bundle in stashed bundle container at %@", v17, containerURL2);
    v19 = v31[5];
    v31[5] = v18;

    bundle = 0;
    v13 = 0;
    goto LABEL_9;
  }

  containerURL3 = [containerCopy containerURL];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __66__MIBundleContainer_cloneContentFromStashedBundleContainer_error___block_invoke;
  v26[3] = &unk_1E7AE21A8;
  v12 = containerURL;
  v27 = v12;
  v28 = v7;
  v29 = &v30;
  v13 = [v28 enumerateURLsForItemsInDirectoryAtURL:containerURL3 ignoreSymlinks:1 withBlock:v26];

  if (v31[5])
  {
    goto LABEL_10;
  }

  if (v13)
  {
    v15 = _CreateAndLogError("[MIBundleContainer cloneContentFromStashedBundleContainer:error:]", 828, @"MIInstallerErrorDomain", 4, v13, 0, @"Failed to enumerate stashed container", v14, v24);
LABEL_7:
    containerURL2 = v31[5];
    v31[5] = v15;
LABEL_9:

LABEL_10:
    if (error)
    {
      goto LABEL_11;
    }

LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  objc_storeStrong(&self->_bundle, bundle);
  v21 = (v31 + 5);
  obj = v31[5];
  v22 = [bundle setBundleParentDirectoryURL:v12 error:&obj];
  objc_storeStrong(v21, obj);
  if (v22)
  {
    [bundle setBundleContainer:self];
    v13 = 0;
    v20 = 1;
    goto LABEL_16;
  }

  v13 = 0;
  if (!error)
  {
    goto LABEL_15;
  }

LABEL_11:
  v20 = 0;
  *error = v31[5];
LABEL_16:

  _Block_object_dispose(&v30, 8);
  return v20;
}

uint64_t __66__MIBundleContainer_cloneContentFromStashedBundleContainer_error___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 lastPathComponent];
  if (_ItemIsIgnoredContainerContentForStash(v6))
  {
    v7 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) URLByAppendingPathComponent:v6 isDirectory:a3 == 4];
    v9 = *(a1 + 40);
    v18 = 0;
    v7 = [v9 copyItemAtURL:v5 toURL:v8 alwaysClone:0 error:&v18];
    v10 = v18;
    if ((v7 & 1) == 0)
    {
      v11 = [v5 path];
      v17 = [v8 path];
      v13 = _CreateAndLogError("[MIBundleContainer cloneContentFromStashedBundleContainer:error:]_block_invoke", 815, @"MIInstallerErrorDomain", 4, v10, 0, @"Failed to clone stashed item %@ to %@", v12, v11);
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }

  return v7;
}

- (BOOL)transferExistingStashesFromContainer:(id)container error:(id *)error
{
  containerCopy = container;
  v7 = +[MIFileManager defaultManager];
  stashBaseURL = [containerCopy stashBaseURL];

  stashBaseURL2 = [(MIBundleContainer *)self stashBaseURL];
  if ([v7 itemDoesNotExistAtURL:stashBaseURL])
  {
    v10 = 0;
LABEL_7:
    v13 = 1;
    goto LABEL_12;
  }

  v22 = 0;
  v11 = [v7 copyItemAtURL:stashBaseURL toURL:stashBaseURL2 alwaysClone:0 error:&v22];
  v10 = v22;
  if (v11)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      bundle = [(MIBundleContainer *)self bundle];
      identifier = [bundle identifier];
      MOLogWrite();
    }

    goto LABEL_7;
  }

  bundle2 = [(MIBundleContainer *)self bundle];
  identifier2 = [bundle2 identifier];
  path = [stashBaseURL path];
  v17 = _CreateAndLogError("[MIBundleContainer transferExistingStashesFromContainer:error:]", 863, @"MIInstallerErrorDomain", 4, v10, 0, @"Failed to preserve existing stashed version of app %@ at %@", v16, identifier2);

  if (error)
  {
    v18 = v17;
    v13 = 0;
    *error = v17;
  }

  else
  {
    v13 = 0;
  }

  v10 = v17;
LABEL_12:

  return v13;
}

- (BOOL)stashBundleContainerContents:(id)contents error:(id *)error
{
  contentsCopy = contents;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__10;
  v58 = __Block_byref_object_dispose__10;
  v59 = 0;
  v7 = +[MIFileManager defaultManager];
  stashBaseURL = [(MIBundleContainer *)self stashBaseURL];
  v9 = [(MIBundleContainer *)self _stashURLForIndex:0];
  v10 = (v55 + 5);
  obj = v55[5];
  v11 = [v7 createDirectoryAtURL:stashBaseURL withIntermediateDirectories:0 mode:493 class:4 error:&obj];
  objc_storeStrong(v10, obj);
  if ((v11 & 1) == 0)
  {
    v22 = v55[5];
    path = [stashBaseURL path];
    v25 = _CreateAndLogError("[MIBundleContainer stashBundleContainerContents:error:]", 893, @"MIInstallerErrorDomain", 4, v22, 0, @"Failed to create stash base directory at %@", v24, path);
LABEL_8:
    v28 = v55[5];
    v55[5] = v25;

    v16 = 0;
    newStashMetadata = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_9;
  }

  v12 = (v55 + 5);
  v52 = v55[5];
  v13 = [v7 createDirectoryAtURL:v9 withIntermediateDirectories:0 mode:493 class:4 error:&v52];
  objc_storeStrong(v12, v52);
  if ((v13 & 1) == 0)
  {
    v26 = v55[5];
    path = [stashBaseURL path];
    v25 = _CreateAndLogError("[MIBundleContainer stashBundleContainerContents:error:]", 899, @"MIInstallerErrorDomain", 4, v26, 0, @"Failed to create stash base directory at %@", v27, path);
    goto LABEL_8;
  }

  containerURL = [contentsCopy containerURL];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __56__MIBundleContainer_stashBundleContainerContents_error___block_invoke;
  v48[3] = &unk_1E7AE21A8;
  v15 = v9;
  v49 = v15;
  v50 = v7;
  v51 = &v54;
  v16 = [v50 enumerateURLsForItemsInDirectoryAtURL:containerURL ignoreSymlinks:1 withBlock:v48];

  if (v55[5])
  {
    newStashMetadata = 0;
    v19 = 0;
    v20 = 0;
    if (!error)
    {
LABEL_5:
      v21 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v21 = 0;
    *error = v55[5];
    goto LABEL_11;
  }

  if (v16)
  {
    v30 = _CreateAndLogError("[MIBundleContainer stashBundleContainerContents:error:]", 929, @"MIInstallerErrorDomain", 4, v16, 0, @"Failed to enumerate stashed container", v17, v42);
    newStashMetadata = 0;
    v19 = 0;
    v20 = 0;
LABEL_14:
    path = v55[5];
    v55[5] = v30;
LABEL_9:

    if (!error)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v31 = [MIStashedBundleContainer alloc];
  v32 = (v55 + 5);
  v47 = v55[5];
  v20 = [(MIBundleContainer *)v31 initWithContainerURL:v15 expectAppWithin:1 error:&v47];
  objc_storeStrong(v32, v47);
  if (!v20)
  {
    v40 = v55[5];
    path = [v15 path];
    v25 = _CreateAndLogError("[MIBundleContainer stashBundleContainerContents:error:]", 936, @"MIInstallerErrorDomain", 4, v40, 0, @"Failed to create MIStashedBundleContainer instance for %@", v41, path);
    goto LABEL_8;
  }

  v33 = (v55 + 5);
  v46 = v55[5];
  v19 = [contentsCopy bundleMetadataWithError:&v46];
  objc_storeStrong(v33, v46);
  if (!v19)
  {
    v30 = _CreateAndLogError("[MIBundleContainer stashBundleContainerContents:error:]", 943, @"MIInstallerErrorDomain", 4, v55[5], 0, @"Failed to read bundle metadata from %@", v34, contentsCopy);
    v16 = 0;
    newStashMetadata = 0;
    v19 = 0;
    goto LABEL_14;
  }

  newStashMetadata = [(MIStashedBundleContainer *)v20 newStashMetadata];
  date = [MEMORY[0x1E695DF00] date];
  [newStashMetadata setDateStashed:date];

  installDate = [v19 installDate];
  [newStashMetadata setDateOriginallyInstalled:installDate];

  v37 = (v55 + 5);
  v45 = v55[5];
  v44 = [(MIStashedBundleContainer *)v20 saveStashMetadata:newStashMetadata withError:&v45];
  objc_storeStrong(v37, v45);
  if (!v44)
  {
    v30 = _CreateAndLogError("[MIBundleContainer stashBundleContainerContents:error:]", 952, @"MIInstallerErrorDomain", 4, v55[5], 0, @"Failed to save stash metadata", v38, v42);
    v16 = 0;
    goto LABEL_14;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    bundle = [(MIBundleContainer *)self bundle];
    identifier = [bundle identifier];
    MOLogWrite();
  }

  v16 = 0;
  v21 = 1;
LABEL_11:

  _Block_object_dispose(&v54, 8);
  return v21;
}

uint64_t __56__MIBundleContainer_stashBundleContainerContents_error___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 lastPathComponent];
  if (_ItemIsIgnoredContainerContentForStash(v6))
  {
    v7 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) URLByAppendingPathComponent:v6 isDirectory:a3 == 4];
    v9 = *(a1 + 40);
    v18 = 0;
    v7 = [v9 copyItemAtURL:v5 toURL:v8 alwaysClone:0 error:&v18];
    v10 = v18;
    if ((v7 & 1) == 0)
    {
      v11 = [v5 path];
      v17 = [v8 path];
      v13 = _CreateAndLogError("[MIBundleContainer stashBundleContainerContents:error:]_block_invoke", 916, @"MIInstallerErrorDomain", 4, v10, 0, @"Failed to clone existing container item at path %@ to stash path %@", v12, v11);
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }

  return v7;
}

- (NSURL)compatibilityLinkDestination
{
  bundle = [(MIBundleContainer *)self bundle];
  if ([bundle isPlaceholder])
  {
LABEL_10:
    bundleURL2 = 0;
    goto LABEL_11;
  }

  bundleMaxLinkedSDKVersion = [(MIBundleContainer *)self bundleMaxLinkedSDKVersion];
  if (!bundleMaxLinkedSDKVersion)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      bundleURL = [bundle bundleURL];
      path = [bundleURL path];
      MOLogWrite();
    }

    goto LABEL_10;
  }

  if (bundleMaxLinkedSDKVersion >= 0x80000)
  {
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      MOLogWrite();
    }

    goto LABEL_10;
  }

  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v8 = bundleMaxLinkedSDKVersion;
    MOLogWrite();
  }

  bundleURL2 = [bundle bundleURL];
LABEL_11:

  return bundleURL2;
}

- (NSURL)referenceStorageURL
{
  containerURL = [(MIContainer *)self containerURL];
  v3 = [containerURL URLByAppendingPathComponent:@"References" isDirectory:1];

  return v3;
}

@end