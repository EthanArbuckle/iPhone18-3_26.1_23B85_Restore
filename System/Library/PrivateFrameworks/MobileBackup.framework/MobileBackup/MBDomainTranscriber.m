@interface MBDomainTranscriber
- (BOOL)_collectFileIntoOpenedFileListDB:(id)a3 error:(id *)a4;
- (BOOL)_encryptionKeyForFile:(id)a3 existingEncryptionKey:(id)a4 outEncryptionKey:(id *)a5 error:(id *)a6;
- (BOOL)_fetchPreviouslyBackedUpEncryptionKeyForFile:(id)a3 oldMetadata:(id)a4 outEncryptionKey:(id *)a5 error:(id *)a6;
- (BOOL)_fileListContainsValidFileMetadata:(id)a3 forFile:(id)a4 metadata:(id)a5 outModificationType:(unint64_t *)a6;
- (BOOL)_scanDomain:(id)a3 error:(id *)a4;
- (BOOL)_scanDomain:(id)a3 snapshotPathForDomain:(id)a4 error:(id *)a5;
- (BOOL)_shouldPackFile:(id)a3;
- (BOOL)fileScanner:(id)a3 isFileAddedOrModified:(id)a4;
- (BOOL)scanDomains:(id)a3 pendingSnapshotDB:(id)a4 progress:(id)a5 summary:(id)a6 error:(id *)a7;
- (MBDomainTranscriber)initWithPendingCommitID:(id)a3 snapshotDatabaseDirectory:(id)a4 scanMode:(unint64_t)a5 enginePolicy:(unint64_t)a6 snapshotFormat:(int64_t)a7 device:(id)a8 volumeMap:(id)a9 shouldRepairEncryptionKeys:(BOOL)a10 snapshotTracker:(id)a11 attemptSummary:(id)a12 compatibilityDelegate:(id)a13 delegate:(id)a14;
- (id)_assetMetadataForRenamedOrHardlinkedFile:(id)a3 error:(id *)a4;
- (id)_assetMetadataFromFile:(id)a3 oldMetadata:(id)a4 modificationType:(unint64_t)a5 outRequiresInvalidation:(BOOL *)a6 error:(id *)a7;
- (id)_metadataFromFile:(id)a3 error:(id *)a4;
- (id)_volumeIdentifierForDomain:(id)a3 error:(id *)a4;
- (id)fileScanner:(id)a3 didFindFile:(id)a4;
- (void)_cancel;
- (void)_trackModifiedFile:(id)a3;
- (void)_trackUnmodifiedFile:(id)a3;
@end

@implementation MBDomainTranscriber

- (MBDomainTranscriber)initWithPendingCommitID:(id)a3 snapshotDatabaseDirectory:(id)a4 scanMode:(unint64_t)a5 enginePolicy:(unint64_t)a6 snapshotFormat:(int64_t)a7 device:(id)a8 volumeMap:(id)a9 shouldRepairEncryptionKeys:(BOOL)a10 snapshotTracker:(id)a11 attemptSummary:(id)a12 compatibilityDelegate:(id)a13 delegate:(id)a14
{
  v18 = a3;
  v33 = a4;
  v19 = a4;
  v35 = a8;
  v38 = a8;
  v20 = a9;
  v37 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  if (!v18)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 103, "pendingCommitID");
  }

  if (!v19)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 104, "snapshotDatabaseDirectory");
  }

  if (!v20)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 105, "volumeMap");
  }

  if (!a5)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 106, "scanMode != MBFileScannerModeUnspecified");
  }

  if (a7 == -1)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 107, "snapshotFormat != MBSnapshotFormatUnspecified");
  }

  if (!v38)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 109, "device");
  }

  v24 = v23;
  v25 = a5;
  v26 = a7;
  v39.receiver = self;
  v39.super_class = MBDomainTranscriber;
  v27 = [(MBDomainTranscriber *)&v39 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_pendingCommitID, a3);
    objc_storeStrong(&v28->_snapshotDatabaseDirectory, v33);
    v28->_snapshotFormat = v26;
    objc_storeStrong(&v28->_mountedSnapshotTracker, a11);
    v29 = [[MBFileScanner alloc] initWithDelegate:v28 mode:v25 enginePolicy:a6 debugContext:0];
    scanner = v28->_scanner;
    v28->_scanner = v29;

    objc_storeStrong(&v28->_device, v35);
    objc_storeStrong(&v28->_volumeMap, a9);
    v28->_shouldRepairEncryptionKeys = a10;
    objc_storeStrong(&v28->_attemptSummary, a12);
    objc_storeStrong(&v28->_compatibilityDelegate, a13);
    objc_storeStrong(&v28->_delegate, a14);
  }

  return v28;
}

- (void)_cancel
{
  v3 = [(MBDomainTranscriber *)self scanner];

  if (v3)
  {
    v4 = [(MBDomainTranscriber *)self scanner];
    [v4 cancel];
  }
}

