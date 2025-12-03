@interface BLAudiobookInstallOperation
- (BLAudiobookInstallOperation)initWithInfo:(id)info mediaLibraryManager:(id)manager metadataStoreManager:(id)storeManager;
- (BOOL)_installAssetFrom:(id)from to:(id)to error:(id *)error;
- (BOOL)_unprotectedMediaAsset:(id *)asset;
- (id)_destinationDirectoryPath;
- (id)_installDaemonOwnedDownload:(id *)download;
- (id)_newMediaLibraryItem;
- (void)main;
@end

@implementation BLAudiobookInstallOperation

- (BLAudiobookInstallOperation)initWithInfo:(id)info mediaLibraryManager:(id)manager metadataStoreManager:(id)storeManager
{
  infoCopy = info;
  managerCopy = manager;
  storeManagerCopy = storeManager;
  v19.receiver = self;
  v19.super_class = BLAudiobookInstallOperation;
  v11 = [(BLBaseBookInstallOperation *)&v19 initWithInfo:infoCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaLibraryManager, manager);
    objc_storeStrong(&v12->_metadataStoreManager, storeManager);
    error = [(BLBaseBookInstallOperation *)v12 error];
    if (error)
    {
    }

    else
    {
      storeIdentifier = [infoCopy storeIdentifier];

      if (!storeIdentifier)
      {
        v15 = BLBookInstallLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          downloadID = [infoCopy downloadID];
          *buf = 138543362;
          v21 = downloadID;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: Required store identifier is missing.", buf, 0xCu);
        }

        v17 = sub_1000A8F44(0, 0, @"Required store identifier is missing.");
        [(BLBaseBookInstallOperation *)v12 setError:v17];

        [(BLBaseBookInstallOperation *)v12 setSuccess:0];
      }
    }
  }

  return v12;
}

- (BOOL)_unprotectedMediaAsset:(id *)asset
{
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  assetPath = [installInfo assetPath];
  v6 = objc_alloc_init(NSMutableDictionary);
  downloadID = [installInfo downloadID];
  sinfs = [installInfo sinfs];
  if (sinfs)
  {
    [v6 setObject:sinfs forKeyedSubscript:AVFileProcessorAttribute_Sinfs];
  }

  v9 = +[AVFileProcessor fileProcessor];
  v21 = 0;
  v10 = [v9 processPurchasedItem:assetPath withAttributes:v6 resultInfo:&v21];
  v11 = v21;

  if (v10)
  {
    v12 = BLBookInstallLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = downloadID;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op-Audiobook] Unprotect failed with error:  %@", buf, 0x16u);
    }

    if (asset)
    {
      assetCopy = asset;
      downloadID2 = [installInfo downloadID];
      v14 = [NSString stringWithFormat:@"Unprotect failed on audiobook with download id: %@", downloadID2];
      v15 = [NSError bu_errorWithDomain:@"BLErrorDomain" code:15 description:v14 underlyingError:v10];

      v16 = v15;
      *assetCopy = v15;
    }

    else
    {
      v15 = v10;
    }

    v17 = +[NSFileManager defaultManager];
    [v17 removeItemAtPath:assetPath error:0];

    v18 = BLBookInstallLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = downloadID;
      v24 = 2112;
      v25 = assetPath;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op-Audiobook] Because unprotect failed, deleting file: %@", buf, 0x16u);
    }
  }

  return v10 == 0;
}

