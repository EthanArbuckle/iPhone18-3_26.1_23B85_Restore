@interface BLEBookInstallOperation
- (BLEBookInstallOperation)initWithInfo:(id)info;
- (BOOL)_installMediaAsset:(id)asset assetInstalledPath:(id *)path fileName:(id *)name drmPath:(id *)drmPath error:(id *)error;
- (BOOL)_prepareOperation:(id *)operation;
- (BOOL)_unzipAsset:(id)asset unzippedPath:(id *)path error:(id *)error;
- (BOOL)sharedDownload;
- (id)_bookManifest;
- (id)_existingManifestEntry;
- (id)_initWithInfo:(id)info syncManifest:(id)manifest purchaseManifest:(id)purchaseManifest sharedManifest:(id)sharedManifest;
- (id)_manifestEntriesForInstallInfo:(id)info inManifest:(id)manifest;
- (id)_manifestEntryForInstallInfo:(id)info inManifest:(id)manifest;
- (id)_newManifestEntry:(BOOL)entry withFileName:(id)name;
- (void)_addPurchaseManifestItem:(BOOL)item;
- (void)_installEpubRights:(id)rights;
- (void)_installITunesArtwork:(id)artwork isDirectory:(BOOL)directory;
- (void)_installITunesMetadataPlist:(id)plist isDirectory:(BOOL)directory;
- (void)_removeDuplicateEntry:(id)entry;
- (void)main;
- (void)run;
@end

@implementation BLEBookInstallOperation

- (id)_initWithInfo:(id)info syncManifest:(id)manifest purchaseManifest:(id)purchaseManifest sharedManifest:(id)sharedManifest
{
  manifestCopy = manifest;
  purchaseManifestCopy = purchaseManifest;
  sharedManifestCopy = sharedManifest;
  v14 = [(BLEBookInstallOperation *)self initWithInfo:info];
  p_isa = &v14->super.super.super.isa;
  if (v14)
  {
    objc_storeStrong(&v14->_syncManifest, manifest);
    objc_storeStrong(p_isa + 8, purchaseManifest);
    objc_storeStrong(p_isa + 10, sharedManifest);
  }

  return p_isa;
}

- (BLEBookInstallOperation)initWithInfo:(id)info
{
  v13.receiver = self;
  v13.super_class = BLEBookInstallOperation;
  v3 = [(BLBaseBookInstallOperation *)&v13 initWithInfo:info];
  if (v3)
  {
    v4 = +[BLBookManifest syncedBookManifest];
    v5 = +[BLBookManifest purchasedBookManifest];
    v6 = +[BLBookManifest sharedPurchasedBookManifest];
    syncManifest = v3->_syncManifest;
    v3->_syncManifest = v4;
    v8 = v4;

    purchaseManifest = v3->_purchaseManifest;
    v3->_purchaseManifest = v5;
    v10 = v5;

    sharedManifest = v3->_sharedManifest;
    v3->_sharedManifest = v6;
  }

  return v3;
}

- (id)_manifestEntriesForInstallInfo:(id)info inManifest:(id)manifest
{
  infoCopy = info;
  manifestCopy = manifest;
  v41 = infoCopy;
  storeIdentifier = [infoCopy storeIdentifier];
  v8 = [manifestCopy manifestEntriesWithProperty:@"s" equalToNumber:storeIdentifier limitCount:0x7FFFFFFFFFFFFFFFLL];

  v9 = [v8 count];
  v10 = BLBookInstallLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v49 = @"s";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[Install-Op]: Restore item found with key: %{public}@", buf, 0xCu);
    }

    v12 = v8;
LABEL_11:
    v18 = v12;
    v19 = v12;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v49 = @"s";
    v50 = 2114;
    v51 = @"Item ID";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[Install-Op]: Could not find restore item with key: %{public}@ ... now trying with key: %{public}@", buf, 0x16u);
  }

  storeIdentifier2 = [infoCopy storeIdentifier];
  v14 = [manifestCopy manifestEntriesWithProperty:@"Item ID" equalToNumber:storeIdentifier2 limitCount:0x7FFFFFFFFFFFFFFFLL];

  v15 = [v14 count];
  v16 = BLBookInstallLog();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v49 = @"Item ID";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[Install-Op]: Restore item found with key: %{public}@", buf, 0xCu);
    }

    v12 = v14;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v49 = @"Item ID";
    v50 = 2114;
    v51 = @"Name";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[Install-Op]: Could not find restore item with key: %{public}@ ... now trying with key: %{public}@", buf, 0x16u);
  }

  title = [infoCopy title];
  v18 = [manifestCopy manifestEntriesWithProperty:@"Name" equalToValue:title limitCount:5];

  if ([(__CFString *)v18 count])
  {
    v22 = [(__CFString *)v18 count];
    v23 = BLBookInstallLog();
    v24 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v49 = @"Name";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "[Install-Op]: Restore item found with key: %{public}@", buf, 0xCu);
      }

      firstObject = [(__CFString *)v18 firstObject];
      v47 = firstObject;
      v19 = [NSArray arrayWithObjects:&v47 count:1];
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        title2 = [v41 title];
        *buf = 138412290;
        v49 = title2;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[Install-Op]: Found multiple restore items with title: %@.  De-duping by artistName", buf, 0xCu);
      }

      artistName = [v41 artistName];

      if (artistName)
      {
        v40 = manifestCopy;
        v19 = objc_opt_new();
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v18 = v18;
        v30 = [(__CFString *)v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v43;
          do
          {
            for (i = 0; i != v31; i = i + 1)
            {
              if (*v43 != v32)
              {
                objc_enumerationMutation(v18);
              }

              v34 = *(*(&v42 + 1) + 8 * i);
              v35 = [v34 objectForKeyedSubscript:{@"Artist", v40}];
              artistName2 = [v41 artistName];
              v37 = [v35 isEqualToString:artistName2];

              if (v37)
              {
                v38 = BLBookInstallLog();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[Install-Op]: Found book with our artist name.", buf, 2u);
                }

                [v19 addObject:v34];
              }
            }

            v31 = [(__CFString *)v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
          }

          while (v31);
        }

        manifestCopy = v40;
      }

      else
      {
        v18 = v18;
        v39 = BLBookInstallLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v49 = v18;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "[Install-Op]: ArtistName was not recorded in installIInfo. Returning matching entries: %@", buf, 0xCu);
        }

        v19 = v18;
      }
    }
  }

  else
  {
    v26 = BLBookInstallLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      title3 = [v41 title];
      *buf = 138412290;
      v49 = title3;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "[Install-Op]: Entry not found title: %@", buf, 0xCu);
    }

    v19 = 0;
  }