- (BOOL)scanDomains:(id)a3 pendingSnapshotDB:(id)a4 progress:(id)a5 summary:(id)a6 error:(id *)a7
{
  v34 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(MBDomainTranscriber *)self snapshotDatabaseDirectory];
  v16 = [(MBDomainTranscriber *)self pendingCommitID];
  v17 = [MBMissedEncryptionKeysDB openOrCreateDatabaseIn:v15 commitID:v16 error:a7];

  if (!v17)
  {
    goto LABEL_26;
  }

  [(MBDomainTranscriber *)self setMissedEncryptionKeysDB:v17];
  [(MBDomainTranscriber *)self setPendingSnapshotDB:v12];
  [(MBDomainTranscriber *)self setSummary:v14];
  if (([v12 setUseFullSynchronization:1 error:a7] & 1) == 0 || !objc_msgSend(v17, "removeAllMissedEncryptionKeys:", a7))
  {
    goto LABEL_23;
  }

  [v13 willScanDomains:{objc_msgSend(v34, "count")}];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = v34;
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

        if (![(MBDomainTranscriber *)self _scanDomain:*(*(&v35 + 1) + 8 * i) error:a7])
        {

          goto LABEL_23;
        }

        [v13 finishedScanningDomain];
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
      v24 = [(MBDomainTranscriber *)self scanner];
      v25 = [v24 loggableStats];
      *buf = 138412290;
      v40 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=transcribing= Finished transcribing all domains - %@", buf, 0xCu);
    }

    v26 = [(MBDomainTranscriber *)self scanner];
    v33 = [v26 loggableStats];
    _MBLog();
  }

  v27 = [v17 countMissedEncryptionKeysWithError:a7];
  v28 = v27;
  if (!v27)
  {
    v32 = [(MBDomainTranscriber *)self summary];
    [v32 setSuccess:1];

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
    v33 = v28;
    _MBLog();
  }

  if (a7)
  {
    [MBError errorWithCode:209 format:@"Could not fetch encryption keys for %lu files during transcription", v28];
    *a7 = v30 = 0;
  }

  else
  {
LABEL_23:
    v30 = 0;
  }

LABEL_24:
  if (([v12 setUseFullSynchronization:0 error:{a7, v33}] & 1) == 0 || !objc_msgSend(v17, "close:", a7))
  {
LABEL_26:
    v30 = 0;
  }

  return v30;
}

- (BOOL)_scanDomain:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBDomainTranscriber *)self mountedSnapshotTracker];
  v8 = [v6 volumeMountPoint];
  v9 = [v7 snapshotMountPointForVolumeMountPoint:v8];

  v10 = [(MBDomainTranscriber *)self mountedSnapshotTracker];

  if (v10 && !v9)
  {
    __assert_rtn("[MBDomainTranscriber _scanDomain:error:]", "MBDomainTranscriber.m", 186, "snapshotPathForDomain");
  }

  v11 = [(MBDomainTranscriber *)self _scanDomain:v6 snapshotPathForDomain:v9 error:a4];
  v12 = [(MBDomainTranscriber *)self openedFileListDB];
  v13 = v12;
  if (v12)
  {
    v19 = 0;
    v14 = [v12 close:&v19];
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

- (id)_volumeIdentifierForDomain:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 volumeMountPoint];
  v8 = [(MBDomainTranscriber *)self volumeUUIDsByMountPoint];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9)
  {
    v10 = [v6 volumeMountPoint];
    v9 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:v10 error:a4];

    if (!v9)
    {
      v15 = 0;
      goto LABEL_10;
    }

    v11 = [(MBDomainTranscriber *)self volumeUUIDsByMountPoint];
    [v11 setObject:v9 forKeyedSubscript:v7];
  }

  v12 = [(MBDomainTranscriber *)self volumeMap];
  if (!v12)
  {
    __assert_rtn("[MBDomainTranscriber _volumeIdentifierForDomain:error:]", "MBDomainTranscriber.m", 214, "volumeMap");
  }

  v13 = v12;
  v14 = [v12 volumeIdentifierForVolumeUUID:v9];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else if (a4)
  {
    *a4 = [MBError errorWithCode:4 format:@"Volume identifier not found for uuid:%@ mtpt:%@", v9, v7];
  }

LABEL_10:

  return v15;
}

