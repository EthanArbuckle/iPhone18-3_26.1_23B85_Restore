@interface MIBundleContainer
+ (BOOL)purgeTransientBundleContainersWithError:(id *)a3;
+ (BOOL)updateiTunesMetadata:(id)a3 forAppWithIdentifier:(id)a4 error:(id *)a5;
+ (id)allAppBundleContainersWithError:(id *)a3;
+ (id)appBundleContainerForIdentifier:(id)a3 temporary:(BOOL)a4 inDomain:(unint64_t)a5 withError:(id *)a6;
+ (id)appBundleContainerWithIdentifier:(id)a3 createIfNeeded:(BOOL)a4 created:(BOOL *)a5 error:(id *)a6;
+ (id)pluginKitPluginBundleContainerWithIdentifier:(id)a3 createIfNeeded:(BOOL)a4 created:(BOOL *)a5 error:(id *)a6;
+ (id)privateAppBundleContainerWithIdentifier:(id)a3 createIfNeeded:(BOOL)a4 created:(BOOL *)a5 error:(id *)a6;
+ (id)privateTempAppBundleContainerWithIdentifier:(id)a3 error:(id *)a4;
+ (id)tempAppBundleContainerWithIdentifier:(id)a3 error:(id *)a4;
+ (id)tempPluginKitPluginBundleContainerWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_configureBundleWithError:(id *)a3;
- (BOOL)_writeRawiTunesMetadataData:(id)a3 error:(id *)a4;
- (BOOL)bestEffortRollbackiTunesMetadata:(id)a3 error:(id *)a4;
- (BOOL)captureBundleByMoving:(id)a3 withError:(id *)a4;
- (BOOL)captureStoreDataFromDirectory:(id)a3 doCopy:(BOOL)a4 failureIsFatal:(BOOL)a5 includeiTunesMetadata:(BOOL)a6 withError:(id *)a7;
- (BOOL)cloneContentFromStashedBundleContainer:(id)a3 error:(id *)a4;
- (BOOL)hasParallelPlaceholder;
- (BOOL)hasSerializedPlaceholder;
- (BOOL)makeContainerLiveReplacingContainer:(id)a3 reason:(unint64_t)a4 waitForDeletion:(BOOL)a5 withError:(id *)a6;
- (BOOL)saveBundleMetadata:(id)a3 withError:(id *)a4;
- (BOOL)shouldHaveCorrespondingDataContainer;
- (BOOL)stashBundleContainerContents:(id)a3 error:(id *)a4;
- (BOOL)transferExistingStashesFromContainer:(id)a3 error:(id *)a4;
- (BOOL)writeiTunesMetadata:(id)a3 error:(id *)a4;
- (MIBundleContainer)initWithContainer:(id)a3 error:(id *)a4;
- (MIBundleContainer)initWithContainerURL:(id)a3 expectAppWithin:(BOOL)a4 error:(id *)a5;
- (MIBundleContainer)initWithToken:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (NSURL)bundleMetadataURL;
- (NSURL)compatibilityLinkDestination;
- (NSURL)iTunesMetadataURL;
- (NSURL)parallelPlaceholderURL;
- (NSURL)referenceStorageURL;
- (NSURL)serializedPlaceholderURL;
- (NSURL)stashBaseURL;
- (id)_bundleExtensionForContainerClassWithError:(id *)a3;
- (id)_stashURLForIndex:(unint64_t)a3;
- (id)_stashedBundleContainerForIndex:(unint64_t)a3 error:(id *)a4;
- (id)bundleMetadataWithError:(id *)a3;
- (id)iTunesMetadataWithError:(id *)a3;
- (unsigned)bundleMaxLinkedSDKVersion;
@end

@implementation MIBundleContainer