LABEL_12:

  return v19;
}

- (id)_manifestEntryForInstallInfo:(id)info inManifest:(id)manifest
{
  [(BLEBookInstallOperation *)self _manifestEntriesForInstallInfo:info inManifest:manifest];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        v9 = [v8 objectForKey:@"Backup-Path"];
        v10 = BUDynamicCast();

        v11 = +[NSFileManager defaultManager];
        v12 = [v11 fileExistsAtPath:v10];

        v13 = BLBookInstallLog();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
        if ((v12 & 1) == 0)
        {
          if (v14)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[Install-Op]: Prepare ... restore entry found.", buf, 2u);
          }

          v15 = v8;
          goto LABEL_15;
        }

        if (v14)
        {
          *buf = 138412290;
          v23 = v10;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[Install-Op]: Prepare ... File already restored for purchase manifest entry at path %@. Still looking...", buf, 0xCu);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (BOOL)_prepareOperation:(id *)operation
{
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  persistentIdentifier = [installInfo persistentIdentifier];

  persistentIdentifier2 = [installInfo persistentIdentifier];
  integerValue = [persistentIdentifier2 integerValue];

  isRestore = [installInfo isRestore];
  bOOLValue = [isRestore BOOLValue];

  if (integerValue)
  {
    v11 = persistentIdentifier == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 && !bOOLValue)
  {
    v12 = 0;
    v13 = 1;
    if (!operation)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v14 = BLBookInstallLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    persistentIdentifier3 = [installInfo persistentIdentifier];
    storeIdentifier = [installInfo storeIdentifier];
    v40 = 138543618;
    v41 = persistentIdentifier3;
    v42 = 2112;
    v43 = storeIdentifier;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Prepare ... persistentID == %{public}@, storeID == %@, isRestore == YES", &v40, 0x16u);
  }

  v17 = BLBookInstallLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    LOWORD(v40) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[Install-Op]: Prepare ... Looking for restore entry in the purchase manifest.", &v40, 2u);
  }

  purchaseManifest = [(BLEBookInstallOperation *)self purchaseManifest];
  v19 = [(BLEBookInstallOperation *)self _manifestEntryForInstallInfo:installInfo inManifest:purchaseManifest];

  v20 = BLBookInstallLog();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (!v21)
    {
      goto LABEL_22;
    }

    LOWORD(v40) = 0;
    v22 = "[Install-Op]: Prepare ... restore item found in the purchase manifest.";
    goto LABEL_21;
  }

  if (v21)
  {
    LOWORD(v40) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Prepare ... Looking for restore entry in the sync manifest.", &v40, 2u);
  }

  syncManifest = [(BLEBookInstallOperation *)self syncManifest];
  v19 = [(BLEBookInstallOperation *)self _manifestEntryForInstallInfo:installInfo inManifest:syncManifest];

  v24 = BLBookInstallLog();
  v20 = v24;
  if (!v19)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      downloadID = [installInfo downloadID];
      persistentIdentifier4 = [installInfo persistentIdentifier];
      storeIdentifier2 = [installInfo storeIdentifier];
      title = [installInfo title];
      artistName = [installInfo artistName];
      v40 = 138544386;
      v41 = downloadID;
      v42 = 2114;
      v43 = persistentIdentifier4;
      v44 = 2112;
      v45 = storeIdentifier2;
      v46 = 2112;
      v47 = title;
      v48 = 2112;
      v49 = artistName;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: Error: could not find manifest entry for restore book: [persistentID:%{public}@, storeID: %@, title:%@, author:%@]", &v40, 0x34u);
    }

    v12 = sub_1000A8F44(36, @"Bad backup plist", @"This plist entry for representing this download could not be found.");
    v13 = 0;
    if (operation)
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v40) = 0;
    v22 = "[Install-Op]: Prepare ... restore item found in the sync manifest.";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v22, &v40, 2u);
  }

LABEL_22:

  objc_opt_class();
  v25 = [v19 objectForKey:@"Backup-Path"];
  v26 = BUDynamicCast();

  v13 = v26 != 0;
  if (v26)
  {
    lastPathComponent = [v26 lastPathComponent];
    [installInfo setDestinationFilename:lastPathComponent];

    [installInfo setFullRestoreFilePath:v26];
    v28 = BLBookInstallLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      fullRestoreFilePath = [installInfo fullRestoreFilePath];
      v40 = 138543362;
      v41 = fullRestoreFilePath;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Prepare ... overriding install path to: %{public}@", &v40, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v30 = BLBookInstallLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      persistentIdentifier5 = [installInfo persistentIdentifier];
      title2 = [installInfo title];
      v40 = 138543618;
      v41 = persistentIdentifier5;
      v42 = 2112;
      v43 = title2;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "[Install-Op]: Prepare ... backup path not found on a restore.  This is fatal ... persitentID == %{public}@, title == %@", &v40, 0x16u);
    }

    v12 = sub_1000A8F44(36, @"Bad backup plist", @"This backup path for this entry could not be found.");
  }

  if (operation)
  {
LABEL_30:
    v33 = v12;
    *operation = v12;
  }

LABEL_31:

  return v13;
}