- (BOOL)_scanDomain:(id)a3 snapshotPathForDomain:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MBDomainTranscriber *)self delegate];
  v11 = [v10 shouldCancelTranscription];

  if (!v11)
  {
    [(MBDomainTranscriber *)self setModifiedFileCountInCurrentlyScannedDomain:0];
    [(MBDomainTranscriber *)self setUnmodifiedFileCountInCurrentlyScannedDomain:0];
    v13 = [(MBDomainTranscriber *)self _volumeIdentifierForDomain:v8 error:a5];
    if (!v13)
    {
      v12 = 0;
LABEL_53:

      goto LABEL_54;
    }

    [(MBDomainTranscriber *)self setVolumeIdentifierForCurrentlyScannedDomain:v13];
    -[MBDomainTranscriber setIsScanningPlaceholderDomain:](self, "setIsScanningPlaceholderDomain:", [v8 isPlaceholderDomain]);
    if (self->_snapshotFormat == 3 && [v8 isLegacyPerAppPlaceholderDomain])
    {
      __assert_rtn("[MBDomainTranscriber _scanDomain:snapshotPathForDomain:error:]", "MBDomainTranscriber.m", 241, "_snapshotFormat != MBSnapshotFormatDomainsAssets || !domain.isLegacyPerAppPlaceholderDomain");
    }

    v14 = [(MBDomainTranscriber *)self scanner];
    v15 = [v14 scanDomain:v8 snapshotMountPoint:v9];

    snapshotFormat = self->_snapshotFormat;
    if (!MBSnapshotFormatContainsFileLists())
    {
      v12 = 1;
LABEL_52:

      goto LABEL_53;
    }

    v17 = [(MBDomainTranscriber *)self openedFileListDB];
    v18 = v17;
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

    if (!v17)
    {
      if ([(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain])
      {
        __assert_rtn("[MBDomainTranscriber _scanDomain:snapshotPathForDomain:error:]", "MBDomainTranscriber.m", 258, "self.modifiedFileCountInCurrentlyScannedDomain == 0");
      }

      if ([(MBDomainTranscriber *)self unmodifiedFileCountInCurrentlyScannedDomain])
      {
        __assert_rtn("[MBDomainTranscriber _scanDomain:snapshotPathForDomain:error:]", "MBDomainTranscriber.m", 259, "self.unmodifiedFileCountInCurrentlyScannedDomain == 0");
      }

      v23 = [(MBDomainTranscriber *)self summary];
      [v23 setEmptyDomainCount:{objc_msgSend(v23, "emptyDomainCount") + 1}];

      v24 = [(MBDomainTranscriber *)self snapshotDatabaseDirectory];
      v25 = [(MBDomainTranscriber *)self pendingCommitID];
      v26 = [v8 name];
      v27 = MBFileListDBPath(v24, v25, v26);

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
        v61 = v8;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=transcribing= Found domain that went from populated to empty %{public}@", buf, 0xCu);
        v52 = v8;
        _MBLog();
      }

      v31 = [(MBDomainTranscriber *)self snapshotDatabaseDirectory];
      v32 = [(MBDomainTranscriber *)self pendingCommitID];
      v33 = [v8 name];
      v18 = [MBFileListDB openOrCreateDatabaseIn:v31 commitID:v32 domainName:v33 error:a5];

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
      v34 = [(MBDomainTranscriber *)self volumeIdentifierForCurrentlyScannedDomain];
      v35 = [v34 backupVolumeUUID];
      v36 = [v18 beginTranscriptionForVolumeUUID:v35 error:a5];

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

      if (a5)
      {
        v22 = v15;
        v12 = 0;
        *a5 = v15;
LABEL_51:

        goto LABEL_52;
      }

LABEL_29:
      v12 = 0;
      goto LABEL_51;
    }

    v37 = [(MBDomainTranscriber *)self summary];
    [v37 setDeletedFileCount:{objc_msgSend(v37, "deletedFileCount") + v20}];

    v38 = [(MBDomainTranscriber *)self pendingSnapshotDB];
    if (!v38)
    {
      __assert_rtn("[MBDomainTranscriber _scanDomain:snapshotPathForDomain:error:]", "MBDomainTranscriber.m", 288, "pendingSnapshotDB");
    }

    v39 = v38;
    if (v20)
    {
      v40 = [v8 name];
      v56 = v39;
      v58 = 0;
      v41 = [v39 markDomainRequiringFileListCopy:v40 error:&v58];
      v15 = v58;

      if ((v41 & 1) == 0)
      {
        if (a5)
        {
          v49 = v15;
          *a5 = v15;
        }

        v48 = MBGetDefaultLog();
        v39 = v56;
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v12 = 0;
          goto LABEL_49;
        }

        v50 = [v8 name];
        *buf = 138412546;
        v61 = v50;
        v62 = 2112;
        v63 = v15;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "=transcribing= Failed to mark domain %@ as requiring upload after scanning: %@", buf, 0x16u);

        v47 = [v8 name];
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

    if ([v18 finishTranscription:a5])
    {
      if ([(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain]| v20)
      {
        v57 = v39;
        v42 = [(MBDomainTranscriber *)self attemptSummary];
        v43 = [v8 name];
        [v42 trackModifiedDomainInTranscription:v43];

        v44 = MBGetDefaultLog();
        v12 = 1;
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v39 = v57;
          v48 = v44;
          goto LABEL_49;
        }

        v53 = [v8 name];
        v54 = v44;
        v45 = [(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain];
        v46 = [(MBDomainTranscriber *)self unmodifiedFileCountInCurrentlyScannedDomain];
        *buf = 138544130;
        v61 = v53;
        v62 = 2048;
        v63 = v45;
        v64 = 2048;
        v65 = v46;
        v66 = 2048;
        v67 = v20;
        v12 = 1;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "=transcribing= Changes found for %{public}@ modifications:%llu unmodified:%llu deletions:%llu", buf, 0x2Au);

        v47 = [v8 name];
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
  if (a5)
  {
    [objc_opt_class() _cancellationError];
    *a5 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_54:

  return v12;
}

- (BOOL)_shouldPackFile:(id)a3
{
  v4 = a3;
  v5 = [(MBDomainTranscriber *)self snapshotFormat];
  if (v5 > 1)
  {
    if (v5 == 2 || v5 == 3)
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_10:
    __assert_rtn("[MBDomainTranscriber _shouldPackFile:]", "MBDomainTranscriber.m", 324, "0");
  }

  if (!v5)
  {
    v6 = 0;
    goto LABEL_9;
  }

  if (v5 != 1)
  {
    goto LABEL_10;
  }

  v6 = [v4 isDirectory];
LABEL_9:

  return v6;
}

- (id)fileScanner:(id)a3 didFindFile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MBDomainTranscriber *)self delegate];
  v9 = [v8 shouldCancelTranscription];

  if (v9)
  {
    [(MBDomainTranscriber *)self _cancel];
    v10 = [objc_opt_class() _cancellationError];
  }

  else if ([v7 isTopLevelDirectoryToExcludeFromiCloud])
  {
    v10 = 0;
  }

  else
  {
    if (![(MBDomainTranscriber *)self _shouldPackFile:v7]|| (v15 = 0, [(MBDomainTranscriber *)self _collectFileIntoOpenedFileListDB:v7 error:&v15], (v11 = v15) == 0))
    {
      v11 = [(MBDomainTranscriber *)self compatibilityDelegate];
      if (v11)
      {
        v12 = [(MBDomainTranscriber *)self isScanningPlaceholderDomain];

        if (v12)
        {
          v11 = 0;
        }

        else
        {
          v13 = [(MBDomainTranscriber *)self compatibilityDelegate];
          v11 = [v13 fileScanner:v6 didFindFile:v7];
        }
      }
    }

    v10 = v11;
  }

  return v10;
}

