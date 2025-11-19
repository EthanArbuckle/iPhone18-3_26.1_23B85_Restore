@interface BLEBookInstallOperation
- (BLEBookInstallOperation)initWithInfo:(id)a3;
- (BOOL)_installMediaAsset:(id)a3 assetInstalledPath:(id *)a4 fileName:(id *)a5 drmPath:(id *)a6 error:(id *)a7;
- (BOOL)_prepareOperation:(id *)a3;
- (BOOL)_unzipAsset:(id)a3 unzippedPath:(id *)a4 error:(id *)a5;
- (BOOL)sharedDownload;
- (id)_bookManifest;
- (id)_existingManifestEntry;
- (id)_initWithInfo:(id)a3 syncManifest:(id)a4 purchaseManifest:(id)a5 sharedManifest:(id)a6;
- (id)_manifestEntriesForInstallInfo:(id)a3 inManifest:(id)a4;
- (id)_manifestEntryForInstallInfo:(id)a3 inManifest:(id)a4;
- (id)_newManifestEntry:(BOOL)a3 withFileName:(id)a4;
- (void)_addPurchaseManifestItem:(BOOL)a3;
- (void)_installEpubRights:(id)a3;
- (void)_installITunesArtwork:(id)a3 isDirectory:(BOOL)a4;
- (void)_installITunesMetadataPlist:(id)a3 isDirectory:(BOOL)a4;
- (void)_removeDuplicateEntry:(id)a3;
- (void)main;
- (void)run;
@end

@implementation BLEBookInstallOperation

- (id)_initWithInfo:(id)a3 syncManifest:(id)a4 purchaseManifest:(id)a5 sharedManifest:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(BLEBookInstallOperation *)self initWithInfo:a3];
  p_isa = &v14->super.super.super.isa;
  if (v14)
  {
    objc_storeStrong(&v14->_syncManifest, a4);
    objc_storeStrong(p_isa + 8, a5);
    objc_storeStrong(p_isa + 10, a6);
  }

  return p_isa;
}

- (BLEBookInstallOperation)initWithInfo:(id)a3
{
  v13.receiver = self;
  v13.super_class = BLEBookInstallOperation;
  v3 = [(BLBaseBookInstallOperation *)&v13 initWithInfo:a3];
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

- (id)_manifestEntriesForInstallInfo:(id)a3 inManifest:(id)a4
{
  v5 = a3;
  v6 = a4;
  v41 = v5;
  v7 = [v5 storeIdentifier];
  v8 = [v6 manifestEntriesWithProperty:@"s" equalToNumber:v7 limitCount:0x7FFFFFFFFFFFFFFFLL];

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

  v13 = [v5 storeIdentifier];
  v14 = [v6 manifestEntriesWithProperty:@"Item ID" equalToNumber:v13 limitCount:0x7FFFFFFFFFFFFFFFLL];

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

  v21 = [v5 title];
  v18 = [v6 manifestEntriesWithProperty:@"Name" equalToValue:v21 limitCount:5];

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

      v25 = [(__CFString *)v18 firstObject];
      v47 = v25;
      v19 = [NSArray arrayWithObjects:&v47 count:1];
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v28 = [v41 title];
        *buf = 138412290;
        v49 = v28;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[Install-Op]: Found multiple restore items with title: %@.  De-duping by artistName", buf, 0xCu);
      }

      v29 = [v41 artistName];

      if (v29)
      {
        v40 = v6;
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
              v36 = [v41 artistName];
              v37 = [v35 isEqualToString:v36];

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

        v6 = v40;
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
      v27 = [v41 title];
      *buf = 138412290;
      v49 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "[Install-Op]: Entry not found title: %@", buf, 0xCu);
    }

    v19 = 0;
  }

LABEL_12:

  return v19;
}

