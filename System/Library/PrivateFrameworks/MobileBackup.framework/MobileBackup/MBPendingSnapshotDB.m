@interface MBPendingSnapshotDB
- (BOOL)_enumerateDomainsWithState:(unint64_t)a3 error:(id *)a4 block:(id)a5;
- (BOOL)_generateDeletionMarkersUsingInodesForDomainName:(id)a3 error:(id *)a4;
- (BOOL)_generateDeletionMarkersUsingTemporaryAssetIDTable:(id)a3 error:(id *)a4;
- (BOOL)_performAssetCopyFromAttachedFileListWithPreviousFileList:(BOOL)a3 domainName:(id)a4 error:(id *)a5;
- (BOOL)_shouldUpdateDomainListInPlaceholderDomain:(BOOL *)a3 error:(id *)a4;
- (BOOL)addDomainFromPreviousSnapshotsWithName:(id)a3 recordID:(id)a4 pageCount:(unint64_t)a5 error:(id *)a6;
- (BOOL)addDomainHMACsToRepair:(id)a3 error:(id *)a4;
- (BOOL)clearDomainsFromPreviousSnapshot:(id *)a3;
- (BOOL)close:(id *)a3;
- (BOOL)commitUploadedAssetsIntoPendingFileList:(id)a3 domainName:(id)a4 error:(id *)a5;
- (BOOL)copyAssetsToUploadFromPendingFileList:(id)a3 previousFileListPath:(id)a4 domainName:(id)a5 error:(id *)a6;
- (BOOL)countAssetRecordsToCommitForDomain:(id)a3 addedOrModifiedCount:(unint64_t *)a4 deletedCount:(unint64_t *)a5 error:(id *)a6;
- (BOOL)domainHMACsToRepairMatches:(id)a3 outResult:(BOOL *)a4 error:(id *)a5;
- (BOOL)enumerateAssetRecordPagesToCommitForDomain:(id)a3 pageSize:(unint64_t)a4 error:(id *)a5 block:(id)a6;
- (BOOL)enumerateAssetRelativePathsForDomainName:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)enumerateAssetsPendingUploadForDomain:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)enumerateDomainsDeletedSincePreviousSnapshot:(id *)a3 block:(id)a4;
- (BOOL)enumerateUnmodifiedDomainsPresentInPreviousSnapshot:(id *)a3 block:(id)a4;
- (BOOL)enumerateUploadedDomains:(id *)a3 block:(id)a4;
- (BOOL)fetchAssetStateForDomainName:(id)a3 inode:(unint64_t)a4 outMetadata:(id *)a5 outGenCount:(unsigned int *)a6 outUploadState:(unint64_t *)a7 error:(id *)a8;
- (BOOL)fetchPendingUploadSizeInBytes:(int64_t *)a3 assetCount:(unint64_t *)a4 error:(id *)a5;
- (BOOL)fetchQuotaReservationByDomain:(id *)a3 block:(id)a4;
- (BOOL)isDomainInPreviousSnapshot:(id)a3 outResult:(BOOL *)a4 error:(id *)a5;
- (BOOL)markAllDomainsAsNotOnDisk:(id *)a3;
- (BOOL)markDomainAsPresentOnDisk:(id)a3 error:(id *)a4;
- (BOOL)markDomainAsUploaded:(id)a3 baseRecordID:(id)a4 pageCount:(unint64_t)a5 checksum:(int64_t)a6 error:(id *)a7;
- (BOOL)markDomainRequiringAssetUpload:(id)a3 error:(id *)a4;
- (BOOL)markDomainRequiringFileListCopy:(id)a3 error:(id *)a4;
- (BOOL)markDomainRequiringFileListUpload:(id)a3 error:(id *)a4;
- (BOOL)markUploadedAssetForDomain:(id)a3 inode:(unint64_t)a4 assetMetadata:(id)a5 error:(id *)a6;
- (BOOL)performSanityChecksBeforeCommitWithError:(id *)a3;
- (BOOL)setUseFullSynchronization:(BOOL)a3 error:(id *)a4;
- (BOOL)truncateDomainsNotPresentOnDisk:(id *)a3;
- (BOOL)updateDomainListInPlaceholderDomainWithDevice:(id)a3 appManager:(id)a4 error:(id *)a5;
- (MBPendingSnapshotDB)initWithPath:(id)a3 snapshotDirectoryRoot:(id)a4 commitID:(id)a5 readonly:(BOOL)a6;
- (id)_domainHMACsToRepair:(id *)a3;
- (id)_domainsInCurrentSnapshotDirectory:(id)a3 outSystemApps:(id *)a4 error:(id *)a5;
- (id)_modifiedDomainDependenciesWithAppManager:(id)a3 error:(id *)a4;
- (int64_t)countAssetsPathsForDomain:(id)a3 error:(id *)a4;
- (int64_t)countAssetsPendingUploadForDomainName:(id)a3 error:(id *)a4;
- (int64_t)countAssetsToDeleteForDomainName:(id)a3 error:(id *)a4;
- (int64_t)countUploadedAssetsForDomainName:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation MBPendingSnapshotDB