- (id)_metadataFromFile:(id)a3 error:(id *)a4
{
  v5 = a3;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  [v5 getNode:v15];
  v6 = [MBFileMetadata fileMetadataExcludingXattrsAndAssetFromNode:v15 error:a4];
  if (v6)
  {
    if (![v5 isSymbolicLink])
    {
LABEL_5:
      v9 = v6;
      goto LABEL_10;
    }

    v14 = 0;
    v7 = +[MBFileOperation symbolicLinkTargetWithPathFSR:error:](MBFileOperation, "symbolicLinkTargetWithPathFSR:error:", [v5 absolutePathFSR], &v14);
    v8 = v14;
    if (v7)
    {
      [v6 setLinkTarget:v7];

      goto LABEL_5;
    }

    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v5 absolutePath];
      *buf = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=transcribing= Failed to get link target for file %@: %@", buf, 0x16u);

      v13 = [v5 absolutePath];
      _MBLog();
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (void)_trackModifiedFile:(id)a3
{
  v6 = a3;
  [(MBDomainTranscriber *)self setModifiedFileCountInCurrentlyScannedDomain:[(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain]+ 1];
  v4 = [v6 mode] & 0xF000;
  switch(v4)
  {
    case 0x4000:
      v5 = [(MBDomainTranscriber *)self summary];
      [v5 setModifiedDirectories:{objc_msgSend(v5, "modifiedDirectories") + 1}];
      break;
    case 0xA000:
      v5 = [(MBDomainTranscriber *)self summary];
      [v5 setModifiedSymlinks:{objc_msgSend(v5, "modifiedSymlinks") + 1}];
      break;
    case 0x8000:
      v5 = [(MBDomainTranscriber *)self summary];
      [v5 setModifiedRegularFiles:{objc_msgSend(v5, "modifiedRegularFiles") + 1}];
      break;
    default:
      __assert_rtn("[MBDomainTranscriber _trackModifiedFile:]", "MBDomainTranscriber.m", 388, "0");
  }
}

- (void)_trackUnmodifiedFile:(id)a3
{
  v6 = a3;
  [(MBDomainTranscriber *)self setUnmodifiedFileCountInCurrentlyScannedDomain:[(MBDomainTranscriber *)self unmodifiedFileCountInCurrentlyScannedDomain]+ 1];
  v4 = [v6 mode] & 0xF000;
  switch(v4)
  {
    case 0x4000:
      v5 = [(MBDomainTranscriber *)self summary];
      [v5 setUnmodifiedDirectories:{objc_msgSend(v5, "unmodifiedDirectories") + 1}];
      break;
    case 0xA000:
      v5 = [(MBDomainTranscriber *)self summary];
      [v5 setUnmodifiedSymlinks:{objc_msgSend(v5, "unmodifiedSymlinks") + 1}];
      break;
    case 0x8000:
      v5 = [(MBDomainTranscriber *)self summary];
      [v5 setUnmodifiedRegularFiles:{objc_msgSend(v5, "unmodifiedRegularFiles") + 1}];
      break;
    default:
      __assert_rtn("[MBDomainTranscriber _trackUnmodifiedFile:]", "MBDomainTranscriber.m", 405, "0");
  }
}

- (BOOL)_encryptionKeyForFile:(id)a3 existingEncryptionKey:(id)a4 outEncryptionKey:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  if (+[MBProtectionClassUtils canOpenWhenLocked:](MBProtectionClassUtils, "canOpenWhenLocked:", [v10 protectionClass]))
  {
    v12 = 1;
    goto LABEL_13;
  }

  if ([v10 size])
  {
    v21 = 0;
    v13 = [(MBDomainTranscriber *)self missedEncryptionKeysDB];
    v14 = [(MBDomainTranscriber *)self device];
    v20 = 0;
    v15 = MBFetchEncryptionKeyForFile(v10, v11, v13, v14, &v21, &v20);
    v16 = v20;

    v12 = v15 != 0;
    if (v15)
    {
      v17 = v15;
      a6 = a5;
      if (!a5)
      {
LABEL_9:

        goto LABEL_13;
      }
    }

    else
    {
      v17 = v16;
      if (!a6)
      {
        goto LABEL_9;
      }
    }

    *a6 = v17;
    goto LABEL_9;
  }

  v12 = 1;
  if (v11 && a5)
  {
    v18 = v11;
    *a5 = v11;
  }

LABEL_13:

  return v12;
}

- (id)_assetMetadataForRenamedOrHardlinkedFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBDomainTranscriber *)self openedFileListDB];
  if ([v7 isTransitioningVolumes] & 1) != 0 || (objc_msgSend(v6, "hasOverriddenModifiedDate"))
  {

LABEL_4:
    v8 = 0;
    goto LABEL_5;
  }

  v10 = [v6 size];

  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = [(MBDomainTranscriber *)self openedFileListDB];
  v34 = 0;
  v12 = [v11 fetchAssetMetdataWithInode:objc_msgSend(v6 genCount:"inodeNumber") outAssetMetadata:objc_msgSend(v6 error:{"genCount"), &v34, a4}];
  v13 = v34;

  v8 = 0;
  if (v12 && v13)
  {
    v14 = [v13 encryptionKey];
    v33 = 0;
    v15 = [(MBDomainTranscriber *)self _encryptionKeyForFile:v6 existingEncryptionKey:v14 outEncryptionKey:&v33 error:a4];
    v16 = v33;

    if (v15)
    {
      v17 = [v13 encryptionKey];
      v18 = sub_1001C50E0(v17, v16);

      if (v18)
      {
        v19 = [v13 encryptionKey];

        if (v19)
        {
          v20 = MBGetDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [v6 domain];
            v22 = [v6 relativePath];
            *buf = 138412546;
            v36 = v21;
            v37 = 2112;
            v38 = v22;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=transcribing= Reusing encryption key for renamed or hardlinked file %@:%@", buf, 0x16u);

            v23 = [v6 domain];
            [v6 relativePath];
            v32 = v31 = v23;
            _MBLog();
          }
        }

        v24 = [v13 recordIDSuffix];
        v25 = [v13 assetSignature];
        v8 = +[MBAssetMetadata assetMetadataFromRecordIDSuffix:signature:size:type:compressionMethod:encryptionKey:](MBAssetMetadata, "assetMetadataFromRecordIDSuffix:signature:size:type:compressionMethod:encryptionKey:", v24, v25, [v13 assetSize], objc_msgSend(v13, "assetType"), objc_msgSend(v13, "compressionMethod"), v16);
        goto LABEL_23;
      }

      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v6 domain];
        v30 = [v6 relativePath];
        *buf = 138412546;
        v36 = v29;
        v37 = 2112;
        v38 = v30;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=transcribing= Cannot reuse asset for renamed or hardlinked file %@:%@ - encryption key changed", buf, 0x16u);

        v25 = [v6 domain];
        v28 = [v6 relativePath];
        goto LABEL_22;
      }
    }

    else
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v6 domain];
        v27 = [v6 relativePath];
        *buf = 138412546;
        v36 = v26;
        v37 = 2112;
        v38 = v27;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=transcribing= Cannot reuse asset for renamed or hardlinked file %@:%@ - failed to fetch encryption key", buf, 0x16u);

        v25 = [v6 domain];
        v28 = [v6 relativePath];
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

