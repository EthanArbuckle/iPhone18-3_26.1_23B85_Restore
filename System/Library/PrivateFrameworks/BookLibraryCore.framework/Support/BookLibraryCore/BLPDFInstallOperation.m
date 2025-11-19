@interface BLPDFInstallOperation
- (BLPDFInstallOperation)initWithInfo:(id)a3 metadataStoreManager:(id)a4;
- (BOOL)_installMediaAsset:(id)a3 assetInstalledPath:(id *)a4 error:(id *)a5;
- (id)_newManifestEntry;
- (void)_addPurchaseManifestItem;
- (void)_insertAdditionalEntryProperties:(id)a3;
- (void)_removeDuplicateEntry:(id)a3;
- (void)_repairManifestEntryIfNeeded:(id)a3 manifest:(id)a4;
- (void)_saveMigrationState;
- (void)main;
@end

@implementation BLPDFInstallOperation

- (BLPDFInstallOperation)initWithInfo:(id)a3 metadataStoreManager:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = BLPDFInstallOperation;
  v8 = [(BLBaseBookInstallOperation *)&v15 initWithInfo:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_metadataStoreManager, a4);
    v10 = +[BLBookManifest purchasedBookManifest];
    purchaseManifest = v9->_purchaseManifest;
    v9->_purchaseManifest = v10;

    v12 = +[BLBookManifest syncedBookManifest];
    syncManifest = v9->_syncManifest;
    v9->_syncManifest = v12;
  }

  return v9;
}