- (MBPendingSnapshotDB)initWithPath:(id)a3 snapshotDirectoryRoot:(id)a4 commitID:(id)a5 readonly:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v30.receiver = self;
  v30.super_class = MBPendingSnapshotDB;
  v14 = [(MBPendingSnapshotDB *)&v30 init];
  if (v14)
  {
    v27 = [MBSQLiteDB alloc];
    v28 = a5;
    [MBPQLSchemaUpgrade upgradeWithVersion:1 shouldVacuum:0 statements:&off_1003E2330];
    v15 = v25 = v6;
    v29 = v12;
    v31[0] = @"CREATE TABLE IF NOT EXISTS AssetsToUpload(domain TEXT NOT NULL, inode INTEGER NOT NULL, genCount INTEGER NOT NULL, recordIDSuffix TEXT, assetType INTEGER NOT NULL, compressionMethod INTEGER NOT NULL, assetSignature BLOB, assetSize INTEGER NOT NULL, uploadState INTEGER NOT NULL, PRIMARY KEY (domain, inode))";
    v31[1] = @"CREATE INDEX IF NOT EXISTS AssetsToUploadDomainInodeGenCountIndex ON AssetsToUpload (domain, inode, genCount);";
    v31[2] = @"CREATE INDEX IF NOT EXISTS AssetUploadStateIndex ON AssetsToUpload (domain, uploadState, inode);";
    v31[3] = @"CREATE TABLE IF NOT EXISTS AssetPaths (domain TEXT NOT NULL, relativePath TEXT NOT NULL, inode INTEGER NOT NULL, protectionClass INTEGER NOT NULL, PRIMARY KEY (domain, relativePath))";
    v31[4] = @"CREATE TABLE IF NOT EXISTS AssetsToDelete (domain TEXT NOT NULL, inode INTEGER NOT NULL, genCount INTEGER NOT NULL, recordIDSuffix TEXT NOT NULL, PRIMARY KEY (domain, inode))";
    v31[5] = @"CREATE TABLE IF NOT EXISTS DomainHMACsToRepair (domainHMAC TEXT NOT NULL PRIMARY KEY)";
    v32[0] = v15;
    v16 = [NSArray arrayWithObjects:v31 count:6];
    [MBPQLSchemaUpgrade upgradeWithVersion:2 shouldVacuum:0 statements:v16];
    obj = a3;
    v18 = v17 = v13;
    v32[1] = v18;
    v19 = [MBPQLSchemaUpgrade upgradeWithVersion:3 shouldVacuum:0 statements:&off_1003E2348];
    v32[2] = v19;
    v20 = [MBPQLSchemaUpgrade upgradeWithVersion:4 shouldVacuum:0 statements:&off_1003E2360];
    v32[3] = v20;
    v21 = [NSArray arrayWithObjects:v32 count:4];
    v22 = [(MBSQLiteDB *)v27 initWithPath:v11 readOnly:v25 shouldDeleteOnFailureToOpen:0 usePQLBatching:0 schemaCurrentVersion:1 schemaMinDatabaseVersionForUpgrade:0xFFFFFFFFLL error:0 schemaUpgrades:v21];
    db = v14->_db;
    v14->_db = v22;

    v12 = v29;
    v13 = v17;

    objc_storeStrong(&v14->_path, obj);
    objc_storeStrong(&v14->_snapshotDirectoryRoot, a4);
    objc_storeStrong(&v14->_commitID, v28);
  }

  return v14;
}

- (BOOL)setUseFullSynchronization:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MBPendingSnapshotDB *)self db];
  v7 = v6;
  if (v5)
  {
    v8 = @"PRAGMA synchronous=FULL";
  }

  else
  {
    v8 = @"PRAGMA synchronous=NORMAL";
  }

  v9 = [v6 executeWithError:a4 sql:v8];

  return v9;
}

- (BOOL)clearDomainsFromPreviousSnapshot:(id *)a3
{
  v4 = [(MBPendingSnapshotDB *)self db];
  LOBYTE(a3) = [v4 executeWithError:a3 sql:@"DELETE FROM DomainsInPreviousSnapshot"];

  return a3;
}

- (BOOL)addDomainFromPreviousSnapshotsWithName:(id)a3 recordID:(id)a4 pageCount:(unint64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(MBPendingSnapshotDB *)self db];
  LOBYTE(a6) = [v12 executeWithError:a6 sql:{@"INSERT OR REPLACE INTO DomainsInPreviousSnapshot (name, baseRecordID, pageCount) VALUES (%@, %@, %llu)", v11, v10, a5}];

  return a6;
}

- (BOOL)markAllDomainsAsNotOnDisk:(id *)a3
{
  v5 = [(MBPendingSnapshotDB *)self db];
  v6 = [v5 executeWithError:a3 sql:@"CREATE TEMPORARY TABLE DomainsNotOnDisk(name PRIMARY KEY)"];

  if (!v6)
  {
    return 0;
  }

  v7 = [(MBPendingSnapshotDB *)self db];
  v8 = [v7 executeWithError:a3 sql:@"INSERT OR IGNORE INTO DomainsNotOnDisk (name) SELECT name FROM Domains"];

  return v8;
}

- (BOOL)markDomainAsPresentOnDisk:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBPendingSnapshotDB *)self db];
  v8 = [v7 executeWithError:a4 sql:{@"DELETE FROM DomainsNotOnDisk WHERE name = %@", v6}];

  if (v8)
  {
    v9 = [(MBPendingSnapshotDB *)self db];
    v10 = [v9 executeWithError:a4 sql:{@"INSERT OR IGNORE INTO Domains (name, uploadState, baseRecordID, pageCount) VALUES (%@, %llu, NULL, 0)", v6, 0}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)truncateDomainsNotPresentOnDisk:(id *)a3
{
  v5 = [(MBPendingSnapshotDB *)self db];
  v6 = [v5 executeWithError:a3 sql:@"DELETE FROM Domains WHERE name IN (SELECT name FROM DomainsNotOnDisk)"];

  if (!v6)
  {
    return 0;
  }

  v7 = [(MBPendingSnapshotDB *)self db];
  v8 = [v7 executeWithError:a3 sql:@"DROP TABLE DomainsNotOnDisk"];

  return v8;
}

- (BOOL)markDomainRequiringFileListCopy:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBPendingSnapshotDB *)self db];
  LOBYTE(a4) = [v7 executeWithError:a4 sql:{@"INSERT OR REPLACE INTO Domains (name, uploadState, baseRecordID, pageCount) VALUES (%@, %llu, NULL, 0)", v6, 3}];

  return a4;
}