+ (id)appBundleContainerForIdentifier:(id)a3 temporary:(BOOL)a4 inDomain:(unint64_t)a5 withError:(id *)a6
{
  v8 = a4;
  v11 = a3;
  if (a5 == 3)
  {
    if (v8)
    {
      v18 = 0;
      v12 = [a1 privateTempAppBundleContainerWithIdentifier:v11 error:&v18];
      v13 = v18;
    }

    else
    {
      v17 = 0;
      v12 = [a1 privateAppBundleContainerWithIdentifier:v11 createIfNeeded:0 created:0 error:&v17];
      v13 = v17;
    }
  }

  else
  {
    if (a5 != 2)
    {
      v14 = _CreateAndLogError("+[MIBundleContainer appBundleContainerForIdentifier:temporary:inDomain:withError:]", 79, @"MIInstallerErrorDomain", 4, 0, 0, @"MIInstallationDomain was not set to either MIInstallationDomainSystemShared or MIInstallationDomainUserPrivate: %lu", v10, a5);
      v12 = 0;
      goto LABEL_11;
    }

    if (v8)
    {
      v20 = 0;
      v12 = [a1 tempAppBundleContainerWithIdentifier:v11 error:&v20];
      v13 = v20;
    }

    else
    {
      v19 = 0;
      v12 = [a1 appBundleContainerWithIdentifier:v11 createIfNeeded:0 created:0 error:&v19];
      v13 = v19;
    }
  }

  v14 = v13;
LABEL_11:
  if (!(v12 | v14))
  {
    v14 = _CreateAndLogError("+[MIBundleContainer appBundleContainerForIdentifier:temporary:inDomain:withError:]", 85, @"MIInstallerErrorDomain", 26, 0, 0, @"Could not find installed app with identifier %@ in domain %lu", v15, v11);
  }

  if (a6 && !v12)
  {
    v14 = v14;
    *a6 = v14;
  }

  return v12;
}

+ (id)appBundleContainerWithIdentifier:(id)a3 createIfNeeded:(BOOL)a4 created:(BOOL *)a5 error:(id *)a6
{
  v8 = a4;
  v10 = a3;
  v11 = +[MIGlobalConfiguration sharedInstance];
  v12 = [v11 primaryPersonaString];
  v13 = [a1 appBundleContainerWithIdentifier:v10 forPersona:v12 createIfNeeded:v8 created:a5 error:a6];

  return v13;
}

+ (id)pluginKitPluginBundleContainerWithIdentifier:(id)a3 createIfNeeded:(BOOL)a4 created:(BOOL *)a5 error:(id *)a6
{
  v8 = a4;
  v10 = a3;
  v11 = +[MIGlobalConfiguration sharedInstance];
  v12 = [v11 primaryPersonaString];
  v13 = [a1 containerWithIdentifier:v10 forPersona:v12 ofContentClass:3 createIfNeeded:v8 created:a5 error:a6];

  return v13;
}

+ (id)tempAppBundleContainerWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[MIGlobalConfiguration sharedInstance];
  v8 = [v7 primaryPersonaString];
  v9 = [a1 tempContainerWithIdentifier:v6 forPersona:v8 ofContentClass:1 error:a4];

  return v9;
}

+ (id)privateAppBundleContainerWithIdentifier:(id)a3 createIfNeeded:(BOOL)a4 created:(BOOL *)a5 error:(id *)a6
{
  v8 = a4;
  v10 = a3;
  v11 = +[MIGlobalConfiguration sharedInstance];
  v12 = [v11 primaryPersonaString];
  v13 = [a1 containerWithIdentifier:v10 forPersona:v12 ofContentClass:14 createIfNeeded:v8 created:a5 error:a6];

  return v13;
}

+ (id)privateTempAppBundleContainerWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[MIGlobalConfiguration sharedInstance];
  v8 = [v7 primaryPersonaString];
  v9 = [a1 tempContainerWithIdentifier:v6 forPersona:v8 ofContentClass:14 error:a4];

  return v9;
}

+ (id)tempPluginKitPluginBundleContainerWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[MIGlobalConfiguration sharedInstance];
  v8 = [v7 primaryPersonaString];
  v9 = [a1 tempContainerWithIdentifier:v6 forPersona:v8 ofContentClass:3 error:a4];

  return v9;
}

+ (id)allAppBundleContainersWithError:(id *)a3
{
  v4 = objc_opt_class();

  return [v4 containersWithClass:1 error:a3];
}