- (id)_manifestEntryForInstallInfo:(id)a3 inManifest:(id)a4
{
  [(BLEBookInstallOperation *)self _manifestEntriesForInstallInfo:a3 inManifest:a4];
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

- (BOOL)_prepareOperation:(id *)a3
{
  v5 = [(BLBaseBookInstallOperation *)self installInfo];
  v6 = [v5 persistentIdentifier];

  v7 = [v5 persistentIdentifier];
  v8 = [v7 integerValue];

  v9 = [v5 isRestore];
  v10 = [v9 BOOLValue];

  if (v8)
  {
    v11 = v6 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 && !v10)
  {
    v12 = 0;
    v13 = 1;
    if (!a3)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v14 = BLBookInstallLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v5 persistentIdentifier];
    v16 = [v5 storeIdentifier];
    v40 = 138543618;
    v41 = v15;
    v42 = 2112;
    v43 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Prepare ... persistentID == %{public}@, storeID == %@, isRestore == YES", &v40, 0x16u);
  }

  v17 = BLBookInstallLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    LOWORD(v40) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[Install-Op]: Prepare ... Looking for restore entry in the purchase manifest.", &v40, 2u);
  }

  v18 = [(BLEBookInstallOperation *)self purchaseManifest];
  v19 = [(BLEBookInstallOperation *)self _manifestEntryForInstallInfo:v5 inManifest:v18];

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

  v23 = [(BLEBookInstallOperation *)self syncManifest];
  v19 = [(BLEBookInstallOperation *)self _manifestEntryForInstallInfo:v5 inManifest:v23];

  v24 = BLBookInstallLog();
  v20 = v24;
  if (!v19)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v35 = [v5 downloadID];
      v36 = [v5 persistentIdentifier];
      v37 = [v5 storeIdentifier];
      v38 = [v5 title];
      v39 = [v5 artistName];
      v40 = 138544386;
      v41 = v35;
      v42 = 2114;
      v43 = v36;
      v44 = 2112;
      v45 = v37;
      v46 = 2112;
      v47 = v38;
      v48 = 2112;
      v49 = v39;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: Error: could not find manifest entry for restore book: [persistentID:%{public}@, storeID: %@, title:%@, author:%@]", &v40, 0x34u);
    }

    v12 = sub_1000A8F44(36, @"Bad backup plist", @"This plist entry for representing this download could not be found.");
    v13 = 0;
    if (a3)
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
    v27 = [v26 lastPathComponent];
    [v5 setDestinationFilename:v27];

    [v5 setFullRestoreFilePath:v26];
    v28 = BLBookInstallLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v5 fullRestoreFilePath];
      v40 = 138543362;
      v41 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Prepare ... overriding install path to: %{public}@", &v40, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v30 = BLBookInstallLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [v5 persistentIdentifier];
      v32 = [v5 title];
      v40 = 138543618;
      v41 = v31;
      v42 = 2112;
      v43 = v32;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "[Install-Op]: Prepare ... backup path not found on a restore.  This is fatal ... persitentID == %{public}@, title == %@", &v40, 0x16u);
    }

    v12 = sub_1000A8F44(36, @"Bad backup plist", @"This backup path for this entry could not be found.");
  }

  if (a3)
  {
LABEL_30:
    v33 = v12;
    *a3 = v12;
  }

LABEL_31:

  return v13;
}