- (BOOL)_fileListContainsValidFileMetadata:(id)a3 forFile:(id)a4 metadata:(id)a5 outModificationType:(unint64_t *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [MBFileMetadata modificationTypeForMetadata:a5 oldMetadata:v10];
  *a6 = v12;
  v13 = [(MBDomainTranscriber *)self openedFileListDB];
  v14 = [v13 isTransitioningVolumes];

  v15 = 0;
  if ((v14 & 1) == 0 && !v12)
  {
    v16 = [v10 assetMetadata];
    if (![(MBDomainTranscriber *)self shouldRepairEncryptionKeys])
    {
      goto LABEL_23;
    }

    v17 = [v16 encryptionKey];
    if (!v17)
    {
      goto LABEL_23;
    }

    v18 = v17;
    v19 = [(MBDomainTranscriber *)self device];
    v20 = [v19 keybagManager];
    v21 = [v16 encryptionKey];
    v22 = [v20 hasKeybagForEncryptionKey:v21];

    if ((v22 & 1) == 0)
    {
      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v11 domain];
        v31 = [v11 relativePath];
        v32 = [v16 encryptionKey];
        *buf = 138412802;
        v44 = v30;
        v45 = 2112;
        v46 = v31;
        v47 = 2048;
        v48 = [v32 length];
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=transcribing= Found file requiring encryption key repair %@:%@ (sz: %llu)", buf, 0x20u);

        v33 = [v11 domain];
        v34 = [v11 relativePath];
        v35 = [v16 encryptionKey];
        [v35 length];
        _MBLog();
      }

      v27 = [(MBDomainTranscriber *)self summary];
      [v27 setEncryptionKeysPendingRepairCount:{objc_msgSend(v27, "encryptionKeysPendingRepairCount") + 1}];
      v15 = 0;
    }

    else
    {
LABEL_23:
      if (![v16 isPendingUpload] || (objc_msgSend(v16, "encryptionKey"), v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
      {
        v15 = 1;
LABEL_19:

        goto LABEL_20;
      }

      v24 = [v16 encryptionKey];
      v41 = 0;
      v42 = 0;
      v25 = [(MBDomainTranscriber *)self _encryptionKeyForFile:v11 existingEncryptionKey:v24 outEncryptionKey:&v42 error:&v41];
      v26 = v42;
      v27 = v41;

      if (v25)
      {
        v28 = [v16 encryptionKey];
        v15 = sub_1001C50E0(v28, v26);
      }

      else
      {
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [v11 domain];
          v37 = [v11 relativePath];
          *buf = 138412802;
          v44 = v36;
          v45 = 2112;
          v46 = v37;
          v47 = 2112;
          v48 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=transcribing= Could not determine if encryption key in file list for %@:%@ is still valid: %@", buf, 0x20u);

          v38 = [v11 domain];
          v40 = [v11 relativePath];
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

- (BOOL)_fetchPreviouslyBackedUpEncryptionKeyForFile:(id)a3 oldMetadata:(id)a4 outEncryptionKey:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (!a5)
  {
    __assert_rtn("[MBDomainTranscriber _fetchPreviouslyBackedUpEncryptionKeyForFile:oldMetadata:outEncryptionKey:error:]", "MBDomainTranscriber.m", 512, "outEncryptionKey");
  }

  v12 = v11;
  *a5 = 0;
  v13 = [v10 inodeNumber];
  v14 = [(MBDomainTranscriber *)self openedFileListDB];
  v15 = [v14 isTransitioningVolumes];

  if (v15)
  {
    *a5 = 0;
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v10 domain];
      v18 = [v17 name];
      v19 = [v10 relativePath];
      *buf = 138412802;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      v31 = 2048;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=transcribing= Not reusing encryption key for file %@:%@ (inode:%llu) during volume transition", buf, 0x20u);

      v20 = [v10 domain];
      v21 = [v20 name];
      v26 = [v10 relativePath];
      _MBLog();
    }
  }

  else
  {
    if (v13 != [v12 inode])
    {
      v24 = [(MBDomainTranscriber *)self openedFileListDB];
      v23 = [v24 fetchEncryptionKeyForInode:v13 outEncryptionKey:a5 error:a6];

      goto LABEL_10;
    }

    v22 = [v12 assetMetadata];
    *a5 = [v22 encryptionKey];
  }

  v23 = 1;
LABEL_10:

  return v23;
}

- (id)_assetMetadataFromFile:(id)a3 oldMetadata:(id)a4 modificationType:(unint64_t)a5 outRequiresInvalidation:(BOOL *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  if (!a6)
  {
    __assert_rtn("[MBDomainTranscriber _assetMetadataFromFile:oldMetadata:modificationType:outRequiresInvalidation:error:]", "MBDomainTranscriber.m", 535, "outRequiresInvalidation");
  }

  v14 = v13;
  v15 = [(MBDomainTranscriber *)self openedFileListDB];
  v16 = [v15 isTransitioningVolumes];

  if (a5 & 0x201) == 0 || (v16)
  {
    goto LABEL_10;
  }

  v74 = 0;
  v17 = [(MBDomainTranscriber *)self _assetMetadataForRenamedOrHardlinkedFile:v12 error:&v74];
  v18 = v74;
  if (!v18)
  {
    if (v17)
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v12 domain];
        v22 = [v12 relativePath];
        v23 = [v12 inodeNumber];
        v24 = [v12 genCount];
        *buf = 138413314;
        v76 = v17;
        v77 = 2112;
        v78 = v21;
        v79 = 2112;
        v80 = v22;
        v81 = 2048;
        v82 = v23;
        v83 = 1024;
        LODWORD(v84) = v24;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=transcribing= Reusing asset %@ for renamed or hardlinked file %@:%@ (inode:%llu gc:%d)", buf, 0x30u);

        v25 = [v12 domain];
        v26 = [v12 relativePath];
        [v12 inodeNumber];
        [v12 genCount];
        _MBLog();
      }

      v27 = [(MBDomainTranscriber *)self summary];
      [v27 setReusedAssetRecords:{objc_msgSend(v27, "reusedAssetRecords") + 1}];

      v17 = v17;
      v19 = 0;
      v28 = v17;
      goto LABEL_34;
    }