- (BOOL)sharedDownload
{
  if (+[BLLibraryUtility _isMultiUser])
  {
    installInfo = [(BLBaseBookInstallOperation *)self installInfo];
    isSample = [installInfo isSample];
    v5 = [isSample BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)main
{
  v3 = BLBookInstallLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    downloadID = [(BLBaseBookInstallOperation *)self downloadID];
    *buf = 138543362;
    v62 = downloadID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: Operation began for download", buf, 0xCu);
  }

  v58 = 0;
  v5 = [(BLEBookInstallOperation *)self _prepareOperation:&v58];
  v6 = v58;
  if (v5)
  {
    installInfo = [(BLBaseBookInstallOperation *)self installInfo];
    databaseManager = [installInfo databaseManager];
    downloadID2 = [(BLBaseBookInstallOperation *)self downloadID];
    [databaseManager syncSaveDownloadStateWithId:downloadID2 state:8];

    v10 = +[NSUserDefaults standardUserDefaults];
    if ([v10 BOOLForKey:@"BKSimulateCrashAtInstallStart"])
    {
      v11 = BLBookInstallLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        downloadID3 = [(BLBaseBookInstallOperation *)self downloadID];
        *buf = 138543362;
        v62 = downloadID3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: Simulating a crash during install start", buf, 0xCu);
      }

      [v10 removeObjectForKey:@"BKSimulateCrashAtInstallStart"];
      [v10 synchronize];
      raise(11);
    }

    if ((+[BLLibraryUtility _isMultiUser]& 1) != 0)
    {
      [(BLEBookInstallOperation *)self sharedManifest];
    }

    else
    {
      [(BLEBookInstallOperation *)self purchaseManifest];
    }
    v15 = ;
    installInfo2 = [(BLBaseBookInstallOperation *)self installInfo];
    permlink = [installInfo2 permlink];

    installInfo3 = [(BLBaseBookInstallOperation *)self installInfo];
    isStoreDownload = [installInfo3 isStoreDownload];

    if (isStoreDownload)
    {
      installInfo4 = [(BLBaseBookInstallOperation *)self installInfo];
      storeIdentifier = [installInfo4 storeIdentifier];
      installInfo5 = [(BLBaseBookInstallOperation *)self installInfo];
      storePublicationVersion = [installInfo5 storePublicationVersion];
      v24 = [v15 bookPathForAdamID:storeIdentifier withPublicationVersion:storePublicationVersion];
      [(BLEBookInstallOperation *)self setBookPath:v24];
    }

    else
    {
      if (![permlink length])
      {
        goto LABEL_19;
      }

      installInfo4 = [v15 bookPathPermalink:permlink];
      [(BLEBookInstallOperation *)self setBookPath:installInfo4];
    }

LABEL_19:
    sharedDownload = [(BLEBookInstallOperation *)self sharedDownload];
    bookPath = [(BLEBookInstallOperation *)self bookPath];
    v27 = [bookPath length];

    if (!sharedDownload)
    {
      v37 = BLBookInstallLog();
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        if (v38)
        {
          downloadID4 = [(BLBaseBookInstallOperation *)self downloadID];
          *buf = 138543362;
          v62 = downloadID4;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: We have an existing, non-shared download", buf, 0xCu);
        }

        [(BLEBookInstallOperation *)self setShouldSkipAssetInstallation:1];
LABEL_36:
        if ([(BLEBookInstallOperation *)self shouldSkipAssetInstallation])
        {
          v44 = 0;
        }

        else
        {
          v45 = [BLDownloadDRMOperation alloc];
          installInfo6 = [(BLBaseBookInstallOperation *)self installInfo];
          v44 = [(BLDownloadDRMOperation *)v45 initWithInstallInfo:installInfo6];

          [(BLDownloadDRMOperation *)v44 start];
          if (![(BLDownloadDRMOperation *)v44 success])
          {
            [(BLBaseBookInstallOperation *)self setSuccess:0];
            error = [(BLDownloadDRMOperation *)v44 error];
            [(BLBaseBookInstallOperation *)self setError:error];

            goto LABEL_41;
          }
        }

        [(BLEBookInstallOperation *)self run];
LABEL_41:
        if ([(BLBaseBookInstallOperation *)self success]&& [(BLEBookInstallOperation *)self sharedDownload])
        {
          v59 = BLSharedStorageUseChangedSourceKey;
          v60 = @"installOperation";
          v48 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v49 = +[NSNotificationCenter defaultCenter];
          [v49 postNotificationName:BLSharedStorageUseChangedNotification object:0 userInfo:v48];
        }

        error2 = [(BLBaseBookInstallOperation *)self error];

        v51 = BLBookInstallLog();
        v52 = v51;
        if (error2)
        {
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            downloadID5 = [(BLBaseBookInstallOperation *)self downloadID];
            if ([(BLBaseBookInstallOperation *)self success])
            {
              v54 = @"succeeded";
            }

            else
            {
              v54 = @"failed";
            }

            error3 = [(BLBaseBookInstallOperation *)self error];
            *buf = 138543874;
            v62 = downloadID5;
            v63 = 2114;
            v64 = v54;
            v65 = 2112;
            v66 = error3;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: Operation %{public}@ for download, error:  %@", buf, 0x20u);

LABEL_54:
          }
        }

        else if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          downloadID5 = [(BLBaseBookInstallOperation *)self downloadID];
          success = [(BLBaseBookInstallOperation *)self success];
          v57 = @"failed";
          if (success)
          {
            v57 = @"succeeded";
          }

          *buf = 138543618;
          v62 = downloadID5;
          v63 = 2114;
          v64 = v57;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: Operation %{public}@ for download", buf, 0x16u);
          goto LABEL_54;
        }

        goto LABEL_56;
      }

      if (v38)
      {
        downloadID6 = [(BLBaseBookInstallOperation *)self downloadID];
        *buf = 138543362;
        v62 = downloadID6;
        v41 = "(dID=%{public}@) [Install-Op]: We have a new, non-shared download";
        v42 = v37;
        v43 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_34;
      }

LABEL_35:

      goto LABEL_36;
    }

    if (v27)
    {
      _bookManifest = [(BLEBookInstallOperation *)self _bookManifest];
      manifestPath = [_bookManifest manifestPath];
      stringByDeletingLastPathComponent = [manifestPath stringByDeletingLastPathComponent];
      bookPath2 = [(BLEBookInstallOperation *)self bookPath];
      v32 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:bookPath2];
      [(BLEBookInstallOperation *)self setDrmPath:v32];

      [(BLEBookInstallOperation *)self setShouldSkipAssetInstallation:1];
      downloadID8 = BLBookInstallLog();
      if (os_log_type_enabled(downloadID8, OS_LOG_TYPE_DEFAULT))
      {
        downloadID7 = [(BLBaseBookInstallOperation *)self downloadID];
        bookPath3 = [(BLEBookInstallOperation *)self bookPath];
        drmPath = [(BLEBookInstallOperation *)self drmPath];
        *buf = 138543874;
        v62 = downloadID7;
        v63 = 2112;
        v64 = bookPath3;
        v65 = 2112;
        v66 = drmPath;
        _os_log_impl(&_mh_execute_header, downloadID8, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: We have an existing shared download. Book at %@, sinf at %@.", buf, 0x20u);
      }
    }

    else
    {
      _bookManifest = BLBookInstallLog();
      if (!os_log_type_enabled(_bookManifest, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      downloadID8 = [(BLBaseBookInstallOperation *)self downloadID];
      *buf = 138543362;
      v62 = downloadID8;
      _os_log_impl(&_mh_execute_header, _bookManifest, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: We have a new shared download.", buf, 0xCu);
    }

LABEL_30:
    v37 = BLBookInstallLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      downloadID6 = +[IMLibraryPlist sharedRepositoryPath];
      *buf = 138543362;
      v62 = downloadID6;
      v41 = "[Install-Op]: Shared book container location is: %{public}@";
      v42 = v37;
      v43 = OS_LOG_TYPE_DEBUG;
LABEL_34:
      _os_log_impl(&_mh_execute_header, v42, v43, v41, buf, 0xCu);

      goto LABEL_35;
    }

    goto LABEL_35;
  }

  v13 = BLBookInstallLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    downloadID9 = [(BLBaseBookInstallOperation *)self downloadID];
    *buf = 138543618;
    v62 = downloadID9;
    v63 = 2112;
    v64 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: Prepare failed. Bailing install. Error:  %@", buf, 0x16u);
  }

  [(BLBaseBookInstallOperation *)self setSuccess:0];
  [(BLBaseBookInstallOperation *)self setError:v6];