- (BOOL)markDomainRequiringAssetUpload:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBPendingSnapshotDB *)self db];
  LOBYTE(a4) = [v7 executeWithError:a4 sql:{@"INSERT OR REPLACE INTO Domains (name, uploadState, baseRecordID, pageCount) VALUES (%@, %llu, NULL, 0)", v6, 4}];

  return a4;
}

- (BOOL)markDomainRequiringFileListUpload:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBPendingSnapshotDB *)self db];
  LOBYTE(a4) = [v7 executeWithError:a4 sql:{@"INSERT OR REPLACE INTO Domains (name, uploadState, baseRecordID, pageCount) VALUES (%@, %llu, NULL, 0)", v6, 1}];

  return a4;
}

- (BOOL)markDomainAsUploaded:(id)a3 baseRecordID:(id)a4 pageCount:(unint64_t)a5 checksum:(int64_t)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a3;
  v14 = [(MBPendingSnapshotDB *)self db];
  LOBYTE(a7) = [v14 executeWithError:a7 sql:{@"UPDATE Domains SET uploadState = %llu, baseRecordID = %@, pageCount = %llu, checksum = %llu WHERE name = %@", 2, v12, a5, a6, v13}];

  return a7;
}

- (BOOL)_enumerateDomainsWithState:(unint64_t)a3 error:(id *)a4 block:(id)a5
{
  v8 = a5;
  v9 = [(MBPendingSnapshotDB *)self db];
  v10 = [v9 fetchSQL:{@"SELECT name FROM Domains WHERE uploadState = %llu", a3}];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10019DED4;
  v13[3] = &unk_1003BE658;
  v14 = v8;
  v11 = v8;
  LOBYTE(a4) = [v10 enumerateWithError:a4 block:v13];

  return a4;
}

- (BOOL)_performAssetCopyFromAttachedFileListWithPreviousFileList:(BOOL)a3 domainName:(id)a4 error:(id *)a5
{
  v6 = a3;
  v8 = a4;
  if ([(MBSQLiteDB *)self->_db executeWithError:a5 sql:@"INSERT OR REPLACE INTO AssetsToUpload (domain, inode, genCount, recordIDSuffix, assetType, compressionMethod, assetSignature, assetSize, encryptionKey, uploadState) SELECT %@, Assets.inode, Assets.genCount, Assets.recordIDSuffix, Assets.assetType, Assets.compressionMethod, Assets.assetSignature, Assets.assetSize, Assets.encryptionKey, %llu  FROM PendingFileList.Assets LEFT JOIN AssetsToUpload ON (AssetsToUpload.domain = %@  AND Assets.inode = AssetsToUpload.inode) WHERE (Assets.assetType != %llu  AND Assets.assetSignature IS NULL  AND (AssetsToUpload.inode IS NULL OR (AssetsToUpload.genCount != Assets.genCount OR AssetsToUpload.encryptionKey IS NOT Assets.encryptionKey)))", v8, 0, v8, 4]&& [(MBSQLiteDB *)self->_db executeWithError:a5 sql:@"DELETE FROM AssetsToUpload WHERE domain = %@ AND inode NOT IN( SELECT inode FROM PendingFileList.Assets WHERE assetType != %llu)", v8, 4]&& [(MBSQLiteDB *)self->_db executeWithError:a5 sql:@"DELETE FROM AssetPaths WHERE domain = %@ ", v8]&& [(MBSQLiteDB *)self->_db executeWithError:a5 sql:@"INSERT OR REPLACE INTO AssetPaths (domain, relativePath, inode, protectionClass) SELECT %@, relativePath, inode, protectionClass FROM PendingFileList.FileMetadata WHERE inode IN(SELECT inode FROM AssetsToUpload WHERE domain = %@)", v8, v8])
  {
    v9 = [(MBSQLiteDB *)self->_db executeWithError:a5 sql:@"DELETE FROM AssetsToDelete WHERE domain = %@", v8];
    if (v9 && v6)
    {
      db = self->_db;
      v25 = 0;
      v11 = [(MBSQLiteDB *)db fetchObjectOfClass:objc_opt_class() error:&v25 sql:@" SELECT value FROM PreviousFileList.Properties WHERE key=%@", @"volumeUUID"];
      v12 = v25;
      v13 = v12;
      if (!v11 && v12)
      {
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to fetch volumeUUID of previous file list: %@", buf, 0xCu);
          _MBLog();
        }

        if (a5)
        {
          v15 = v13;
          LOBYTE(v9) = 0;
          *a5 = v13;
        }

        else
        {
          LOBYTE(v9) = 0;
        }

        v19 = v13;
        goto LABEL_30;
      }

      v17 = self->_db;
      v24 = v12;
      v18 = [(MBSQLiteDB *)v17 fetchObjectOfClass:objc_opt_class() error:&v24 sql:@" SELECT value FROM PendingFileList.Properties WHERE key=%@", @"volumeUUID"];
      v19 = v24;

      if (v18)
      {
        if ([v18 compare:v11])
        {
          v20 = MBGetDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v27 = v8;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Generating deletion markers for %@ using temporary assetID table", buf, 0xCu);
            _MBLog();
          }

          v21 = [(MBPendingSnapshotDB *)self _generateDeletionMarkersUsingTemporaryAssetIDTable:v8 error:a5];
        }

        else
        {
          v21 = [(MBPendingSnapshotDB *)self _generateDeletionMarkersUsingInodesForDomainName:v8 error:a5];
        }

        LOBYTE(v9) = v21;
        goto LABEL_29;
      }

      if (v19)
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v19;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to fetch volumeUUID of pending file list: %@", buf, 0xCu);
          _MBLog();
        }

        if (a5)
        {
          v23 = v19;
          LOBYTE(v9) = 0;
          *a5 = v19;
LABEL_29:

LABEL_30:
          goto LABEL_14;
        }
      }

      else if (a5)
      {
        [MBError errorWithCode:4 format:@"VolumeUUID not found in pending file list"];
        *a5 = LOBYTE(v9) = 0;
        goto LABEL_29;
      }

      LOBYTE(v9) = 0;
      goto LABEL_29;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