- (BOOL)sharedDownload
{
  if (+[BLLibraryUtility _isMultiUser])
  {
    v3 = [(BLBaseBookInstallOperation *)self installInfo];
    v4 = [v3 isSample];
    v5 = [v4 BOOLValue] ^ 1;
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
    v4 = [(BLBaseBookInstallOperation *)self downloadID];
    *buf = 138543362;
    v62 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: Operation began for download", buf, 0xCu);
  }

  v58 = 0;
  v5 = [(BLEBookInstallOperation *)self _prepareOperation:&v58];
  v6 = v58;
  if (v5)
  {
    v7 = [(BLBaseBookInstallOperation *)self installInfo];
    v8 = [v7 databaseManager];
    v9 = [(BLBaseBookInstallOperation *)self downloadID];
    [v8 syncSaveDownloadStateWithId:v9 state:8];

    v10 = +[NSUserDefaults standardUserDefaults];
    if ([v10 BOOLForKey:@"BKSimulateCrashAtInstallStart"])
    {
      v11 = BLBookInstallLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(BLBaseBookInstallOperation *)self downloadID];
        *buf = 138543362;
        v62 = v12;
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
    v16 = [(BLBaseBookInstallOperation *)self installInfo];
    v17 = [v16 permlink];

    v18 = [(BLBaseBookInstallOperation *)self installInfo];
    v19 = [v18 isStoreDownload];

    if (v19)
    {
      v20 = [(BLBaseBookInstallOperation *)self installInfo];
      v21 = [v20 storeIdentifier];
      v22 = [(BLBaseBookInstallOperation *)self installInfo];
      v23 = [v22 storePublicationVersion];
      v24 = [v15 bookPathForAdamID:v21 withPublicationVersion:v23];
      [(BLEBookInstallOperation *)self setBookPath:v24];
    }

    else
    {
      if (![v17 length])
      {
        goto LABEL_19;
      }

      v20 = [v15 bookPathPermalink:v17];
      [(BLEBookInstallOperation *)self setBookPath:v20];
    }

LABEL_19:
    v25 = [(BLEBookInstallOperation *)self sharedDownload];
    v26 = [(BLEBookInstallOperation *)self bookPath];
    v27 = [v26 length];

    if (!v25)
    {
      v37 = BLBookInstallLog();
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        if (v38)
        {
          v39 = [(BLBaseBookInstallOperation *)self downloadID];
          *buf = 138543362;
          v62 = v39;
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
          v46 = [(BLBaseBookInstallOperation *)self installInfo];
          v44 = [(BLDownloadDRMOperation *)v45 initWithInstallInfo:v46];

          [(BLDownloadDRMOperation *)v44 start];
          if (![(BLDownloadDRMOperation *)v44 success])
          {
            [(BLBaseBookInstallOperation *)self setSuccess:0];
            v47 = [(BLDownloadDRMOperation *)v44 error];
            [(BLBaseBookInstallOperation *)self setError:v47];

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

        v50 = [(BLBaseBookInstallOperation *)self error];

        v51 = BLBookInstallLog();
        v52 = v51;
        if (v50)
        {
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v53 = [(BLBaseBookInstallOperation *)self downloadID];
            if ([(BLBaseBookInstallOperation *)self success])
            {
              v54 = @"succeeded";
            }

            else
            {
              v54 = @"failed";
            }

            v55 = [(BLBaseBookInstallOperation *)self error];
            *buf = 138543874;
            v62 = v53;
            v63 = 2114;
            v64 = v54;
            v65 = 2112;
            v66 = v55;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: Operation %{public}@ for download, error:  %@", buf, 0x20u);

LABEL_54:
          }
        }

        else if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v53 = [(BLBaseBookInstallOperation *)self downloadID];
          v56 = [(BLBaseBookInstallOperation *)self success];
          v57 = @"failed";
          if (v56)
          {
            v57 = @"succeeded";
          }

          *buf = 138543618;
          v62 = v53;
          v63 = 2114;
          v64 = v57;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: Operation %{public}@ for download", buf, 0x16u);
          goto LABEL_54;
        }

        goto LABEL_56;
      }

      if (v38)
      {
        v40 = [(BLBaseBookInstallOperation *)self downloadID];
        *buf = 138543362;
        v62 = v40;
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
      v28 = [(BLEBookInstallOperation *)self _bookManifest];
      v29 = [v28 manifestPath];
      v30 = [v29 stringByDeletingLastPathComponent];
      v31 = [(BLEBookInstallOperation *)self bookPath];
      v32 = [v30 stringByAppendingPathComponent:v31];
      [(BLEBookInstallOperation *)self setDrmPath:v32];

      [(BLEBookInstallOperation *)self setShouldSkipAssetInstallation:1];
      v33 = BLBookInstallLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [(BLBaseBookInstallOperation *)self downloadID];
        v35 = [(BLEBookInstallOperation *)self bookPath];
        v36 = [(BLEBookInstallOperation *)self drmPath];
        *buf = 138543874;
        v62 = v34;
        v63 = 2112;
        v64 = v35;
        v65 = 2112;
        v66 = v36;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: We have an existing shared download. Book at %@, sinf at %@.", buf, 0x20u);
      }
    }

    else
    {
      v28 = BLBookInstallLog();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v33 = [(BLBaseBookInstallOperation *)self downloadID];
      *buf = 138543362;
      v62 = v33;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: We have a new shared download.", buf, 0xCu);
    }

LABEL_30:
    v37 = BLBookInstallLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v40 = +[IMLibraryPlist sharedRepositoryPath];
      *buf = 138543362;
      v62 = v40;
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
    v14 = [(BLBaseBookInstallOperation *)self downloadID];
    *buf = 138543618;
    v62 = v14;
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
  v3 = [(BLEBookInstallOperation *)self drmPath];
  if ([(BLEBookInstallOperation *)self shouldSkipAssetInstallation])
  {
    if (v3)
    {
      if ([v3 length])
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
      v14 = [(BLBaseBookInstallOperation *)self installInfo];
      v15 = [v14 downloadID];
      *buf = 138543874;
      v32 = v15;
      v33 = 2112;
      v34 = v3;
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
    v5 = [(BLBaseBookInstallOperation *)self installInfo];
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = v3;
    v6 = [(BLEBookInstallOperation *)self _installMediaAsset:v5 assetInstalledPath:&v30 fileName:&v29 drmPath:&v28 error:&v27];
    v7 = v30;
    v8 = v29;
    v9 = v28;

    v10 = v27;
    if (!v6)
    {
      v11 = 0;
      v12 = 0;
      v3 = v9;
      goto LABEL_20;
    }

    v3 = v9;
  }

  v16 = [(BLBaseBookInstallOperation *)self installInfo];
  v17 = [v16 databaseManager];
  v18 = [(BLBaseBookInstallOperation *)self downloadID];
  [v17 syncSaveDownloadStateWithId:v18 state:15];

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
      v22 = [(BLBaseBookInstallOperation *)self installInfo];
      v23 = [v22 downloadID];
      *buf = 138543362;
      v32 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: Simulating a crash during install finish", buf, 0xCu);
    }

    [v20 removeObjectForKey:@"BKSimulateCrashAtInstallDuringFinish"];
    [v20 synchronize];
    raise(11);
  }

  [(BLEBookInstallOperation *)self _installEpubRights:v3];
  [(BLEBookInstallOperation *)self _addPurchaseManifestItem:[(BLEBookInstallOperation *)self shouldSkipAssetInstallation]];
  v24 = [(BLBaseBookInstallOperation *)self installInfo];
  v25 = [v24 databaseManager];
  v26 = [(BLBaseBookInstallOperation *)self downloadID];
  [v25 syncSaveDownloadStateWithId:v26 state:16];

  v11 = 1;
  v12 = v7;