LABEL_56:
}

- (void)run
{
  drmPath = [(BLEBookInstallOperation *)self drmPath];
  if ([(BLEBookInstallOperation *)self shouldSkipAssetInstallation])
  {
    if (drmPath)
    {
      if ([drmPath length])
      {
        v4 = @"not empty";
      }

      else
      {
        v4 = @"empty";
      }
    }

    else
    {
      v4 = @"nil";
    }

    v13 = BLBookInstallLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      installInfo = [(BLBaseBookInstallOperation *)self installInfo];
      downloadID = [installInfo downloadID];
      *buf = 138543874;
      v32 = downloadID;
      v33 = 2112;
      v34 = drmPath;
      v35 = 2114;
      v36 = v4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op] Skipping installMediaAsset because shouldSkipAssetIntallation is true. drmPath is %@ (is %{public}@).", buf, 0x20u);
    }

    v10 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    installInfo2 = [(BLBaseBookInstallOperation *)self installInfo];
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = drmPath;
    v6 = [(BLEBookInstallOperation *)self _installMediaAsset:installInfo2 assetInstalledPath:&v30 fileName:&v29 drmPath:&v28 error:&v27];
    v7 = v30;
    v8 = v29;
    v9 = v28;

    v10 = v27;
    if (!v6)
    {
      v11 = 0;
      v12 = 0;
      drmPath = v9;
      goto LABEL_20;
    }

    drmPath = v9;
  }

  installInfo3 = [(BLBaseBookInstallOperation *)self installInfo];
  databaseManager = [installInfo3 databaseManager];
  downloadID2 = [(BLBaseBookInstallOperation *)self downloadID];
  [databaseManager syncSaveDownloadStateWithId:downloadID2 state:15];

  if (![(BLEBookInstallOperation *)self shouldSkipAssetInstallation])
  {
    v19 = objc_alloc_init(NSFileManager);
    buf[0] = 0;
    [v19 fileExistsAtPath:v7 isDirectory:buf];
    [(BLEBookInstallOperation *)self _installITunesArtwork:v7 isDirectory:buf[0]];
    [(BLEBookInstallOperation *)self _installITunesMetadataPlist:v7 isDirectory:buf[0]];
  }

  v20 = +[NSUserDefaults standardUserDefaults];
  if ([v20 BOOLForKey:@"BKSimulateCrashAtInstallDuringFinish"])
  {
    v21 = BLBookInstallLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      installInfo4 = [(BLBaseBookInstallOperation *)self installInfo];
      downloadID3 = [installInfo4 downloadID];
      *buf = 138543362;
      v32 = downloadID3;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: Simulating a crash during install finish", buf, 0xCu);
    }

    [v20 removeObjectForKey:@"BKSimulateCrashAtInstallDuringFinish"];
    [v20 synchronize];
    raise(11);
  }

  [(BLEBookInstallOperation *)self _installEpubRights:drmPath];
  [(BLEBookInstallOperation *)self _addPurchaseManifestItem:[(BLEBookInstallOperation *)self shouldSkipAssetInstallation]];
  installInfo5 = [(BLBaseBookInstallOperation *)self installInfo];
  databaseManager2 = [installInfo5 databaseManager];
  downloadID4 = [(BLBaseBookInstallOperation *)self downloadID];
  [databaseManager2 syncSaveDownloadStateWithId:downloadID4 state:16];

  v11 = 1;
  v12 = v7;
LABEL_20:
  [(BLBaseBookInstallOperation *)self setSuccess:v11];
  [(BLBaseBookInstallOperation *)self setInstalledAssetPath:v12];
  [(BLBaseBookInstallOperation *)self setError:v10];
}

- (void)_installITunesMetadataPlist:(id)plist isDirectory:(BOOL)directory
{
  directoryCopy = directory;
  plistCopy = plist;
  _bookManifest = [(BLEBookInstallOperation *)self _bookManifest];
  purchaseManifest = [(BLEBookInstallOperation *)self purchaseManifest];
  v9 = purchaseManifest;
  if (_bookManifest == purchaseManifest)
  {
    plistPath = [(BLBaseBookInstallOperation *)self plistPath];
    v15 = [plistPath length];

    if (v15)
    {
      if (directoryCopy)
      {
        v12 = [plistCopy stringByAppendingPathComponent:@"iTunesMetadata.plist"];
      }

      else
      {
        stringByDeletingPathExtension = [plistCopy stringByDeletingPathExtension];
        v12 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"plist"];
      }

      plistPath2 = [(BLBaseBookInstallOperation *)self plistPath];
      v22 = 0;
      v18 = [(BLBaseBookInstallOperation *)self _moveFile:plistPath2 toPath:v12 error:&v22];
      v19 = v22;

      if ((v18 & 1) == 0)
      {
        v20 = BLBookInstallLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          downloadID = [(BLBaseBookInstallOperation *)self downloadID];
          *buf = 138543618;
          v24 = downloadID;
          v25 = 2112;
          v26 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: Failed to install iTunesMetadata.plist. Error:  %@", buf, 0x16u);
        }
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  plistPath3 = [(BLBaseBookInstallOperation *)self plistPath];
  v11 = [plistPath3 length];

  if (!v11)
  {
    v12 = BLBookInstallLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      downloadID2 = [(BLBaseBookInstallOperation *)self downloadID];
      *buf = 138543362;
      v24 = downloadID2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: No iTunesMetadata.plist to install.", buf, 0xCu);
    }

LABEL_15:
  }
}

