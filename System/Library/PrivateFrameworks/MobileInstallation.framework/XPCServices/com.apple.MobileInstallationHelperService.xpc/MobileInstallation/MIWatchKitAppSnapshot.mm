@interface MIWatchKitAppSnapshot
- (BOOL)_createCompanionAppPlaceholderForApp:(id)app error:(id *)error;
- (BOOL)_createPlaceholderForApp:(id)app atURL:(id)l error:(id *)error;
- (BOOL)_createSnapshotWithError:(id *)error;
- (BOOL)_hardLinkCopyURL:(id)l toURL:(id)rL diskUsage:(unint64_t *)usage error:(id *)error;
- (BOOL)createSnapshotWithError:(id *)error;
- (MIWatchKitAppSnapshot)initWithBundleID:(id)d snapshotTo:(id)to onlyV1AppIfPresent:(BOOL)present placeholderOnly:(BOOL)only;
- (id)_iconDataForBundle:(__CFBundle *)bundle isWatchBundle:(BOOL)watchBundle error:(id *)error;
- (id)_wkBundleForAppContainer:(id)container error:(id *)error;
@end

@implementation MIWatchKitAppSnapshot

- (MIWatchKitAppSnapshot)initWithBundleID:(id)d snapshotTo:(id)to onlyV1AppIfPresent:(BOOL)present placeholderOnly:(BOOL)only
{
  dCopy = d;
  toCopy = to;
  v16.receiver = self;
  v16.super_class = MIWatchKitAppSnapshot;
  v13 = [(MIWatchKitAppSnapshot *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_bundleID, d);
    v14->_onlyV1 = present;
    v14->_placeholderOnly = only;
    objc_storeStrong(&v14->_destURL, to);
    v14->_identifierLocked = 0;
  }

  return v14;
}

- (id)_wkBundleForAppContainer:(id)container error:(id *)error
{
  containerCopy = container;
  LODWORD(self) = [(MIWatchKitAppSnapshot *)self onlyV1];
  bundle = [containerCopy bundle];

  v13 = 0;
  if (self)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  v9 = [bundle watchKitAppBundleForWKVersionOrEarlier:v8 error:&v13];
  v10 = v13;

  if (error && !v9)
  {
    v11 = v10;
    *error = v10;
  }

  return v9;
}

- (id)_iconDataForBundle:(__CFBundle *)bundle isWatchBundle:(BOOL)watchBundle error:(id *)error
{
  watchBundleCopy = watchBundle;
  v7 = +[NSMutableData data];
  if (watchBundleCopy)
  {
    if (&_LICreateIconForBundleAndDisplayGamut)
    {
      v8 = LICreateIconForBundleAndDisplayGamut();
      goto LABEL_6;
    }

    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
LABEL_19:
      v12 = 0;
      goto LABEL_33;
    }

LABEL_18:
    MOLogWrite();
    goto LABEL_19;
  }

  if (!&_LICreateDeviceAppropriateHomeScreenIconImageFromBundle)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v8 = LICreateDeviceAppropriateHomeScreenIconImageFromBundle();
LABEL_6:
  v9 = v8;
  if (!v8)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

LABEL_24:
    v12 = 0;
    if (!error)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v10 = CGImageDestinationCreateWithData(v7, @"public.png", 1uLL, 0);
  if (!v10)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    CFRelease(v9);
    goto LABEL_24;
  }

  v11 = v10;
  CGImageDestinationAddImage(v10, v9, 0);
  if (CGImageDestinationFinalize(v11))
  {
    v12 = [(__CFData *)v7 copy];
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v12 = 0;
  }

  CFRelease(v9);
  CFRelease(v11);
  if (error)
  {
LABEL_31:
    if (!v12)
    {
      *error = 0;
    }
  }

LABEL_33:

  return v12;
}