LABEL_20:
  [(BLBaseBookInstallOperation *)self setSuccess:v11];
  [(BLBaseBookInstallOperation *)self setInstalledAssetPath:v12];
  [(BLBaseBookInstallOperation *)self setError:v10];
}

- (void)_installITunesMetadataPlist:(id)a3 isDirectory:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BLEBookInstallOperation *)self _bookManifest];
  v8 = [(BLEBookInstallOperation *)self purchaseManifest];
  v9 = v8;
  if (v7 == v8)
  {
    v14 = [(BLBaseBookInstallOperation *)self plistPath];
    v15 = [v14 length];

    if (v15)
    {
      if (v4)
      {
        v12 = [v6 stringByAppendingPathComponent:@"iTunesMetadata.plist"];
      }

      else
      {
        v16 = [v6 stringByDeletingPathExtension];
        v12 = [v16 stringByAppendingPathExtension:@"plist"];
      }

      v17 = [(BLBaseBookInstallOperation *)self plistPath];
      v22 = 0;
      v18 = [(BLBaseBookInstallOperation *)self _moveFile:v17 toPath:v12 error:&v22];
      v19 = v22;

      if ((v18 & 1) == 0)
      {
        v20 = BLBookInstallLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = [(BLBaseBookInstallOperation *)self downloadID];
          *buf = 138543618;
          v24 = v21;
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

  v10 = [(BLBaseBookInstallOperation *)self plistPath];
  v11 = [v10 length];

  if (!v11)
  {
    v12 = BLBookInstallLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(BLBaseBookInstallOperation *)self downloadID];
      *buf = 138543362;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: No iTunesMetadata.plist to install.", buf, 0xCu);
    }

LABEL_15:
  }
}

- (void)_installITunesArtwork:(id)a3 isDirectory:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BLBaseBookInstallOperation *)self artworkPath];
  v8 = [v7 length];

  if (v8)
  {
    if (v4)
    {
      v9 = [v6 stringByAppendingPathComponent:@"iTunesArtwork"];
    }

    else
    {
      v12 = [v6 stringByDeletingPathExtension];
      v9 = [v12 stringByAppendingPathExtension:@"jpg"];
    }

    v13 = BLBookInstallLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(BLBaseBookInstallOperation *)self downloadID];
      v15 = [(BLBaseBookInstallOperation *)self artworkPath];
      *buf = 138543874;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: Moving asset %@ to %@.", buf, 0x20u);
    }

    v16 = [(BLBaseBookInstallOperation *)self artworkPath];
    v22 = 0;
    v23 = v9;
    v17 = [(BLBaseBookInstallOperation *)self _moveFile:v16 toPath:&v23 installBehavior:0 error:&v22];
    v10 = v23;

    v18 = v22;
    if (v17)
    {
      v19 = [(BLBaseBookInstallOperation *)self installInfo];
      v20 = [v19 fileAttributes];

      if ([v20 count])
      {
        v21 = +[NSFileManager defaultManager];
        [v21 setAttributes:v20 ofItemAtPath:v10 error:0];
      }
    }
  }

  else
  {
    v10 = BLBookInstallLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(BLBaseBookInstallOperation *)self downloadID];
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: No iTunesArtwork to install.", buf, 0xCu);
    }
  }
}