- (void)main
{
  v3 = [(BLBaseBookInstallOperation *)self installInfo];
  v4 = [v3 databaseManager];
  v5 = [(BLBaseBookInstallOperation *)self downloadID];
  [v4 syncSaveDownloadStateWithId:v5 state:8];

  v6 = +[NSUserDefaults standardUserDefaults];
  if ([v6 BOOLForKey:@"BKSimulateCrashAtInstallStart"])
  {
    v7 = BLBookInstallLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(BLBaseBookInstallOperation *)self downloadID];
      *buf = 138543362;
      v75 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Simulating a crash during install start", buf, 0xCu);
    }

    [v6 removeObjectForKey:@"BKSimulateCrashAtInstallStart"];
    [v6 synchronize];
    raise(11);
  }

  v9 = [(BLBaseBookInstallOperation *)self downloadID];
  v10 = [(BLBaseBookInstallOperation *)self installInfo];
  v11 = [(BLPDFInstallOperation *)self _bookManifest];
  v12 = [v10 storeIdentifier];
  v13 = [v10 storePublicationVersion];
  v14 = [v11 bookPathForAdamID:v12 withPublicationVersion:v13];
  [(BLPDFInstallOperation *)self setBookPath:v14];

  v15 = [(BLPDFInstallOperation *)self bookPath];
  v16 = [v15 length];

  if (v16)
  {
    v17 = BLBookInstallLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v75 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Skipping asset installation because we have an existing download.", buf, 0xCu);
    }
  }

  v18 = [(BLBaseBookInstallOperation *)self downloadedAssetPath];
  v19 = [NSURL fileURLWithPath:v18];

  if (!v16)
  {
    v22 = [v10 databaseManager];
    [v22 syncSaveDownloadStateWithId:v9 state:11];

    v23 = [v10 encryptionKey];
    v24 = [v10 salt];
    v73 = 0;
    LODWORD(v22) = [BLPDFInstallUtils decryptFileAtURL:v19 encryptionKey:v23 salt:v24 error:&v73];
    v25 = v73;

    v26 = [v10 databaseManager];
    [v26 syncSaveDownloadStateWithId:v9 state:12];

    if (!v22)
    {
      v37 = BLBookInstallLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v75 = v9;
        v76 = 2160;
        v77 = 1752392040;
        v78 = 2112;
        v79 = v19;
        v80 = 2112;
        v81 = v25;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [PDFInstall-Op] Failed processing %{mask.hash}@ due to error:  %@", buf, 0x2Au);
      }

      v20 = 0;
      goto LABEL_26;
    }

    v67 = v25;
    v27 = [(BLBaseBookInstallOperation *)self downloadedAssetPath];
    v28 = [BLLibraryUtility generateFileUniqueIdFromPath:v27];
    [v10 setUniqueID:v28];

    v29 = BLBookInstallLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v75 = v9;
      v76 = 2112;
      v77 = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Added package hash: %@", buf, 0x16u);
    }

    v30 = [(BLPDFInstallOperation *)self purchaseManifest];
    v31 = +[IMLibraryPlist keyNameForUniqueId];
    [v30 manifestEntriesWithProperty:v31 equalToValue:v28 limitCount:1];
    v33 = v32 = v28;

    v69 = v32;
    if ([v33 count] == 1)
    {
      v34 = [v33 firstObject];
      v35 = [(BLPDFInstallOperation *)self purchaseManifest];
      [(BLPDFInstallOperation *)self _repairManifestEntryIfNeeded:v34 manifest:v35];

      v36 = BLBookInstallLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v75 = v9;
        v76 = 2160;
        v77 = 1752392040;
        v78 = 2112;
        v79 = v32;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Skipping asset installation because purchases manifest have an existing download with same uniqueID '%{mask.hash}@'.", buf, 0x20u);
      }

      v25 = v67;
    }

    else
    {
      v38 = [(BLPDFInstallOperation *)self syncManifest];
      v39 = +[IMLibraryPlist keyNameForUniqueId];
      v40 = [v38 manifestEntriesWithProperty:v39 equalToValue:v32 limitCount:1];

      if ([v40 count] != 1)
      {
        v66 = v40;
        v44 = [(BLPDFInstallOperation *)self purchaseManifest];
        v45 = [v10 storeIdentifier];
        v46 = [v44 manifestEntriesWithProperty:@"s" equalToNumber:v45 limitCount:1];

        if ([v46 count] == 1)
        {
          objc_opt_class();
          v65 = v46;
          v47 = [v46 firstObject];
          v48 = BUDynamicCast();

          v49 = +[IMLibraryPlist keyNameForUniqueId];
          v50 = [v48 objectForKeyedSubscript:v49];

          v51 = BLBookInstallLog();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = [v10 storeIdentifier];
            *buf = 138544386;
            v75 = v9;
            v76 = 2160;
            v77 = 1752392040;
            v78 = 2112;
            v79 = v52;
            v80 = 2160;
            v81 = 1752392040;
            v82 = 2112;
            v83 = v50;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Skipping asset installation because purchases manifest have an existing download with same storeID %{mask.hash}@ but different uniqueID '%{mask.hash}@'.", buf, 0x34u);
          }
        }

        else
        {
          v53 = [(BLPDFInstallOperation *)self syncManifest];
          v54 = [v10 storeIdentifier];
          v55 = [v53 manifestEntriesWithProperty:@"Item ID" equalToNumber:v54 limitCount:1];

          if ([v55 count] != 1)
          {

            v71 = v67;
            v72 = 0;
            v61 = [(BLPDFInstallOperation *)self _installMediaAsset:v10 assetInstalledPath:&v72 error:&v71];
            v20 = v72;
            v21 = v71;

            if (!v61)
            {
              goto LABEL_27;
            }

            v62 = [v10 databaseManager];
            [v62 syncSaveDownloadStateWithId:v9 state:15];

            v37 = +[NSUserDefaults standardUserDefaults];
            if ([v37 BOOLForKey:@"BKSimulateCrashAtInstallDuringFinish"])
            {
              v63 = BLBookInstallLog();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v75 = v9;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Simulating a crash during install finish", buf, 0xCu);
              }

              [v37 removeObjectForKey:@"BKSimulateCrashAtInstallDuringFinish"];
              [v37 synchronize];
              raise(11);
            }

            [(BLPDFInstallOperation *)self _addPurchaseManifestItem];
            v68 = [(BLBaseBookInstallOperation *)self installInfo];
            v70 = [v68 databaseManager];
            v64 = [(BLBaseBookInstallOperation *)self downloadID];
            [v70 syncSaveDownloadStateWithId:v64 state:16];

            v25 = v21;
            goto LABEL_26;
          }

          objc_opt_class();
          v56 = [v55 firstObject];
          v57 = BUDynamicCast();

          v48 = v57;
          v58 = +[IMLibraryPlist keyNameForUniqueId];
          v50 = [v48 objectForKeyedSubscript:v58];

          v51 = BLBookInstallLog();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            [v10 storeIdentifier];
            v65 = v55;
            v60 = v59 = v48;
            *buf = 138544386;
            v75 = v9;
            v76 = 2160;
            v77 = 1752392040;
            v78 = 2112;
            v79 = v60;
            v80 = 2160;
            v81 = 1752392040;
            v82 = 2112;
            v83 = v50;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Skipping asset installation because sync manifest have an existing download with same storeID %{mask.hash}@ but different uniqueID '%{mask.hash}@'.", buf, 0x34u);

            v48 = v59;
          }

          else
          {
            v65 = v55;
          }
        }

        v20 = 0;
        v25 = v67;
        v37 = v69;