+ (BOOL)purgeTransientBundleContainersWithError:(id *)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  if (!+[ICLFeatureFlags transientBundleCleanupEnabled])
  {
    v9 = _CreateAndLogError("+[MIBundleContainer purgeTransientBundleContainersWithError:]", 162, @"MIInstallerErrorDomain", 4, 0, 0, @"%s is not enabled", v7, "+[MIBundleContainer purgeTransientBundleContainersWithError:]");
    v21 = 0;
    v8 = 0;
    if (!a3)
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
    if (!a3)
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
    if (!a3)
    {
LABEL_30:
      v20 = 0;
      goto LABEL_31;
    }

LABEL_27:
    v22 = v9;
    v20 = 0;
    *a3 = v9;
    goto LABEL_31;
  }

  v25 = a1;
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
  v19 = [v25 removeContainers:v18 waitForDeletion:0 error:&v30];
  v9 = v30;

  if ((v19 & 1) == 0)
  {
    v8 = v28;
    v5 = v29;
    v21 = v27;
    if (!a3)
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
  v4 = [(MIBundleContainer *)self parallelPlaceholderURL];
  v5 = [v3 itemExistsAtURL:v4];

  return v5;
}

- (NSURL)parallelPlaceholderURL
{
  v2 = [(MIContainer *)self containerURL];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.mobileinstallation.placeholder" isDirectory:1];

  return v3;
}

- (BOOL)hasSerializedPlaceholder
{
  v3 = +[MIFileManager defaultManager];
  v4 = [(MIBundleContainer *)self serializedPlaceholderURL];
  v5 = [v3 itemExistsAtURL:v4];

  return v5;
}

- (NSURL)serializedPlaceholderURL
{
  v2 = [(MIContainer *)self containerURL];
  v3 = [v2 URLByAppendingPathComponent:@"SerializedPlaceholder.ipa" isDirectory:0];

  return v3;
}

- (BOOL)writeiTunesMetadata:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v7 = [v6 propertyListDataWithError:&v16];
  v8 = v16;
  v9 = v8;
  if (v7)
  {
    v15 = v8;
    v10 = [(MIBundleContainer *)self _writeRawiTunesMetadataData:v7 error:&v15];
    v11 = v15;

    if (v10)
    {
      [(MIBundleContainer *)self setITunesMetadata:v6];
      v12 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v11 = v8;
  }

  if (a4)
  {
    v13 = v11;
    v12 = 0;
    *a4 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_8:

  return v12;
}

- (BOOL)_writeRawiTunesMetadataData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIBundleContainer *)self iTunesMetadataURL];
  v15 = 0;
  v8 = [v6 writeToURL:v7 options:268435457 error:&v15];

  v9 = v15;
  if ((v8 & 1) == 0)
  {
    v10 = [v7 path];
    v12 = _CreateAndLogError("[MIBundleContainer _writeRawiTunesMetadataData:error:]", 273, @"MIInstallerErrorDomain", 124, v9, &unk_1F28888A8, @"Failed to write iTunesMetadata to %@", v11, v10);

    if (a4)
    {
      v13 = v12;
      *a4 = v12;
    }

    v9 = v12;
  }

  return v8;
}

- (BOOL)bestEffortRollbackiTunesMetadata:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v20 = 0;
    v7 = [MIStoreMetadata metadataFromPlistData:v6 error:&v20];
    v8 = v20;
    v9 = v8;
    if (v7)
    {
      v19 = v8;
      v10 = [(MIBundleContainer *)self _writeRawiTunesMetadataData:v6 error:&v19];
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
    v13 = [(MIBundleContainer *)self iTunesMetadataURL];
    v18 = 0;
    v14 = [v12 removeItemAtURL:v13 error:&v18];
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

  if (a4)
  {
    v16 = v11;
    v15 = 0;
    *a4 = v11;
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  return v15;
}

+ (BOOL)updateiTunesMetadata:(id)a3 forAppWithIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v19 = 0;
  v9 = [a1 appBundleContainerWithIdentifier:a4 createIfNeeded:0 created:0 error:&v19];
  v10 = v19;
  v11 = v10;
  if (v9)
  {
    v18 = v10;
    v12 = [v8 propertyListDataWithError:&v18];
    v13 = v18;

    if (v12)
    {
      v17 = v13;
      v14 = [v9 writeiTunesMetadata:v8 error:&v17];
      v11 = v17;

      if (!a5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v14 = 0;
      v11 = v13;
      if (!a5)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v14 = 0;
    if (!a5)
    {
      goto LABEL_10;
    }
  }

  if ((v14 & 1) == 0)
  {
    v15 = v11;
    *a5 = v11;
  }

LABEL_10:

  return v14;
}

- (id)iTunesMetadataWithError:(id *)a3
{
  v5 = [(MIBundleContainer *)self iTunesMetadata];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(MIBundleContainer *)self iTunesMetadataURL];
    v12 = 0;
    v6 = [MIStoreMetadata metadataFromPlistAtURL:v7 error:&v12];
    v8 = v12;

    if (v6)
    {
      [(MIBundleContainer *)self setITunesMetadata:v6];
      v9 = v6;
    }

    else if (a3)
    {
      v10 = v8;
      *a3 = v8;
    }
  }

  return v6;
}