- (void)_installEpubRights:(id)a3
{
  v4 = a3;
  v5 = [(BLBaseBookInstallOperation *)self installInfo];
  v6 = [v5 epubRightsPath];
  v7 = [v6 length];

  if (v7)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v4 stringByAppendingPathComponent:@"META-INF"];
    v10 = [v9 stringByAppendingPathComponent:@"sinf.xml"];
    v11 = BLBookInstallLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BLBaseBookInstallOperation *)self installInfo];
      v13 = [v12 downloadID];
      *buf = 138543618;
      v31 = v13;
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
          v22 = [(BLBaseBookInstallOperation *)self installInfo];
          v23 = [v22 downloadID];
          *buf = 138543874;
          v31 = v23;
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
        v22 = [(BLBaseBookInstallOperation *)self installInfo];
        v23 = [v22 downloadID];
        *buf = 138543874;
        v31 = v23;
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
    v18 = [(BLBaseBookInstallOperation *)self installInfo];
    v19 = [v18 epubRightsPath];
    v26 = v14;
    v20 = [v8 moveItemAtPath:v19 toPath:v10 error:&v26];
    v14 = v26;

    if (v20)
    {
LABEL_21:

      goto LABEL_22;
    }

    v21 = BLBookInstallLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(BLBaseBookInstallOperation *)self installInfo];
      v23 = [v22 downloadID];
      *buf = 138543874;
      v31 = v23;
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

- (id)_newManifestEntry:(BOOL)a3 withFileName:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(BLBaseBookInstallOperation *)self installInfo];
  v8 = [v7 manifestEntry:v4 withFileName:v6];

  return v8;
}