LABEL_26:

        v21 = v25;
        goto LABEL_27;
      }

      v41 = [v40 firstObject];
      [(BLPDFInstallOperation *)self syncManifest];
      v42 = v33 = v40;
      [(BLPDFInstallOperation *)self _repairManifestEntryIfNeeded:v41 manifest:v42];

      v36 = BLBookInstallLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v75 = v9;
        v76 = 2160;
        v77 = 1752392040;
        v78 = 2112;
        v79 = v69;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Skipping asset installation because synced books manifest have an existing download with same uniqueID '%{mask.hash}@'.", buf, 0x20u);
      }

      v25 = v67;
    }

    v20 = 0;
    v37 = v69;
    goto LABEL_26;
  }

  v20 = 0;
  v21 = 0;
LABEL_27:
  [(BLBaseBookInstallOperation *)self setError:v21, v65];
  v43 = [(BLBaseBookInstallOperation *)self error];
  [(BLBaseBookInstallOperation *)self setSuccess:v43 == 0];
}

- (void)_removeDuplicateEntry:(id)a3
{
  v4 = a3;
  v5 = [(BLBaseBookInstallOperation *)self downloadID];
  v6 = [(BLBaseBookInstallOperation *)self installInfo];
  v7 = [v6 uniqueID];

  v8 = [(BLBaseBookInstallOperation *)self installInfo];
  v9 = [v8 storeIdentifier];

  if (v7)
  {
    v10 = BLBookInstallLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 manifestPath];
      v25 = 138543618;
      v26 = v5;
      v27 = 2114;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Looking for duplicate from manifest with path %{public}@ for PDF book: ", &v25, 0x16u);
    }

    v12 = +[IMLibraryPlist keyNameForUniqueId];
    v13 = [v4 manifestEntriesWithProperty:v12 equalToValue:v7 limitCount:1];

    v14 = [v13 count];
    v15 = BLBookInstallLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14 == 1)
    {
      if (v16)
      {
        v17 = [v13 firstObject];
        v25 = 138543618;
        v26 = v5;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Removing for duplicate PDF book entry from manifest: %@", &v25, 0x16u);
      }

      [v4 removeManifestEntryWithPackageHash:v7];
    }

    else
    {
      if (v16)
      {
        v25 = 138543362;
        v26 = v5;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Did not find a duplicate PDF book entry in manifest", &v25, 0xCu);
      }
    }
  }

  if (v9)
  {
    v18 = BLBookInstallLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v4 manifestPath];
      v25 = 138543618;
      v26 = v5;
      v27 = 2114;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Looking for duplicate from manifest with path %{public}@ for store book: ", &v25, 0x16u);
    }

    v20 = [v4 manifestEntriesWithProperty:@"s" equalToNumber:v9 limitCount:1];
    v21 = [v20 count];
    v22 = BLBookInstallLog();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v21 == 1)
    {
      if (v23)
      {
        v24 = [v20 firstObject];
        v25 = 138543618;
        v26 = v5;
        v27 = 2112;
        v28 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Removing for duplicate store book entry from purchase manifest: %@", &v25, 0x16u);
      }

      [v4 removeManifestEntryWithStoreItemID:v9];
    }

    else
    {
      if (v23)
      {
        v25 = 138543362;
        v26 = v5;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Did not find a duplicate store book entry in purchase manifest", &v25, 0xCu);
      }
    }
  }
}