- (void)_installITunesArtwork:(id)artwork isDirectory:(BOOL)directory
{
  directoryCopy = directory;
  artworkCopy = artwork;
  artworkPath = [(BLBaseBookInstallOperation *)self artworkPath];
  v8 = [artworkPath length];

  if (v8)
  {
    if (directoryCopy)
    {
      v9 = [artworkCopy stringByAppendingPathComponent:@"iTunesArtwork"];
    }

    else
    {
      stringByDeletingPathExtension = [artworkCopy stringByDeletingPathExtension];
      v9 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"jpg"];
    }

    v13 = BLBookInstallLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      downloadID = [(BLBaseBookInstallOperation *)self downloadID];
      artworkPath2 = [(BLBaseBookInstallOperation *)self artworkPath];
      *buf = 138543874;
      v25 = downloadID;
      v26 = 2112;
      v27 = artworkPath2;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: Moving asset %@ to %@.", buf, 0x20u);
    }

    artworkPath3 = [(BLBaseBookInstallOperation *)self artworkPath];
    v22 = 0;
    v23 = v9;
    v17 = [(BLBaseBookInstallOperation *)self _moveFile:artworkPath3 toPath:&v23 installBehavior:0 error:&v22];
    v10 = v23;

    v18 = v22;
    if (v17)
    {
      installInfo = [(BLBaseBookInstallOperation *)self installInfo];
      fileAttributes = [installInfo fileAttributes];

      if ([fileAttributes count])
      {
        v21 = +[NSFileManager defaultManager];
        [v21 setAttributes:fileAttributes ofItemAtPath:v10 error:0];
      }
    }
  }

  else
  {
    v10 = BLBookInstallLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      downloadID2 = [(BLBaseBookInstallOperation *)self downloadID];
      *buf = 138543362;
      v25 = downloadID2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: No iTunesArtwork to install.", buf, 0xCu);
    }
  }
}

- (void)_installEpubRights:(id)rights
{
  rightsCopy = rights;
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  epubRightsPath = [installInfo epubRightsPath];
  v7 = [epubRightsPath length];

  if (v7)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [rightsCopy stringByAppendingPathComponent:@"META-INF"];
    v10 = [v9 stringByAppendingPathComponent:@"sinf.xml"];
    v11 = BLBookInstallLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      installInfo2 = [(BLBaseBookInstallOperation *)self installInfo];
      downloadID = [installInfo2 downloadID];
      *buf = 138543618;
      v31 = downloadID;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: Writing EPR data for download to path: %@", buf, 0x16u);
    }

    v29 = 0;
    if ([v8 fileExistsAtPath:v9 isDirectory:&v29])
    {
      if (v29)
      {
        v14 = 0;
        goto LABEL_9;
      }

      v28 = 0;
      v25 = [v8 removeItemAtPath:v9 error:&v28];
      v14 = v28;
      if (!v25)
      {
        v21 = BLBookInstallLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          installInfo3 = [(BLBaseBookInstallOperation *)self installInfo];
          downloadID2 = [installInfo3 downloadID];
          *buf = 138543874;
          v31 = downloadID2;
          v32 = 2114;
          v33 = v9;
          v34 = 2112;
          v35 = v14;
          v24 = "(dID=%{public}@) [Install-Op]: Something exists at DRM Path %{public}@ and could not be removed. Error:  %@";
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      if (v29)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v27 = v14;
    v16 = [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v27];
    v14 = v27;

    if (!v16)
    {
      v21 = BLBookInstallLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        installInfo3 = [(BLBaseBookInstallOperation *)self installInfo];
        downloadID2 = [installInfo3 downloadID];
        *buf = 138543874;
        v31 = downloadID2;
        v32 = 2114;
        v33 = v9;
        v34 = 2112;
        v35 = v14;
        v24 = "(dID=%{public}@) [Install-Op]: Unable to create DRM directory at path: %{public}@. Error:  %@";
        goto LABEL_19;
      }

LABEL_20:

      goto LABEL_21;
    }

LABEL_9:
    v17 = v14;
    installInfo4 = [(BLBaseBookInstallOperation *)self installInfo];
    epubRightsPath2 = [installInfo4 epubRightsPath];
    v26 = v14;
    v20 = [v8 moveItemAtPath:epubRightsPath2 toPath:v10 error:&v26];
    v14 = v26;

    if (v20)
    {
LABEL_21:

      goto LABEL_22;
    }

    v21 = BLBookInstallLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      installInfo3 = [(BLBaseBookInstallOperation *)self installInfo];
      downloadID2 = [installInfo3 downloadID];
      *buf = 138543874;
      v31 = downloadID2;
      v32 = 2114;
      v33 = v9;
      v34 = 2112;
      v35 = v14;
      v24 = "(dID=%{public}@) [Install-Op]: Error EPR data for download to path: %{public}@. Error:  %@";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v24, buf, 0x20u);

      goto LABEL_20;
    }

    goto LABEL_20;
  }

LABEL_22:
}

- (id)_newManifestEntry:(BOOL)entry withFileName:(id)name
{
  entryCopy = entry;
  nameCopy = name;
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  v8 = [installInfo manifestEntry:entryCopy withFileName:nameCopy];

  return v8;
}

