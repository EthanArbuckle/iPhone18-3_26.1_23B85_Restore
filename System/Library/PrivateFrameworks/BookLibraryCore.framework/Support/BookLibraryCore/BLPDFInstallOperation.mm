@interface BLPDFInstallOperation
- (BLPDFInstallOperation)initWithInfo:(id)info metadataStoreManager:(id)manager;
- (BOOL)_installMediaAsset:(id)asset assetInstalledPath:(id *)path error:(id *)error;
- (id)_newManifestEntry;
- (void)_addPurchaseManifestItem;
- (void)_insertAdditionalEntryProperties:(id)properties;
- (void)_removeDuplicateEntry:(id)entry;
- (void)_repairManifestEntryIfNeeded:(id)needed manifest:(id)manifest;
- (void)_saveMigrationState;
- (void)main;
@end

@implementation BLPDFInstallOperation

- (BLPDFInstallOperation)initWithInfo:(id)info metadataStoreManager:(id)manager
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = BLPDFInstallOperation;
  v8 = [(BLBaseBookInstallOperation *)&v15 initWithInfo:info];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_metadataStoreManager, manager);
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
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  databaseManager = [installInfo databaseManager];
  downloadID = [(BLBaseBookInstallOperation *)self downloadID];
  [databaseManager syncSaveDownloadStateWithId:downloadID state:8];

  v6 = +[NSUserDefaults standardUserDefaults];
  if ([v6 BOOLForKey:@"BKSimulateCrashAtInstallStart"])
  {
    v7 = BLBookInstallLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      downloadID2 = [(BLBaseBookInstallOperation *)self downloadID];
      *buf = 138543362;
      v75 = downloadID2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Simulating a crash during install start", buf, 0xCu);
    }

    [v6 removeObjectForKey:@"BKSimulateCrashAtInstallStart"];
    [v6 synchronize];
    raise(11);
  }

  downloadID3 = [(BLBaseBookInstallOperation *)self downloadID];
  installInfo2 = [(BLBaseBookInstallOperation *)self installInfo];
  _bookManifest = [(BLPDFInstallOperation *)self _bookManifest];
  storeIdentifier = [installInfo2 storeIdentifier];
  storePublicationVersion = [installInfo2 storePublicationVersion];
  v14 = [_bookManifest bookPathForAdamID:storeIdentifier withPublicationVersion:storePublicationVersion];
  [(BLPDFInstallOperation *)self setBookPath:v14];

  bookPath = [(BLPDFInstallOperation *)self bookPath];
  v16 = [bookPath length];

  if (v16)
  {
    v17 = BLBookInstallLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v75 = downloadID3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Skipping asset installation because we have an existing download.", buf, 0xCu);
    }
  }

  downloadedAssetPath = [(BLBaseBookInstallOperation *)self downloadedAssetPath];
  v19 = [NSURL fileURLWithPath:downloadedAssetPath];

  if (!v16)
  {
    databaseManager2 = [installInfo2 databaseManager];
    [databaseManager2 syncSaveDownloadStateWithId:downloadID3 state:11];

    encryptionKey = [installInfo2 encryptionKey];
    salt = [installInfo2 salt];
    v73 = 0;
    LODWORD(databaseManager2) = [BLPDFInstallUtils decryptFileAtURL:v19 encryptionKey:encryptionKey salt:salt error:&v73];
    v25 = v73;

    databaseManager3 = [installInfo2 databaseManager];
    [databaseManager3 syncSaveDownloadStateWithId:downloadID3 state:12];

    if (!databaseManager2)
    {
      v37 = BLBookInstallLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v75 = downloadID3;
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
    downloadedAssetPath2 = [(BLBaseBookInstallOperation *)self downloadedAssetPath];
    v28 = [BLLibraryUtility generateFileUniqueIdFromPath:downloadedAssetPath2];
    [installInfo2 setUniqueID:v28];

    v29 = BLBookInstallLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v75 = downloadID3;
      v76 = 2112;
      v77 = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Added package hash: %@", buf, 0x16u);
    }

    purchaseManifest = [(BLPDFInstallOperation *)self purchaseManifest];
    v31 = +[IMLibraryPlist keyNameForUniqueId];
    [purchaseManifest manifestEntriesWithProperty:v31 equalToValue:v28 limitCount:1];
    v33 = v32 = v28;

    v69 = v32;
    if ([v33 count] == 1)
    {
      firstObject = [v33 firstObject];
      purchaseManifest2 = [(BLPDFInstallOperation *)self purchaseManifest];
      [(BLPDFInstallOperation *)self _repairManifestEntryIfNeeded:firstObject manifest:purchaseManifest2];

      v36 = BLBookInstallLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v75 = downloadID3;
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
      syncManifest = [(BLPDFInstallOperation *)self syncManifest];
      v39 = +[IMLibraryPlist keyNameForUniqueId];
      v40 = [syncManifest manifestEntriesWithProperty:v39 equalToValue:v32 limitCount:1];

      if ([v40 count] != 1)
      {
        v66 = v40;
        purchaseManifest3 = [(BLPDFInstallOperation *)self purchaseManifest];
        storeIdentifier2 = [installInfo2 storeIdentifier];
        v46 = [purchaseManifest3 manifestEntriesWithProperty:@"s" equalToNumber:storeIdentifier2 limitCount:1];

        if ([v46 count] == 1)
        {
          objc_opt_class();
          v65 = v46;
          firstObject2 = [v46 firstObject];
          v48 = BUDynamicCast();

          v49 = +[IMLibraryPlist keyNameForUniqueId];
          v50 = [v48 objectForKeyedSubscript:v49];

          v51 = BLBookInstallLog();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            storeIdentifier3 = [installInfo2 storeIdentifier];
            *buf = 138544386;
            v75 = downloadID3;
            v76 = 2160;
            v77 = 1752392040;
            v78 = 2112;
            v79 = storeIdentifier3;
            v80 = 2160;
            v81 = 1752392040;
            v82 = 2112;
            v83 = v50;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Skipping asset installation because purchases manifest have an existing download with same storeID %{mask.hash}@ but different uniqueID '%{mask.hash}@'.", buf, 0x34u);
          }
        }

        else
        {
          syncManifest2 = [(BLPDFInstallOperation *)self syncManifest];
          storeIdentifier4 = [installInfo2 storeIdentifier];
          v55 = [syncManifest2 manifestEntriesWithProperty:@"Item ID" equalToNumber:storeIdentifier4 limitCount:1];

          if ([v55 count] != 1)
          {

            v71 = v67;
            v72 = 0;
            v61 = [(BLPDFInstallOperation *)self _installMediaAsset:installInfo2 assetInstalledPath:&v72 error:&v71];
            v20 = v72;
            v21 = v71;

            if (!v61)
            {
              goto LABEL_27;
            }

            databaseManager4 = [installInfo2 databaseManager];
            [databaseManager4 syncSaveDownloadStateWithId:downloadID3 state:15];

            v37 = +[NSUserDefaults standardUserDefaults];
            if ([v37 BOOLForKey:@"BKSimulateCrashAtInstallDuringFinish"])
            {
              v63 = BLBookInstallLog();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v75 = downloadID3;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Simulating a crash during install finish", buf, 0xCu);
              }

              [v37 removeObjectForKey:@"BKSimulateCrashAtInstallDuringFinish"];
              [v37 synchronize];
              raise(11);
            }

            [(BLPDFInstallOperation *)self _addPurchaseManifestItem];
            installInfo3 = [(BLBaseBookInstallOperation *)self installInfo];
            databaseManager5 = [installInfo3 databaseManager];
            downloadID4 = [(BLBaseBookInstallOperation *)self downloadID];
            [databaseManager5 syncSaveDownloadStateWithId:downloadID4 state:16];

            v25 = v21;
            goto LABEL_26;
          }

          objc_opt_class();
          firstObject3 = [v55 firstObject];
          v57 = BUDynamicCast();

          v48 = v57;
          v58 = +[IMLibraryPlist keyNameForUniqueId];
          v50 = [v48 objectForKeyedSubscript:v58];

          v51 = BLBookInstallLog();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            [installInfo2 storeIdentifier];
            v65 = v55;
            v60 = v59 = v48;
            *buf = 138544386;
            v75 = downloadID3;
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

      firstObject4 = [v40 firstObject];
      [(BLPDFInstallOperation *)self syncManifest];
      v42 = v33 = v40;
      [(BLPDFInstallOperation *)self _repairManifestEntryIfNeeded:firstObject4 manifest:v42];

      v36 = BLBookInstallLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v75 = downloadID3;
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
  error = [(BLBaseBookInstallOperation *)self error];
  [(BLBaseBookInstallOperation *)self setSuccess:error == 0];
}

- (void)_removeDuplicateEntry:(id)entry
{
  entryCopy = entry;
  downloadID = [(BLBaseBookInstallOperation *)self downloadID];
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  uniqueID = [installInfo uniqueID];

  installInfo2 = [(BLBaseBookInstallOperation *)self installInfo];
  storeIdentifier = [installInfo2 storeIdentifier];

  if (uniqueID)
  {
    v10 = BLBookInstallLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      manifestPath = [entryCopy manifestPath];
      v25 = 138543618;
      v26 = downloadID;
      v27 = 2114;
      v28 = manifestPath;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Looking for duplicate from manifest with path %{public}@ for PDF book: ", &v25, 0x16u);
    }

    v12 = +[IMLibraryPlist keyNameForUniqueId];
    v13 = [entryCopy manifestEntriesWithProperty:v12 equalToValue:uniqueID limitCount:1];

    v14 = [v13 count];
    v15 = BLBookInstallLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14 == 1)
    {
      if (v16)
      {
        firstObject = [v13 firstObject];
        v25 = 138543618;
        v26 = downloadID;
        v27 = 2112;
        v28 = firstObject;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Removing for duplicate PDF book entry from manifest: %@", &v25, 0x16u);
      }

      [entryCopy removeManifestEntryWithPackageHash:uniqueID];
    }

    else
    {
      if (v16)
      {
        v25 = 138543362;
        v26 = downloadID;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Did not find a duplicate PDF book entry in manifest", &v25, 0xCu);
      }
    }
  }

  if (storeIdentifier)
  {
    v18 = BLBookInstallLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      manifestPath2 = [entryCopy manifestPath];
      v25 = 138543618;
      v26 = downloadID;
      v27 = 2114;
      v28 = manifestPath2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Looking for duplicate from manifest with path %{public}@ for store book: ", &v25, 0x16u);
    }

    v20 = [entryCopy manifestEntriesWithProperty:@"s" equalToNumber:storeIdentifier limitCount:1];
    v21 = [v20 count];
    v22 = BLBookInstallLog();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v21 == 1)
    {
      if (v23)
      {
        firstObject2 = [v20 firstObject];
        v25 = 138543618;
        v26 = downloadID;
        v27 = 2112;
        v28 = firstObject2;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Removing for duplicate store book entry from purchase manifest: %@", &v25, 0x16u);
      }

      [entryCopy removeManifestEntryWithStoreItemID:storeIdentifier];
    }

    else
    {
      if (v23)
      {
        v25 = 138543362;
        v26 = downloadID;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Did not find a duplicate store book entry in purchase manifest", &v25, 0xCu);
      }
    }
  }
}