- (void)main
{
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  databaseManager = [installInfo databaseManager];
  downloadID = [(BLBaseBookInstallOperation *)self downloadID];
  [databaseManager syncSaveDownloadStateWithId:downloadID state:8];

  v56 = +[NSUserDefaults standardUserDefaults];
  if ([v56 BOOLForKey:@"BKSimulateCrashAtInstallStart"])
  {
    v6 = BLBookInstallLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      downloadID2 = [(BLBaseBookInstallOperation *)self downloadID];
      *buf = 138543362;
      *&buf[4] = downloadID2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: Simulating a crash during install start", buf, 0xCu);
    }

    [v56 removeObjectForKey:@"BKSimulateCrashAtInstallStart"];
    [v56 synchronize];
    raise(11);
  }

  installInfo2 = [(BLBaseBookInstallOperation *)self installInfo];
  downloadID3 = [installInfo2 downloadID];
  assetPath = [installInfo2 assetPath];
  installInfo3 = [(BLBaseBookInstallOperation *)self installInfo];
  storeIdentifier = [installInfo3 storeIdentifier];
  v53 = [BLMediaLibraryUtilities pathOfAudiobookTrackWithStoreIdentifier:storeIdentifier];

  v10 = [v53 length];
  if (v10)
  {
    v11 = BLBookInstallLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = downloadID3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op-Audiobook] Skipping asset installation because audiobook already has a path in Media Library.", buf, 0xCu);
    }

    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  installInfo4 = [(BLBaseBookInstallOperation *)self installInfo];
  databaseManager2 = [installInfo4 databaseManager];
  downloadID4 = [(BLBaseBookInstallOperation *)self downloadID];
  [databaseManager2 syncSaveDownloadStateWithId:downloadID4 state:15];

  if (v10)
  {
    v15 = 0;
    goto LABEL_15;
  }

  v16 = BLBookInstallLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = downloadID3;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op-Audiobook] Processing DRM for audiobook.", buf, 0xCu);
  }

  v68 = 0;
  v17 = [(BLAudiobookInstallOperation *)self _unprotectedMediaAsset:&v68];
  v15 = v68;
  if (v17)
  {
LABEL_15:
    v18 = +[NSUserDefaults standardUserDefaults];
    if ([v18 BOOLForKey:@"BKSimulateCrashAtInstallDuringFinish"])
    {
      v19 = BLBookInstallLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        installInfo5 = [(BLBaseBookInstallOperation *)self installInfo];
        downloadID5 = [installInfo5 downloadID];
        *buf = 138543362;
        *&buf[4] = downloadID5;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op]: Simulating a crash during install finish", buf, 0xCu);
      }

      [v18 removeObjectForKey:@"BKSimulateCrashAtInstallDuringFinish"];
      [v18 synchronize];
      raise(11);
    }

    if (v10)
    {
      v22 = 1;
LABEL_48:
      v41 = dispatch_group_create();
      dispatch_group_enter(v41);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v72) = 0;
      v42 = BLBookInstallLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v69 = 138543362;
        v70 = downloadID3;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op-Audiobook] About to finalizing install.", v69, 0xCu);
      }

      installInfo6 = [(BLBaseBookInstallOperation *)self installInfo];
      databaseManager3 = [installInfo6 databaseManager];
      downloadID6 = [(BLBaseBookInstallOperation *)self downloadID];
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_10009B074;
      v61[3] = &unk_10011E228;
      v62 = downloadID3;
      selfCopy = self;
      v64 = buf;
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_10009B17C;
      v58[3] = &unk_10011E250;
      v59 = v62;
      v46 = v41;
      v60 = v46;
      [databaseManager3 finalizeOrCanceAndCleanupWithDownloadID:downloadID6 cleanupBlock:v61 completion:v58];

      dispatch_group_wait(v46, 0xFFFFFFFFFFFFFFFFLL);
      if (*(*&buf[8] + 24) == 1)
      {
        v47 = sub_1000A8F44(16, @"Download Cancelled By User", 0);

        v22 = 0;
        v15 = v47;
      }

      _Block_object_dispose(buf, 8);
      [(BLBaseBookInstallOperation *)self setSuccess:v22];
      if (v22)
      {
        v27 = v54;
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_55;
    }

    _destinationDirectoryPath = [(BLAudiobookInstallOperation *)self _destinationDirectoryPath];
    destinationFilename = [installInfo2 destinationFilename];
    if (_destinationDirectoryPath && destinationFilename)
    {
      v23 = [_destinationDirectoryPath stringByAppendingPathComponent:?];

      v24 = v23;
    }

    else
    {
      v24 = v54;
    }

    v54 = v24;
    if (([assetPath isEqualToString:?] & 1) == 0)
    {
      v28 = BLBookInstallLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *&buf[4] = downloadID3;
        *&buf[12] = 2112;
        *&buf[14] = assetPath;
        *&buf[22] = 2112;
        v72 = v54;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op-Audiobook] moving audiobook asset into place (from %@ to %@)", buf, 0x20u);
      }

      v67 = v15;
      v29 = [(BLAudiobookInstallOperation *)self _installAssetFrom:assetPath to:v54 error:&v67];
      v50 = v67;

      if ((v29 & 1) == 0)
      {
        v40 = BLBookInstallLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = downloadID3;
          *&buf[12] = 2112;
          *&buf[14] = v50;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op-Audiobook] Unable to install asset:  %@", buf, 0x16u);
        }

        v22 = 0;
        goto LABEL_47;
      }

      v15 = v50;
    }

    v66 = v15;
    v48 = [(BLAudiobookInstallOperation *)self _installDaemonOwnedDownload:&v66];
    v50 = v66;

    v22 = v48 != 0;
    if (!v48)
    {
      v30 = BLBookInstallLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = downloadID3;
        *&buf[12] = 2112;
        *&buf[14] = v50;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op-Audiobook] Unable to update media library:  %@", buf, 0x16u);
      }
    }

    installInfo7 = [(BLBaseBookInstallOperation *)self installInfo];
    storePlaylistIdentifier = [installInfo7 storePlaylistIdentifier];

    if (storePlaylistIdentifier)
    {
      metadataStoreManager = [(BLAudiobookInstallOperation *)self metadataStoreManager];
      metadataStore = [metadataStoreManager metadataStore];
      installInfo8 = [(BLBaseBookInstallOperation *)self installInfo];
      racGUID = [installInfo8 racGUID];
      v65 = 0;
      v37 = [metadataStore setRacGUID:racGUID forStoreID:objc_msgSend(storePlaylistIdentifier error:{"longLongValue"), &v65}];
      v38 = v65;

      if ((v37 & 1) == 0)
      {
        v39 = BLBookInstallLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = downloadID3;
          *&buf[12] = 2112;
          *&buf[14] = v38;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op-Audiobook] Unable to set racGUID:  %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v38 = 0;
    }

    v40 = v48;