- (void)_removeDuplicateEntry:(id)entry
{
  entryCopy = entry;
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  storeIdentifier = [installInfo storeIdentifier];

  if (storeIdentifier)
  {
    v7 = BLBookInstallLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[Install-Op]: Looking for duplicate from purchase manifest for store book", &v23, 2u);
    }

    v8 = [entryCopy manifestEntriesWithProperty:@"s" equalToNumber:storeIdentifier limitCount:1];
    v9 = [v8 count];
    v10 = BLBookInstallLog();
    v11 = v10;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        firstObject = [v8 firstObject];
        v23 = 138412290;
        v24 = firstObject;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[Install-Op]: Removing for duplicate store book entry from purchase manifest: %@", &v23, 0xCu);
      }

      [entryCopy removeManifestEntryWithStoreItemID:storeIdentifier];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[Install-Op]: Did not find a duplicate store book entry in purchase manifest", &v23, 2u);
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  installInfo2 = [(BLBaseBookInstallOperation *)self installInfo];
  permlink = [installInfo2 permlink];
  v15 = [permlink length];

  if (v15)
  {
    v16 = BLBookInstallLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[Install-Op]: Looking for duplicate entry from purchase manifest for edu mode book", &v23, 2u);
    }

    installInfo3 = [(BLBaseBookInstallOperation *)self installInfo];
    permlink2 = [installInfo3 permlink];
    v8 = [entryCopy manifestEntriesWithProperty:@"iTunesU Permlink" equalToValue:permlink2 limitCount:1];

    v19 = [v8 count];
    v20 = BLBookInstallLog();
    installInfo4 = v20;
    if (v19 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, installInfo4, OS_LOG_TYPE_INFO, "[Install-Op]: Removing for duplicate store book entry from purchase manifest", &v23, 2u);
      }

      installInfo4 = [(BLBaseBookInstallOperation *)self installInfo];
      permlink3 = [installInfo4 permlink];
      [entryCopy removeManifestEntryWithDownloadPermalink:permlink3];
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, installInfo4, OS_LOG_TYPE_DEBUG, "[Install-Op]: Did not find a duplicate store book entry in purchase manifest", &v23, 2u);
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (void)_addPurchaseManifestItem:(BOOL)item
{
  itemCopy = item;
  v5 = BLBookInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Install-Op]: Adding purchase manifest", &v27, 2u);
  }

  _bookManifest = [(BLEBookInstallOperation *)self _bookManifest];
  if ([(BLEBookInstallOperation *)self sharedDownload])
  {
    v7 = BLBookInstallLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      manifestPath = [_bookManifest manifestPath];
      v27 = 138543362;
      v28 = manifestPath;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Updating purchase manifest for shared download at user path: %{public}@", &v27, 0xCu);
    }

    [(BLEBookInstallOperation *)self _removeDuplicateEntry:_bookManifest];
    if (itemCopy)
    {
      bookPath = self->_bookPath;
    }

    else
    {
      bookPath = 0;
    }

    destinationFilename = [(BLEBookInstallOperation *)self _newManifestEntry:bookPath];
    [_bookManifest addManifestEntry:destinationFilename];
    [_bookManifest synchronizeData];
    if (!itemCopy)
    {
      sharedManifest = [(BLEBookInstallOperation *)self sharedManifest];
      v14 = BLBookInstallLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        manifestPath2 = [sharedManifest manifestPath];
        v27 = 138543362;
        v28 = manifestPath2;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Updating shared manifest at path: %{public}@", &v27, 0xCu);
      }

      [(BLEBookInstallOperation *)self _removeDuplicateEntry:sharedManifest];
      v16 = [(BLEBookInstallOperation *)self _newManifestEntry:1 withFileName:0];
      [sharedManifest addManifestEntry:v16];
      [sharedManifest synchronizeData];
    }

    goto LABEL_26;
  }

  shouldSkipAssetInstallation = [(BLEBookInstallOperation *)self shouldSkipAssetInstallation];
  destinationFilename = BLBookInstallLog();
  v12 = os_log_type_enabled(destinationFilename, OS_LOG_TYPE_DEFAULT);
  if (!shouldSkipAssetInstallation)
  {
    if (v12)
    {
      manifestPath3 = [_bookManifest manifestPath];
      v27 = 138543362;
      v28 = manifestPath3;
      _os_log_impl(&_mh_execute_header, destinationFilename, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Updating purchase single user manifest: %{public}@", &v27, 0xCu);
    }

    destinationFilename = [(BLBaseBookInstallOperation *)self destinationFilename];
    installInfo = [(BLBaseBookInstallOperation *)self installInfo];
    persistentIdentifier = [installInfo persistentIdentifier];
    if (persistentIdentifier)
    {
    }

    else
    {
      installInfo2 = [(BLBaseBookInstallOperation *)self installInfo];
      isRestore = [installInfo2 isRestore];
      bOOLValue = [isRestore BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        v25 = BLBookInstallLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Updating purchase manifest since isRestore == NO.", &v27, 2u);
        }

        v24 = [_bookManifest manifestEntriesWithProperty:@"Path" equalToValue:destinationFilename limitCount:1];
        if ([v24 count])
        {
          goto LABEL_25;
        }

        _existingManifestEntry = [(BLEBookInstallOperation *)self _existingManifestEntry];
        if (_existingManifestEntry)
        {
          [(BLEBookInstallOperation *)self _removeDuplicateEntry:_bookManifest];
        }

        v26 = [(BLEBookInstallOperation *)self _newManifestEntry:0];
        [_bookManifest addManifestEntry:v26];
        [_bookManifest synchronizeData];

LABEL_24:
LABEL_25:

        goto LABEL_26;
      }
    }

    _existingManifestEntry = BLBookInstallLog();
    if (os_log_type_enabled(_existingManifestEntry, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, _existingManifestEntry, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Not updating purchase manifest because this is a restore download.", &v27, 2u);
    }

    v24 = 0;
    goto LABEL_24;
  }

  if (v12)
  {
    LOWORD(v27) = 0;
    _os_log_impl(&_mh_execute_header, destinationFilename, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Skip insertion of manifest entry for existing asset.", &v27, 2u);
  }

LABEL_26:
}

- (id)_bookManifest
{
  purchaseManifest = [(BLEBookInstallOperation *)self purchaseManifest];
  syncManifest = [(BLEBookInstallOperation *)self syncManifest];
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  libraryItemIdentifier = [installInfo libraryItemIdentifier];

  v7 = BLBookInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412290;
    v30 = libraryItemIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Looking for book manifest for libraryItemIdentifier: %@ ...", &v29, 0xCu);
  }

  if (!libraryItemIdentifier)
  {
    goto LABEL_14;
  }

  v8 = [syncManifest manifestEntriesWithProperty:@"Persistent ID" equalToValue:libraryItemIdentifier limitCount:1];
  if ([v8 count] == 1)
  {
    v9 = syncManifest;
    v10 = BLBookInstallLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Using sync manifest.", &v29, 2u);
    }
  }

  else
  {
    v11 = [purchaseManifest manifestEntriesWithProperty:@"Persistent ID" equalToValue:libraryItemIdentifier limitCount:1];

    if ([v11 count] != 1)
    {

      goto LABEL_14;
    }

    v9 = purchaseManifest;
    v10 = BLBookInstallLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Using purchase manifest.", &v29, 2u);
    }

    v8 = v11;
  }

  if (!v9)
  {
LABEL_14:
    v12 = BLBookInstallLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      downloadedAssetPath = [(BLBaseBookInstallOperation *)self downloadedAssetPath];
      v29 = 138543362;
      v30 = downloadedAssetPath;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Manifest not found by using the libraryItemIdentifier ... using downloadedAssetPath: %{public}@", &v29, 0xCu);
    }

    downloadedAssetPath2 = [(BLBaseBookInstallOperation *)self downloadedAssetPath];
    installInfo2 = [(BLBaseBookInstallOperation *)self installInfo];
    isRestore = [installInfo2 isRestore];
    bOOLValue = [isRestore BOOLValue];

    if (bOOLValue)
    {
      installInfo3 = [(BLBaseBookInstallOperation *)self installInfo];
      fullRestoreFilePath = [installInfo3 fullRestoreFilePath];

      downloadedAssetPath2 = fullRestoreFilePath;
    }

    v20 = +[IMLibraryPlist purchasesRepositoryPath];
    v21 = [downloadedAssetPath2 hasPrefix:v20];

    if (v21)
    {
      v9 = purchaseManifest;
      v22 = BLBookInstallLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        v23 = "[Install-Op]: Using purchase manifest.";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, &v29, 2u);
      }
    }

    else
    {
      v24 = +[NSURL bu_booksRepositoryURL];
      path = [v24 path];
      v26 = [downloadedAssetPath2 hasPrefix:path];

      if (v26)
      {
        v9 = syncManifest;
        v22 = BLBookInstallLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29) = 0;
          v23 = "[Install-Op]: Using sync manifest.";
          goto LABEL_26;
        }
      }

      else
      {
        v9 = purchaseManifest;
        v22 = BLBookInstallLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29) = 0;
          v23 = "[Install-Op]: Defaulting to purchase manifest.";
          goto LABEL_26;
        }
      }
    }
  }

  v27 = v9;

  return v9;
}