- (void)_repairManifestEntryIfNeeded:(id)needed manifest:(id)manifest
{
  neededCopy = needed;
  manifestCopy = manifest;
  downloadID = [(BLBaseBookInstallOperation *)self downloadID];
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  uniqueID = [installInfo uniqueID];
  v11 = [IMLibraryPlist uniqueIdFromPlistEntry:neededCopy];
  if ([v11 isEqualToString:uniqueID])
  {
    v12 = [neededCopy mutableCopy];
    storeIdentifier = [installInfo storeIdentifier];
    storePlaylistIdentifier = [installInfo storePlaylistIdentifier];
    if (![storePlaylistIdentifier longLongValue] || !storeIdentifier)
    {
      goto LABEL_25;
    }

    v27 = downloadID;
    v25 = manifestCopy;
    v14 = [IMLibraryPlist storeIdFromPlistEntry:neededCopy];
    v15 = [IMLibraryPlist storePlaylistIdFromPlistEntry:neededCopy];
    v16 = [IMLibraryPlist isSupplementalContentFromPlistEntry:neededCopy];
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
        v34 = uniqueID;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Will repair entry %{mask.hash}@ for missing supplemental content properties", buf, 0x20u);
      }

      manifestCopy = v25;
      goto LABEL_19;
    }

    v24 = storeIdentifier;
    stringValue = [storePlaylistIdentifier stringValue];
    v18 = [v15 isEqual:stringValue];

    if (v18)
    {
      stringValue2 = [v24 stringValue];
      v20 = [v14 isEqual:stringValue2];

      manifestCopy = v25;
      if (v20)
      {

        storeIdentifier = v24;
LABEL_21:
        downloadID = v27;
LABEL_25:

        goto LABEL_26;
      }

      v21 = BLBookInstallLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544642;
        v30 = v27;
        v31 = 2112;
        v32 = uniqueID;
        v33 = 2160;
        v34 = 1752392040;
        v35 = 2112;
        v36 = v26;
        v37 = 2160;
        v38 = 1752392040;
        v39 = 2112;
        storeIdentifier = v24;
        v40 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [PDFInstall-Op]: Will repair entry %@ for different storeID (old=%{mask.hash}@, new=%{mask.hash}@)", buf, 0x3Eu);
LABEL_19:

        storeInfoEntries = [installInfo storeInfoEntries];
        [v12 addEntriesFromDictionary:storeInfoEntries];

        [(BLPDFInstallOperation *)self _insertAdditionalEntryProperties:v12];
        if (![manifestCopy removeManifestEntryWithPackageHash:uniqueID])
        {
          v23 = BLBookInstallLog();
          downloadID = v27;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v30 = v27;
            v31 = 2160;
            v32 = 1752392040;
            v33 = 2112;
            v34 = uniqueID;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: During repair, failed to remove entry %{mask.hash}@", buf, 0x20u);
          }

          goto LABEL_25;
        }

        [manifestCopy addManifestEntry:v12];
        [manifestCopy synchronizeData];
        goto LABEL_21;
      }
    }

    else
    {
      v21 = BLBookInstallLog();
      manifestCopy = v25;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544642;
        v30 = v27;
        v31 = 2112;
        v32 = uniqueID;
        v33 = 2160;
        v34 = 1752392040;
        v35 = 2112;
        v36 = v15;
        v37 = 2160;
        v38 = 1752392040;
        v39 = 2112;
        v40 = storePlaylistIdentifier;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [PDFInstall-Op]: Will repair entry %@ for different storePlaylistID (old=%{mask.hash}@, new=%{mask.hash}@)", buf, 0x3Eu);
      }
    }

    storeIdentifier = v24;
    goto LABEL_19;
  }

  v12 = BLBookInstallLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v30 = downloadID;
    v31 = 2160;
    v32 = 1752392040;
    v33 = 2112;
    v34 = uniqueID;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: During repair, unexpected mismatch uniqueID %{mask.hash}@", buf, 0x20u);
  }