LABEL_14:

  return v9;
}

- (BOOL)_generateDeletionMarkersUsingInodesForDomainName:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(MBSQLiteDB *)self->_db executeWithError:a4 sql:@"INSERT OR IGNORE INTO AssetsToDelete (domain, inode, genCount, recordIDSuffix) SELECT %@, inode, genCount, recordIDSuffix FROM PreviousFileList.Assets WHERE inode IN(SELECT inode FROM AssetsToUpload WHERE domain = %@) AND assetType != %llu", v6, v6, 4])
  {
    v7 = [(MBSQLiteDB *)self->_db executeWithError:a4 sql:@"INSERT OR IGNORE INTO AssetsToDelete (domain, inode, genCount, recordIDSuffix) SELECT %@, inode, genCount, recordIDSuffix FROM PreviousFileList.Assets WHERE inode NOT IN(SELECT inode FROM PendingFileList.Assets WHERE assetType != %llu) AND assetType != %llu", v6, 4, 4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_generateDeletionMarkersUsingTemporaryAssetIDTable:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(MBSQLiteDB *)self->_db executeWithError:a4 sql:@"CREATE TEMPORARY TABLE IF NOT EXISTS TempRecordIDsInPendingFileList (recordIDSuffix PRIMARY KEY NOT NULL)"]&& [(MBSQLiteDB *)self->_db executeWithError:a4 sql:@" INSERT OR REPLACE INTO TempRecordIDsInPendingFileList (recordIDSuffix) SELECT recordIDSuffix FROM PendingFileList.Assets WHERE assetType != %llu AND recordIDSuffix IS NOT NULL", 4]&& [(MBSQLiteDB *)self->_db executeWithError:a4 sql:@"INSERT OR REPLACE INTO AssetsToDelete (domain, inode, genCount, recordIDSuffix) SELECT %@, inode, genCount, recordIDSuffix FROM PreviousFileList.Assets WHERE recordIDSuffix NOT IN(SELECT recordIDSuffix FROM TempRecordIDsInPendingFileList) AND assetType != %llu AND recordIDSuffix IS NOT NULL", v6, 4])
  {
    v7 = [(MBSQLiteDB *)self->_db executeWithError:a4 sql:@"DROP TABLE IF EXISTS TempRecordIDsInPendingFileList"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)enumerateAssetsPendingUploadForDomain:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = -1;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10019E720;
  v41 = sub_10019E730;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = -1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v10 = [(MBSQLiteDB *)self->_db fetchSQL:@" SELECT AssetsToUpload.inode, AssetPaths.protectionClass, AssetPaths.relativePath, AssetsToUpload.assetSize FROM AssetsToUpload JOIN AssetPaths ON AssetsToUpload.domain = AssetPaths.domain AND AssetsToUpload.inode = AssetPaths.inode WHERE AssetsToUpload.domain = %@ AND AssetsToUpload.uploadState = %llu ORDER BY AssetsToUpload.inode ASC ", v8, 0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10019E738;
  v22[3] = &unk_1003C0940;
  v24 = &v47;
  v25 = &v33;
  v26 = &v37;
  v11 = v9;
  v23 = v11;
  v27 = &v43;
  v28 = &v29;
  v12 = [v10 enumerateWithError:a4 block:v22];

  if ([v38[5] count])
  {
    v13 = v48[3];
    v14 = *(v44 + 24);
    v15 = v38[5];
    v16 = v34[3];
    v17 = v30[3];
    v21 = 0;
    v18 = (*(v11 + 2))(v11, v13, v14, v15, v16, v17, &v21);
    v19 = v21;
    if ((v18 & 1) == 0)
    {
      if (a4 && v19)
      {
        v19 = v19;
        *a4 = v19;
      }

      v12 = v19 == 0;
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  return v12;
}

- (BOOL)markUploadedAssetForDomain:(id)a3 inode:(unint64_t)a4 assetMetadata:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  if (!v11)
  {
    __assert_rtn("[MBPendingSnapshotDB markUploadedAssetForDomain:inode:assetMetadata:error:]", "MBPendingSnapshotDB.m", 484, "assetMetadata");
  }

  v12 = v11;
  v13 = [v11 recordIDSuffix];
  if (!v13)
  {
    __assert_rtn("[MBPendingSnapshotDB markUploadedAssetForDomain:inode:assetMetadata:error:]", "MBPendingSnapshotDB.m", 485, "assetMetadata.recordIDSuffix");
  }

  v14 = [v12 assetSignature];
  if (!v14)
  {
    __assert_rtn("[MBPendingSnapshotDB markUploadedAssetForDomain:inode:assetMetadata:error:]", "MBPendingSnapshotDB.m", 486, "assetMetadata.assetSignature");
  }

  if (![v12 assetType])
  {
    __assert_rtn("[MBPendingSnapshotDB markUploadedAssetForDomain:inode:assetMetadata:error:]", "MBPendingSnapshotDB.m", 487, "assetMetadata.assetType != MBAssetTypeUnknown");
  }

  db = self->_db;
  v16 = [v12 recordIDSuffix];
  v17 = [v12 assetType];
  v18 = [v12 compressionMethod];
  v19 = [v12 assetSignature];
  v20 = -[MBSQLiteDB executeWithError:sql:](db, "executeWithError:sql:", a6, @"UPDATE AssetsToUpload SET recordIDSuffix = %@, assetType = %llu, compressionMethod = %d, assetSignature = %@, assetSize = %llu,uploadState = %llu WHERE domain = %@ AND inode = %llu", v16, v17, v18, v19, [v12 assetSize], 1, v10, a4);

  return v20;
}

- (BOOL)commitUploadedAssetsIntoPendingFileList:(id)a3 domainName:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (![(MBSQLiteDB *)self->_db executeWithError:a5 sql:@"ATTACH DATABASE %@ AS PendingFileList;", v8]|| (v10 = [(MBSQLiteDB *)self->_db executeWithError:a5 sql:@"UPDATE PendingFileList.Assets SET inode = AssetsPendingCopy.inode, recordIDSuffix = AssetsPendingCopy.recordIDSuffix, assetType = AssetsPendingCopy.assetType, compressionMethod = AssetsPendingCopy.compressionMethod, assetSignature = AssetsPendingCopy.assetSignature, assetSize = AssetsPendingCopy.assetSize FROM (SELECT inode, recordIDSuffix, assetType, compressionMethod, assetSignature, assetSize FROM AssetsToUpload WHERE domain = %@ AND uploadState = %llu) AS AssetsPendingCopy WHERE AssetsPendingCopy.inode = Assets.inode", v9, 1], ![(MBSQLiteDB *)self->_db executeWithError:a5 sql:@"DETACH DATABASE PendingFileList;"]))
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)copyAssetsToUploadFromPendingFileList:(id)a3 previousFileListPath:(id)a4 domainName:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (![(MBSQLiteDB *)self->_db executeWithError:a6 sql:@"ATTACH DATABASE %@ AS PendingFileList;", v10])
  {
    goto LABEL_10;
  }

  v13 = v11 != 0;
  if (v11 && ![(MBSQLiteDB *)self->_db executeWithError:a6 sql:@"ATTACH DATABASE %@ AS PreviousFileList;", v11])
  {
    v13 = 0;
    v15 = 0;
  }

  else
  {
    db = self->_db;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10019ED94;
    v17[3] = &unk_1003C0968;
    v17[4] = self;
    v19 = v11 != 0;
    v18 = v12;
    v15 = [(MBSQLiteDB *)db groupInTransaction:a6 transaction:v17];
  }

  if (![(MBSQLiteDB *)self->_db executeWithError:a6 sql:@"DETACH DATABASE PendingFileList;"]|| v13 && ![(MBSQLiteDB *)self->_db executeWithError:a6 sql:@"DETACH DATABASE PreviousFileList;"])
  {
LABEL_10:
    v15 = 0;
  }

  return v15 & 1;
}