- (id)_existingManifestEntry
{
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  libraryItemIdentifier = [installInfo libraryItemIdentifier];

  installInfo2 = [(BLBaseBookInstallOperation *)self installInfo];
  storeIdentifier = [installInfo2 storeIdentifier];

  if (libraryItemIdentifier)
  {
    syncManifest = [(BLEBookInstallOperation *)self syncManifest];
    v8 = [syncManifest manifestEntriesWithProperty:@"Persistent ID" equalToValue:libraryItemIdentifier limitCount:1];

    if ([v8 count] == 1)
    {
      goto LABEL_9;
    }

    purchaseManifest = [(BLEBookInstallOperation *)self purchaseManifest];
    v10 = purchaseManifest;
    v11 = @"Persistent ID";
    v12 = libraryItemIdentifier;
LABEL_7:
    v14 = [purchaseManifest manifestEntriesWithProperty:v11 equalToValue:v12 limitCount:1];

    if ([v14 count] != 1)
    {
      v15 = 0;
      goto LABEL_11;
    }

    v8 = v14;
LABEL_9:
    v15 = [v8 objectAtIndex:0];
    v14 = v8;
LABEL_11:

    goto LABEL_12;
  }

  if (storeIdentifier)
  {
    syncManifest2 = [(BLEBookInstallOperation *)self syncManifest];
    v8 = [syncManifest2 manifestEntriesWithProperty:@"s" equalToValue:storeIdentifier limitCount:1];

    if ([v8 count] == 1)
    {
      goto LABEL_9;
    }

    purchaseManifest = [(BLEBookInstallOperation *)self purchaseManifest];
    v10 = purchaseManifest;
    v11 = @"s";
    v12 = storeIdentifier;
    goto LABEL_7;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (BOOL)_unzipAsset:(id)asset unzippedPath:(id *)path error:(id *)error
{
  assetCopy = asset;
  assetPath = [assetCopy assetPath];
  v9 = [assetPath stringByAppendingPathExtension:@"ext"];
  v10 = [BLExtractFileOperation alloc];
  fileAttributes = [assetCopy fileAttributes];
  v12 = [(BLExtractFileOperation *)v10 initWithSoucePath:assetPath destinationPath:v9 fileAttributes:fileAttributes installInfo:assetCopy];

  [(BLExtractFileOperation *)v12 start];
  success = [(BLExtractFileOperation *)v12 success];
  error = [(BLExtractFileOperation *)v12 error];
  v15 = error;
  if (success)
  {
    error = v9;
    if (!path)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  path = error;
  if (error)
  {
LABEL_5:
    *path = error;
  }

LABEL_6:

  return success;
}

- (BOOL)_installMediaAsset:(id)asset assetInstalledPath:(id *)path fileName:(id *)name drmPath:(id *)drmPath error:(id *)error
{
  assetCopy = asset;
  v13 = objc_alloc_init(NSFileManager);
  downloadedAssetPath = [(BLBaseBookInstallOperation *)self downloadedAssetPath];
  v96 = 0;
  errorCopy = error;
  if (([v13 fileExistsAtPath:downloadedAssetPath isDirectory:&v96] & 1) == 0)
  {
    v38 = BLBookInstallLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v98 = downloadedAssetPath;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "[Install-Op]: Could not install non-existant file: %@", buf, 0xCu);
    }

    v39 = [NSString stringWithFormat:@"%@: Could not install non-existant file: %@", objc_opt_class(), downloadedAssetPath];
    v40 = sub_1000A8F44(7, 0, v39);
    goto LABEL_21;
  }

  _bookManifest = [(BLEBookInstallOperation *)self _bookManifest];
  if (!_bookManifest)
  {
    v39 = BLBookInstallLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      installInfo = [(BLBaseBookInstallOperation *)self installInfo];
      downloadID = [installInfo downloadID];
      *buf = 138543362;
      v98 = downloadID;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "(dID=%{public}@) No manifest entry found for book.", buf, 0xCu);
    }

    v40 = 0;
LABEL_21:

    destinationFilename = 0;
    v31 = 0;
    v33 = 0;
    LOBYTE(v43) = 0;
    goto LABEL_22;
  }

  v16 = _bookManifest;
  pathCopy = path;
  nameCopy = name;
  drmPathCopy = drmPath;
  manifestPath = [_bookManifest manifestPath];
  stringByDeletingLastPathComponent = [manifestPath stringByDeletingLastPathComponent];

  destinationFilename = [(BLBaseBookInstallOperation *)self destinationFilename];
  syncManifest = [(BLEBookInstallOperation *)self syncManifest];
  v86 = assetCopy;
  v83 = v16;
  if (v16 == syncManifest)
  {
    installInfo2 = [(BLBaseBookInstallOperation *)self installInfo];
    isRestore = [installInfo2 isRestore];
    bOOLValue = [isRestore BOOLValue];

    if (bOOLValue)
    {
      goto LABEL_12;
    }

    syncManifest = [destinationFilename pathExtension];
    lastPathComponent = [downloadedAssetPath lastPathComponent];

    if ([syncManifest length])
    {
      pathExtension = [lastPathComponent pathExtension];
      v26 = [pathExtension length];

      if (!v26)
      {
        v27 = [lastPathComponent stringByAppendingPathExtension:syncManifest];

        lastPathComponent = v27;
      }
    }

    v28 = BLBookInstallLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      destinationFilename2 = [(BLBaseBookInstallOperation *)self destinationFilename];
      title = [assetCopy title];
      *buf = 138412802;
      v98 = destinationFilename2;
      v99 = 2112;
      v100 = lastPathComponent;
      v101 = 2112;
      v102 = title;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Alert: just hit the unlikely code path: [original filename: %@ | new filename: %@ | book title: %@]", buf, 0x20u);

      assetCopy = v86;
    }

    destinationFilename = lastPathComponent;
  }