- (BOOL)_createPlaceholderForApp:(id)app atURL:(id)l error:(id *)error
{
  appCopy = app;
  lCopy = l;
  v10 = [NSMutableDictionary dictionaryWithCapacity:2];
  [(MIWatchKitAppSnapshot *)self _copyAppIconsFromBundle:appCopy toPlaceholder:lCopy isWatchBundle:1];
  identifier = [appCopy identifier];
  if (identifier)
  {
    [v10 setObject:identifier forKeyedSubscript:kCFBundleIdentifierKey];
  }

  [v10 setObject:@"Placeholder" forKeyedSubscript:kCFBundleExecutableKey];
  infoPlistSubset = [appCopy infoPlistSubset];
  v13 = _kCFBundleDisplayNameKey;
  v14 = [infoPlistSubset objectForKeyedSubscript:_kCFBundleDisplayNameKey];

  if (v14)
  {
    [v10 setObject:v14 forKeyedSubscript:v13];
  }

  infoPlistSubset2 = [appCopy infoPlistSubset];
  v16 = [infoPlistSubset2 objectForKeyedSubscript:kCFBundleVersionKey];

  if (v16)
  {
    [v10 setObject:v16 forKeyedSubscript:kCFBundleVersionKey];
  }

  infoPlistSubset3 = [appCopy infoPlistSubset];
  v18 = _kCFBundleShortVersionStringKey;
  v19 = [infoPlistSubset3 objectForKeyedSubscript:_kCFBundleShortVersionStringKey];

  if (v19)
  {
    [v10 setObject:v19 forKeyedSubscript:v18];
  }

  [v10 setObject:@"Icon.png" forKeyedSubscript:_kCFBundleIconFileKey];
  infoPlistSubset4 = [appCopy infoPlistSubset];
  v21 = [infoPlistSubset4 objectForKeyedSubscript:@"WKWatchKitApp"];
  [v10 setObject:v21 forKeyedSubscript:@"WKWatchKitApp"];

  infoPlistSubset5 = [appCopy infoPlistSubset];
  v23 = [infoPlistSubset5 objectForKeyedSubscript:@"WKApplication"];
  [v10 setObject:v23 forKeyedSubscript:@"WKApplication"];

  v24 = [lCopy URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
  v30 = 0;
  v25 = [v10 MI_writeToURL:v24 format:200 options:1 error:&v30];
  v26 = v30;
  v27 = v26;
  if (error && (v25 & 1) == 0)
  {
    v28 = v26;
    *error = v27;
  }

  return v25;
}

- (BOOL)_hardLinkCopyURL:(id)l toURL:(id)rL diskUsage:(unint64_t *)usage error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  cf = 0;
  v11 = hardlink_copy_hierarchy([lCopy fileSystemRepresentation], objc_msgSend(rLCopy, "fileSystemRepresentation"), 0, 0, 0, 0, 0, 0, usage, &cf);
  if ((v11 & 1) == 0)
  {
    v12 = MIInstallerErrorDomain;
    v13 = cf;
    path = [lCopy path];
    path2 = [rLCopy path];
    v16 = _CreateAndLogError("[MIWatchKitAppSnapshot _hardLinkCopyURL:toURL:diskUsage:error:]", 232, v12, 4, v13, 0, @"Failed to hardlink copy %@ to %@", v15, path);

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (error)
    {
      v17 = v16;
      *error = v16;
    }
  }

  return v11;
}