- (BOOL)countAssetRecordsToCommitForDomain:(id)a3 addedOrModifiedCount:(unint64_t *)a4 deletedCount:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(MBPendingSnapshotDB *)self db];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10019EE80;
  v14[3] = &unk_1003C0990;
  v15 = v10;
  v16 = a4;
  v17 = a5;
  v12 = v10;
  LOBYTE(a6) = [v11 groupInTransaction:a6 transaction:v14];

  return a6;
}

- (BOOL)enumerateAssetRecordPagesToCommitForDomain:(id)a3 pageSize:(unint64_t)a4 error:(id *)a5 block:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(MBPendingSnapshotDB *)self db];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10019F034;
  v16[3] = &unk_1003C09E0;
  v16[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = a4;
  v13 = v11;
  v14 = v10;
  LOBYTE(a5) = [v12 groupInTransaction:a5 transaction:v16];

  return a5;
}

- (BOOL)performSanityChecksBeforeCommitWithError:(id *)a3
{
  if (MBIsInternalInstall())
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10019F688;
    v15[3] = &unk_1003BC518;
    v5 = objc_opt_new();
    v16 = v5;
    v6 = [(MBPendingSnapshotDB *)self enumerateDomainsRequiringFileListCopy:a3 block:v15];

    if (v6)
    {
      if ([v5 count])
      {
        if (a3)
        {
          self = @"Found %llu domains requiring file list copy during commit";
LABEL_6:
          +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 205, self, [v5 count]);
          *a3 = LOBYTE(self) = 0;
LABEL_17:

          return self;
        }
      }

      else
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10019F6AC;
        v13[3] = &unk_1003BC518;
        v7 = v5;
        v14 = v7;
        v8 = [(MBPendingSnapshotDB *)self enumerateDomainsRequiringAssetUpload:a3 block:v13];

        if (v8)
        {
          if ([v7 count])
          {
            if (a3)
            {
              self = @"Found %llu domains requiring asset upload during commit";
              goto LABEL_6;
            }
          }

          else
          {
            v11[0] = _NSConcreteStackBlock;
            v11[1] = 3221225472;
            v11[2] = sub_10019F6D0;
            v11[3] = &unk_1003BC518;
            v9 = v7;
            v12 = v9;
            LODWORD(self) = [(MBPendingSnapshotDB *)self enumerateDomainsRequiringFileListUpload:a3 block:v11];

            if (!self)
            {
              goto LABEL_17;
            }

            if (![v9 count])
            {
              LOBYTE(self) = 1;
              goto LABEL_17;
            }

            if (a3)
            {
              self = @"Found %llu domains requiring file list upload during commit";
              goto LABEL_6;
            }
          }
        }
      }
    }

    LOBYTE(self) = 0;
    goto LABEL_17;
  }

  LOBYTE(self) = 1;
  return self;
}

