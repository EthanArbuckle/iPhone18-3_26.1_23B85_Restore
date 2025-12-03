@interface MBDomainTranscriber
- (BOOL)_collectFileIntoOpenedFileListDB:(id)b error:(id *)error;
- (BOOL)_encryptionKeyForFile:(id)file existingEncryptionKey:(id)key outEncryptionKey:(id *)encryptionKey error:(id *)error;
- (BOOL)_fetchPreviouslyBackedUpEncryptionKeyForFile:(id)file oldMetadata:(id)metadata outEncryptionKey:(id *)key error:(id *)error;
- (BOOL)_fileListContainsValidFileMetadata:(id)metadata forFile:(id)file metadata:(id)a5 outModificationType:(unint64_t *)type;
- (BOOL)_scanDomain:(id)domain error:(id *)error;
- (BOOL)_scanDomain:(id)domain snapshotPathForDomain:(id)forDomain error:(id *)error;
- (BOOL)_shouldPackFile:(id)file;
- (BOOL)fileScanner:(id)scanner isFileAddedOrModified:(id)modified;
- (BOOL)scanDomains:(id)domains pendingSnapshotDB:(id)b progress:(id)progress summary:(id)summary error:(id *)error;
- (MBDomainTranscriber)initWithPendingCommitID:(id)d snapshotDatabaseDirectory:(id)directory scanMode:(unint64_t)mode enginePolicy:(unint64_t)policy snapshotFormat:(int64_t)format device:(id)device volumeMap:(id)map shouldRepairEncryptionKeys:(BOOL)self0 snapshotTracker:(id)self1 attemptSummary:(id)self2 compatibilityDelegate:(id)self3 delegate:(id)self4;
- (id)_assetMetadataForRenamedOrHardlinkedFile:(id)file error:(id *)error;
- (id)_assetMetadataFromFile:(id)file oldMetadata:(id)metadata modificationType:(unint64_t)type outRequiresInvalidation:(BOOL *)invalidation error:(id *)error;
- (id)_metadataFromFile:(id)file error:(id *)error;
- (id)_volumeIdentifierForDomain:(id)domain error:(id *)error;
- (id)fileScanner:(id)scanner didFindFile:(id)file;
- (void)_cancel;
- (void)_trackModifiedFile:(id)file;
- (void)_trackUnmodifiedFile:(id)file;
@end

@implementation MBDomainTranscriber

- (MBDomainTranscriber)initWithPendingCommitID:(id)d snapshotDatabaseDirectory:(id)directory scanMode:(unint64_t)mode enginePolicy:(unint64_t)policy snapshotFormat:(int64_t)format device:(id)device volumeMap:(id)map shouldRepairEncryptionKeys:(BOOL)self0 snapshotTracker:(id)self1 attemptSummary:(id)self2 compatibilityDelegate:(id)self3 delegate:(id)self4
{
  dCopy = d;
  directoryCopy = directory;
  directoryCopy2 = directory;
  deviceCopy = device;
  deviceCopy2 = device;
  mapCopy = map;
  trackerCopy = tracker;
  summaryCopy = summary;
  delegateCopy = delegate;
  v23 = a14;
  if (!dCopy)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 103, "pendingCommitID");
  }

  if (!directoryCopy2)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 104, "snapshotDatabaseDirectory");
  }

  if (!mapCopy)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 105, "volumeMap");
  }

  if (!mode)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 106, "scanMode != MBFileScannerModeUnspecified");
  }

  if (format == -1)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 107, "snapshotFormat != MBSnapshotFormatUnspecified");
  }

  if (!deviceCopy2)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 109, "device");
  }

  v24 = v23;
  modeCopy = mode;
  formatCopy = format;
  v39.receiver = self;
  v39.super_class = MBDomainTranscriber;
  v27 = [(MBDomainTranscriber *)&v39 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_pendingCommitID, d);
    objc_storeStrong(&v28->_snapshotDatabaseDirectory, directoryCopy);
    v28->_snapshotFormat = formatCopy;
    objc_storeStrong(&v28->_mountedSnapshotTracker, tracker);
    v29 = [[MBFileScanner alloc] initWithDelegate:v28 mode:modeCopy enginePolicy:policy debugContext:0];
    scanner = v28->_scanner;
    v28->_scanner = v29;

    objc_storeStrong(&v28->_device, deviceCopy);
    objc_storeStrong(&v28->_volumeMap, map);
    v28->_shouldRepairEncryptionKeys = keys;
    objc_storeStrong(&v28->_attemptSummary, summary);
    objc_storeStrong(&v28->_compatibilityDelegate, delegate);
    objc_storeStrong(&v28->_delegate, a14);
  }

  return v28;
}

- (void)_cancel
{
  scanner = [(MBDomainTranscriber *)self scanner];

  if (scanner)
  {
    scanner2 = [(MBDomainTranscriber *)self scanner];
    [scanner2 cancel];
  }
}

- (BOOL)scanDomains:(id)domains pendingSnapshotDB:(id)b progress:(id)progress summary:(id)summary error:(id *)error
{
  domainsCopy = domains;
  bCopy = b;
  progressCopy = progress;
  summaryCopy = summary;
  snapshotDatabaseDirectory = [(MBDomainTranscriber *)self snapshotDatabaseDirectory];
  pendingCommitID = [(MBDomainTranscriber *)self pendingCommitID];
  v17 = [MBMissedEncryptionKeysDB openOrCreateDatabaseIn:snapshotDatabaseDirectory commitID:pendingCommitID error:error];

  if (!v17)
  {
    goto LABEL_26;
  }

  [(MBDomainTranscriber *)self setMissedEncryptionKeysDB:v17];
  [(MBDomainTranscriber *)self setPendingSnapshotDB:bCopy];
  [(MBDomainTranscriber *)self setSummary:summaryCopy];
  if (([bCopy setUseFullSynchronization:1 error:error] & 1) == 0 || !objc_msgSend(v17, "removeAllMissedEncryptionKeys:", error))
  {
    goto LABEL_23;
  }

  [progressCopy willScanDomains:{objc_msgSend(domainsCopy, "count")}];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = domainsCopy;
  v19 = [v18 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v19)
  {
    v20 = *v36;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v18);
        }

        if (![(MBDomainTranscriber *)self _scanDomain:*(*(&v35 + 1) + 8 * i) error:error])
        {

          goto LABEL_23;
        }

        [progressCopy finishedScanningDomain];
      }

      v19 = [v18 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      scanner = [(MBDomainTranscriber *)self scanner];
      loggableStats = [scanner loggableStats];
      *buf = 138412290;
      v40 = loggableStats;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=transcribing= Finished transcribing all domains - %@", buf, 0xCu);
    }

    scanner2 = [(MBDomainTranscriber *)self scanner];
    loggableStats2 = [scanner2 loggableStats];
    _MBLog();
  }

  v27 = [v17 countMissedEncryptionKeysWithError:error];
  v28 = v27;
  if (!v27)
  {
    summary = [(MBDomainTranscriber *)self summary];
    [summary setSuccess:1];

    v30 = 1;
    goto LABEL_24;
  }

  if (v27 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  v29 = MBGetDefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v40 = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "=transcribing= Could not fetch encryption keys for %llu files during transcription", buf, 0xCu);
    loggableStats2 = v28;
    _MBLog();
  }

  if (error)
  {
    [MBError errorWithCode:209 format:@"Could not fetch encryption keys for %lu files during transcription", v28];
    *error = v30 = 0;
  }

  else
  {
LABEL_23:
    v30 = 0;
  }