- (void)_repairManifestEntryIfNeeded:(id)a3 manifest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BLBaseBookInstallOperation *)self downloadID];
  v9 = [(BLBaseBookInstallOperation *)self installInfo];
  v10 = [v9 uniqueID];
  v11 = [IMLibraryPlist uniqueIdFromPlistEntry:v6];
  if ([v11 isEqualToString:v10])
  {
    v12 = [v6 mutableCopy];
    v13 = [v9 storeIdentifier];
    v28 = [v9 storePlaylistIdentifier];
    if (![v28 longLongValue] || !v13)
    {
      goto LABEL_25;
    }

    v27 = v8;
    v25 = v7;
    v14 = [IMLibraryPlist storeIdFromPlistEntry:v6];
    v15 = [IMLibraryPlist storePlaylistIdFromPlistEntry:v6];
    v16 = [IMLibraryPlist isSupplementalContentFromPlistEntry:v6];
    v26 = v14;
    if (![v14 length] || ((objc_msgSend(v15, "length") != 0) & v16) == 0)
    {
      v21 = BLBookInstallLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v30 = v27;
        v31 = 2160;
        v32 = 1752392040;
        v33 = 2112;
        v34 = v10;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Will repair entry %{mask.hash}@ for missing supplemental content properties", buf, 0x20u);
      }

      v7 = v25;
      goto LABEL_19;
    }

    v24 = v13;
    v17 = [v28 stringValue];
    v18 = [v15 isEqual:v17];

    if (v18)
    {
      v19 = [v24 stringValue];
      v20 = [v14 isEqual:v19];

      v7 = v25;
      if (v20)
      {

        v13 = v24;
LABEL_21:
        v8 = v27;
LABEL_25:

        goto LABEL_26;
      }

      v21 = BLBookInstallLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544642;
        v30 = v27;
        v31 = 2112;
        v32 = v10;
        v33 = 2160;
        v34 = 1752392040;
        v35 = 2112;
        v36 = v26;
        v37 = 2160;
        v38 = 1752392040;
        v39 = 2112;
        v13 = v24;
        v40 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [PDFInstall-Op]: Will repair entry %@ for different storeID (old=%{mask.hash}@, new=%{mask.hash}@)", buf, 0x3Eu);
LABEL_19:

        v22 = [v9 storeInfoEntries];
        [v12 addEntriesFromDictionary:v22];

        [(BLPDFInstallOperation *)self _insertAdditionalEntryProperties:v12];
        if (![v7 removeManifestEntryWithPackageHash:v10])
        {
          v23 = BLBookInstallLog();
          v8 = v27;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v30 = v27;
            v31 = 2160;
            v32 = 1752392040;
            v33 = 2112;
            v34 = v10;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: During repair, failed to remove entry %{mask.hash}@", buf, 0x20u);
          }

          goto LABEL_25;
        }

        [v7 addManifestEntry:v12];
        [v7 synchronizeData];
        goto LABEL_21;
      }
    }

    else
    {
      v21 = BLBookInstallLog();
      v7 = v25;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544642;
        v30 = v27;
        v31 = 2112;
        v32 = v10;
        v33 = 2160;
        v34 = 1752392040;
        v35 = 2112;
        v36 = v15;
        v37 = 2160;
        v38 = 1752392040;
        v39 = 2112;
        v40 = v28;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [PDFInstall-Op]: Will repair entry %@ for different storePlaylistID (old=%{mask.hash}@, new=%{mask.hash}@)", buf, 0x3Eu);
      }
    }

    v13 = v24;
    goto LABEL_19;
  }

  v12 = BLBookInstallLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v30 = v8;
    v31 = 2160;
    v32 = 1752392040;
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: During repair, unexpected mismatch uniqueID %{mask.hash}@", buf, 0x20u);
  }

LABEL_26:
}

- (id)_newManifestEntry
{
  v3 = [(BLBaseBookInstallOperation *)self installInfo];
  v4 = [v3 manifestEntry:1 withFileName:0];
  v5 = [v4 mutableCopy];

  [(BLPDFInstallOperation *)self _insertAdditionalEntryProperties:v5];
  return v5;
}

- (void)_insertAdditionalEntryProperties:(id)a3
{
  v4 = a3;
  v5 = [(BLBaseBookInstallOperation *)self installInfo];
  v6 = [v5 storePlaylistIdentifier];
  v7 = [v6 longLongValue];
  v8 = BLBookInstallLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(BLBaseBookInstallOperation *)self downloadID];
    v10 = [v5 uniqueID];
    v11 = [v5 assetFlavor];
    v12 = 138544898;
    v13 = v9;
    v14 = 1024;
    v15 = v7 != 0;
    v16 = 2160;
    v17 = 1752392040;
    v18 = 2112;
    v19 = v10;
    v20 = 2160;
    v21 = 1752392040;
    v22 = 2112;
    v23 = v6;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: isSupplementalContent=%d, uniqueID=%{mask.hash}@, playlistIdentifier=%{mask.hash}@, flavor=%{public}@", &v12, 0x44u);
  }

  if (v7)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"isSupplementalContent"];
  }
}

- (void)_addPurchaseManifestItem
{
  v3 = [(BLBaseBookInstallOperation *)self downloadID];
  v4 = BLBookInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "(dID=%{public}@) [PDFInstall-Op]: Adding purchase manifest", &v12, 0xCu);
  }

  v5 = [(BLPDFInstallOperation *)self _bookManifest];
  v6 = BLBookInstallLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 manifestPath];
    v12 = 138543618;
    v13 = v3;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Updating purchase single user manifest: %{public}@", &v12, 0x16u);
  }

  v8 = [(BLBaseBookInstallOperation *)self destinationFilename];
  v9 = BLBookInstallLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Updating purchase manifest since isRestore == NO.", &v12, 0xCu);
  }

  v10 = [v5 manifestEntriesWithProperty:@"Path" equalToValue:v8 limitCount:1];
  if ([v10 count])
  {
    v11 = BLBookInstallLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543874;
      v13 = v3;
      v14 = 2160;
      v15 = 1752392040;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: An entry with fileName %{mask.hash}@ already exists.", &v12, 0x20u);
    }
  }

  else
  {
    [(BLPDFInstallOperation *)self _removeDuplicateEntry:v5];
    v11 = [(BLPDFInstallOperation *)self _newManifestEntry];
    [v5 addManifestEntry:v11];
    [v5 synchronizeData];
  }
}