- (BOOL)isDomainInPreviousSnapshot:(id)a3 outResult:(BOOL *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(MBPendingSnapshotDB *)self db];
  v10 = [v9 fetchCountWithError:a5 sql:{@"SELECT COUNT(*) FROM DomainsInPreviousSnapshot WHERE name = %@", v8}];

  if (a4 && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *a4 = v10 != 0;
  }

  return v10 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)enumerateUploadedDomains:(id *)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(MBPendingSnapshotDB *)self db];
  v8 = [v7 fetchSQL:{@"SELECT name, baseRecordID, pageCount, checksum FROM Domains WHERE uploadState = %llu", 2}];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10019F870;
  v11[3] = &unk_1003BE658;
  v12 = v6;
  v9 = v6;
  LOBYTE(a3) = [v8 enumerateWithError:a3 block:v11];

  return a3;
}

- (BOOL)enumerateUnmodifiedDomainsPresentInPreviousSnapshot:(id *)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(MBPendingSnapshotDB *)self db];
  v8 = [v7 fetchSQL:{@"SELECT DomainsInPreviousSnapshot.name, DomainsInPreviousSnapshot.baseRecordID, DomainsInPreviousSnapshot.pageCount FROM DomainsInPreviousSnapshot JOIN Domains ON DomainsInPreviousSnapshot.name=Domains.name WHERE Domains.uploadState = %llu", 0}];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10019FA10;
  v11[3] = &unk_1003BE658;
  v12 = v6;
  v9 = v6;
  LOBYTE(a3) = [v8 enumerateWithError:a3 block:v11];

  return a3;
}

- (BOOL)enumerateDomainsDeletedSincePreviousSnapshot:(id *)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(MBPendingSnapshotDB *)self db];
  v8 = [v7 fetchSQL:{@"SELECT DomainsInPreviousSnapshot.name, DomainsInPreviousSnapshot.baseRecordID, DomainsInPreviousSnapshot.pageCount FROM DomainsInPreviousSnapshot LEFT JOIN Domains ON DomainsInPreviousSnapshot.name=Domains.name WHERE Domains.name IS NULL"}];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10019FB90;
  v11[3] = &unk_1003BE658;
  v12 = v6;
  v9 = v6;
  LOBYTE(a3) = [v8 enumerateWithError:a3 block:v11];

  return a3;
}

- (BOOL)close:(id *)a3
{
  v5 = [(MBPendingSnapshotDB *)self db];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 close:a3];
  }

  else
  {
    v7 = 1;
  }

  [(MBPendingSnapshotDB *)self setDb:0];

  return v7;
}

- (void)dealloc
{
  v3 = [(MBPendingSnapshotDB *)self db];

  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [(MBPendingSnapshotDB *)self db];
      v6 = [v5 path];
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Database (%@) was not closed before dealloc", buf, 0xCu);

      v7 = [(MBPendingSnapshotDB *)self db];
      v11 = [v7 path];
      _MBLog();
    }

    v13 = 0;
    v8 = [(MBPendingSnapshotDB *)self close:&v13];
    v9 = v13;
    if ((v8 & 1) == 0)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error closing database in dealloc: %@", buf, 0xCu);
        v11 = v9;
        _MBLog();
      }
    }
  }

  v12.receiver = self;
  v12.super_class = MBPendingSnapshotDB;
  [(MBPendingSnapshotDB *)&v12 dealloc];
}

- (int64_t)countAssetsPendingUploadForDomainName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBPendingSnapshotDB *)self db];
  v8 = [v7 fetchCountWithError:a4 sql:{@"SELECT COUNT(*) FROM AssetsToUpload WHERE domain = %@ AND uploadState = %llu", v6, 0}];

  return v8;
}

- (int64_t)countUploadedAssetsForDomainName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBPendingSnapshotDB *)self db];
  v8 = [v7 fetchCountWithError:a4 sql:{@"SELECT COUNT(*) FROM AssetsToUpload WHERE domain = %@ AND uploadState = %llu", v6, 1}];

  return v8;
}

- (int64_t)countAssetsToDeleteForDomainName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBPendingSnapshotDB *)self db];
  v8 = [v7 fetchCountWithError:a4 sql:{@"SELECT COUNT(*) FROM AssetsToDelete WHERE domain = %@", v6}];

  return v8;
}

- (int64_t)countAssetsPathsForDomain:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBPendingSnapshotDB *)self db];
  v8 = [v7 fetchCountWithError:a4 sql:{@"SELECT COUNT(*) FROM AssetPaths WHERE domain = %@", v6}];

  return v8;
}

- (BOOL)fetchAssetStateForDomainName:(id)a3 inode:(unint64_t)a4 outMetadata:(id *)a5 outGenCount:(unsigned int *)a6 outUploadState:(unint64_t *)a7 error:(id *)a8
{
  v14 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10019E720;
  v24 = sub_10019E730;
  v25 = 0;
  v15 = [(MBPendingSnapshotDB *)self db];
  v16 = [v15 fetchSQL:{@"SELECT genCount, recordIDSuffix, assetType, compressionMethod, assetSignature, assetSize, uploadState FROM AssetsToUpload WHERE domain = %@ AND inode = %llu", v14, a4}];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001A044C;
  v19[3] = &unk_1003C0A08;
  v19[4] = &v20;
  v19[5] = a6;
  v19[6] = a7;
  v17 = [v16 enumerateWithError:a8 block:v19];

  if (a5)
  {
    *a5 = v21[5];
  }

  _Block_object_dispose(&v20, 8);

  return v17;
}