LABEL_24:
  if (([bCopy setUseFullSynchronization:0 error:{error, loggableStats2}] & 1) == 0 || !objc_msgSend(v17, "close:", error))
  {
LABEL_26:
    v30 = 0;
  }

  return v30;
}

- (BOOL)_scanDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  mountedSnapshotTracker = [(MBDomainTranscriber *)self mountedSnapshotTracker];
  volumeMountPoint = [domainCopy volumeMountPoint];
  v9 = [mountedSnapshotTracker snapshotMountPointForVolumeMountPoint:volumeMountPoint];

  mountedSnapshotTracker2 = [(MBDomainTranscriber *)self mountedSnapshotTracker];

  if (mountedSnapshotTracker2 && !v9)
  {
    __assert_rtn("[MBDomainTranscriber _scanDomain:error:]", "MBDomainTranscriber.m", 186, "snapshotPathForDomain");
  }

  v11 = [(MBDomainTranscriber *)self _scanDomain:domainCopy snapshotPathForDomain:v9 error:error];
  openedFileListDB = [(MBDomainTranscriber *)self openedFileListDB];
  v13 = openedFileListDB;
  if (openedFileListDB)
  {
    v19 = 0;
    v14 = [openedFileListDB close:&v19];
    v15 = v19;
    if ((v14 & 1) == 0)
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=transcribing= Failed to close file list database: %@", buf, 0xCu);
        v18 = v15;
        _MBLog();
      }
    }

    [(MBDomainTranscriber *)self setOpenedFileListDB:0, v18];
  }

  return v11;
}

- (id)_volumeIdentifierForDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  volumeMountPoint = [domainCopy volumeMountPoint];
  volumeUUIDsByMountPoint = [(MBDomainTranscriber *)self volumeUUIDsByMountPoint];
  v9 = [volumeUUIDsByMountPoint objectForKeyedSubscript:volumeMountPoint];

  if (!v9)
  {
    volumeMountPoint2 = [domainCopy volumeMountPoint];
    v9 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:volumeMountPoint2 error:error];

    if (!v9)
    {
      v15 = 0;
      goto LABEL_10;
    }

    volumeUUIDsByMountPoint2 = [(MBDomainTranscriber *)self volumeUUIDsByMountPoint];
    [volumeUUIDsByMountPoint2 setObject:v9 forKeyedSubscript:volumeMountPoint];
  }

  volumeMap = [(MBDomainTranscriber *)self volumeMap];
  if (!volumeMap)
  {
    __assert_rtn("[MBDomainTranscriber _volumeIdentifierForDomain:error:]", "MBDomainTranscriber.m", 214, "volumeMap");
  }

  v13 = volumeMap;
  v14 = [volumeMap volumeIdentifierForVolumeUUID:v9];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else if (error)
  {
    *error = [MBError errorWithCode:4 format:@"Volume identifier not found for uuid:%@ mtpt:%@", v9, volumeMountPoint];
  }

LABEL_10:

  return v15;
}