LABEL_26:
}

- (id)_newManifestEntry
{
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  v4 = [installInfo manifestEntry:1 withFileName:0];
  v5 = [v4 mutableCopy];

  [(BLPDFInstallOperation *)self _insertAdditionalEntryProperties:v5];
  return v5;
}

- (void)_insertAdditionalEntryProperties:(id)properties
{
  propertiesCopy = properties;
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  storePlaylistIdentifier = [installInfo storePlaylistIdentifier];
  longLongValue = [storePlaylistIdentifier longLongValue];
  v8 = BLBookInstallLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    downloadID = [(BLBaseBookInstallOperation *)self downloadID];
    uniqueID = [installInfo uniqueID];
    assetFlavor = [installInfo assetFlavor];
    v12 = 138544898;
    v13 = downloadID;
    v14 = 1024;
    v15 = longLongValue != 0;
    v16 = 2160;
    v17 = 1752392040;
    v18 = 2112;
    v19 = uniqueID;
    v20 = 2160;
    v21 = 1752392040;
    v22 = 2112;
    v23 = storePlaylistIdentifier;
    v24 = 2114;
    v25 = assetFlavor;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: isSupplementalContent=%d, uniqueID=%{mask.hash}@, playlistIdentifier=%{mask.hash}@, flavor=%{public}@", &v12, 0x44u);
  }

  if (longLongValue)
  {
    [propertiesCopy setObject:&__kCFBooleanTrue forKeyedSubscript:@"isSupplementalContent"];
  }
}