- (void)_removeDuplicateEntry:(id)a3
{
  v4 = a3;
  v5 = [(BLBaseBookInstallOperation *)self installInfo];
  v6 = [v5 storeIdentifier];

  if (v6)
  {
    v7 = BLBookInstallLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[Install-Op]: Looking for duplicate from purchase manifest for store book", &v23, 2u);
    }

    v8 = [v4 manifestEntriesWithProperty:@"s" equalToNumber:v6 limitCount:1];
    v9 = [v8 count];
    v10 = BLBookInstallLog();
    v11 = v10;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = [v8 firstObject];
        v23 = 138412290;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[Install-Op]: Removing for duplicate store book entry from purchase manifest: %@", &v23, 0xCu);
      }

      [v4 removeManifestEntryWithStoreItemID:v6];
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

  v13 = [(BLBaseBookInstallOperation *)self installInfo];
  v14 = [v13 permlink];
  v15 = [v14 length];

  if (v15)
  {
    v16 = BLBookInstallLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[Install-Op]: Looking for duplicate entry from purchase manifest for edu mode book", &v23, 2u);
    }

    v17 = [(BLBaseBookInstallOperation *)self installInfo];
    v18 = [v17 permlink];
    v8 = [v4 manifestEntriesWithProperty:@"iTunesU Permlink" equalToValue:v18 limitCount:1];

    v19 = [v8 count];
    v20 = BLBookInstallLog();
    v21 = v20;
    if (v19 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[Install-Op]: Removing for duplicate store book entry from purchase manifest", &v23, 2u);
      }

      v21 = [(BLBaseBookInstallOperation *)self installInfo];
      v22 = [v21 permlink];
      [v4 removeManifestEntryWithDownloadPermalink:v22];
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "[Install-Op]: Did not find a duplicate store book entry in purchase manifest", &v23, 2u);
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (void)_addPurchaseManifestItem:(BOOL)a3
{
  v3 = a3;
  v5 = BLBookInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Install-Op]: Adding purchase manifest", &v27, 2u);
  }

  v6 = [(BLEBookInstallOperation *)self _bookManifest];
  if ([(BLEBookInstallOperation *)self sharedDownload])
  {
    v7 = BLBookInstallLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 manifestPath];
      v27 = 138543362;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Updating purchase manifest for shared download at user path: %{public}@", &v27, 0xCu);
    }

    [(BLEBookInstallOperation *)self _removeDuplicateEntry:v6];
    if (v3)
    {
      bookPath = self->_bookPath;
    }

    else
    {
      bookPath = 0;
    }

    v11 = [(BLEBookInstallOperation *)self _newManifestEntry:bookPath];
    [v6 addManifestEntry:v11];
    [v6 synchronizeData];
    if (!v3)
    {
      v13 = [(BLEBookInstallOperation *)self sharedManifest];
      v14 = BLBookInstallLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v13 manifestPath];
        v27 = 138543362;
        v28 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Updating shared manifest at path: %{public}@", &v27, 0xCu);
      }

      [(BLEBookInstallOperation *)self _removeDuplicateEntry:v13];
      v16 = [(BLEBookInstallOperation *)self _newManifestEntry:1 withFileName:0];
      [v13 addManifestEntry:v16];
      [v13 synchronizeData];
    }

    goto LABEL_26;
  }

  v10 = [(BLEBookInstallOperation *)self shouldSkipAssetInstallation];
  v11 = BLBookInstallLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v12)
    {
      v17 = [v6 manifestPath];
      v27 = 138543362;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Updating purchase single user manifest: %{public}@", &v27, 0xCu);
    }

    v11 = [(BLBaseBookInstallOperation *)self destinationFilename];
    v18 = [(BLBaseBookInstallOperation *)self installInfo];
    v19 = [v18 persistentIdentifier];
    if (v19)
    {
    }

    else
    {
      v20 = [(BLBaseBookInstallOperation *)self installInfo];
      v21 = [v20 isRestore];
      v22 = [v21 BOOLValue];

      if ((v22 & 1) == 0)
      {
        v25 = BLBookInstallLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Updating purchase manifest since isRestore == NO.", &v27, 2u);
        }

        v24 = [v6 manifestEntriesWithProperty:@"Path" equalToValue:v11 limitCount:1];
        if ([v24 count])
        {
          goto LABEL_25;
        }

        v23 = [(BLEBookInstallOperation *)self _existingManifestEntry];
        if (v23)
        {
          [(BLEBookInstallOperation *)self _removeDuplicateEntry:v6];
        }

        v26 = [(BLEBookInstallOperation *)self _newManifestEntry:0];
        [v6 addManifestEntry:v26];
        [v6 synchronizeData];

LABEL_24:
LABEL_25:

        goto LABEL_26;
      }
    }

    v23 = BLBookInstallLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Not updating purchase manifest because this is a restore download.", &v27, 2u);
    }

    v24 = 0;
    goto LABEL_24;
  }

  if (v12)
  {
    LOWORD(v27) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Skip insertion of manifest entry for existing asset.", &v27, 2u);
  }

LABEL_26:
}