- (BOOL)_scanDomain:(id)domain snapshotPathForDomain:(id)forDomain error:(id *)error
{
  domainCopy = domain;
  forDomainCopy = forDomain;
  delegate = [(MBDomainTranscriber *)self delegate];
  shouldCancelTranscription = [delegate shouldCancelTranscription];

  if (!shouldCancelTranscription)
  {
    [(MBDomainTranscriber *)self setModifiedFileCountInCurrentlyScannedDomain:0];
    [(MBDomainTranscriber *)self setUnmodifiedFileCountInCurrentlyScannedDomain:0];
    v13 = [(MBDomainTranscriber *)self _volumeIdentifierForDomain:domainCopy error:error];
    if (!v13)
    {
      v12 = 0;
LABEL_53:

      goto LABEL_54;
    }

    [(MBDomainTranscriber *)self setVolumeIdentifierForCurrentlyScannedDomain:v13];
    -[MBDomainTranscriber setIsScanningPlaceholderDomain:](self, "setIsScanningPlaceholderDomain:", [domainCopy isPlaceholderDomain]);
    if (self->_snapshotFormat == 3 && [domainCopy isLegacyPerAppPlaceholderDomain])
    {
      __assert_rtn("[MBDomainTranscriber _scanDomain:snapshotPathForDomain:error:]", "MBDomainTranscriber.m", 241, "_snapshotFormat != MBSnapshotFormatDomainsAssets || !domain.isLegacyPerAppPlaceholderDomain");
    }

    scanner = [(MBDomainTranscriber *)self scanner];
    v15 = [scanner scanDomain:domainCopy snapshotMountPoint:forDomainCopy];

    snapshotFormat = self->_snapshotFormat;
    if (!MBSnapshotFormatContainsFileLists())
    {
      v12 = 1;
LABEL_52:

      goto LABEL_53;
    }

    openedFileListDB = [(MBDomainTranscriber *)self openedFileListDB];
    v18 = openedFileListDB;
    if (v15)
    {
      v19 = MBGetDefaultLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 138412290;
      v61 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=transcribing= Failed to scan for changes: %@", buf, 0xCu);
      goto LABEL_18;
    }

    if (!openedFileListDB)
    {
      if ([(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain])
      {
        __assert_rtn("[MBDomainTranscriber _scanDomain:snapshotPathForDomain:error:]", "MBDomainTranscriber.m", 258, "self.modifiedFileCountInCurrentlyScannedDomain == 0");
      }

      if ([(MBDomainTranscriber *)self unmodifiedFileCountInCurrentlyScannedDomain])
      {
        __assert_rtn("[MBDomainTranscriber _scanDomain:snapshotPathForDomain:error:]", "MBDomainTranscriber.m", 259, "self.unmodifiedFileCountInCurrentlyScannedDomain == 0");
      }

      summary = [(MBDomainTranscriber *)self summary];
      [summary setEmptyDomainCount:{objc_msgSend(summary, "emptyDomainCount") + 1}];

      snapshotDatabaseDirectory = [(MBDomainTranscriber *)self snapshotDatabaseDirectory];
      pendingCommitID = [(MBDomainTranscriber *)self pendingCommitID];
      name = [domainCopy name];
      v27 = MBFileListDBPath(snapshotDatabaseDirectory, pendingCommitID, name);

      v28 = +[NSFileManager defaultManager];
      v29 = [v28 fileExistsAtPath:v27];

      if (!v29)
      {
        goto LABEL_30;
      }

      v55 = v27;
      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v61 = domainCopy;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=transcribing= Found domain that went from populated to empty %{public}@", buf, 0xCu);
        v52 = domainCopy;
        _MBLog();
      }

      snapshotDatabaseDirectory2 = [(MBDomainTranscriber *)self snapshotDatabaseDirectory];
      pendingCommitID2 = [(MBDomainTranscriber *)self pendingCommitID];
      name2 = [domainCopy name];
      v18 = [MBFileListDB openOrCreateDatabaseIn:snapshotDatabaseDirectory2 commitID:pendingCommitID2 domainName:name2 error:error];

      v27 = v55;
      if (!v18)
      {
LABEL_30:
        v12 = v29 ^ 1;

        v18 = 0;
        v15 = 0;
        goto LABEL_51;
      }

      [(MBDomainTranscriber *)self setOpenedFileListDB:v18];
      volumeIdentifierForCurrentlyScannedDomain = [(MBDomainTranscriber *)self volumeIdentifierForCurrentlyScannedDomain];
      backupVolumeUUID = [volumeIdentifierForCurrentlyScannedDomain backupVolumeUUID];
      v36 = [v18 beginTranscriptionForVolumeUUID:backupVolumeUUID error:error];

      if (!v36)
      {
        v15 = 0;
        goto LABEL_29;
      }
    }

    v59 = 0;
    v20 = [v18 countFilesMarkedAsDeleted:{&v59, v52}];
    v21 = v59;
    if (v21)
    {
      v15 = v21;
      v19 = MBGetDefaultLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 138412290;
      v61 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=transcribing= Failed to count files marked as deleted: %@", buf, 0xCu);
LABEL_18:
      _MBLog();
LABEL_19:

      if (error)
      {
        v22 = v15;
        v12 = 0;
        *error = v15;
LABEL_51:

        goto LABEL_52;
      }

LABEL_29:
      v12 = 0;
      goto LABEL_51;
    }

    summary2 = [(MBDomainTranscriber *)self summary];
    [summary2 setDeletedFileCount:{objc_msgSend(summary2, "deletedFileCount") + v20}];

    pendingSnapshotDB = [(MBDomainTranscriber *)self pendingSnapshotDB];
    if (!pendingSnapshotDB)
    {
      __assert_rtn("[MBDomainTranscriber _scanDomain:snapshotPathForDomain:error:]", "MBDomainTranscriber.m", 288, "pendingSnapshotDB");
    }

    v39 = pendingSnapshotDB;
    if (v20)
    {
      name3 = [domainCopy name];
      v56 = v39;
      v58 = 0;
      v41 = [v39 markDomainRequiringFileListCopy:name3 error:&v58];
      v15 = v58;

      if ((v41 & 1) == 0)
      {
        if (error)
        {
          v49 = v15;
          *error = v15;
        }

        v48 = MBGetDefaultLog();
        v39 = v56;
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v12 = 0;
          goto LABEL_49;
        }

        name4 = [domainCopy name];
        *buf = 138412546;
        v61 = name4;
        v62 = 2112;
        v63 = v15;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "=transcribing= Failed to mark domain %@ as requiring upload after scanning: %@", buf, 0x16u);

        name5 = [domainCopy name];
        _MBLog();
        v12 = 0;
LABEL_45:

LABEL_49:
        goto LABEL_50;
      }

      v39 = v56;
    }

    else
    {
      v15 = 0;
    }

    if ([v18 finishTranscription:error])
    {
      if ([(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain]| v20)
      {
        v57 = v39;
        attemptSummary = [(MBDomainTranscriber *)self attemptSummary];
        name6 = [domainCopy name];
        [attemptSummary trackModifiedDomainInTranscription:name6];

        v44 = MBGetDefaultLog();
        v12 = 1;
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v39 = v57;
          v48 = v44;
          goto LABEL_49;
        }

        name7 = [domainCopy name];
        v54 = v44;
        modifiedFileCountInCurrentlyScannedDomain = [(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain];
        unmodifiedFileCountInCurrentlyScannedDomain = [(MBDomainTranscriber *)self unmodifiedFileCountInCurrentlyScannedDomain];
        *buf = 138544130;
        v61 = name7;
        v62 = 2048;
        v63 = modifiedFileCountInCurrentlyScannedDomain;
        v64 = 2048;
        v65 = unmodifiedFileCountInCurrentlyScannedDomain;
        v66 = 2048;
        v67 = v20;
        v12 = 1;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "=transcribing= Changes found for %{public}@ modifications:%llu unmodified:%llu deletions:%llu", buf, 0x2Au);

        name5 = [domainCopy name];
        [(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain];
        [(MBDomainTranscriber *)self unmodifiedFileCountInCurrentlyScannedDomain];
        _MBLog();
        v48 = v54;
        v39 = v57;
        goto LABEL_45;
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

LABEL_50:

    goto LABEL_51;
  }

  [(MBDomainTranscriber *)self _cancel];
  if (error)
  {
    [objc_opt_class() _cancellationError];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_54:

  return v12;
}

- (BOOL)_shouldPackFile:(id)file
{
  fileCopy = file;
  snapshotFormat = [(MBDomainTranscriber *)self snapshotFormat];
  if (snapshotFormat > 1)
  {
    if (snapshotFormat == 2 || snapshotFormat == 3)
    {
      isDirectory = 1;
      goto LABEL_9;
    }

LABEL_10:
    __assert_rtn("[MBDomainTranscriber _shouldPackFile:]", "MBDomainTranscriber.m", 324, "0");
  }

  if (!snapshotFormat)
  {
    isDirectory = 0;
    goto LABEL_9;
  }

  if (snapshotFormat != 1)
  {
    goto LABEL_10;
  }

  isDirectory = [fileCopy isDirectory];
LABEL_9:

  return isDirectory;
}

- (id)fileScanner:(id)scanner didFindFile:(id)file
{
  scannerCopy = scanner;
  fileCopy = file;
  delegate = [(MBDomainTranscriber *)self delegate];
  shouldCancelTranscription = [delegate shouldCancelTranscription];

  if (shouldCancelTranscription)
  {
    [(MBDomainTranscriber *)self _cancel];
    _cancellationError = [objc_opt_class() _cancellationError];
  }

  else if ([fileCopy isTopLevelDirectoryToExcludeFromiCloud])
  {
    _cancellationError = 0;
  }

  else
  {
    if (![(MBDomainTranscriber *)self _shouldPackFile:fileCopy]|| (v15 = 0, [(MBDomainTranscriber *)self _collectFileIntoOpenedFileListDB:fileCopy error:&v15], (compatibilityDelegate = v15) == 0))
    {
      compatibilityDelegate = [(MBDomainTranscriber *)self compatibilityDelegate];
      if (compatibilityDelegate)
      {
        isScanningPlaceholderDomain = [(MBDomainTranscriber *)self isScanningPlaceholderDomain];

        if (isScanningPlaceholderDomain)
        {
          compatibilityDelegate = 0;
        }

        else
        {
          compatibilityDelegate2 = [(MBDomainTranscriber *)self compatibilityDelegate];
          compatibilityDelegate = [compatibilityDelegate2 fileScanner:scannerCopy didFindFile:fileCopy];
        }
      }
    }

    _cancellationError = compatibilityDelegate;
  }

  return _cancellationError;
}

- (id)_metadataFromFile:(id)file error:(id *)error
{
  fileCopy = file;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  [fileCopy getNode:v15];
  v6 = [MBFileMetadata fileMetadataExcludingXattrsAndAssetFromNode:v15 error:error];
  if (v6)
  {
    if (![fileCopy isSymbolicLink])
    {
LABEL_5:
      v9 = v6;
      goto LABEL_10;
    }

    v14 = 0;
    v7 = +[MBFileOperation symbolicLinkTargetWithPathFSR:error:](MBFileOperation, "symbolicLinkTargetWithPathFSR:error:", [fileCopy absolutePathFSR], &v14);
    v8 = v14;
    if (v7)
    {
      [v6 setLinkTarget:v7];

      goto LABEL_5;
    }

    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      absolutePath = [fileCopy absolutePath];
      *buf = 138412546;
      v18 = absolutePath;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=transcribing= Failed to get link target for file %@: %@", buf, 0x16u);

      absolutePath2 = [fileCopy absolutePath];
      _MBLog();
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (void)_trackModifiedFile:(id)file
{
  fileCopy = file;
  [(MBDomainTranscriber *)self setModifiedFileCountInCurrentlyScannedDomain:[(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain]+ 1];
  v4 = [fileCopy mode] & 0xF000;
  switch(v4)
  {
    case 0x4000:
      summary = [(MBDomainTranscriber *)self summary];
      [summary setModifiedDirectories:{objc_msgSend(summary, "modifiedDirectories") + 1}];
      break;
    case 0xA000:
      summary = [(MBDomainTranscriber *)self summary];
      [summary setModifiedSymlinks:{objc_msgSend(summary, "modifiedSymlinks") + 1}];
      break;
    case 0x8000:
      summary = [(MBDomainTranscriber *)self summary];
      [summary setModifiedRegularFiles:{objc_msgSend(summary, "modifiedRegularFiles") + 1}];
      break;
    default:
      __assert_rtn("[MBDomainTranscriber _trackModifiedFile:]", "MBDomainTranscriber.m", 388, "0");
  }
}

- (void)_trackUnmodifiedFile:(id)file
{
  fileCopy = file;
  [(MBDomainTranscriber *)self setUnmodifiedFileCountInCurrentlyScannedDomain:[(MBDomainTranscriber *)self unmodifiedFileCountInCurrentlyScannedDomain]+ 1];
  v4 = [fileCopy mode] & 0xF000;
  switch(v4)
  {
    case 0x4000:
      summary = [(MBDomainTranscriber *)self summary];
      [summary setUnmodifiedDirectories:{objc_msgSend(summary, "unmodifiedDirectories") + 1}];
      break;
    case 0xA000:
      summary = [(MBDomainTranscriber *)self summary];
      [summary setUnmodifiedSymlinks:{objc_msgSend(summary, "unmodifiedSymlinks") + 1}];
      break;
    case 0x8000:
      summary = [(MBDomainTranscriber *)self summary];
      [summary setUnmodifiedRegularFiles:{objc_msgSend(summary, "unmodifiedRegularFiles") + 1}];
      break;
    default:
      __assert_rtn("[MBDomainTranscriber _trackUnmodifiedFile:]", "MBDomainTranscriber.m", 405, "0");
  }
}

- (BOOL)_encryptionKeyForFile:(id)file existingEncryptionKey:(id)key outEncryptionKey:(id *)encryptionKey error:(id *)error
{
  fileCopy = file;
  keyCopy = key;
  if (encryptionKey)
  {
    *encryptionKey = 0;
  }

  if (+[MBProtectionClassUtils canOpenWhenLocked:](MBProtectionClassUtils, "canOpenWhenLocked:", [fileCopy protectionClass]))
  {
    v12 = 1;
    goto LABEL_13;
  }

  if ([fileCopy size])
  {
    v21 = 0;
    missedEncryptionKeysDB = [(MBDomainTranscriber *)self missedEncryptionKeysDB];
    device = [(MBDomainTranscriber *)self device];
    v20 = 0;
    v15 = MBFetchEncryptionKeyForFile(fileCopy, keyCopy, missedEncryptionKeysDB, device, &v21, &v20);
    v16 = v20;

    v12 = v15 != 0;
    if (v15)
    {
      v17 = v15;
      error = encryptionKey;
      if (!encryptionKey)
      {
LABEL_9:

        goto LABEL_13;
      }
    }

    else
    {
      v17 = v16;
      if (!error)
      {
        goto LABEL_9;
      }
    }

    *error = v17;
    goto LABEL_9;
  }

  v12 = 1;
  if (keyCopy && encryptionKey)
  {
    v18 = keyCopy;
    *encryptionKey = keyCopy;
  }

LABEL_13:

  return v12;
}

- (id)_assetMetadataForRenamedOrHardlinkedFile:(id)file error:(id *)error
{
  fileCopy = file;
  openedFileListDB = [(MBDomainTranscriber *)self openedFileListDB];
  if ([openedFileListDB isTransitioningVolumes] & 1) != 0 || (objc_msgSend(fileCopy, "hasOverriddenModifiedDate"))
  {

LABEL_4:
    v8 = 0;
    goto LABEL_5;
  }

  v10 = [fileCopy size];

  if (!v10)
  {
    goto LABEL_4;
  }

  openedFileListDB2 = [(MBDomainTranscriber *)self openedFileListDB];
  v34 = 0;
  v12 = [openedFileListDB2 fetchAssetMetdataWithInode:objc_msgSend(fileCopy genCount:"inodeNumber") outAssetMetadata:objc_msgSend(fileCopy error:{"genCount"), &v34, error}];
  v13 = v34;

  v8 = 0;
  if (v12 && v13)
  {
    encryptionKey = [v13 encryptionKey];
    v33 = 0;
    v15 = [(MBDomainTranscriber *)self _encryptionKeyForFile:fileCopy existingEncryptionKey:encryptionKey outEncryptionKey:&v33 error:error];
    v16 = v33;

    if (v15)
    {
      encryptionKey2 = [v13 encryptionKey];
      v18 = sub_1001C50E0(encryptionKey2, v16);

      if (v18)
      {
        encryptionKey3 = [v13 encryptionKey];

        if (encryptionKey3)
        {
          v20 = MBGetDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            domain = [fileCopy domain];
            relativePath = [fileCopy relativePath];
            *buf = 138412546;
            v36 = domain;
            v37 = 2112;
            v38 = relativePath;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=transcribing= Reusing encryption key for renamed or hardlinked file %@:%@", buf, 0x16u);

            domain2 = [fileCopy domain];
            [fileCopy relativePath];
            v32 = v31 = domain2;
            _MBLog();
          }
        }

        recordIDSuffix = [v13 recordIDSuffix];
        assetSignature = [v13 assetSignature];
        v8 = +[MBAssetMetadata assetMetadataFromRecordIDSuffix:signature:size:type:compressionMethod:encryptionKey:](MBAssetMetadata, "assetMetadataFromRecordIDSuffix:signature:size:type:compressionMethod:encryptionKey:", recordIDSuffix, assetSignature, [v13 assetSize], objc_msgSend(v13, "assetType"), objc_msgSend(v13, "compressionMethod"), v16);
        goto LABEL_23;
      }

      recordIDSuffix = MBGetDefaultLog();
      if (os_log_type_enabled(recordIDSuffix, OS_LOG_TYPE_DEFAULT))
      {
        domain3 = [fileCopy domain];
        relativePath2 = [fileCopy relativePath];
        *buf = 138412546;
        v36 = domain3;
        v37 = 2112;
        v38 = relativePath2;
        _os_log_impl(&_mh_execute_header, recordIDSuffix, OS_LOG_TYPE_DEFAULT, "=transcribing= Cannot reuse asset for renamed or hardlinked file %@:%@ - encryption key changed", buf, 0x16u);

        assetSignature = [fileCopy domain];
        relativePath3 = [fileCopy relativePath];
        goto LABEL_22;
      }
    }

    else
    {
      recordIDSuffix = MBGetDefaultLog();
      if (os_log_type_enabled(recordIDSuffix, OS_LOG_TYPE_DEFAULT))
      {
        domain4 = [fileCopy domain];
        relativePath4 = [fileCopy relativePath];
        *buf = 138412546;
        v36 = domain4;
        v37 = 2112;
        v38 = relativePath4;
        _os_log_impl(&_mh_execute_header, recordIDSuffix, OS_LOG_TYPE_DEFAULT, "=transcribing= Cannot reuse asset for renamed or hardlinked file %@:%@ - failed to fetch encryption key", buf, 0x16u);

        assetSignature = [fileCopy domain];
        relativePath3 = [fileCopy relativePath];
LABEL_22:
        _MBLog();

        v8 = 0;
LABEL_23:

LABEL_25:
        goto LABEL_26;
      }
    }

    v8 = 0;
    goto LABEL_25;
  }

LABEL_26:

LABEL_5:

  return v8;
}

- (BOOL)_fileListContainsValidFileMetadata:(id)metadata forFile:(id)file metadata:(id)a5 outModificationType:(unint64_t *)type
{
  metadataCopy = metadata;
  fileCopy = file;
  v12 = [MBFileMetadata modificationTypeForMetadata:a5 oldMetadata:metadataCopy];
  *type = v12;
  openedFileListDB = [(MBDomainTranscriber *)self openedFileListDB];
  isTransitioningVolumes = [openedFileListDB isTransitioningVolumes];

  v15 = 0;
  if ((isTransitioningVolumes & 1) == 0 && !v12)
  {
    assetMetadata = [metadataCopy assetMetadata];
    if (![(MBDomainTranscriber *)self shouldRepairEncryptionKeys])
    {
      goto LABEL_23;
    }

    encryptionKey = [assetMetadata encryptionKey];
    if (!encryptionKey)
    {
      goto LABEL_23;
    }

    v18 = encryptionKey;
    device = [(MBDomainTranscriber *)self device];
    keybagManager = [device keybagManager];
    encryptionKey2 = [assetMetadata encryptionKey];
    v22 = [keybagManager hasKeybagForEncryptionKey:encryptionKey2];

    if ((v22 & 1) == 0)
    {
      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        domain = [fileCopy domain];
        relativePath = [fileCopy relativePath];
        encryptionKey3 = [assetMetadata encryptionKey];
        *buf = 138412802;
        v44 = domain;
        v45 = 2112;
        v46 = relativePath;
        v47 = 2048;
        v48 = [encryptionKey3 length];
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=transcribing= Found file requiring encryption key repair %@:%@ (sz: %llu)", buf, 0x20u);

        domain2 = [fileCopy domain];
        relativePath2 = [fileCopy relativePath];
        encryptionKey4 = [assetMetadata encryptionKey];
        [encryptionKey4 length];
        _MBLog();
      }

      summary = [(MBDomainTranscriber *)self summary];
      [summary setEncryptionKeysPendingRepairCount:{objc_msgSend(summary, "encryptionKeysPendingRepairCount") + 1}];
      v15 = 0;
    }

    else
    {
LABEL_23:
      if (![assetMetadata isPendingUpload] || (objc_msgSend(assetMetadata, "encryptionKey"), v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
      {
        v15 = 1;
LABEL_19:

        goto LABEL_20;
      }

      encryptionKey5 = [assetMetadata encryptionKey];
      v41 = 0;
      v42 = 0;
      v25 = [(MBDomainTranscriber *)self _encryptionKeyForFile:fileCopy existingEncryptionKey:encryptionKey5 outEncryptionKey:&v42 error:&v41];
      v26 = v42;
      summary = v41;

      if (v25)
      {
        encryptionKey6 = [assetMetadata encryptionKey];
        v15 = sub_1001C50E0(encryptionKey6, v26);
      }

      else
      {
        encryptionKey6 = MBGetDefaultLog();
        if (os_log_type_enabled(encryptionKey6, OS_LOG_TYPE_DEFAULT))
        {
          domain3 = [fileCopy domain];
          relativePath3 = [fileCopy relativePath];
          *buf = 138412802;
          v44 = domain3;
          v45 = 2112;
          v46 = relativePath3;
          v47 = 2112;
          v48 = summary;
          _os_log_impl(&_mh_execute_header, encryptionKey6, OS_LOG_TYPE_DEFAULT, "=transcribing= Could not determine if encryption key in file list for %@:%@ is still valid: %@", buf, 0x20u);

          domain4 = [fileCopy domain];
          relativePath4 = [fileCopy relativePath];
          _MBLog();
        }

        v15 = 0;
      }
    }

    goto LABEL_19;
  }

LABEL_20:

  return v15;
}

- (BOOL)_fetchPreviouslyBackedUpEncryptionKeyForFile:(id)file oldMetadata:(id)metadata outEncryptionKey:(id *)key error:(id *)error
{
  fileCopy = file;
  metadataCopy = metadata;
  if (!key)
  {
    __assert_rtn("[MBDomainTranscriber _fetchPreviouslyBackedUpEncryptionKeyForFile:oldMetadata:outEncryptionKey:error:]", "MBDomainTranscriber.m", 512, "outEncryptionKey");
  }

  v12 = metadataCopy;
  *key = 0;
  inodeNumber = [fileCopy inodeNumber];
  openedFileListDB = [(MBDomainTranscriber *)self openedFileListDB];
  isTransitioningVolumes = [openedFileListDB isTransitioningVolumes];

  if (isTransitioningVolumes)
  {
    *key = 0;
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      domain = [fileCopy domain];
      name = [domain name];
      relativePath = [fileCopy relativePath];
      *buf = 138412802;
      v28 = name;
      v29 = 2112;
      v30 = relativePath;
      v31 = 2048;
      v32 = inodeNumber;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=transcribing= Not reusing encryption key for file %@:%@ (inode:%llu) during volume transition", buf, 0x20u);

      domain2 = [fileCopy domain];
      name2 = [domain2 name];
      relativePath2 = [fileCopy relativePath];
      _MBLog();
    }
  }

  else
  {
    if (inodeNumber != [v12 inode])
    {
      openedFileListDB2 = [(MBDomainTranscriber *)self openedFileListDB];
      v23 = [openedFileListDB2 fetchEncryptionKeyForInode:inodeNumber outEncryptionKey:key error:error];

      goto LABEL_10;
    }

    assetMetadata = [v12 assetMetadata];
    *key = [assetMetadata encryptionKey];
  }

  v23 = 1;
LABEL_10:

  return v23;
}

- (id)_assetMetadataFromFile:(id)file oldMetadata:(id)metadata modificationType:(unint64_t)type outRequiresInvalidation:(BOOL *)invalidation error:(id *)error
{
  fileCopy = file;
  metadataCopy = metadata;
  if (!invalidation)
  {
    __assert_rtn("[MBDomainTranscriber _assetMetadataFromFile:oldMetadata:modificationType:outRequiresInvalidation:error:]", "MBDomainTranscriber.m", 535, "outRequiresInvalidation");
  }

  v14 = metadataCopy;
  openedFileListDB = [(MBDomainTranscriber *)self openedFileListDB];
  isTransitioningVolumes = [openedFileListDB isTransitioningVolumes];

  if (type & 0x201) == 0 || (isTransitioningVolumes)
  {
    goto LABEL_10;
  }

  v74 = 0;
  v17 = [(MBDomainTranscriber *)self _assetMetadataForRenamedOrHardlinkedFile:fileCopy error:&v74];
  v18 = v74;
  if (!v18)
  {
    if (v17)
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        domain = [fileCopy domain];
        relativePath = [fileCopy relativePath];
        inodeNumber = [fileCopy inodeNumber];
        genCount = [fileCopy genCount];
        *buf = 138413314;
        v76 = v17;
        v77 = 2112;
        v78 = domain;
        v79 = 2112;
        v80 = relativePath;
        v81 = 2048;
        v82 = inodeNumber;
        v83 = 1024;
        LODWORD(typeCopy2) = genCount;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=transcribing= Reusing asset %@ for renamed or hardlinked file %@:%@ (inode:%llu gc:%d)", buf, 0x30u);

        domain2 = [fileCopy domain];
        relativePath2 = [fileCopy relativePath];
        [fileCopy inodeNumber];
        [fileCopy genCount];
        _MBLog();
      }

      summary = [(MBDomainTranscriber *)self summary];
      [summary setReusedAssetRecords:{objc_msgSend(summary, "reusedAssetRecords") + 1}];

      v17 = v17;
      v19 = 0;
      v28 = v17;
      goto LABEL_34;
    }

LABEL_10:
    if (+[MBProtectionClassUtils canOpenWhenLocked:](MBProtectionClassUtils, "canOpenWhenLocked:", [fileCopy protectionClass]))
    {
      v19 = 0;
    }

    else
    {
      v73 = 0;
      v29 = [(MBDomainTranscriber *)self _fetchPreviouslyBackedUpEncryptionKeyForFile:fileCopy oldMetadata:v14 outEncryptionKey:&v73 error:error];
      v19 = v73;
      v28 = 0;
      if (!v29)
      {
        goto LABEL_35;
      }
    }

    v72 = 0;
    v30 = [(MBDomainTranscriber *)self _encryptionKeyForFile:fileCopy existingEncryptionKey:v19 outEncryptionKey:&v72 error:error];
    v17 = v72;
    if (!v30)
    {
      goto LABEL_23;
    }

    assetMetadata = [v14 assetMetadata];
    v32 = assetMetadata;
    if (!assetMetadata)
    {
      goto LABEL_29;
    }

    v70 = assetMetadata;
    encryptionKey = [assetMetadata encryptionKey];
    v34 = fileCopy;
    v35 = v17;
    if (type != 1)
    {
      v66 = v35;
      v68 = v34;
      if (sub_1001C50E0(v35, encryptionKey))
      {
        if (!isTransitioningVolumes)
        {
          hasOverriddenModifiedDate = [v34 hasOverriddenModifiedDate];
          v48 = 2560;
          if (hasOverriddenModifiedDate)
          {
            v48 = 2562;
          }

          v65 = v48 & type;
          *invalidation = hasOverriddenModifiedDate & ((type & 0xFE) >> 1);

          v32 = v70;
          if (!v65)
          {
LABEL_41:
            if (*invalidation)
            {
              __assert_rtn("[MBDomainTranscriber _assetMetadataFromFile:oldMetadata:modificationType:outRequiresInvalidation:error:]", "MBDomainTranscriber.m", 567, "*outRequiresInvalidation == NO");
            }

            v49 = MBGetDefaultLog();
            v50 = os_log_type_enabled(v49, OS_LOG_TYPE_INFO);
            if (isTransitioningVolumes)
            {
              if (v50)
              {
                domain3 = [v34 domain];
                relativePath3 = [v34 relativePath];
                v71 = v49;
                inode = [v14 inode];
                inodeNumber2 = [v34 inodeNumber];
                *buf = 138413570;
                v76 = v32;
                v77 = 2112;
                v78 = domain3;
                v79 = 2112;
                v80 = relativePath3;
                v81 = 2048;
                v82 = inode;
                v83 = 2048;
                typeCopy2 = inodeNumber2;
                v85 = 2048;
                typeCopy = type;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "=transcribing= Reusing asset %@ for %@:%@ across volume transition (old inode: %llu, new inode: %llu) because of metadata-only change 0x%lx", buf, 0x3Eu);

                domain4 = [v34 domain];
                relativePath4 = [v34 relativePath];
                [v14 inode];
                [v34 inodeNumber];
LABEL_48:
                _MBLog();

                v49 = v71;
              }
            }

            else if (v50)
            {
              [v34 domain];
              v55 = v71 = v49;
              relativePath5 = [v34 relativePath];
              inodeNumber3 = [v34 inodeNumber];
              *buf = 138413314;
              v76 = v32;
              v77 = 2112;
              v78 = v55;
              v79 = 2112;
              v80 = relativePath5;
              v81 = 2048;
              v82 = inodeNumber3;
              v83 = 2048;
              typeCopy2 = type;
              _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "=transcribing= Reusing asset %@ for %@:%@ (inode: %llu) because of metadata-only change 0x%lx", buf, 0x34u);

              domain4 = [v34 domain];
              relativePath4 = [v34 relativePath];
              [v34 inodeNumber];
              goto LABEL_48;
            }

            summary2 = [(MBDomainTranscriber *)self summary];
            [summary2 setReusedAssetRecords:{objc_msgSend(summary2, "reusedAssetRecords") + 1}];

            v45 = v32;
LABEL_33:
            v28 = v45;

            goto LABEL_34;
          }

LABEL_29:
          if ([fileCopy size])
          {
            +[MBAssetMetadata assetMetadataForFilePendingUploadWithEncryptionKey:size:](MBAssetMetadata, "assetMetadataForFilePendingUploadWithEncryptionKey:size:", v17, [fileCopy size]);
          }

          else
          {
            [MBAssetMetadata assetMetadataForEmptyFileWithEncryptionKey:v17];
          }
          v45 = ;
          goto LABEL_33;
        }

        inodeNumber4 = [v34 inodeNumber];
        if ((type & 0xCE) == 0 && (inodeNumber4 & 0x8000000000000000) == 0)
        {
          v64 = encryptionKey;
          v37 = MBGetDefaultLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            log = v37;
            domain5 = [v34 domain];
            relativePath6 = [v34 relativePath];
            *buf = 138412546;
            v76 = domain5;
            v77 = 2112;
            v78 = relativePath6;
            v39 = relativePath6;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "=transcribing= Can re-use asset for file %@:%@ across volumeUUID transition", buf, 0x16u);

            domain6 = [v34 domain];
            v37 = log;
            relativePath7 = [v68 relativePath];
            _MBLog();
          }

          *invalidation = 0;
          v34 = v68;

          v32 = v70;
          goto LABEL_41;
        }

        *invalidation = 1;
      }

      else
      {
        v41 = MBGetDefaultLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          domain7 = [v34 domain];
          relativePath8 = [v34 relativePath];
          *buf = 138412546;
          v76 = domain7;
          v77 = 2112;
          v78 = relativePath8;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "=transcribing= File %@:%@ requires asset upload - encryption keys are not equal", buf, 0x16u);

          domain8 = [v34 domain];
          [v34 relativePath];
          v60 = v59 = domain8;
          _MBLog();
        }
      }

      v35 = v66;
    }

    v32 = v70;
    goto LABEL_29;
  }

  v19 = v18;