- (void)_addPurchaseManifestItem
{
  downloadID = [(BLBaseBookInstallOperation *)self downloadID];
  v4 = BLBookInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    v13 = downloadID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "(dID=%{public}@) [PDFInstall-Op]: Adding purchase manifest", &v12, 0xCu);
  }

  _bookManifest = [(BLPDFInstallOperation *)self _bookManifest];
  v6 = BLBookInstallLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    manifestPath = [_bookManifest manifestPath];
    v12 = 138543618;
    v13 = downloadID;
    v14 = 2114;
    v15 = manifestPath;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Updating purchase single user manifest: %{public}@", &v12, 0x16u);
  }

  destinationFilename = [(BLBaseBookInstallOperation *)self destinationFilename];
  v9 = BLBookInstallLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = downloadID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Updating purchase manifest since isRestore == NO.", &v12, 0xCu);
  }

  v10 = [_bookManifest manifestEntriesWithProperty:@"Path" equalToValue:destinationFilename limitCount:1];
  if ([v10 count])
  {
    _newManifestEntry = BLBookInstallLog();
    if (os_log_type_enabled(_newManifestEntry, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543874;
      v13 = downloadID;
      v14 = 2160;
      v15 = 1752392040;
      v16 = 2112;
      v17 = destinationFilename;
      _os_log_impl(&_mh_execute_header, _newManifestEntry, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: An entry with fileName %{mask.hash}@ already exists.", &v12, 0x20u);
    }
  }

  else
  {
    [(BLPDFInstallOperation *)self _removeDuplicateEntry:_bookManifest];
    _newManifestEntry = [(BLPDFInstallOperation *)self _newManifestEntry];
    [_bookManifest addManifestEntry:_newManifestEntry];
    [_bookManifest synchronizeData];
  }
}

- (BOOL)_installMediaAsset:(id)asset assetInstalledPath:(id *)path error:(id *)error
{
  assetCopy = asset;
  downloadID = [(BLBaseBookInstallOperation *)self downloadID];
  v10 = objc_alloc_init(NSFileManager);
  downloadedAssetPath = [(BLBaseBookInstallOperation *)self downloadedAssetPath];
  if (([v10 fileExistsAtPath:downloadedAssetPath] & 1) == 0)
  {
    v24 = BLBookInstallLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v37 = downloadID;
      v38 = 2112;
      v39 = downloadedAssetPath;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [PDFInstall-Op]: Could not install non-existant file: %@", buf, 0x16u);
    }

    v13 = [NSString stringWithFormat:@"Could not install non-existant file: %@", downloadedAssetPath];
    v22 = sub_1000A8F44(7, 0, v13);
    v23 = 0;
    goto LABEL_15;
  }

  _bookManifest = [(BLPDFInstallOperation *)self _bookManifest];
  v13 = _bookManifest;
  if (!_bookManifest)
  {
    v25 = BLBookInstallLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v37 = downloadID;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [PDFInstall-Op]: No manifest entry found for book.", buf, 0xCu);
    }

    v23 = 0;
    v22 = 0;
LABEL_15:
    destinationFilename = 0;
    goto LABEL_16;
  }

  pathCopy = path;
  v33 = assetCopy;
  manifestPath = [(__CFString *)_bookManifest manifestPath];
  stringByDeletingLastPathComponent = [manifestPath stringByDeletingLastPathComponent];

  destinationFilename = [(BLBaseBookInstallOperation *)self destinationFilename];
  v17 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:destinationFilename];

  v18 = BLBookInstallLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v37 = downloadID;
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Saving Book to %@", buf, 0x16u);
  }

  v19 = [downloadedAssetPath isEqualToString:v17];
  v20 = BLBookInstallLog();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (!v19)
  {
    if (v21)
    {
      *buf = 138543874;
      v37 = downloadID;
      v38 = 2112;
      v39 = downloadedAssetPath;
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Moving file: %@ to path: %@", buf, 0x20u);
    }

    v34 = 0;
    v35 = v17;
    v28 = [(BLBaseBookInstallOperation *)self _moveFile:downloadedAssetPath toPath:&v35 installBehavior:0 error:&v34];
    v23 = v35;

    v22 = v34;
    if (v28)
    {
      goto LABEL_22;
    }

    assetCopy = v33;
LABEL_16:

    if (error)
    {
      v26 = v22;
      v27 = 0;
      *error = v22;
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
    v37 = downloadID;
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [PDFInstall-Op]: Book already at destination: %@", buf, 0x16u);
  }

  v22 = 0;
  v23 = v17;
LABEL_22:
  assetCopy = v33;
  fileAttributes = [v33 fileAttributes];
  if ([fileAttributes count])
  {
    [v10 setAttributes:fileAttributes ofItemAtPath:v23 error:0];
  }

  if (pathCopy)
  {
    v30 = v23;
    *pathCopy = v23;
  }

  v27 = 1;
LABEL_27:

  return v27;
}

- (void)_saveMigrationState
{
  downloadID = [(BLBaseBookInstallOperation *)self downloadID];
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  storeIdentifier = [installInfo storeIdentifier];
  v6 = BUStoreIdFromObject();
  metadataStoreManager = [(BLPDFInstallOperation *)self metadataStoreManager];
  metadataStore = [metadataStoreManager metadataStore];
  v17 = 0;
  v9 = [metadataStore setMigrationState:800 forStoreID:v6 error:&v17];
  v10 = v17;

  v11 = BLBookInstallLog();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v19 = downloadID;
      v20 = 2048;
      v21 = 800;
      v22 = 2160;
      v23 = 1752392040;
      v24 = 2112;
      v25 = storeIdentifier;
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
    v19 = downloadID;
    v20 = 2048;
    v21 = 800;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 2112;
    v25 = storeIdentifier;
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