- (id)_bundleExtensionForContainerClassWithError:(id *)a3
{
  v5 = [(MIContainer *)self containerClass];
  v6 = 0;
  v7 = @"app";
  if (v5 != 1 && v5 != 14)
  {
    v6 = _CreateAndLogError("[MIBundleContainer _bundleExtensionForContainerClassWithError:]", 396, @"MIInstallerErrorDomain", 4, 0, 0, @"BundleContainer can't be created for container type %llu", v4, v5);
    if (a3)
    {
      v6 = v6;
      v7 = 0;
      *a3 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)_configureBundleWithError:(id *)a3
{
  v5 = [(MIContainer *)self containerURL];
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
      v14 = [v5 path];
      MOLogWrite();
    }
  }

  else
  {
    if (a3)
    {
      v12 = v7;
      *a3 = v8;
    }

    v10 = v8;
  }

  return v6 != 0;
}

- (MIBundleContainer)initWithToken:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v27.receiver = self;
  v27.super_class = MIBundleContainer;
  v28 = 0;
  v9 = [(MIContainer *)&v27 initWithToken:v8 options:a4 error:&v28];
  v10 = v28;
  if (v9)
  {
    v26.receiver = v9;
    v26.super_class = MIBundleContainer;
    v11 = [(MIContainer *)&v26 rawContainer];

    if (v11)
    {
      if ([v8 hasIdentifiedBundle])
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
      v17 = [v8 bundleURL];
      v24 = v10;
      v18 = [(MIBundle *)v16 initWithBundleURL:v17 error:&v24];
      v13 = v24;

      bundle = v9->_bundle;
      v9->_bundle = v18;

      v20 = v9->_bundle;
      if (!v20)
      {
        v21 = [v8 bundleURL];
        v10 = _CreateAndLogError("[MIBundleContainer initWithToken:options:error:]", 443, @"MIInstallerErrorDomain", 4, v13, 0, @"Failed to create app bundle from %@", v22, v21);

        if (a5)
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
  if (!a5)
  {
    goto LABEL_12;
  }

LABEL_6:
  v14 = v10;
  v15 = 0;
  *a5 = v10;
LABEL_13:

  return v15;
}

- (MIBundleContainer)initWithContainerURL:(id)a3 expectAppWithin:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  v21.receiver = self;
  v21.super_class = MIBundleContainer;
  v9 = [(MIContainer *)&v21 initWithContainerURL:v8];
  v10 = v9;
  if (a4)
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

      v14 = [v8 path];
      v16 = _CreateAndLogError("[MIBundleContainer initWithContainerURL:expectAppWithin:error:]", 490, @"MIInstallerErrorDomain", 4, v12, 0, @"Failed to find app bundle in container %@ : %@", v15, v14);

      v12 = v16;
      if (!a5)
      {
LABEL_5:
        v10 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v12 = 0;
      if (!a5)
      {
        goto LABEL_5;
      }
    }

    v18 = v12;
    v10 = 0;
    *a5 = v12;
    goto LABEL_9;
  }

  v17 = v9;
LABEL_10:

  return v17;
}