LABEL_47:

    v15 = v50;
    goto LABEL_48;
  }

  v25 = BLBookInstallLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    downloadID7 = [installInfo2 downloadID];
    *buf = 138543618;
    *&buf[4] = downloadID7;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op-Audiobook] Processing DRM failed for audiobook. Error:  %@", buf, 0x16u);
  }

  [(BLBaseBookInstallOperation *)self setSuccess:0];
  v27 = 0;
LABEL_55:
  [(BLBaseBookInstallOperation *)self setInstalledAssetPath:v27];
  [(BLBaseBookInstallOperation *)self setError:v15];
}

- (BOOL)_installAssetFrom:(id)from to:(id)to error:(id *)error
{
  fromCopy = from;
  toCopy = to;
  v10 = objc_alloc_init(NSFileManager);
  if (![v10 fileExistsAtPath:fromCopy])
  {
    v16 = 0;
    goto LABEL_7;
  }

  stringByDeletingLastPathComponent = [toCopy stringByDeletingLastPathComponent];
  [v10 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
  v26 = 0;
  v12 = [v10 removeItemAtPath:toCopy error:&v26];
  v13 = v26;
  v14 = v13;
  if (v12 & 1) != 0 || ([v13 bu_isNoSuchFileError])
  {
    v25 = v14;
    v15 = [v10 moveItemAtPath:fromCopy toPath:toCopy error:&v25];
    v16 = v25;

    if (v15)
    {

LABEL_7:
      v17 = 1;
      goto LABEL_17;
    }

    v18 = BLBookInstallLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      installInfo = [(BLBaseBookInstallOperation *)self installInfo];
      downloadID = [installInfo downloadID];
      *buf = 138543618;
      v28 = downloadID;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op-Audiobook] File move failed:  %@", buf, 0x16u);
    }

    v14 = v16;
  }

  else
  {
    v18 = BLBookInstallLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      installInfo2 = [(BLBaseBookInstallOperation *)self installInfo];
      downloadID2 = [installInfo2 downloadID];
      *buf = 138543618;
      v28 = downloadID2;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op-Audiobook] Failed to delete existing file:  %@", buf, 0x16u);
    }
  }

  if (error)
  {
    v23 = v14;
    v17 = 0;
    *error = v14;
  }

  else
  {
    v17 = 0;
  }

  v16 = v14;