- (BOOL)enumerateAssetRelativePathsForDomainName:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(MBPendingSnapshotDB *)self db];
  v11 = [v10 fetchSQL:{@"SELECT relativePath, inode FROM AssetPaths WHERE domain = %@", v9}];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001A0654;
  v14[3] = &unk_1003BE658;
  v15 = v8;
  v12 = v8;
  LOBYTE(a4) = [v11 enumerateWithError:a4 block:v14];

  return a4;
}

- (BOOL)fetchPendingUploadSizeInBytes:(int64_t *)a3 assetCount:(unint64_t *)a4 error:(id *)a5
{
  v9 = [(MBPendingSnapshotDB *)self db];
  v17 = 0;
  v10 = [v9 fetchObjectOfClass:objc_opt_class() error:&v17 sql:{@"SELECT SUM(assetSize) FROM AssetsToUpload WHERE uploadState = %llu", 0}];
  v11 = v17;

  if (v11)
  {
    if (a5)
    {
      v12 = v11;
      v13 = 0;
      *a5 = v11;
      goto LABEL_11;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_11;
  }

  v14 = [(MBPendingSnapshotDB *)self db];
  v15 = [v14 fetchCountWithError:a5 sql:{@"SELECT COUNT(*) FROM AssetsToUpload WHERE uploadState = %llu", 0}];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_5;
  }

  if (a3)
  {
    *a3 = [v10 unsignedLongLongValue];
  }

  if (a4)
  {
    *a4 = v15;
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (BOOL)fetchQuotaReservationByDomain:(id *)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(MBPendingSnapshotDB *)self db];
  v8 = [v7 fetchSQL:{@"SELECT SUM(assetSize), domain FROM AssetsToUpload GROUP BY domain"}];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A08D4;
  v11[3] = &unk_1003BE658;
  v12 = v6;
  v9 = v6;
  LOBYTE(a3) = [v8 enumerateWithError:a3 block:v11];

  return a3;
}

- (BOOL)addDomainHMACsToRepair:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!a4)
  {
    __assert_rtn("[MBPendingSnapshotDB addDomainHMACsToRepair:error:]", "MBPendingSnapshotDB.m", 825, "error");
  }

  v7 = v6;
  v8 = [(MBPendingSnapshotDB *)self db];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A0A44;
  v12[3] = &unk_1003C08F0;
  v13 = v7;
  v9 = v7;
  v10 = [v8 groupInTransaction:a4 transaction:v12];

  return v10;
}

- (BOOL)domainHMACsToRepairMatches:(id)a3 outResult:(BOOL *)a4 error:(id *)a5
{
  v8 = a3;
  if (!a5)
  {
    __assert_rtn("[MBPendingSnapshotDB domainHMACsToRepairMatches:outResult:error:]", "MBPendingSnapshotDB.m", 844, "error");
  }

  if (!a4)
  {
    __assert_rtn("[MBPendingSnapshotDB domainHMACsToRepairMatches:outResult:error:]", "MBPendingSnapshotDB.m", 845, "outResult");
  }

  v9 = v8;
  v10 = [(MBPendingSnapshotDB *)self _domainHMACsToRepair:a5];
  if (v10)
  {
    v11 = [v9 count];
    if (v11 < [v10 count])
    {
      __assert_rtn("[MBPendingSnapshotDB domainHMACsToRepairMatches:outResult:error:]", "MBPendingSnapshotDB.m", 853, "domainHMACsToRepair.count >= pendingDomainHMACsToRepair.count");
    }

    *a4 = 1;
    if (([v10 isEqualToSet:v9] & 1) == 0)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v25 = [v10 allObjects];
        v13 = [v25 sortedArrayUsingSelector:"compare:"];
        v14 = [v13 componentsJoinedByString:{@", "}];
        v15 = [v9 allObjects];
        v16 = [v15 sortedArrayUsingSelector:"compare:"];
        v17 = [v16 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v27 = v14;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=domain repair= Pending repair domains %@ != new repair domains %@", buf, 0x16u);

        v18 = [v10 allObjects];
        v19 = [v18 sortedArrayUsingSelector:"compare:"];
        v20 = [v19 componentsJoinedByString:{@", "}];
        v21 = [v9 allObjects];
        v22 = [v21 sortedArrayUsingSelector:"compare:"];
        v24 = [v22 componentsJoinedByString:{@", "}];
        _MBLog();
      }

      *a4 = 0;
    }
  }

  return v10 != 0;
}

- (id)_domainHMACsToRepair:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBPendingSnapshotDB _domainHMACsToRepair:]", "MBPendingSnapshotDB.m", 867, "error");
  }

  v3 = a3;
  v5 = objc_opt_new();
  v6 = [(MBPendingSnapshotDB *)self db];
  v7 = [v6 fetchSQL:@"SELECT domainHMAC FROM DomainHMACsToRepair"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A1000;
  v11[3] = &unk_1003C0A30;
  v8 = v5;
  v12 = v8;
  LODWORD(v3) = [v7 enumerateWithError:v3 block:v11];

  if (v3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_shouldUpdateDomainListInPlaceholderDomain:(BOOL *)a3 error:(id *)a4
{
  if (!a3)
  {
    __assert_rtn("[MBPendingSnapshotDB _shouldUpdateDomainListInPlaceholderDomain:error:]", "MBPendingSnapshotDB.m", 880, "outResult");
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Checking whether the domain list in the placeholder domain needs updating", buf, 2u);
    _MBLog();
  }

  v8 = [(MBPendingSnapshotDB *)self db];
  v24 = 0;
  v9 = [v8 fetchObjectOfClass:objc_opt_class() error:&v24 sql:{@"SELECT uploadState FROM Domains WHERE name = %@", @"PlaceholderDomain"}];
  v10 = v24;

  if (v10)
  {
    goto LABEL_5;
  }

  if ([v9 unsignedLongLongValue] == 3)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Domain list needs update - placeholder domain is modified", buf, 2u);
      _MBLog();
    }

    goto LABEL_14;
  }

  v13 = [(MBPendingSnapshotDB *)self db];
  v14 = [v13 fetchCountWithError:a4 sql:{@"SELECT COUNT(*) FROM Domains  WHERE uploadState = %llu AND name NOT IN (SELECT name FROM DomainsInPreviousSnapshot)", 3}];

  if (v14)
  {
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_5:
      v11 = 0;
      goto LABEL_15;
    }

    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Domain list needs update - new domains detected", buf, 2u);
      _MBLog();
    }