LABEL_10:
    if (+[MBProtectionClassUtils canOpenWhenLocked:](MBProtectionClassUtils, "canOpenWhenLocked:", [v12 protectionClass]))
    {
      v19 = 0;
    }

    else
    {
      v73 = 0;
      v29 = [(MBDomainTranscriber *)self _fetchPreviouslyBackedUpEncryptionKeyForFile:v12 oldMetadata:v14 outEncryptionKey:&v73 error:a7];
      v19 = v73;
      v28 = 0;
      if (!v29)
      {
        goto LABEL_35;
      }
    }

    v72 = 0;
    v30 = [(MBDomainTranscriber *)self _encryptionKeyForFile:v12 existingEncryptionKey:v19 outEncryptionKey:&v72 error:a7];
    v17 = v72;
    if (!v30)
    {
      goto LABEL_23;
    }

    v31 = [v14 assetMetadata];
    v32 = v31;
    if (!v31)
    {
      goto LABEL_29;
    }

    v70 = v31;
    v33 = [v31 encryptionKey];
    v34 = v12;
    v35 = v17;
    if (a5 != 1)
    {
      v66 = v35;
      v68 = v34;
      if (sub_1001C50E0(v35, v33))
      {
        if (!v16)
        {
          v47 = [v34 hasOverriddenModifiedDate];
          v48 = 2560;
          if (v47)
          {
            v48 = 2562;
          }

          v65 = v48 & a5;
          *a6 = v47 & ((a5 & 0xFE) >> 1);

          v32 = v70;
          if (!v65)
          {
LABEL_41:
            if (*a6)
            {
              __assert_rtn("[MBDomainTranscriber _assetMetadataFromFile:oldMetadata:modificationType:outRequiresInvalidation:error:]", "MBDomainTranscriber.m", 567, "*outRequiresInvalidation == NO");
            }

            v49 = MBGetDefaultLog();
            v50 = os_log_type_enabled(v49, OS_LOG_TYPE_INFO);
            if (v16)
            {
              if (v50)
              {
                v51 = [v34 domain];
                v69 = [v34 relativePath];
                v71 = v49;
                v67 = [v14 inode];
                v52 = [v34 inodeNumber];
                *buf = 138413570;
                v76 = v32;
                v77 = 2112;
                v78 = v51;
                v79 = 2112;
                v80 = v69;
                v81 = 2048;
                v82 = v67;
                v83 = 2048;
                v84 = v52;
                v85 = 2048;
                v86 = a5;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "=transcribing= Reusing asset %@ for %@:%@ across volume transition (old inode: %llu, new inode: %llu) because of metadata-only change 0x%lx", buf, 0x3Eu);

                v53 = [v34 domain];
                v54 = [v34 relativePath];
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
              v56 = [v34 relativePath];
              v57 = [v34 inodeNumber];
              *buf = 138413314;
              v76 = v32;
              v77 = 2112;
              v78 = v55;
              v79 = 2112;
              v80 = v56;
              v81 = 2048;
              v82 = v57;
              v83 = 2048;
              v84 = a5;
              _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "=transcribing= Reusing asset %@ for %@:%@ (inode: %llu) because of metadata-only change 0x%lx", buf, 0x34u);

              v53 = [v34 domain];
              v54 = [v34 relativePath];
              [v34 inodeNumber];
              goto LABEL_48;
            }

            v58 = [(MBDomainTranscriber *)self summary];
            [v58 setReusedAssetRecords:{objc_msgSend(v58, "reusedAssetRecords") + 1}];

            v45 = v32;
LABEL_33:
            v28 = v45;

            goto LABEL_34;
          }

LABEL_29:
          if ([v12 size])
          {
            +[MBAssetMetadata assetMetadataForFilePendingUploadWithEncryptionKey:size:](MBAssetMetadata, "assetMetadataForFilePendingUploadWithEncryptionKey:size:", v17, [v12 size]);
          }

          else
          {
            [MBAssetMetadata assetMetadataForEmptyFileWithEncryptionKey:v17];
          }
          v45 = ;
          goto LABEL_33;
        }

        v36 = [v34 inodeNumber];
        if ((a5 & 0xCE) == 0 && (v36 & 0x8000000000000000) == 0)
        {
          v64 = v33;
          v37 = MBGetDefaultLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            log = v37;
            v62 = [v34 domain];
            v38 = [v34 relativePath];
            *buf = 138412546;
            v76 = v62;
            v77 = 2112;
            v78 = v38;
            v39 = v38;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "=transcribing= Can re-use asset for file %@:%@ across volumeUUID transition", buf, 0x16u);

            v40 = [v34 domain];
            v37 = log;
            v61 = [v68 relativePath];
            _MBLog();
          }

          *a6 = 0;
          v34 = v68;

          v32 = v70;
          goto LABEL_41;
        }

        *a6 = 1;
      }

      else
      {
        v41 = MBGetDefaultLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = [v34 domain];
          v43 = [v34 relativePath];
          *buf = 138412546;
          v76 = v42;
          v77 = 2112;
          v78 = v43;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "=transcribing= File %@:%@ requires asset upload - encryption keys are not equal", buf, 0x16u);

          v44 = [v34 domain];
          [v34 relativePath];
          v60 = v59 = v44;
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