- (BOOL)_installMediaAsset:(id)a3 assetInstalledPath:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(BLBaseBookInstallOperation *)self downloadID];
  v10 = objc_alloc_init(NSFileManager);
  v11 = [(BLBaseBookInstallOperation *)self downloadedAssetPath];
  if (([v10 fileExistsAtPath:v11] & 1) == 0)
  {
    v24 = BLBookInstallLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v37 = v9;
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [PDFInstall-Op]: Could not install non-existant file: %@", buf, 0x16u);
    }

    v13 = [NSString stringWithFormat:@"Could not install non-existant file: %@", v11];
    v22 = sub_1000A8F44(7, 0, v13);
    v23 = 0;
    goto LABEL_15;
  }

  v12 = [(BLPDFInstallOperation *)self _bookManifest];
  v13 = v12;
  if (!v12)
  {
    v25 = BLBookInstallLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v37 = v9;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [PDFInstall-Op]: No manifest entry found for book.", buf, 0xCu);
    }

    v23 = 0;
    v22 = 0;
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v32 = a4;
  v33 = v8;
  v14 = [(__CFString *)v12 manifestPath];
  v15 = [v14 stringByDeletingLastPathComponent];

  v16 = [(BLBaseBookInstallOperation *)self destinationFilename];
  v17 = [v15 stringByAppendingPathComponent:v16];

  v18 = BLBookInstallLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v37 = v9;
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Saving Book to %@", buf, 0x16u);
  }

  v19 = [v11 isEqualToString:v17];
  v20 = BLBookInstallLog();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (!v19)
  {
    if (v21)
    {
      *buf = 138543874;
      v37 = v9;
      v38 = 2112;
      v39 = v11;
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Moving file: %@ to path: %@", buf, 0x20u);
    }

    v34 = 0;
    v35 = v17;
    v28 = [(BLBaseBookInstallOperation *)self _moveFile:v11 toPath:&v35 installBehavior:0 error:&v34];
    v23 = v35;

    v22 = v34;
    if (v28)
    {
      goto LABEL_22;
    }

    v8 = v33;
LABEL_16:

    if (a5)
    {
      v26 = v22;
      v27 = 0;
      *a5 = v22;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_27;
  }

  if (v21)
  {
    *buf = 138543618;
    v37 = v9;
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Book already at destination: %@", buf, 0x16u);
  }

  v22 = 0;
  v23 = v17;
LABEL_22:
  v8 = v33;
  v29 = [v33 fileAttributes];
  if ([v29 count])
  {
    [v10 setAttributes:v29 ofItemAtPath:v23 error:0];
  }

  if (v32)
  {
    v30 = v23;
    *v32 = v23;
  }

  v27 = 1;
LABEL_27:

  return v27;
}

- (void)_saveMigrationState
{
  v3 = [(BLBaseBookInstallOperation *)self downloadID];
  v4 = [(BLBaseBookInstallOperation *)self installInfo];
  v5 = [v4 storeIdentifier];
  v6 = BUStoreIdFromObject();
  v7 = [(BLPDFInstallOperation *)self metadataStoreManager];
  v8 = [v7 metadataStore];
  v17 = 0;
  v9 = [v8 setMigrationState:800 forStoreID:v6 error:&v17];
  v10 = v17;

  v11 = BLBookInstallLog();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v19 = v3;
      v20 = 2048;
      v21 = 800;
      v22 = 2160;
      v23 = 1752392040;
      v24 = 2112;
      v25 = v5;
      v13 = "(dID=%{public}@) [PDFInstall-Op] Saved migration state %lu for %{mask.hash}@";
      v14 = v12;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 42;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, v16);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138544386;
    v19 = v3;
    v20 = 2048;
    v21 = 800;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 2112;
    v25 = v5;
    v26 = 2112;
    v27 = v10;
    v13 = "(dID=%{public}@) [PDFInstall-Op] Error saving migration state %lu for %{mask.hash}@:  %@";
    v14 = v12;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 52;
    goto LABEL_6;
  }
}

@end