- (BOOL)_createCompanionAppPlaceholderForApp:(id)app error:(id *)error
{
  appCopy = app;
  destURL = [(MIWatchKitAppSnapshot *)self destURL];
  v8 = [destURL URLByAppendingPathComponent:@"com.apple.mobileinstallation.companion_placeholder" isDirectory:1];

  v9 = +[MIFileManager defaultManager];
  v30 = 0;
  v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:0 mode:493 class:4 error:&v30];
  v11 = v30;

  if (!v10)
  {
    v13 = 0;
    v17 = v11;
    v14 = 0;
LABEL_9:
    if (error)
    {
      v23 = v17;
      v22 = 0;
      *error = v17;
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_12;
  }

  selfCopy = self;
  bundleURL = [appCopy bundleURL];
  v13 = [bundleURL URLByAppendingPathComponent:@"Info.plist" isDirectory:0];

  v14 = [v8 URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
  v15 = +[MIFileManager defaultManager];
  v29 = v11;
  v16 = [v15 copyItemAtURL:v13 toURL:v14 error:&v29];
  v17 = v29;

  if (!v16)
  {
    goto LABEL_9;
  }

  v18 = +[MIFileManager defaultManager];
  bundleURL2 = [appCopy bundleURL];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100009AA0;
  v27[3] = &unk_100024AF8;
  v20 = v8;
  v28 = v20;
  v21 = [v18 enumerateURLsForItemsInDirectoryAtURL:bundleURL2 ignoreSymlinks:1 withBlock:v27];

  if (v21 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    bundleURL3 = [appCopy bundleURL];
    MOLogWrite();
  }

  [(MIWatchKitAppSnapshot *)selfCopy _copyAppIconsFromBundle:appCopy toPlaceholder:v20 isWatchBundle:0];
  v22 = 1;
LABEL_12:

  return v22;
}

- (BOOL)_createSnapshotWithError:(id *)error
{
  v67 = 0;
  v5 = +[MIFileManager defaultManager];
  destURL = [(MIWatchKitAppSnapshot *)self destURL];
  v7 = [v5 itemExistsAtURL:destURL];

  if (v7)
  {
    v8 = MIInstallerErrorDomain;
    destURL2 = [(MIWatchKitAppSnapshot *)self destURL];
    path = [destURL2 path];
    v12 = _CreateAndLogError("[MIWatchKitAppSnapshot _createSnapshotWithError:]", 330, v8, 84, 0, 0, @"Clone destination %@ already exists.", v11, path);

    v13 = 0;
    v14 = 0;
    iTunesMetadataURL = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_20;
  }

  bundleID = [(MIWatchKitAppSnapshot *)self bundleID];
  v66 = 0;
  v18 = [MIBundleContainer appBundleContainerWithIdentifier:bundleID createIfNeeded:0 created:0 error:&v66];
  v12 = v66;

  if (!v18)
  {
    v13 = 0;
    v14 = 0;
    iTunesMetadataURL = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_20;
  }

  v65 = v12;
  v17 = [(MIWatchKitAppSnapshot *)self _wkBundleForAppContainer:v18 error:&v65];
  v20 = v65;

  if (!v17)
  {
    v13 = 0;
    goto LABEL_9;
  }

  if ([v17 isPlaceholder])
  {
    v21 = MIInstallerErrorDomain;
    bundleID2 = [(MIWatchKitAppSnapshot *)self bundleID];
    v12 = _CreateAndLogError("[MIWatchKitAppSnapshot _createSnapshotWithError:]", 345, v21, 139, 0, 0, @"Cannot snapshot WatchKit app for %@ because the embedded WatchKit app is only a placeholder.", v23, bundleID2);

LABEL_17:
    v13 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  identifier = [v17 identifier];
  [(MIWatchKitAppSnapshot *)self setWatchKitAppBundleID:identifier];

  v25 = +[MIFileManager defaultManager];
  destURL3 = [(MIWatchKitAppSnapshot *)self destURL];
  v64 = v20;
  v27 = [v25 createDirectoryAtURL:destURL3 withIntermediateDirectories:0 mode:493 class:4 error:&v64];
  v12 = v64;

  if (!v27)
  {
    goto LABEL_17;
  }

  destURL4 = [(MIWatchKitAppSnapshot *)self destURL];
  v13 = [destURL4 URLByAppendingPathComponent:@"Payload" isDirectory:1];

  v29 = +[MIFileManager defaultManager];
  v63 = v12;
  v30 = [v29 createDirectoryAtURL:v13 withIntermediateDirectories:0 mode:493 class:4 error:&v63];
  v20 = v63;

  if (!v30)
  {
LABEL_9:
    v14 = 0;
    iTunesMetadataURL = 0;
    v16 = 0;
    v12 = v20;
    goto LABEL_20;
  }

  bundleName = [v17 bundleName];
  v14 = [v13 URLByAppendingPathComponent:bundleName isDirectory:1];

  v32 = +[MIFileManager defaultManager];
  v62 = v20;
  v52 = [v32 createDirectoryAtURL:v14 withIntermediateDirectories:0 mode:493 class:4 error:&v62];
  v12 = v62;

  if (!v52)
  {
    goto LABEL_18;
  }

  bundle = [v18 bundle];
  v61 = v12;
  v34 = [(MIWatchKitAppSnapshot *)self _createCompanionAppPlaceholderForApp:bundle error:&v61];
  v53 = v61;

  if (!v34)
  {
    iTunesMetadataURL = 0;
    v16 = 0;
    v12 = v53;
    goto LABEL_20;
  }

  if ([(MIWatchKitAppSnapshot *)self placeholderOnly])
  {
    v60 = v53;
    v35 = [(MIWatchKitAppSnapshot *)self _createPlaceholderForApp:v17 atURL:v14 error:&v60];
    v12 = v60;

    if (v35)
    {
      v36 = +[MIFileManager defaultManager];
      v67 = [v36 diskUsageForURL:v14];

      goto LABEL_26;
    }

LABEL_18:
    iTunesMetadataURL = 0;
LABEL_19:
    v16 = 0;
    goto LABEL_20;
  }

  bundleURL = [v17 bundleURL];
  v59 = v53;
  v41 = [(MIWatchKitAppSnapshot *)self _hardLinkCopyURL:bundleURL toURL:v14 diskUsage:&v67 error:&v59];
  v12 = v59;

  if (!v41)
  {
    goto LABEL_18;
  }

LABEL_26:
  v42 = v12;
  iTunesMetadataURL = [v18 iTunesMetadataURL];
  v58 = v12;
  v16 = [MIStoreMetadata metadataFromPlistAtURL:iTunesMetadataURL error:&v58];
  v12 = v58;

  if (!v16)
  {
    userInfo = [v12 userInfo];
    v46 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

    v54 = v46;
    domain = [v46 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [v54 code];

      if (code == 260)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    goto LABEL_19;
  }

  [v16 setDistributorInfo:0];
  v57 = v12;
  v43 = [v16 propertyListDataWithError:&v57];
  v50 = v57;

  v54 = v43;
  if (v43)
  {
    destURL5 = [(MIWatchKitAppSnapshot *)self destURL];
    lastPathComponent = [iTunesMetadataURL lastPathComponent];
    v49 = [destURL5 URLByAppendingPathComponent:lastPathComponent isDirectory:0];

    v56 = v50;
    v48 = [v54 writeToURL:v49 options:0x10000000 error:&v56];
    v12 = v56;

    if ((v48 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_32:

    [(MIWatchKitAppSnapshot *)self setDiskUsage:v67];
    v38 = 1;
    goto LABEL_23;
  }

  v12 = v50;
LABEL_34:

LABEL_20:
  if (error)
  {
    v37 = v12;
    v38 = 0;
    *error = v12;
  }

  else
  {
    v38 = 0;
  }

LABEL_23:

  return v38;
}

- (BOOL)createSnapshotWithError:(id *)error
{
  v4 = [(MIWatchKitAppSnapshot *)self _createSnapshotWithError:error];
  if (v4)
  {
    v9[0] = @"DiskUsageBytes";
    v5 = [NSNumber numberWithUnsignedLongLong:[(MIWatchKitAppSnapshot *)self diskUsage]];
    v10[0] = v5;
    v9[1] = kCFBundleIdentifierKey;
    watchKitAppBundleID = [(MIWatchKitAppSnapshot *)self watchKitAppBundleID];
    v10[1] = watchKitAppBundleID;
    v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    [(MIWatchKitAppSnapshot *)self setResultDict:v7];
  }

  return v4;
}

@end