LABEL_14:

    v11 = 1;
    *a3 = 1;
    goto LABEL_15;
  }

  v16 = [(MBPendingSnapshotDB *)self snapshotDirectoryRoot];
  v17 = [(MBPendingSnapshotDB *)self commitID];
  v18 = [MBPlaceholderFileListDB openOrCreatePlaceholderFileListIn:v16 commitID:v17 error:a4];

  if (!v18)
  {
    goto LABEL_23;
  }

  v19 = [v18 dateOfLastDomainListUpdate:a4];
  v11 = v19 != 0;
  if (v19)
  {
    v20 = +[NSDate now];
    [v20 timeIntervalSinceDate:v19];
    v22 = v21;

    if (v22 >= 604800.0)
    {
      *a3 = 1;
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v26 = v22;
        v27 = 2048;
        v28 = 0x4122750000000000;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Domain list needs update - weekly policy (%.2f > %.2f)", buf, 0x16u);
        _MBLog();
      }
    }
  }

  if (([v18 close:a4] & 1) == 0)
  {
LABEL_23:
    v11 = 0;
  }

LABEL_15:
  return v11;
}

- (id)_domainsInCurrentSnapshotDirectory:(id)a3 outSystemApps:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  v10 = [(MBPendingSnapshotDB *)self snapshotDirectoryRoot];
  v11 = [(MBPendingSnapshotDB *)self commitID];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001A16E0;
  v31[3] = &unk_1003BC450;
  v12 = v9;
  v32 = v12;
  LODWORD(a5) = MBEnumerateDomainNamesForSnapshot(v10, v11, a5, v31);

  if (a5)
  {
    v26 = a4;
    v13 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v12;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          if ([MBDomain isAppName:v19, v25])
          {
            v20 = [MBDomain containerIDWithName:v19];
            v21 = [v8 appWithIdentifier:v20];
            if ([v21 isSystemApp])
            {
              [v13 addObject:v19];
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v16);
    }

    if (v26)
    {
      v22 = v13;
      *v26 = v13;
    }

    v23 = v14;

    v12 = v25;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_modifiedDomainDependenciesWithAppManager:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A17FC;
  v11[3] = &unk_1003C0A58;
  v7 = objc_opt_new();
  v12 = v7;
  v13 = v6;
  v8 = v6;
  LODWORD(a4) = [(MBPendingSnapshotDB *)self _enumerateDomainsWithState:3 error:a4 block:v11];

  if (a4)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)updateDomainListInPlaceholderDomainWithDevice:(id)a3 appManager:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v28 = 0;
  if (![(MBPendingSnapshotDB *)self _shouldUpdateDomainListInPlaceholderDomain:&v28 error:a5])
  {
    goto LABEL_13;
  }

  if (v28 != 1)
  {
    v23 = 1;
    goto LABEL_21;
  }

  if ([(MBPendingSnapshotDB *)self markDomainRequiringFileListCopy:@"PlaceholderDomain" error:a5])
  {
    v10 = [(MBPendingSnapshotDB *)self snapshotDirectoryRoot];
    v11 = [(MBPendingSnapshotDB *)self commitID];
    v12 = [MBPlaceholderFileListDB openOrCreatePlaceholderFileListIn:v10 commitID:v11 error:a5];

    if (!v12)
    {
      goto LABEL_19;
    }

    v13 = [v8 snapshots];
    v14 = MBGetAllDomainHMACsInSnapshots(v13);

    v27 = 0;
    v15 = [(MBPendingSnapshotDB *)self _domainsInCurrentSnapshotDirectory:v9 outSystemApps:&v27 error:a5];
    v16 = v27;
    if (v15)
    {
      v17 = [(MBPendingSnapshotDB *)self _modifiedDomainDependenciesWithAppManager:v9 error:a5];
      if (v17 && ([v8 hmacKey], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v12, "updateDomainListWithServerDomainHMACs:domainsInCurrentSnapshot:systemAppsInCurrentSnapshot:modifiedDomainDependencies:hmacKey:error:", v14, v15, v16, v17, v18, a5), v18, v19))
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v14 count];
            v25 = [v15 count];
            v22 = [v17 count];
            *buf = 134218496;
            v30 = v26;
            v31 = 2048;
            v32 = v25;
            v33 = 2048;
            v34 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Updated domain list with %llu server domain hmacs, %llu domains in the current snapshot and %llu dependencies", buf, 0x20u);
          }

          [v14 count];
          [v15 count];
          [v17 count];
          _MBLog();
        }

        v23 = 1;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    if (([v12 close:a5] & 1) == 0)
    {
LABEL_19:
      v23 = 0;
    }
  }

  else
  {
LABEL_13:
    v23 = 0;
  }

LABEL_21:

  return v23;
}

@end