- (id)_bookManifest
{
  v3 = [(BLEBookInstallOperation *)self purchaseManifest];
  v4 = [(BLEBookInstallOperation *)self syncManifest];
  v5 = [(BLBaseBookInstallOperation *)self installInfo];
  v6 = [v5 libraryItemIdentifier];

  v7 = BLBookInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412290;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Looking for book manifest for libraryItemIdentifier: %@ ...", &v29, 0xCu);
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  v8 = [v4 manifestEntriesWithProperty:@"Persistent ID" equalToValue:v6 limitCount:1];
  if ([v8 count] == 1)
  {
    v9 = v4;
    v10 = BLBookInstallLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Using sync manifest.", &v29, 2u);
    }
  }

  else
  {
    v11 = [v3 manifestEntriesWithProperty:@"Persistent ID" equalToValue:v6 limitCount:1];

    if ([v11 count] != 1)
    {

      goto LABEL_14;
    }

    v9 = v3;
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
      v13 = [(BLBaseBookInstallOperation *)self downloadedAssetPath];
      v29 = 138543362;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Manifest not found by using the libraryItemIdentifier ... using downloadedAssetPath: %{public}@", &v29, 0xCu);
    }

    v14 = [(BLBaseBookInstallOperation *)self downloadedAssetPath];
    v15 = [(BLBaseBookInstallOperation *)self installInfo];
    v16 = [v15 isRestore];
    v17 = [v16 BOOLValue];

    if (v17)
    {
      v18 = [(BLBaseBookInstallOperation *)self installInfo];
      v19 = [v18 fullRestoreFilePath];

      v14 = v19;
    }

    v20 = +[IMLibraryPlist purchasesRepositoryPath];
    v21 = [v14 hasPrefix:v20];

    if (v21)
    {
      v9 = v3;
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
      v25 = [v24 path];
      v26 = [v14 hasPrefix:v25];

      if (v26)
      {
        v9 = v4;
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
        v9 = v3;
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
  v3 = [(BLBaseBookInstallOperation *)self installInfo];
  v4 = [v3 libraryItemIdentifier];

  v5 = [(BLBaseBookInstallOperation *)self installInfo];
  v6 = [v5 storeIdentifier];

  if (v4)
  {
    v7 = [(BLEBookInstallOperation *)self syncManifest];
    v8 = [v7 manifestEntriesWithProperty:@"Persistent ID" equalToValue:v4 limitCount:1];

    if ([v8 count] == 1)
    {
      goto LABEL_9;
    }

    v9 = [(BLEBookInstallOperation *)self purchaseManifest];
    v10 = v9;
    v11 = @"Persistent ID";
    v12 = v4;
LABEL_7:
    v14 = [v9 manifestEntriesWithProperty:v11 equalToValue:v12 limitCount:1];

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

  if (v6)
  {
    v13 = [(BLEBookInstallOperation *)self syncManifest];
    v8 = [v13 manifestEntriesWithProperty:@"s" equalToValue:v6 limitCount:1];

    if ([v8 count] == 1)
    {
      goto LABEL_9;
    }

    v9 = [(BLEBookInstallOperation *)self purchaseManifest];
    v10 = v9;
    v11 = @"s";
    v12 = v6;
    goto LABEL_7;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (BOOL)_unzipAsset:(id)a3 unzippedPath:(id *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [v7 assetPath];
  v9 = [v8 stringByAppendingPathExtension:@"ext"];
  v10 = [BLExtractFileOperation alloc];
  v11 = [v7 fileAttributes];
  v12 = [(BLExtractFileOperation *)v10 initWithSoucePath:v8 destinationPath:v9 fileAttributes:v11 installInfo:v7];

  [(BLExtractFileOperation *)v12 start];
  v13 = [(BLExtractFileOperation *)v12 success];
  v14 = [(BLExtractFileOperation *)v12 error];
  v15 = v14;
  if (v13)
  {
    v14 = v9;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  a4 = a5;
  if (a5)
  {
LABEL_5:
    *a4 = v14;
  }

LABEL_6:

  return v13;
}

- (BOOL)_installMediaAsset:(id)a3 assetInstalledPath:(id *)a4 fileName:(id *)a5 drmPath:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = objc_alloc_init(NSFileManager);
  v14 = [(BLBaseBookInstallOperation *)self downloadedAssetPath];
  v96 = 0;
  v87 = a7;
  if (([v13 fileExistsAtPath:v14 isDirectory:&v96] & 1) == 0)
  {
    v38 = BLBookInstallLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v98 = v14;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "[Install-Op]: Could not install non-existant file: %@", buf, 0xCu);
    }

    v39 = [NSString stringWithFormat:@"%@: Could not install non-existant file: %@", objc_opt_class(), v14];
    v40 = sub_1000A8F44(7, 0, v39);
    goto LABEL_21;
  }

  v15 = [(BLEBookInstallOperation *)self _bookManifest];
  if (!v15)
  {
    v39 = BLBookInstallLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v41 = [(BLBaseBookInstallOperation *)self installInfo];
      v42 = [v41 downloadID];
      *buf = 138543362;
      v98 = v42;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "(dID=%{public}@) No manifest entry found for book.", buf, 0xCu);
    }

    v40 = 0;
LABEL_21:

    v19 = 0;
    v31 = 0;
    v33 = 0;
    LOBYTE(v43) = 0;
    goto LABEL_22;
  }

  v16 = v15;
  v81 = a4;
  v82 = a5;
  v84 = a6;
  v17 = [v15 manifestPath];
  v18 = [v17 stringByDeletingLastPathComponent];

  v19 = [(BLBaseBookInstallOperation *)self destinationFilename];
  v20 = [(BLEBookInstallOperation *)self syncManifest];
  v86 = v12;
  v83 = v16;
  if (v16 == v20)
  {
    v21 = [(BLBaseBookInstallOperation *)self installInfo];
    v22 = [v21 isRestore];
    v23 = [v22 BOOLValue];

    if (v23)
    {
      goto LABEL_12;
    }

    v20 = [v19 pathExtension];
    v24 = [v14 lastPathComponent];

    if ([v20 length])
    {
      v25 = [v24 pathExtension];
      v26 = [v25 length];

      if (!v26)
      {
        v27 = [v24 stringByAppendingPathExtension:v20];

        v24 = v27;
      }
    }

    v28 = BLBookInstallLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(BLBaseBookInstallOperation *)self destinationFilename];
      v30 = [v12 title];
      *buf = 138412802;
      v98 = v29;
      v99 = 2112;
      v100 = v24;
      v101 = 2112;
      v102 = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Alert: just hit the unlikely code path: [original filename: %@ | new filename: %@ | book title: %@]", buf, 0x20u);

      v12 = v86;
    }

    v19 = v24;
  }