- (MIBundleContainer)initWithContainer:(id)a3 error:(id *)a4
{
  v14.receiver = self;
  v14.super_class = MIBundleContainer;
  v5 = [(MIContainer *)&v14 initWithContainer:a3 error:?];
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

  if (a4)
  {
    v10 = v8;
    v11 = 0;
    *a4 = v9;
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
  v2 = [(MIContainer *)self containerURL];
  v3 = [v2 URLByAppendingPathComponent:@"iTunesMetadata.plist" isDirectory:0];

  return v3;
}

- (NSURL)bundleMetadataURL
{
  v2 = [(MIContainer *)self containerURL];
  v3 = [v2 URLByAppendingPathComponent:@"BundleMetadata.plist" isDirectory:0];

  return v3;
}

- (id)bundleMetadataWithError:(id *)a3
{
  v5 = [(MIBundleContainer *)self bundleMetadata];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
LABEL_5:
    v10 = [(MIBundleMetadata *)v6 copy];
    v8 = v6;
    goto LABEL_6;
  }

  v8 = [(MIBundleContainer *)self bundleMetadataURL];
  v15 = 0;
  v6 = [MIBundleMetadata metadataFromURL:v8 error:&v15];
  v9 = v15;
  v7 = v9;
  if (v6)
  {
LABEL_4:
    [(MIBundleContainer *)self setBundleMetadata:v6];

    goto LABEL_5;
  }

  v12 = [v9 domain];
  if ([v12 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v13 = [v7 code];

    if (v13 == 260)
    {
      v6 = objc_alloc_init(MIBundleMetadata);
      goto LABEL_4;
    }
  }

  else
  {
  }

  if (a3)
  {
    v14 = v7;
    v10 = 0;
    *a3 = v7;
  }

  else
  {
    v10 = 0;
  }

LABEL_6:

  return v10;
}

- (BOOL)saveBundleMetadata:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(MIBundleContainer *)self bundleMetadataURL];
  v13 = 0;
  v8 = [v6 serializeToURL:v7 error:&v13];
  v9 = v13;
  v10 = v9;
  if (v8)
  {
    [(MIBundleContainer *)self setBundleMetadata:v6];
  }

  else if (a4)
  {
    v11 = v9;
    *a4 = v10;
  }

  return v8;
}