LABEL_17:

  return v17;
}

- (id)_destinationDirectoryPath
{
  v2 = +[NSURL bu_mediaURL];
  v3 = [v2 URLByAppendingPathComponent:@"ManagedPurchases/Books" isDirectory:1];

  path = [v3 path];

  return path;
}

- (id)_installDaemonOwnedDownload:(id *)download
{
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  _newMediaLibraryItem = [(BLAudiobookInstallOperation *)self _newMediaLibraryItem];
  itunesMetadata = [installInfo itunesMetadata];
  v8 = [[BLDownloadMetadata alloc] initWithDictionary:itunesMetadata];
  [_newMediaLibraryItem setItemMetadata:v8];
  v9 = BLBookInstallLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    downloadID = [installInfo downloadID];
    *buf = 138543618;
    v21 = downloadID;
    v22 = 2112;
    v23 = _newMediaLibraryItem;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op-Audiobook] Adding mediaItem for audiobook %@", buf, 0x16u);
  }

  mediaLibraryManager = [(BLAudiobookInstallOperation *)self mediaLibraryManager];
  v19 = 0;
  v12 = [mediaLibraryManager addLibraryItem:_newMediaLibraryItem error:&v19];
  v13 = v19;

  if (v12)
  {
    v14 = [NSNumber numberWithLongLong:v12];
    if (!download)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v15 = BLBookInstallLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    downloadID2 = [installInfo downloadID];
    *buf = 138543618;
    v21 = downloadID2;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op-Audiobook] Could not install audiobook download:  %@", buf, 0x16u);
  }

  v14 = 0;
  if (download)
  {
LABEL_9:
    if (!v14)
    {
      v17 = v13;
      *download = v13;
    }
  }

LABEL_11:

  return v14;
}

- (id)_newMediaLibraryItem
{
  v3 = objc_alloc_init(BLMLImporterItem);
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  downloadID = [installInfo downloadID];
  [(BLMLImporterItem *)v3 setItemDownloadIdentifier:downloadID];

  accountIdentifier = [installInfo accountIdentifier];
  [(BLMLImporterItem *)v3 setValue:accountIdentifier forAdditionalEntityProperty:ML3TrackPropertyStoreAccountID];

  familyAccountIdentifier = [installInfo familyAccountIdentifier];
  [(BLMLImporterItem *)v3 setValue:familyAccountIdentifier forAdditionalEntityProperty:ML3TrackPropertyStoreFamilyAccountID];

  libraryItemIdentifier = [installInfo libraryItemIdentifier];
  v9 = libraryItemIdentifier;
  if (libraryItemIdentifier)
  {
    -[BLMLImporterItem setLibraryPersistentIdentifier:](v3, "setLibraryPersistentIdentifier:", [libraryItemIdentifier longLongValue]);
  }

  isRestore = [installInfo isRestore];
  bOOLValue = [isRestore BOOLValue];

  if (bOOLValue)
  {
    [(BLMLImporterItem *)v3 setDownloadType:1];
  }

  _destinationDirectoryPath = [(BLAudiobookInstallOperation *)self _destinationDirectoryPath];
  destinationFilename = [installInfo destinationFilename];
  v14 = destinationFilename;
  if (_destinationDirectoryPath && destinationFilename)
  {
    v15 = [_destinationDirectoryPath stringByAppendingPathComponent:destinationFilename];
  }

  else
  {
    if (!destinationFilename)
    {
      goto LABEL_11;
    }

    v15 = 0;
  }

  [(BLMLImporterItem *)v3 setItemMediaPath:v15];
  [(BLMLImporterItem *)v3 loadPropertiesFromMediaPath:v15 includeTracks:1];

LABEL_11:
  artworkPath = [installInfo artworkPath];
  if (artworkPath)
  {
    v17 = [[NSData alloc] initWithContentsOfFile:artworkPath];
    [(BLMLImporterItem *)v3 setItemArtworkData:v17];
  }

  return v3;
}

@end