LABEL_23:
  v28 = 0;
LABEL_34:

LABEL_35:

  return v28;
}

- (BOOL)_collectFileIntoOpenedFileListDB:(id)b error:(id *)error
{
  bCopy = b;
  openedFileListDB = [(MBDomainTranscriber *)self openedFileListDB];
  if (openedFileListDB)
  {
    goto LABEL_2;
  }

  snapshotDatabaseDirectory = [(MBDomainTranscriber *)self snapshotDatabaseDirectory];
  pendingCommitID = [(MBDomainTranscriber *)self pendingCommitID];
  domain = [bCopy domain];
  name = [domain name];
  openedFileListDB = [MBFileListDB openOrCreateDatabaseIn:snapshotDatabaseDirectory commitID:pendingCommitID domainName:name error:error];

  if (openedFileListDB)
  {
    [(MBDomainTranscriber *)self setOpenedFileListDB:openedFileListDB];
    volumeIdentifierForCurrentlyScannedDomain = [(MBDomainTranscriber *)self volumeIdentifierForCurrentlyScannedDomain];
    backupVolumeUUID = [volumeIdentifierForCurrentlyScannedDomain backupVolumeUUID];
    v20 = [openedFileListDB beginTranscriptionForVolumeUUID:backupVolumeUUID error:error];

    if (v20)
    {
      if ([openedFileListDB isTransitioningVolumes])
      {
        summary = [(MBDomainTranscriber *)self summary];
        [summary setDomainsTransitioningVolumes:{objc_msgSend(summary, "domainsTransitioningVolumes") + 1}];
      }

LABEL_2:
      relativePath = [bCopy relativePath];
      v122 = 0;
      v9 = [openedFileListDB fileMetadataForPath:relativePath fetchXattrs:0 error:&v122];
      v10 = v122;

      if (v10)
      {
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v124 = bCopy;
          v125 = 2112;
          v126 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=transcribing= Failed to fetch old metadata for file %@: %@", buf, 0x16u);
          _MBLog();
        }

        if (error)
        {
          v12 = v10;
          v13 = 0;
          *error = v10;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_85;
      }

      v121 = 0;
      v22 = [(MBDomainTranscriber *)self _metadataFromFile:bCopy error:&v121];
      v23 = v121;
      v10 = v23;
      if (!v22)
      {
        if (error)
        {
          v25 = v23;
          *error = v10;
        }

        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v124 = bCopy;
          v125 = 2112;
          v126 = v10;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=transcribing= Failed to create metadata from file %@: %@", buf, 0x16u);
          _MBLog();
        }

        v13 = 0;
        goto LABEL_84;
      }

      v120 = 0;
      if ([(MBDomainTranscriber *)self _fileListContainsValidFileMetadata:v9 forFile:bCopy metadata:v22 outModificationType:&v120])
      {
        relativePath2 = [bCopy relativePath];
        [openedFileListDB markFileAsPresent:relativePath2 error:error];

        [(MBDomainTranscriber *)self _trackUnmodifiedFile:bCopy];
        v13 = 1;
LABEL_84:

LABEL_85:
        goto LABEL_86;
      }

      absolutePath = [bCopy absolutePath];
      if ([bCopy hasXattrs])
      {
        v119 = 0;
        v27 = +[MBExtendedAttributes attributesForPathFSR:error:](MBExtendedAttributes, "attributesForPathFSR:error:", [bCopy absolutePathFSR], &v119);
        v28 = v119;
        if (v28)
        {
          v29 = v28;
          v30 = MBGetDefaultLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v124 = absolutePath;
            v125 = 2112;
            v126 = v29;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=transcribing= Failed to fetch xattrs for %{public}@: %@", buf, 0x16u);
            _MBLog();
          }

          if (error)
          {
            v31 = v29;
            *error = v29;
          }

          v13 = 0;
          goto LABEL_83;
        }

        [v22 setXattrs:v27];
        v32 = MBGetDefaultLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          domain2 = [bCopy domain];
          [bCopy relativePath];
          v34 = v104 = v27;
          xattrs = [v22 xattrs];
          v35 = [xattrs count];
          *buf = 138412802;
          v124 = domain2;
          v125 = 2114;
          v126 = v34;
          v127 = 2048;
          v128 = v35;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=transcribing= Fetched xattrs for %@:%{public}@ count:%llu", buf, 0x20u);

          v27 = v104;
          domain3 = [bCopy domain];
          relativePath3 = [bCopy relativePath];
          [v22 xattrs];
          v37 = v105 = v32;
          v96 = relativePath3;
          v100 = [v37 count];
          v93 = domain3;
          _MBLog();

          v32 = v105;
        }
      }

      v118 = 0;
      if ([bCopy isRegularFile])
      {
        v117 = v10;
        v38 = [(MBDomainTranscriber *)self _assetMetadataFromFile:bCopy oldMetadata:v9 modificationType:v120 outRequiresInvalidation:&v118 error:&v117];
        v39 = v117;

        if (!v38)
        {
          if ([MBError isError:v39 withCode:209])
          {
            protectionClass = [bCopy protectionClass];
            if (protectionClass == 2)
            {
              [(MBDomainTranscriptionSummary *)self->_summary setClassBFilesMissingEncryptionKeys:[(MBDomainTranscriptionSummary *)self->_summary classBFilesMissingEncryptionKeys]+ 1];
            }

            else if (protectionClass == 1)
            {
              [(MBDomainTranscriptionSummary *)self->_summary setClassAFilesMissingEncryptionKeys:[(MBDomainTranscriptionSummary *)self->_summary classAFilesMissingEncryptionKeys]+ 1];
            }

            v86 = MBGetDefaultLog();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              domain4 = [bCopy domain];
              name2 = [domain4 name];
              relativePath4 = [bCopy relativePath];
              *buf = 138412546;
              v124 = name2;
              v125 = 2112;
              v126 = relativePath4;
              _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "=transcribing= Not updating metadata for file %@:%@ with missing encryption key", buf, 0x16u);

              domain5 = [bCopy domain];
              name3 = [domain5 name];
              relativePath5 = [bCopy relativePath];
              _MBLog();
            }

            v13 = 1;
            goto LABEL_82;
          }

          v79 = MBGetDefaultLog();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            domain6 = [bCopy domain];
            name4 = [domain6 name];
            absolutePath2 = [bCopy absolutePath];
            *buf = 138412546;
            v124 = name4;
            v125 = 2112;
            v126 = absolutePath2;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "=transcribing= Failed to fetch asset metadata for %@:%@", buf, 0x16u);

            domain7 = [bCopy domain];
            name5 = [domain7 name];
            absolutePath3 = [bCopy absolutePath];
            _MBLog();
          }

          if (error)
          {
            v85 = v39;
            v13 = 0;
            *error = v39;
            goto LABEL_82;
          }

          goto LABEL_65;
        }

        [v22 setAssetMetadata:v38];

        v10 = v39;
      }

      if ([(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain])
      {
LABEL_37:
        [(MBDomainTranscriber *)self _trackModifiedFile:bCopy];
        if (MBIsInternalInstall())
        {
          assetMetadata = [v22 assetMetadata];
          isPendingUpload = [assetMetadata isPendingUpload];

          v46 = MBGetDefaultLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            domain8 = [bCopy domain];
            name6 = [domain8 name];
            v49 = isPendingUpload;
            v110 = isPendingUpload;
            v50 = name6;
            *buf = 138413314;
            v124 = v22;
            v125 = 2112;
            v126 = name6;
            v127 = 2112;
            v128 = absolutePath;
            v129 = 2048;
            v130 = v120;
            v131 = 1024;
            v132 = v49;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "=transcribing= Updating metadata %@ for file %@:%@ m:0x%lx u:%d", buf, 0x30u);

            domain9 = [bCopy domain];
            name7 = [domain9 name];
            v102 = v120;
            v103 = v110;
            v97 = name7;
            v101 = absolutePath;
            v94 = v22;
            _MBLog();
          }
        }

        if (v118 == 1)
        {
          v111 = v22;
          v53 = MBGetDefaultLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            domain10 = [bCopy domain];
            name8 = [domain10 name];
            *buf = 138412802;
            v124 = name8;
            v125 = 2112;
            v126 = absolutePath;
            v127 = 2048;
            v128 = v120;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "=transcribing= Invalidating upload state in pending snapshot database for %@:%@ m:0x%lx", buf, 0x20u);

            domain11 = [bCopy domain];
            name9 = [domain11 name];
            v97 = absolutePath;
            v101 = v120;
            v94 = name9;
            _MBLog();
          }

          pendingSnapshotDB = [(MBDomainTranscriber *)self pendingSnapshotDB];
          domain12 = [bCopy domain];
          name10 = [domain12 name];
          v115 = v10;
          v61 = [pendingSnapshotDB invalidateUploadedAssetForDomain:name10 inode:objc_msgSend(bCopy error:{"inodeNumber"), &v115}];
          v62 = v115;

          if ((v61 & 1) == 0)
          {
            if (error)
            {
              v39 = v62;
              v71 = v62;
              v13 = 0;
              *error = v62;
            }

            else
            {
              v13 = 0;
              v39 = v62;
            }

            v22 = v111;
            goto LABEL_82;
          }

          v10 = v62;
          v22 = v111;
        }

        relativePath6 = [bCopy relativePath];
        v114 = v10;
        v64 = [openedFileListDB setFileMetadata:v22 forPath:relativePath6 error:&v114];
        v39 = v114;

        if (v64)
        {
          relativePath7 = [bCopy relativePath];
          v113 = v39;
          v66 = [openedFileListDB markFileAsPresent:relativePath7 error:&v113];
          v67 = v113;

          if (v66)
          {
            v13 = 1;
          }

          else
          {
            if (error)
            {
              v77 = v67;
              *error = v67;
            }

            v78 = MBGetDefaultLog();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v124 = bCopy;
              v125 = 2112;
              v126 = v67;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "=transcribing= Failed to mark file %@ as unmodified: %@", buf, 0x16u);
              _MBLog();
            }

            v13 = 0;
          }

          v39 = v67;
          goto LABEL_82;
        }

        if (error)
        {
          v68 = v39;
          *error = v39;
        }

        v69 = MBGetDefaultLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v124 = bCopy;
          v125 = 2112;
          v126 = v39;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "=transcribing= Failed to add file %@ to FileListDB: %@", buf, 0x16u);
          _MBLog();
        }

        goto LABEL_65;
      }

      v109 = v22;
      pendingSnapshotDB2 = [(MBDomainTranscriber *)self pendingSnapshotDB];
      domain13 = [bCopy domain];
      name11 = [domain13 name];
      v116 = v10;
      v106 = [pendingSnapshotDB2 markDomainRequiringFileListCopy:name11 error:&v116];
      v43 = v116;

      if (v106)
      {
        v10 = v43;
        v22 = v109;
        goto LABEL_37;
      }

      v39 = v43;
      if (error)
      {
        v72 = v43;
        *error = v43;
      }

      v73 = MBGetDefaultLog();
      v22 = v109;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        domain14 = [bCopy domain];
        name12 = [domain14 name];
        *buf = 138412546;
        v124 = name12;
        v125 = 2112;
        v126 = v39;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "=transcribing= Failed to mark domain %@ as requiring upload during scanning: %@", buf, 0x16u);

        domain15 = [bCopy domain];
        name13 = [domain15 name];
        _MBLog();
      }

LABEL_65:
      v13 = 0;
LABEL_82:
      v10 = v39;
LABEL_83:

      goto LABEL_84;
    }
  }

  v13 = 0;
LABEL_86:

  return v13;
}

- (BOOL)fileScanner:(id)scanner isFileAddedOrModified:(id)modified
{
  scannerCopy = scanner;
  modifiedCopy = modified;
  compatibilityDelegate = [(MBDomainTranscriber *)self compatibilityDelegate];

  if (compatibilityDelegate)
  {
    compatibilityDelegate2 = [(MBDomainTranscriber *)self compatibilityDelegate];
    v10 = [compatibilityDelegate2 fileScanner:scannerCopy isFileAddedOrModified:modifiedCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end