LABEL_12:
  v31 = [v18 stringByAppendingPathComponent:v19];
  if ([(BLEBookInstallOperation *)self sharedDownload])
  {
    v32 = +[IMLibraryPlist sharedRepositoryPath];
    v33 = [v32 stringByAppendingPathComponent:v19];

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

  v45 = [(BLBaseBookInstallOperation *)self installInfo];
  v46 = [v45 databaseManager];
  v47 = [(BLBaseBookInstallOperation *)self downloadID];
  [v46 syncSaveDownloadStateWithId:v47 state:13];

  v85 = +[NSUserDefaults standardUserDefaults];
  if ([v85 BOOLForKey:@"BKSimulateCrashAtInstallDuringUnzip"])
  {
    v48 = BLBookInstallLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [(BLBaseBookInstallOperation *)self installInfo];
      v50 = [v49 downloadID];
      *buf = 138543362;
      v98 = v50;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: Simulating a crash during unzip", buf, 0xCu);
    }

    [v85 removeObjectForKey:@"BKSimulateCrashAtInstallDuringUnzip"];
    [v85 synchronize];
    raise(11);
  }

  if (v96 == 1)
  {
    v51 = [v14 isEqualToString:v33];
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
      v98 = v14;
      v99 = 2112;
      v100 = v33;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Moving file: %@ to path: %@", buf, 0x16u);
    }

    v95 = v33;
    v94 = 0;
    v43 = [(BLBaseBookInstallOperation *)self _moveFile:v14 toPath:&v95 installBehavior:0 error:&v94];
    v57 = v95;

    v40 = v94;
    LOBYTE(v52) = 0;
  }

  else
  {
    v54 = [(BLBaseBookInstallOperation *)self installInfo];
    v92 = 0;
    v93 = 0;
    LODWORD(v52) = [(BLEBookInstallOperation *)self _unzipAsset:v54 unzippedPath:&v93 error:&v92];
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

      v61 = [v33 pathExtension];
      v77 = v61;
      if (([v61 isEqualToString:@"epub"] & 1) != 0 || objc_msgSend(v61, "isEqualToString:", @"ibooks"))
      {
        v62 = BLBookInstallLog();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v98 = v14;
          v99 = 2112;
          v100 = v56;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "[Install-Op]: Failing install after unzip failure for file: %{public}@, error:  %@", buf, 0x16u);
        }

        v40 = v56;
        v43 = 0;
      }

      else
      {
        v73 = [v14 isEqualToString:v33];
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
            v98 = v14;
            v99 = 2112;
            v100 = v33;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Moving file: %@ to path: %@", buf, 0x16u);
          }

          v88 = 0;
          v89 = v33;
          v43 = [(BLBaseBookInstallOperation *)self _moveFile:v14 toPath:&v89 installBehavior:0 error:&v88];
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
  v12 = v86;
LABEL_56:
  if ((v52 & 1) == 0 && v43)
  {
    v63 = [v12 fileAttributes];
    if ([v63 count])
    {
      [v13 setAttributes:v63 ofItemAtPath:v33 error:0];
    }
  }

  v64 = [(BLBaseBookInstallOperation *)self installInfo];
  v65 = [v64 databaseManager];
  v66 = [(BLBaseBookInstallOperation *)self downloadID];
  [v65 syncSaveDownloadStateWithId:v66 state:14];

  if (v84)
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
    *v81 = v33;
    v69 = v31;
    *v84 = v31;
  }

  if (v19)
  {
    v70 = !v43;
  }

  else
  {
    v70 = 1;
  }

  if ((v70 & 1) == 0)
  {
    v71 = v19;
    *v82 = v19;
    LOBYTE(v43) = 1;
    v12 = v86;
    goto LABEL_71;
  }

  v12 = v86;
LABEL_22:
  if (v87 && !v43)
  {
    v44 = v40;
    *v87 = v40;
  }

LABEL_71:

  return v43;
}

@end