- (BOOL)_collectFileIntoOpenedFileListDB:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBDomainTranscriber *)self openedFileListDB];
  if (v7)
  {
    goto LABEL_2;
  }

  v14 = [(MBDomainTranscriber *)self snapshotDatabaseDirectory];
  v15 = [(MBDomainTranscriber *)self pendingCommitID];
  v16 = [v6 domain];
  v17 = [v16 name];
  v7 = [MBFileListDB openOrCreateDatabaseIn:v14 commitID:v15 domainName:v17 error:a4];

  if (v7)
  {
    [(MBDomainTranscriber *)self setOpenedFileListDB:v7];
    v18 = [(MBDomainTranscriber *)self volumeIdentifierForCurrentlyScannedDomain];
    v19 = [v18 backupVolumeUUID];
    v20 = [v7 beginTranscriptionForVolumeUUID:v19 error:a4];

    if (v20)
    {
      if ([v7 isTransitioningVolumes])
      {
        v21 = [(MBDomainTranscriber *)self summary];
        [v21 setDomainsTransitioningVolumes:{objc_msgSend(v21, "domainsTransitioningVolumes") + 1}];
      }

LABEL_2:
      v8 = [v6 relativePath];
      v122 = 0;
      v9 = [v7 fileMetadataForPath:v8 fetchXattrs:0 error:&v122];
      v10 = v122;

      if (v10)
      {
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v124 = v6;
          v125 = 2112;
          v126 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=transcribing= Failed to fetch old metadata for file %@: %@", buf, 0x16u);
          _MBLog();
        }

        if (a4)
        {
          v12 = v10;
          v13 = 0;
          *a4 = v10;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_85;
      }

      v121 = 0;
      v22 = [(MBDomainTranscriber *)self _metadataFromFile:v6 error:&v121];
      v23 = v121;
      v10 = v23;
      if (!v22)
      {
        if (a4)
        {
          v25 = v23;
          *a4 = v10;
        }

        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v124 = v6;
          v125 = 2112;
          v126 = v10;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=transcribing= Failed to create metadata from file %@: %@", buf, 0x16u);
          _MBLog();
        }

        v13 = 0;
        goto LABEL_84;
      }

      v120 = 0;
      if ([(MBDomainTranscriber *)self _fileListContainsValidFileMetadata:v9 forFile:v6 metadata:v22 outModificationType:&v120])
      {
        v24 = [v6 relativePath];
        [v7 markFileAsPresent:v24 error:a4];

        [(MBDomainTranscriber *)self _trackUnmodifiedFile:v6];
        v13 = 1;
LABEL_84:

LABEL_85:
        goto LABEL_86;
      }

      v112 = [v6 absolutePath];
      if ([v6 hasXattrs])
      {
        v119 = 0;
        v27 = +[MBExtendedAttributes attributesForPathFSR:error:](MBExtendedAttributes, "attributesForPathFSR:error:", [v6 absolutePathFSR], &v119);
        v28 = v119;
        if (v28)
        {
          v29 = v28;
          v30 = MBGetDefaultLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v124 = v112;
            v125 = 2112;
            v126 = v29;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=transcribing= Failed to fetch xattrs for %{public}@: %@", buf, 0x16u);
            _MBLog();
          }

          if (a4)
          {
            v31 = v29;
            *a4 = v29;
          }

          v13 = 0;
          goto LABEL_83;
        }

        [v22 setXattrs:v27];
        v32 = MBGetDefaultLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [v6 domain];
          [v6 relativePath];
          v34 = v104 = v27;
          v107 = [v22 xattrs];
          v35 = [v107 count];
          *buf = 138412802;
          v124 = v33;
          v125 = 2114;
          v126 = v34;
          v127 = 2048;
          v128 = v35;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=transcribing= Fetched xattrs for %@:%{public}@ count:%llu", buf, 0x20u);

          v27 = v104;
          v108 = [v6 domain];
          v36 = [v6 relativePath];
          [v22 xattrs];
          v37 = v105 = v32;
          v96 = v36;
          v100 = [v37 count];
          v93 = v108;
          _MBLog();

          v32 = v105;
        }
      }

      v118 = 0;
      if ([v6 isRegularFile])
      {
        v117 = v10;
        v38 = [(MBDomainTranscriber *)self _assetMetadataFromFile:v6 oldMetadata:v9 modificationType:v120 outRequiresInvalidation:&v118 error:&v117];
        v39 = v117;

        if (!v38)
        {
          if ([MBError isError:v39 withCode:209])
          {
            v70 = [v6 protectionClass];
            if (v70 == 2)
            {
              [(MBDomainTranscriptionSummary *)self->_summary setClassBFilesMissingEncryptionKeys:[(MBDomainTranscriptionSummary *)self->_summary classBFilesMissingEncryptionKeys]+ 1];
            }

            else if (v70 == 1)
            {
              [(MBDomainTranscriptionSummary *)self->_summary setClassAFilesMissingEncryptionKeys:[(MBDomainTranscriptionSummary *)self->_summary classAFilesMissingEncryptionKeys]+ 1];
            }

            v86 = MBGetDefaultLog();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              v87 = [v6 domain];
              v88 = [v87 name];
              v89 = [v6 relativePath];
              *buf = 138412546;
              v124 = v88;
              v125 = 2112;
              v126 = v89;
              _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "=transcribing= Not updating metadata for file %@:%@ with missing encryption key", buf, 0x16u);

              v90 = [v6 domain];
              v91 = [v90 name];
              v99 = [v6 relativePath];
              _MBLog();
            }

            v13 = 1;
            goto LABEL_82;
          }

          v79 = MBGetDefaultLog();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            v80 = [v6 domain];
            v81 = [v80 name];
            v82 = [v6 absolutePath];
            *buf = 138412546;
            v124 = v81;
            v125 = 2112;
            v126 = v82;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "=transcribing= Failed to fetch asset metadata for %@:%@", buf, 0x16u);

            v83 = [v6 domain];
            v84 = [v83 name];
            v98 = [v6 absolutePath];
            _MBLog();
          }

          if (a4)
          {
            v85 = v39;
            v13 = 0;
            *a4 = v39;
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
        [(MBDomainTranscriber *)self _trackModifiedFile:v6];
        if (MBIsInternalInstall())
        {
          v44 = [v22 assetMetadata];
          v45 = [v44 isPendingUpload];

          v46 = MBGetDefaultLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = [v6 domain];
            v48 = [v47 name];
            v49 = v45;
            v110 = v45;
            v50 = v48;
            *buf = 138413314;
            v124 = v22;
            v125 = 2112;
            v126 = v48;
            v127 = 2112;
            v128 = v112;
            v129 = 2048;
            v130 = v120;
            v131 = 1024;
            v132 = v49;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "=transcribing= Updating metadata %@ for file %@:%@ m:0x%lx u:%d", buf, 0x30u);

            v51 = [v6 domain];
            v52 = [v51 name];
            v102 = v120;
            v103 = v110;
            v97 = v52;
            v101 = v112;
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
            v54 = [v6 domain];
            v55 = [v54 name];
            *buf = 138412802;
            v124 = v55;
            v125 = 2112;
            v126 = v112;
            v127 = 2048;
            v128 = v120;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "=transcribing= Invalidating upload state in pending snapshot database for %@:%@ m:0x%lx", buf, 0x20u);

            v56 = [v6 domain];
            v57 = [v56 name];
            v97 = v112;
            v101 = v120;
            v94 = v57;
            _MBLog();
          }

          v58 = [(MBDomainTranscriber *)self pendingSnapshotDB];
          v59 = [v6 domain];
          v60 = [v59 name];
          v115 = v10;
          v61 = [v58 invalidateUploadedAssetForDomain:v60 inode:objc_msgSend(v6 error:{"inodeNumber"), &v115}];
          v62 = v115;

          if ((v61 & 1) == 0)
          {
            if (a4)
            {
              v39 = v62;
              v71 = v62;
              v13 = 0;
              *a4 = v62;
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

        v63 = [v6 relativePath];
        v114 = v10;
        v64 = [v7 setFileMetadata:v22 forPath:v63 error:&v114];
        v39 = v114;

        if (v64)
        {
          v65 = [v6 relativePath];
          v113 = v39;
          v66 = [v7 markFileAsPresent:v65 error:&v113];
          v67 = v113;

          if (v66)
          {
            v13 = 1;
          }

          else
          {
            if (a4)
            {
              v77 = v67;
              *a4 = v67;
            }

            v78 = MBGetDefaultLog();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v124 = v6;
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

        if (a4)
        {
          v68 = v39;
          *a4 = v39;
        }

        v69 = MBGetDefaultLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v124 = v6;
          v125 = 2112;
          v126 = v39;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "=transcribing= Failed to add file %@ to FileListDB: %@", buf, 0x16u);
          _MBLog();
        }

        goto LABEL_65;
      }

      v109 = v22;
      v40 = [(MBDomainTranscriber *)self pendingSnapshotDB];
      v41 = [v6 domain];
      v42 = [v41 name];
      v116 = v10;
      v106 = [v40 markDomainRequiringFileListCopy:v42 error:&v116];
      v43 = v116;

      if (v106)
      {
        v10 = v43;
        v22 = v109;
        goto LABEL_37;
      }

      v39 = v43;
      if (a4)
      {
        v72 = v43;
        *a4 = v43;
      }

      v73 = MBGetDefaultLog();
      v22 = v109;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 = [v6 domain];
        v75 = [v74 name];
        *buf = 138412546;
        v124 = v75;
        v125 = 2112;
        v126 = v39;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "=transcribing= Failed to mark domain %@ as requiring upload during scanning: %@", buf, 0x16u);

        v76 = [v6 domain];
        v95 = [v76 name];
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

- (BOOL)fileScanner:(id)a3 isFileAddedOrModified:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MBDomainTranscriber *)self compatibilityDelegate];

  if (v8)
  {
    v9 = [(MBDomainTranscriber *)self compatibilityDelegate];
    v10 = [v9 fileScanner:v6 isFileAddedOrModified:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end