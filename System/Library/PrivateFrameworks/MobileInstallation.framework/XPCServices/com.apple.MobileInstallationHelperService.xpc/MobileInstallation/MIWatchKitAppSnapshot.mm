@interface MIWatchKitAppSnapshot
- (BOOL)_createCompanionAppPlaceholderForApp:(id)a3 error:(id *)a4;
- (BOOL)_createPlaceholderForApp:(id)a3 atURL:(id)a4 error:(id *)a5;
- (BOOL)_createSnapshotWithError:(id *)a3;
- (BOOL)_hardLinkCopyURL:(id)a3 toURL:(id)a4 diskUsage:(unint64_t *)a5 error:(id *)a6;
- (BOOL)createSnapshotWithError:(id *)a3;
- (MIWatchKitAppSnapshot)initWithBundleID:(id)a3 snapshotTo:(id)a4 onlyV1AppIfPresent:(BOOL)a5 placeholderOnly:(BOOL)a6;
- (id)_iconDataForBundle:(__CFBundle *)a3 isWatchBundle:(BOOL)a4 error:(id *)a5;
- (id)_wkBundleForAppContainer:(id)a3 error:(id *)a4;
@end

@implementation MIWatchKitAppSnapshot

- (MIWatchKitAppSnapshot)initWithBundleID:(id)a3 snapshotTo:(id)a4 onlyV1AppIfPresent:(BOOL)a5 placeholderOnly:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = MIWatchKitAppSnapshot;
  v13 = [(MIWatchKitAppSnapshot *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_bundleID, a3);
    v14->_onlyV1 = a5;
    v14->_placeholderOnly = a6;
    objc_storeStrong(&v14->_destURL, a4);
    v14->_identifierLocked = 0;
  }

  return v14;
}

- (id)_wkBundleForAppContainer:(id)a3 error:(id *)a4
{
  v6 = a3;
  LODWORD(self) = [(MIWatchKitAppSnapshot *)self onlyV1];
  v7 = [v6 bundle];

  v13 = 0;
  if (self)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  v9 = [v7 watchKitAppBundleForWKVersionOrEarlier:v8 error:&v13];
  v10 = v13;

  if (a4 && !v9)
  {
    v11 = v10;
    *a4 = v10;
  }

  return v9;
}

- (id)_iconDataForBundle:(__CFBundle *)a3 isWatchBundle:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = +[NSMutableData data];
  if (v6)
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
    if (!a5)
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
  if (a5)
  {
LABEL_31:
    if (!v12)
    {
      *a5 = 0;
    }
  }

LABEL_33:

  return v12;
}

- (BOOL)_createPlaceholderForApp:(id)a3 atURL:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [NSMutableDictionary dictionaryWithCapacity:2];
  [(MIWatchKitAppSnapshot *)self _copyAppIconsFromBundle:v8 toPlaceholder:v9 isWatchBundle:1];
  v11 = [v8 identifier];
  if (v11)
  {
    [v10 setObject:v11 forKeyedSubscript:kCFBundleIdentifierKey];
  }

  [v10 setObject:@"Placeholder" forKeyedSubscript:kCFBundleExecutableKey];
  v12 = [v8 infoPlistSubset];
  v13 = _kCFBundleDisplayNameKey;
  v14 = [v12 objectForKeyedSubscript:_kCFBundleDisplayNameKey];

  if (v14)
  {
    [v10 setObject:v14 forKeyedSubscript:v13];
  }

  v15 = [v8 infoPlistSubset];
  v16 = [v15 objectForKeyedSubscript:kCFBundleVersionKey];

  if (v16)
  {
    [v10 setObject:v16 forKeyedSubscript:kCFBundleVersionKey];
  }

  v17 = [v8 infoPlistSubset];
  v18 = _kCFBundleShortVersionStringKey;
  v19 = [v17 objectForKeyedSubscript:_kCFBundleShortVersionStringKey];

  if (v19)
  {
    [v10 setObject:v19 forKeyedSubscript:v18];
  }

  [v10 setObject:@"Icon.png" forKeyedSubscript:_kCFBundleIconFileKey];
  v20 = [v8 infoPlistSubset];
  v21 = [v20 objectForKeyedSubscript:@"WKWatchKitApp"];
  [v10 setObject:v21 forKeyedSubscript:@"WKWatchKitApp"];

  v22 = [v8 infoPlistSubset];
  v23 = [v22 objectForKeyedSubscript:@"WKApplication"];
  [v10 setObject:v23 forKeyedSubscript:@"WKApplication"];

  v24 = [v9 URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
  v30 = 0;
  v25 = [v10 MI_writeToURL:v24 format:200 options:1 error:&v30];
  v26 = v30;
  v27 = v26;
  if (a5 && (v25 & 1) == 0)
  {
    v28 = v26;
    *a5 = v27;
  }

  return v25;
}