LABEL_12:
  v31 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:destinationFilename];
  if ([(BLEBookInstallOperation *)self sharedDownload])
  {
    v32 = +[IMLibraryPlist sharedRepositoryPath];
    v33 = [v32 stringByAppendingPathComponent:destinationFilename];

    v34 = BLBookInstallLog();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 138412546;
    v98 = v33;
    v99 = 2112;
    v100 = v31;
    v35 = "[Install-Op]: Saving Book to %@, DRM to %@";
    v36 = v34;
    v37 = 22;
  }

  else
  {
    v33 = [v31 copy];

    v34 = BLBookInstallLog();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 138412290;
    v98 = v33;
    v35 = "[Install-Op]: Saving Book to %@";
    v36 = v34;
    v37 = 12;
  }

  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
LABEL_28:

  installInfo3 = [(BLBaseBookInstallOperation *)self installInfo];
  databaseManager = [installInfo3 databaseManager];
  downloadID2 = [(BLBaseBookInstallOperation *)self downloadID];
  [databaseManager syncSaveDownloadStateWithId:downloadID2 state:13];

  v85 = +[NSUserDefaults standardUserDefaults];
  if ([v85 BOOLForKey:@"BKSimulateCrashAtInstallDuringUnzip"])
  {
    v48 = BLBookInstallLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      installInfo4 = [(BLBaseBookInstallOperation *)self installInfo];
      downloadID3 = [installInfo4 downloadID];
      *buf = 138543362;
      v98 = downloadID3;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: Simulating a crash during unzip", buf, 0xCu);
    }

    [v85 removeObjectForKey:@"BKSimulateCrashAtInstallDuringUnzip"];
    [v85 synchronize];
    raise(11);
  }

  if (v96 == 1)
  {
    v51 = [downloadedAssetPath isEqualToString:v33];
    v52 = BLBookInstallLog();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
    if (v51)
    {
      if (v53)
      {
        *buf = 138412290;
        v98 = v33;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Book already at destination: %@", buf, 0xCu);
      }

      LOBYTE(v52) = 0;
      v40 = 0;
      v43 = 1;
      goto LABEL_56;
    }

    if (v53)
    {
      *buf = 138412546;
      v98 = downloadedAssetPath;
      v99 = 2112;
      v100 = v33;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Moving file: %@ to path: %@", buf, 0x16u);
    }

    v95 = v33;
    v94 = 0;
    v43 = [(BLBaseBookInstallOperation *)self _moveFile:downloadedAssetPath toPath:&v95 installBehavior:0 error:&v94];
    v57 = v95;

    v40 = v94;
    LOBYTE(v52) = 0;
  }

  else
  {
    installInfo5 = [(BLBaseBookInstallOperation *)self installInfo];
    v92 = 0;
    v93 = 0;
    LODWORD(v52) = [(BLEBookInstallOperation *)self _unzipAsset:installInfo5 unzippedPath:&v93 error:&v92];
    v55 = v93;
    v56 = v92;

    v79 = v56;
    v80 = v55;
    if (v52)
    {
      v91 = v33;
      [(BLBaseBookInstallOperation *)self _moveFile:v55 toPath:&v91 installBehavior:0 error:0];
      v57 = v91;

      v58 = BLBookInstallLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v98 = v57;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Installed file: %@", buf, 0xCu);
      }

      v40 = 0;
      v43 = 1;
    }

    else
    {
      v90 = 0;
      v59 = [v13 removeItemAtPath:v55 error:&v90];
      v78 = v90;
      if ((v59 & 1) == 0)
      {
        v60 = BLBookInstallLog();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v98 = v78;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "[Install-Op]: Error trying to clean up unzippedPath after unzip failed:  %@", buf, 0xCu);
        }
      }

      pathExtension2 = [v33 pathExtension];
      v77 = pathExtension2;
      if (([pathExtension2 isEqualToString:@"epub"] & 1) != 0 || objc_msgSend(pathExtension2, "isEqualToString:", @"ibooks"))
      {
        v62 = BLBookInstallLog();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v98 = downloadedAssetPath;
          v99 = 2112;
          v100 = v56;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "[Install-Op]: Failing install after unzip failure for file: %{public}@, error:  %@", buf, 0x16u);
        }

        v40 = v56;
        v43 = 0;
      }

      else
      {
        v73 = [downloadedAssetPath isEqualToString:v33];
        v74 = BLBookInstallLog();
        v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
        if (v73)
        {
          if (v75)
          {
            *buf = 138412290;
            v98 = v33;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Book already at destination: %@", buf, 0xCu);
          }

          v40 = 0;
          v43 = 1;
        }

        else
        {
          if (v75)
          {
            *buf = 138412546;
            v98 = downloadedAssetPath;
            v99 = 2112;
            v100 = v33;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Moving file: %@ to path: %@", buf, 0x16u);
          }

          v88 = 0;
          v89 = v33;
          v43 = [(BLBaseBookInstallOperation *)self _moveFile:downloadedAssetPath toPath:&v89 installBehavior:0 error:&v88];
          v76 = v89;

          v40 = v88;
          v33 = v76;
        }
      }

      v57 = v33;
      v58 = v78;
    }
  }

  v33 = v57;
  assetCopy = v86;
LABEL_56:
  if ((v52 & 1) == 0 && v43)
  {
    fileAttributes = [assetCopy fileAttributes];
    if ([fileAttributes count])
    {
      [v13 setAttributes:fileAttributes ofItemAtPath:v33 error:0];
    }
  }

  installInfo6 = [(BLBaseBookInstallOperation *)self installInfo];
  databaseManager2 = [installInfo6 databaseManager];
  downloadID4 = [(BLBaseBookInstallOperation *)self downloadID];
  [databaseManager2 syncSaveDownloadStateWithId:downloadID4 state:14];

  if (drmPathCopy)
  {
    v67 = !v43;
  }

  else
  {
    v67 = 1;
  }

  if ((v67 & 1) == 0)
  {
    v68 = v33;
    *pathCopy = v33;
    v69 = v31;
    *drmPathCopy = v31;
  }

  if (destinationFilename)
  {
    v70 = !v43;
  }

  else
  {
    v70 = 1;
  }

  if ((v70 & 1) == 0)
  {
    v71 = destinationFilename;
    *nameCopy = destinationFilename;
    LOBYTE(v43) = 1;
    assetCopy = v86;
    goto LABEL_71;
  }

  assetCopy = v86;
LABEL_22:
  if (errorCopy && !v43)
  {
    v44 = v40;
    *errorCopy = v40;
  }

LABEL_71:

  return v43;
}

@end