- (BOOL)captureBundleByMoving:(id)a3 withError:(id *)a4
{
  v7 = a3;
  v9 = [(MIContainer *)self containerURL];
  if (!v9)
  {
    v17 = _CreateAndLogError("[MIBundleContainer captureBundleByMoving:withError:]", 581, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed get container URL from %@", v8, self);
    v11 = 0;
    goto LABEL_6;
  }

  v10 = [v7 bundleName];
  v11 = [v9 URLByAppendingPathComponent:v10];

  v12 = +[MIFileManager defaultManager];
  v13 = [v7 bundleURL];
  v24 = 0;
  v14 = [v12 moveItemAtURL:v13 toURL:v11 error:&v24];
  v15 = v24;

  if ((v14 & 1) == 0)
  {
    v20 = [v7 bundleURL];
    v17 = _CreateAndLogError("[MIBundleContainer captureBundleByMoving:withError:]", 587, @"MIInstallerErrorDomain", 20, v15, &unk_1F28888D0, @"Failed to move application at %@ into container path %@", v21, v20);

    if (a4)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  objc_storeStrong(&self->_bundle, a3);
  v23 = v15;
  v16 = [v7 setBundleParentDirectoryURL:v9 error:&v23];
  v17 = v23;

  if (!v16)
  {
LABEL_6:
    if (a4)
    {
LABEL_7:
      v19 = v17;
      v18 = 0;
      *a4 = v17;
      goto LABEL_10;
    }

LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  [v7 setBundleContainer:self];
  v18 = 1;
LABEL_10:

  return v18;
}

- (BOOL)makeContainerLiveReplacingContainer:(id)a3 reason:(unint64_t)a4 waitForDeletion:(BOOL)a5 withError:(id *)a6
{
  v22.receiver = self;
  v22.super_class = MIBundleContainer;
  v23 = 0;
  v8 = [(MIContainer *)&v22 makeContainerLiveReplacingContainer:a3 reason:a4 waitForDeletion:a5 withError:&v23];
  v9 = v23;
  if (v8)
  {
    v10 = [(MIContainer *)self containerURL];
    if (v10)
    {
      v12 = v10;
      v13 = [(MIBundleContainer *)self bundle];
      v21 = v9;
      LOBYTE(v8) = [v13 setBundleParentDirectoryURL:v12 error:&v21];
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

  if (a6)
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
    *a6 = v9;
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
    LODWORD(v7) = [v6 unsignedIntValue];
LABEL_5:
    v8 = v4;
    goto LABEL_6;
  }

  v10 = [(MIBundleContainer *)self bundle];
  v7 = [v10 maxLinkedSDKVersion];

  if (!v7)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  v13 = v4;
  v12 = [(MIContainer *)self setInfoValue:v11 forKey:@"com.apple.MobileInstallation.BundleMaxLinkedSDKVersion" error:&v13];
  v8 = v13;

  if (!v12 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    MOLogWrite();
  }

LABEL_6:

  return v7;
}

- (BOOL)shouldHaveCorrespondingDataContainer
{
  v2 = [(MIBundleContainer *)self bundle];
  v3 = [v2 needsDataContainer];

  return v3;
}

- (BOOL)captureStoreDataFromDirectory:(id)a3 doCopy:(BOOL)a4 failureIsFatal:(BOOL)a5 includeiTunesMetadata:(BOOL)a6 withError:(id *)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v13 = [(MIBundleContainer *)self iTunesMetadataURL];
  v15 = [(MIContainer *)self containerURL];
  if (v15)
  {
    v16 = +[MIFileManager defaultManager];
    v34 = 0;
    LODWORD(v10) = [v16 captureStoreDataFromDirectory:v12 toDirectory:v15 doCopy:v10 failureIsFatal:v9 includeiTunesMetadata:v8 withError:&v34];
    v17 = v34;

    if (v10)
    {
      v18 = !v8;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = 0;
      v20 = v17;
      if (!a7)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v33 = v17;
    v19 = [MIStoreMetadata metadataFromPlistAtURL:v13 error:&v33];
    v20 = v33;

    if (v19)
    {
      v21 = [v19 distributorInfo];
      if (v21)
      {
        v10 = v21;
        v22 = [v12 path];
        v24 = _CreateAndLogError("[MIBundleContainer captureStoreDataFromDirectory:doCopy:failureIsFatal:includeiTunesMetadata:withError:]", 696, @"MIInstallerErrorDomain", 215, 0, 0, @"iTunesMetadata.plist captured from %@ has distributorInfo set this is not allowed. Found distributorInfo: %@", v23, v22);;

        LOBYTE(v10) = 0;
        v20 = v24;
        if (!a7)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_21:
      [(MIBundleContainer *)self setITunesMetadata:v19];
      LOBYTE(v10) = 1;
      goto LABEL_17;
    }

    v27 = [v20 userInfo];
    v28 = [v27 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v29 = [v28 domain];
    if ([v29 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v30 = [v28 code];

      if (v30 == 260)
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
      v32 = [v13 path];
      MOLogWrite();
    }
  }

  else
  {
    v20 = _CreateAndLogError("[MIBundleContainer captureStoreDataFromDirectory:doCopy:failureIsFatal:includeiTunesMetadata:withError:]", 673, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to get container URL", v14, v31);
  }

  v19 = 0;
  LOBYTE(v10) = 0;
  if (!a7)
  {
    goto LABEL_17;
  }

LABEL_15:
  if ((v10 & 1) == 0)
  {
    v25 = v20;
    LOBYTE(v10) = 0;
    *a7 = v20;
  }

LABEL_17:

  return v10;
}

- (NSURL)stashBaseURL
{
  v2 = [(MIContainer *)self containerURL];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.mobileinstallation.stash" isDirectory:1];

  return v3;
}

- (id)_stashURLForIndex:(unint64_t)a3
{
  v4 = [(MIBundleContainer *)self stashBaseURL];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a3];
  v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:1];

  return v6;
}

- (id)_stashedBundleContainerForIndex:(unint64_t)a3 error:(id *)a4
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
    v13 = NSStringFromClass(v12);
    v14 = [v6 path];
    v16 = _CreateAndLogError("[MIBundleContainer _stashedBundleContainerForIndex:error:]", 746, @"MIInstallerErrorDomain", 4, v11, 0, @"Failed to create %@ instance for %@", v15, v13);
    v9 = v11;
  }

  else
  {
    v17 = *MEMORY[0x1E696A250];
    v13 = [(MIContainer *)self containerURL];
    v14 = [v6 path];
    v16 = _CreateError("[MIBundleContainer _stashedBundleContainerForIndex:error:]", 740, v17, 260, v9, 0, @"No stash was found in bundle container %@ with index %lu (at %@)", v18, v13);
  }

  v11 = v16;

  if (a4)
  {
    v19 = v11;
    v10 = 0;
    *a4 = v11;
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (BOOL)cloneContentFromStashedBundleContainer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__10;
  v34 = __Block_byref_object_dispose__10;
  v35 = 0;
  v7 = +[MIFileManager defaultManager];
  v9 = [(MIContainer *)self containerURL];
  if (!v9)
  {
    v15 = _CreateAndLogError("[MIBundleContainer cloneContentFromStashedBundleContainer:error:]", 793, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed get container URL for %@ when trying to clone content from %@", v8, self);
    v10 = 0;
    v13 = 0;
    goto LABEL_7;
  }

  v10 = [v6 bundle];
  if (!v10)
  {
    v16 = [v6 containerURL];
    v18 = _CreateAndLogError("[MIBundleContainer cloneContentFromStashedBundleContainer:error:]", 799, @"MIInstallerErrorDomain", 4, 0, 0, @"Could not locate bundle in stashed bundle container at %@", v17, v16);
    v19 = v31[5];
    v31[5] = v18;

    v10 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v11 = [v6 containerURL];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __66__MIBundleContainer_cloneContentFromStashedBundleContainer_error___block_invoke;
  v26[3] = &unk_1E7AE21A8;
  v12 = v9;
  v27 = v12;
  v28 = v7;
  v29 = &v30;
  v13 = [v28 enumerateURLsForItemsInDirectoryAtURL:v11 ignoreSymlinks:1 withBlock:v26];

  if (v31[5])
  {
    goto LABEL_10;
  }

  if (v13)
  {
    v15 = _CreateAndLogError("[MIBundleContainer cloneContentFromStashedBundleContainer:error:]", 828, @"MIInstallerErrorDomain", 4, v13, 0, @"Failed to enumerate stashed container", v14, v24);
LABEL_7:
    v16 = v31[5];
    v31[5] = v15;
LABEL_9:

LABEL_10:
    if (a4)
    {
      goto LABEL_11;
    }

LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  objc_storeStrong(&self->_bundle, v10);
  v21 = (v31 + 5);
  obj = v31[5];
  v22 = [v10 setBundleParentDirectoryURL:v12 error:&obj];
  objc_storeStrong(v21, obj);
  if (v22)
  {
    [v10 setBundleContainer:self];
    v13 = 0;
    v20 = 1;
    goto LABEL_16;
  }

  v13 = 0;
  if (!a4)
  {
    goto LABEL_15;
  }

LABEL_11:
  v20 = 0;
  *a4 = v31[5];
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

- (BOOL)transferExistingStashesFromContainer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[MIFileManager defaultManager];
  v8 = [v6 stashBaseURL];

  v9 = [(MIBundleContainer *)self stashBaseURL];
  if ([v7 itemDoesNotExistAtURL:v8])
  {
    v10 = 0;
LABEL_7:
    v13 = 1;
    goto LABEL_12;
  }

  v22 = 0;
  v11 = [v7 copyItemAtURL:v8 toURL:v9 alwaysClone:0 error:&v22];
  v10 = v22;
  if (v11)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v12 = [(MIBundleContainer *)self bundle];
      v20 = [v12 identifier];
      MOLogWrite();
    }

    goto LABEL_7;
  }

  v14 = [(MIBundleContainer *)self bundle];
  v15 = [v14 identifier];
  v21 = [v8 path];
  v17 = _CreateAndLogError("[MIBundleContainer transferExistingStashesFromContainer:error:]", 863, @"MIInstallerErrorDomain", 4, v10, 0, @"Failed to preserve existing stashed version of app %@ at %@", v16, v15);

  if (a4)
  {
    v18 = v17;
    v13 = 0;
    *a4 = v17;
  }

  else
  {
    v13 = 0;
  }

  v10 = v17;
LABEL_12:

  return v13;
}

- (BOOL)stashBundleContainerContents:(id)a3 error:(id *)a4
{
  v6 = a3;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__10;
  v58 = __Block_byref_object_dispose__10;
  v59 = 0;
  v7 = +[MIFileManager defaultManager];
  v8 = [(MIBundleContainer *)self stashBaseURL];
  v9 = [(MIBundleContainer *)self _stashURLForIndex:0];
  v10 = (v55 + 5);
  obj = v55[5];
  v11 = [v7 createDirectoryAtURL:v8 withIntermediateDirectories:0 mode:493 class:4 error:&obj];
  objc_storeStrong(v10, obj);
  if ((v11 & 1) == 0)
  {
    v22 = v55[5];
    v23 = [v8 path];
    v25 = _CreateAndLogError("[MIBundleContainer stashBundleContainerContents:error:]", 893, @"MIInstallerErrorDomain", 4, v22, 0, @"Failed to create stash base directory at %@", v24, v23);
LABEL_8:
    v28 = v55[5];
    v55[5] = v25;

    v16 = 0;
    v18 = 0;
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
    v23 = [v8 path];
    v25 = _CreateAndLogError("[MIBundleContainer stashBundleContainerContents:error:]", 899, @"MIInstallerErrorDomain", 4, v26, 0, @"Failed to create stash base directory at %@", v27, v23);
    goto LABEL_8;
  }

  v14 = [v6 containerURL];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __56__MIBundleContainer_stashBundleContainerContents_error___block_invoke;
  v48[3] = &unk_1E7AE21A8;
  v15 = v9;
  v49 = v15;
  v50 = v7;
  v51 = &v54;
  v16 = [v50 enumerateURLsForItemsInDirectoryAtURL:v14 ignoreSymlinks:1 withBlock:v48];

  if (v55[5])
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    if (!a4)
    {
LABEL_5:
      v21 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v21 = 0;
    *a4 = v55[5];
    goto LABEL_11;
  }

  if (v16)
  {
    v30 = _CreateAndLogError("[MIBundleContainer stashBundleContainerContents:error:]", 929, @"MIInstallerErrorDomain", 4, v16, 0, @"Failed to enumerate stashed container", v17, v42);
    v18 = 0;
    v19 = 0;
    v20 = 0;
LABEL_14:
    v23 = v55[5];
    v55[5] = v30;
LABEL_9:

    if (!a4)
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
    v23 = [v15 path];
    v25 = _CreateAndLogError("[MIBundleContainer stashBundleContainerContents:error:]", 936, @"MIInstallerErrorDomain", 4, v40, 0, @"Failed to create MIStashedBundleContainer instance for %@", v41, v23);
    goto LABEL_8;
  }

  v33 = (v55 + 5);
  v46 = v55[5];
  v19 = [v6 bundleMetadataWithError:&v46];
  objc_storeStrong(v33, v46);
  if (!v19)
  {
    v30 = _CreateAndLogError("[MIBundleContainer stashBundleContainerContents:error:]", 943, @"MIInstallerErrorDomain", 4, v55[5], 0, @"Failed to read bundle metadata from %@", v34, v6);
    v16 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_14;
  }

  v18 = [(MIStashedBundleContainer *)v20 newStashMetadata];
  v35 = [MEMORY[0x1E695DF00] date];
  [v18 setDateStashed:v35];

  v36 = [v19 installDate];
  [v18 setDateOriginallyInstalled:v36];

  v37 = (v55 + 5);
  v45 = v55[5];
  v44 = [(MIStashedBundleContainer *)v20 saveStashMetadata:v18 withError:&v45];
  objc_storeStrong(v37, v45);
  if (!v44)
  {
    v30 = _CreateAndLogError("[MIBundleContainer stashBundleContainerContents:error:]", 952, @"MIInstallerErrorDomain", 4, v55[5], 0, @"Failed to save stash metadata", v38, v42);
    v16 = 0;
    goto LABEL_14;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v39 = [(MIBundleContainer *)self bundle];
    v43 = [v39 identifier];
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
  v3 = [(MIBundleContainer *)self bundle];
  if ([v3 isPlaceholder])
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v4 = [(MIBundleContainer *)self bundleMaxLinkedSDKVersion];
  if (!v4)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v5 = [v3 bundleURL];
      v9 = [v5 path];
      MOLogWrite();
    }

    goto LABEL_10;
  }

  if (v4 >= 0x80000)
  {
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      MOLogWrite();
    }

    goto LABEL_10;
  }

  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v8 = v4;
    MOLogWrite();
  }

  v6 = [v3 bundleURL];
LABEL_11:

  return v6;
}

- (NSURL)referenceStorageURL
{
  v2 = [(MIContainer *)self containerURL];
  v3 = [v2 URLByAppendingPathComponent:@"References" isDirectory:1];

  return v3;
}

@end