- (BOOL)_hardLinkCopyURL:(id)a3 toURL:(id)a4 diskUsage:(unint64_t *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  cf = 0;
  v11 = hardlink_copy_hierarchy([v9 fileSystemRepresentation], objc_msgSend(v10, "fileSystemRepresentation"), 0, 0, 0, 0, 0, 0, a5, &cf);
  if ((v11 & 1) == 0)
  {
    v12 = MIInstallerErrorDomain;
    v13 = cf;
    v14 = [v9 path];
    v19 = [v10 path];
    v16 = _CreateAndLogError("[MIWatchKitAppSnapshot _hardLinkCopyURL:toURL:diskUsage:error:]", 232, v12, 4, v13, 0, @"Failed to hardlink copy %@ to %@", v15, v14);

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (a6)
    {
      v17 = v16;
      *a6 = v16;
    }
  }

  return v11;
}

- (BOOL)_createCompanionAppPlaceholderForApp:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIWatchKitAppSnapshot *)self destURL];
  v8 = [v7 URLByAppendingPathComponent:@"com.apple.mobileinstallation.companion_placeholder" isDirectory:1];

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
    if (a4)
    {
      v23 = v17;
      v22 = 0;
      *a4 = v17;
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_12;
  }

  v26 = self;
  v12 = [v6 bundleURL];
  v13 = [v12 URLByAppendingPathComponent:@"Info.plist" isDirectory:0];

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
  v19 = [v6 bundleURL];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100009AA0;
  v27[3] = &unk_100024AF8;
  v20 = v8;
  v28 = v20;
  v21 = [v18 enumerateURLsForItemsInDirectoryAtURL:v19 ignoreSymlinks:1 withBlock:v27];

  if (v21 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v25 = [v6 bundleURL];
    MOLogWrite();
  }

  [(MIWatchKitAppSnapshot *)v26 _copyAppIconsFromBundle:v6 toPlaceholder:v20 isWatchBundle:0];
  v22 = 1;
LABEL_12:

  return v22;
}

- (BOOL)_createSnapshotWithError:(id *)a3
{
  v67 = 0;
  v5 = +[MIFileManager defaultManager];
  v6 = [(MIWatchKitAppSnapshot *)self destURL];
  v7 = [v5 itemExistsAtURL:v6];

  if (v7)
  {
    v8 = MIInstallerErrorDomain;
    v9 = [(MIWatchKitAppSnapshot *)self destURL];
    v10 = [v9 path];
    v12 = _CreateAndLogError("[MIWatchKitAppSnapshot _createSnapshotWithError:]", 330, v8, 84, 0, 0, @"Clone destination %@ already exists.", v11, v10);

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_20;
  }

  v19 = [(MIWatchKitAppSnapshot *)self bundleID];
  v66 = 0;
  v18 = [MIBundleContainer appBundleContainerWithIdentifier:v19 createIfNeeded:0 created:0 error:&v66];
  v12 = v66;

  if (!v18)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
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
    v22 = [(MIWatchKitAppSnapshot *)self bundleID];
    v12 = _CreateAndLogError("[MIWatchKitAppSnapshot _createSnapshotWithError:]", 345, v21, 139, 0, 0, @"Cannot snapshot WatchKit app for %@ because the embedded WatchKit app is only a placeholder.", v23, v22);

LABEL_17:
    v13 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v24 = [v17 identifier];
  [(MIWatchKitAppSnapshot *)self setWatchKitAppBundleID:v24];

  v25 = +[MIFileManager defaultManager];
  v26 = [(MIWatchKitAppSnapshot *)self destURL];
  v64 = v20;
  v27 = [v25 createDirectoryAtURL:v26 withIntermediateDirectories:0 mode:493 class:4 error:&v64];
  v12 = v64;

  if (!v27)
  {
    goto LABEL_17;
  }

  v28 = [(MIWatchKitAppSnapshot *)self destURL];
  v13 = [v28 URLByAppendingPathComponent:@"Payload" isDirectory:1];

  v29 = +[MIFileManager defaultManager];
  v63 = v12;
  v30 = [v29 createDirectoryAtURL:v13 withIntermediateDirectories:0 mode:493 class:4 error:&v63];
  v20 = v63;

  if (!v30)
  {
LABEL_9:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v12 = v20;
    goto LABEL_20;
  }

  v31 = [v17 bundleName];
  v14 = [v13 URLByAppendingPathComponent:v31 isDirectory:1];

  v32 = +[MIFileManager defaultManager];
  v62 = v20;
  v52 = [v32 createDirectoryAtURL:v14 withIntermediateDirectories:0 mode:493 class:4 error:&v62];
  v12 = v62;

  if (!v52)
  {
    goto LABEL_18;
  }

  v33 = [v18 bundle];
  v61 = v12;
  v34 = [(MIWatchKitAppSnapshot *)self _createCompanionAppPlaceholderForApp:v33 error:&v61];
  v53 = v61;

  if (!v34)
  {
    v15 = 0;
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
    v15 = 0;
LABEL_19:
    v16 = 0;
    goto LABEL_20;
  }

  v40 = [v17 bundleURL];
  v59 = v53;
  v41 = [(MIWatchKitAppSnapshot *)self _hardLinkCopyURL:v40 toURL:v14 diskUsage:&v67 error:&v59];
  v12 = v59;

  if (!v41)
  {
    goto LABEL_18;
  }

LABEL_26:
  v42 = v12;
  v15 = [v18 iTunesMetadataURL];
  v58 = v12;
  v16 = [MIStoreMetadata metadataFromPlistAtURL:v15 error:&v58];
  v12 = v58;

  if (!v16)
  {
    v55 = [v12 userInfo];
    v46 = [v55 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v54 = v46;
    v47 = [v46 domain];
    if ([v47 isEqualToString:NSCocoaErrorDomain])
    {
      v51 = [v54 code];

      if (v51 == 260)
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
    v44 = [(MIWatchKitAppSnapshot *)self destURL];
    v45 = [v15 lastPathComponent];
    v49 = [v44 URLByAppendingPathComponent:v45 isDirectory:0];

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
  if (a3)
  {
    v37 = v12;
    v38 = 0;
    *a3 = v12;
  }

  else
  {
    v38 = 0;
  }

LABEL_23:

  return v38;
}

- (BOOL)createSnapshotWithError:(id *)a3
{
  v4 = [(MIWatchKitAppSnapshot *)self _createSnapshotWithError:a3];
  if (v4)
  {
    v9[0] = @"DiskUsageBytes";
    v5 = [NSNumber numberWithUnsignedLongLong:[(MIWatchKitAppSnapshot *)self diskUsage]];
    v10[0] = v5;
    v9[1] = kCFBundleIdentifierKey;
    v6 = [(MIWatchKitAppSnapshot *)self watchKitAppBundleID];
    v10[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    [(MIWatchKitAppSnapshot *)self setResultDict:v7];
  }

  return v4;
}

@end