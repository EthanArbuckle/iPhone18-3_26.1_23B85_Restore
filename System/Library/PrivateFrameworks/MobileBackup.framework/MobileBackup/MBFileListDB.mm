@interface MBFileListDB
+ (id)_fileMetadataForPath:(id)a3 fetchXattrs:(BOOL)a4 db:(id)a5 error:(id *)a6;
+ (id)openDatabaseIn:(id)a3 commitID:(id)a4 domainName:(id)a5 error:(id *)a6;
+ (id)openOrCreateDatabaseIn:(id)a3 commitID:(id)a4 domainName:(id)a5 error:(id *)a6;
- (BOOL)_adjustInodesForVolumeTransition:(id *)a3;
- (BOOL)_fetchPropertyValue:(id *)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)_fetchVolumeUUID:(id *)a3 error:(id *)a4;
- (BOOL)_markAllFilesAsDeleted:(id *)a3;
- (BOOL)_markInProgressVolumeTransition:(id *)a3;
- (BOOL)_openOrCreateWithError:(id *)a3;
- (BOOL)_openWithError:(id *)a3;
- (BOOL)_removeHardLinkedFilesForVolumeTransition:(id *)a3;
- (BOOL)_setVolumeUUID:(id)a3 error:(id *)a4;
- (BOOL)_truncateDeletedFiles:(id *)a3;
- (BOOL)beginTranscriptionForVolumeUUID:(id)a3 error:(id *)a4;
- (BOOL)canReuseAssetsAcrossVolumeTransition:(BOOL *)a3 isResuming:(BOOL *)a4 error:(id *)a5;
- (BOOL)close:(id *)a3;
- (BOOL)computeAssetRecordIDChecksumWithPrefix:(id)a3 checksum:(int64_t *)a4 error:(id *)a5;
- (BOOL)enumerateAssetRecordIdSuffixForNonEmptyFiles:(id *)a3 block:(id)a4;
- (BOOL)enumerateFileMetadataWithError:(id *)a3 block:(id)a4;
- (BOOL)enumerateFilesWithDomain:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)enumerateSymlinkTargets:(id *)a3 block:(id)a4;
- (BOOL)fetchEncryptionKeyForInode:(unint64_t)a3 outEncryptionKey:(id *)a4 error:(id *)a5;
- (BOOL)fetchFileListStats:(id *)a3 error:(id *)a4;
- (BOOL)finishTranscription:(id *)a3;
- (BOOL)isTransitioningVolumes;
- (BOOL)markAllFilesAsDeleted:(id *)a3;
- (BOOL)markFileAsPresent:(id)a3 error:(id *)a4;
- (BOOL)setFileMetadata:(id)a3 forPath:(id)a4 error:(id *)a5;
- (id)_initWithPath:(id)a3 domainName:(id)a4;
- (id)description;
- (id)fileMetadataForPath:(id)a3 fetchXattrs:(BOOL)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation MBFileListDB

+ (id)openDatabaseIn:(id)a3 commitID:(id)a4 domainName:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  Current = CFAbsoluteTimeGetCurrent();
  v14 = MBFileListDBPath(v10, v11, v12);
  v15 = [[MBFileListDB alloc] _initWithPath:v14 domainName:v12];
  if ([v15 _openWithError:a6])
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = CFAbsoluteTimeGetCurrent();
  v18 = MBGetDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v21 = a1;
    v22 = 2048;
    v23 = v17 - Current;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Opened %@ in %.3fs", buf, 0x16u);
    _MBLog();
  }

  return v16;
}

+ (id)openOrCreateDatabaseIn:(id)a3 commitID:(id)a4 domainName:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  Current = CFAbsoluteTimeGetCurrent();
  v14 = MBFileListDBPath(v10, v11, v12);
  v15 = [[MBFileListDB alloc] _initWithPath:v14 domainName:v12];
  v28 = 0;
  v16 = [v15 _openOrCreateWithError:&v28];
  v17 = v28;
  v18 = v17;
  if (v16)
  {
LABEL_2:
    v19 = v15;
    goto LABEL_14;
  }

  v20 = [v17 domain];
  if ([v20 isEqualToString:PQLSqliteErrorDomain])
  {
    if ([v18 code] == 11)
    {

      goto LABEL_10;
    }

    v22 = [v18 code] == 26;

    if (v22)
    {
LABEL_10:
      [v15 close:0];
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v30 = v14;
        v31 = 2112;
        v32 = *&v18;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "Invalid FileList database at %@, deleting it and trying again: %@", buf, 0x16u);
        _MBLog();
      }

      v24 = v14;
      unlink([v14 fileSystemRepresentation]);
      if ([v15 _openOrCreateWithError:a6])
      {
        goto LABEL_2;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  if (a6)
  {
    v21 = v18;
    v19 = 0;
    *a6 = v18;
    goto LABEL_14;
  }

LABEL_13:
  v19 = 0;
LABEL_14:

  v25 = CFAbsoluteTimeGetCurrent();
  v26 = MBGetDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v30 = a1;
    v31 = 2048;
    v32 = v25 - Current;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Opened/created %@ in %.3fs", buf, 0x16u);
    _MBLog();
  }

  return v19;
}

- (id)_initWithPath:(id)a3 domainName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MBFileListDB;
  v9 = [(MBFileListDB *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, a3);
    objc_storeStrong(&v10->_domainName, a4);
    db = v10->_db;
    v10->_db = 0;
  }

  return v10;
}

- (BOOL)_openWithError:(id *)a3
{
  v5 = +[NSFileManager defaultManager];
  v6 = [(MBFileListDB *)self path];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v8 = [(MBFileListDB *)self path];
    v9 = [(MBFileListDB *)self _initializeDatabaseAt:v8 withFlags:2 error:a3];
    db = self->_db;
    self->_db = v9;

    return self->_db != 0;
  }

  else
  {
    if (a3)
    {
      v12 = [(MBFileListDB *)self path];
      *a3 = [MBError errorWithCode:4 path:v12 format:@"Database not found"];
    }

    return 0;
  }
}

- (BOOL)_openOrCreateWithError:(id *)a3
{
  v5 = [(MBFileListDB *)self path];
  v6 = [v5 stringByDeletingLastPathComponent];

  v7 = +[NSFileManager defaultManager];
  v15[0] = NSFileOwnerAccountName;
  v15[1] = NSFileGroupOwnerAccountName;
  v16[0] = @"mobile";
  v16[1] = @"mobile";
  v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v9 = [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:v8 error:a3];

  if (v9)
  {
    v10 = [(MBFileListDB *)self path];
    v11 = [(MBFileListDB *)self _initializeDatabaseAt:v10 withFlags:6 error:a3];
    db = self->_db;
    self->_db = v11;

    v13 = self->_db != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)dealloc
{
  if (self->_db)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      *buf = 138412290;
      v8 = path;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Database (%@) was not closed before dealloc", buf, 0xCu);
      v5 = self->_path;
      _MBLog();
    }
  }

  [(MBFileListDB *)self close:0, v5];
  v6.receiver = self;
  v6.super_class = MBFileListDB;
  [(MBFileListDB *)&v6 dealloc];
}

- (BOOL)close:(id *)a3
{
  v5 = self->_db;
  if (v5)
  {
    db = self->_db;
    self->_db = 0;

    Current = CFAbsoluteTimeGetCurrent();
    v15 = 0;
    v8 = [(PQLConnection *)v5 close:&v15];
    v9 = v15;
    if ((v8 & 1) == 0)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = self;
        v18 = 2112;
        v19 = *&v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to close %@: %@", buf, 0x16u);
        _MBLog();
      }

      if (a3)
      {
        v11 = v9;
        *a3 = v9;
      }
    }

    v12 = CFAbsoluteTimeGetCurrent();
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = self;
      v18 = 2048;
      v19 = v12 - Current;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Closed %@ in %.3fs", buf, 0x16u);
      _MBLog();
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_fetchPropertyValue:(id *)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(MBFileListDB *)self db];
  LOBYTE(a5) = [v9 fetchObjectOfClass:objc_opt_class() outObject:a3 error:a5 sql:{@"SELECT value FROM Properties WHERE key = %@", v8}];

  return a5;
}

+ (id)_fileMetadataForPath:(id)a3 fetchXattrs:(BOOL)a4 db:(id)a5 error:(id *)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = @"SELECT FileMetadata.inode, FileMetadata.size, FileMetadata.birth, FileMetadata.modified, FileMetadata.statusChanged, FileMetadata.userID, FileMetadata.groupID, FileMetadata.mode, FileMetadata.flags, FileMetadata.protectionClass, FileMetadata.xattrs, Assets.genCount, recordIDSuffix, encryptionKey, compressionMethod, assetType, assetSize, assetSignature FROM FileMetadata LEFT JOIN Assets ON FileMetadata.inode = Assets.inode WHERE relativePath = %@;";
  }

  else
  {
    v12 = @"SELECT FileMetadata.inode, FileMetadata.size, FileMetadata.birth, FileMetadata.modified, FileMetadata.statusChanged, FileMetadata.userID, FileMetadata.groupID, FileMetadata.mode, FileMetadata.flags, FileMetadata.protectionClass, IIF(FileMetadata.xattrs IS NULL, 0, 1), Assets.genCount, recordIDSuffix, encryptionKey, compressionMethod, assetType, assetSize, assetSignature FROM FileMetadata LEFT JOIN Assets ON FileMetadata.inode = Assets.inode WHERE relativePath = %@;";
  }

  v13 = [v10 fetch:{v12, v9}];
  if ([v13 next])
  {
    v29 = 0;
    v28 = 0;
    v27 = 0u;
    memset(v26, 0, sizeof(v26));
    [v13 getNode:v26 fromIndex:&v29];
    if (v8)
    {
      v14 = [v13 xattrsFromIndex:&v29];
      HIBYTE(v28) = HIBYTE(v28) & 0xFB | (4 * (v14 != 0));
    }

    else
    {
      v14 = 0;
      if ([v13 BOOLAtIndex:v29])
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      HIBYTE(v28) = HIBYTE(v28) & 0xFB | v19;
      ++v29;
    }

    v20 = WORD2(v28) & 0xF000;
    if (v20 == 40960)
    {
      v25 = 0;
      v23 = [v11 fetchObjectOfClass:objc_opt_class() outObject:&v25 error:a6 sql:{@"SELECT targetPath FROM SymlinkTargets WHERE inode = %llu", v27}];
      v22 = v25;
      v21 = 0;
      v18 = 0;
      if (!v23)
      {
        goto LABEL_21;
      }
    }

    else if (v20 == 0x8000)
    {
      ++v29;
      DWORD2(v27) = [v13 intAtIndex:?];
      v21 = [v13 assetMetadataFromIndex:&v29];
      v22 = 0;
    }

    else
    {
      v22 = 0;
      v21 = 0;
    }

    v18 = [MBFileMetadata fileMetadataFromNode:v26 xattrs:v14 linkTarget:v22 assetMetadata:v21 error:a6];

LABEL_21:
    goto LABEL_22;
  }

  v15 = [v11 lastError];
  v16 = [v15 excludingNotFound];

  if (a6)
  {
    v17 = v16;
    *a6 = v16;
  }

  v18 = 0;
LABEL_22:

  return v18;
}

- (BOOL)fetchEncryptionKeyForInode:(unint64_t)a3 outEncryptionKey:(id *)a4 error:(id *)a5
{
  v9 = self->_db;
  if (!v9)
  {
    __assert_rtn("[MBFileListDB fetchEncryptionKeyForInode:outEncryptionKey:error:]", "MBFileListDB.m", 347, "db");
  }

  if (!a4)
  {
    __assert_rtn("[MBFileListDB fetchEncryptionKeyForInode:outEncryptionKey:error:]", "MBFileListDB.m", 348, "outEncryptionKey");
  }

  v10 = v9;
  v11 = [(PQLConnection *)self->_db fetch:@"SELECT encryptionKey FROM Assets WHERE inode = %llu", a3];
  if ([v11 next])
  {
    *a4 = [v11 dataAtIndex:0];
    v12 = 1;
  }

  else
  {
    v13 = [(PQLConnection *)v10 lastError];
    v14 = [v13 excludingNotFound];

    v12 = v14 == 0;
    if (v14)
    {
      if (a5)
      {
        v15 = v14;
        *a5 = v14;
      }
    }

    else
    {
      *a4 = 0;
    }
  }

  return v12;
}

- (id)fileMetadataForPath:(id)a3 fetchXattrs:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1001FDE30;
  v21 = sub_1001FDE40;
  v22 = 0;
  db = self->_db;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001FDE48;
  v13[3] = &unk_1003C1790;
  v15 = &v17;
  v13[4] = self;
  v10 = v8;
  v14 = v10;
  v16 = a4;
  LODWORD(a5) = [(PQLConnection *)db groupInTransaction:a5 transaction:v13];

  if (a5)
  {
    v11 = v18[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (BOOL)_fetchVolumeUUID:(id *)a3 error:(id *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1001FDE30;
  v14 = sub_1001FDE40;
  v15 = 0;
  v6 = [(PQLConnection *)self->_db fetch:@"SELECT value FROM Properties WHERE key = %@", @"volumeUUID"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001FE000;
  v9[3] = &unk_1003C17B8;
  v9[4] = &v10;
  v7 = [v6 enumerateWithError:a4 block:v9];
  if (v7)
  {
    *a3 = v11[5];
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)_markInProgressVolumeTransition:(id *)a3
{
  v11 = 1;
  v5 = [NSData dataWithBytes:&v11 length:1];
  v6 = [(MBFileListDB *)self _setPropertyValue:v5 forKey:@"volumeTransitionIsInProgress" error:a3];
  if (v6)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      domainName = self->_domainName;
      *buf = 138412290;
      v13 = domainName;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Marked in progress volume transition for %@", buf, 0xCu);
      v10 = self->_domainName;
      _MBLog();
    }
  }

  return v6;
}

- (BOOL)_setVolumeUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(MBFileListDB *)self _clearInProgressVolumeTransition:a4]&& [(PQLConnection *)self->_db executeWithError:a4 sql:@"INSERT OR REPLACE INTO Properties (key, value) VALUES (%@, %@)", @"volumeUUID", v6])
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      domainName = self->_domainName;
      *buf = 138412546;
      v13 = domainName;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updated backupVolumeUUID for %@ to %@", buf, 0x16u);
      v11 = self->_domainName;
      _MBLog();
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)canReuseAssetsAcrossVolumeTransition:(BOOL *)a3 isResuming:(BOOL *)a4 error:(id *)a5
{
  if (!a3)
  {
    __assert_rtn("[MBFileListDB canReuseAssetsAcrossVolumeTransition:isResuming:error:]", "MBFileListDB.m", 419, "outCanReuseAssets");
  }

  if (!a4)
  {
    __assert_rtn("[MBFileListDB canReuseAssetsAcrossVolumeTransition:isResuming:error:]", "MBFileListDB.m", 420, "outIsResuming");
  }

  v22 = 0;
  v9 = [(MBFileListDB *)self _fetchPropertyValue:&v22 forKey:@"volumeTransitionIsInProgress" error:?];
  v10 = v22;
  v11 = v10;
  if (!v9)
  {
    goto LABEL_12;
  }

  if (!v10)
  {
    v18 = [(MBFileListDB *)self db];
    v19 = [v18 fetchCountWithError:a5 sql:{@"SELECT COUNT(*) FROM FileMetadata WHERE (inode & %llu) != 0", 0x8000000000000000}];

    if (!v19)
    {
      v13 = 0;
      v16 = 1;
      goto LABEL_9;
    }

    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = MBGetDefaultLog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = 0;
        goto LABEL_8;
      }

      v21 = [(MBFileListDB *)self domainName];
      *buf = 138412546;
      v24 = v21;
      v25 = 2048;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Cannot perform volume transition for %@ - found %llu unsupported inodes", buf, 0x16u);

      v15 = [(MBFileListDB *)self domainName];
      _MBLog();
      v13 = 0;
      goto LABEL_7;
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v12 = MBGetDefaultLog();
  v13 = 1;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = [(MBFileListDB *)self domainName];
    *buf = 138412290;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Can perform volume transition for %@ - in progress marker detected", buf, 0xCu);

    v15 = [(MBFileListDB *)self domainName];
    _MBLog();
LABEL_7:
  }

LABEL_8:

  v16 = v13;
LABEL_9:
  *a4 = v13;
  *a3 = v16;
  v17 = 1;
LABEL_13:

  return v17;
}

- (BOOL)_removeHardLinkedFilesForVolumeTransition:(id *)a3
{
  if (![(PQLConnection *)self->_db executeWithError:a3 sql:@"CREATE TEMPORARY TABLE IF NOT EXISTS HardlinkedInodes (inode INTEGER NOT NULL PRIMARY KEY) "]|| ![(PQLConnection *)self->_db executeWithError:a3 sql:@"INSERT OR REPLACE INTO HardlinkedInodes (inode) SELECT inode FROM FileMetadata GROUP BY inode HAVING COUNT(*) > 1"]|| ![(PQLConnection *)self->_db executeWithError:a3 sql:@"DELETE FROM Assets WHERE inode IN (SELECT inode FROM HardlinkedInodes)"]|| ![(PQLConnection *)self->_db executeWithError:a3 sql:@"DELETE FROM SymlinkTargets WHERE inode IN (SELECT inode FROM HardlinkedInodes)"]|| ![(PQLConnection *)self->_db executeWithError:a3 sql:@"DELETE FROM FileMetadata WHERE inode IN (SELECT inode FROM HardlinkedInodes)"])
  {
    return 0;
  }

  db = self->_db;

  return [(PQLConnection *)db executeWithError:a3 sql:@"DROP TABLE IF EXISTS HardlinkedInodes"];
}

- (BOOL)_adjustInodesForVolumeTransition:(id *)a3
{
  if (![(PQLConnection *)self->_db executeWithError:a3 sql:@"UPDATE FileMetadata SET inode = (inode | %llu)", 0x8000000000000000]|| ![(PQLConnection *)self->_db executeWithError:a3 sql:@"UPDATE Assets SET inode = (inode | %llu)", 0x8000000000000000]|| ![(PQLConnection *)self->_db executeWithError:a3 sql:@"UPDATE SymlinkTargets SET inode = (inode | %llu)", 0x8000000000000000]|| ![(MBFileListDB *)self _removeHardLinkedFilesForVolumeTransition:a3])
  {
    return 0;
  }

  return [(MBFileListDB *)self _markInProgressVolumeTransition:a3];
}

- (BOOL)beginTranscriptionForVolumeUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[MBFileListDB beginTranscriptionForVolumeUUID:error:]", "MBFileListDB.m", 502, "volumeUUID");
  }

  db = self->_db;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001FE798;
  v11[3] = &unk_1003C17E0;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [(PQLConnection *)db groupInTransaction:a4 transaction:v11];

  return v9;
}

- (BOOL)isTransitioningVolumes
{
  v2 = [(MBFileListDB *)self volumeUUIDToUpdateAfterTranscription];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_markAllFilesAsDeleted:(id *)a3
{
  v5 = [(PQLConnection *)self->_db executeWithError:a3 sql:@"CREATE TEMPORARY TABLE MetadataToDelete (relativePath PRIMARY KEY);"];
  if (v5)
  {
    db = self->_db;

    LOBYTE(v5) = [(PQLConnection *)db executeWithError:a3 sql:@"INSERT OR IGNORE INTO MetadataToDelete (relativePath) SELECT relativePath FROM FileMetadata;"];
  }

  return v5;
}

- (BOOL)markAllFilesAsDeleted:(id *)a3
{
  db = self->_db;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001FEBAC;
  v5[3] = &unk_1003C08F0;
  v5[4] = self;
  return [(PQLConnection *)db groupInTransaction:a3 transaction:v5];
}

- (BOOL)markFileAsPresent:(id)a3 error:(id *)a4
{
  v6 = self->_db;
  v7 = [(PQLConnection *)v6 execute:@"DELETE FROM MetadataToDelete WHERE relativePath = %@;", a3];
  v8 = v7;
  if (a4 && (v7 & 1) == 0)
  {
    *a4 = [(PQLConnection *)v6 lastError];
  }

  return v8;
}

- (BOOL)setFileMetadata:(id)a3 forPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  db = self->_db;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001FECFC;
  v14[3] = &unk_1003C17E0;
  v15 = v8;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  LOBYTE(a5) = [(PQLConnection *)db groupInTransaction:a5 transaction:v14];

  return a5;
}

- (BOOL)_truncateDeletedFiles:(id *)a3
{
  if ([(PQLConnection *)self->_db executeWithError:a3 sql:@"DELETE FROM FileMetadata WHERE relativePath IN (SELECT relativePath FROM MetadataToDelete);"]&& [(PQLConnection *)self->_db executeWithError:a3 sql:@"DELETE FROM SymlinkTargets WHERE inode NOT IN(SELECT inode FROM FileMetadata WHERE (mode & %d) == %d)", 61440, 40960])
  {
    return [(PQLConnection *)self->_db executeWithError:a3 sql:@"DELETE FROM Assets WHERE inode NOT IN(SELECT inode FROM FileMetadata WHERE (mode & %d) == %d)", 61440, 0x8000];
  }

  else
  {
    return 0;
  }
}

- (BOOL)finishTranscription:(id *)a3
{
  db = self->_db;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001FF13C;
  v5[3] = &unk_1003C08F0;
  v5[4] = self;
  return [(PQLConnection *)db groupInTransaction:a3 transaction:v5];
}

- (BOOL)enumerateSymlinkTargets:(id *)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(PQLConnection *)self->_db fetch:@"SELECT inode, targetPath FROM SymlinkTargets;"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FF28C;
  v10[3] = &unk_1003BE658;
  v11 = v6;
  v8 = v6;
  LOBYTE(a3) = [v7 enumerateWithError:a3 block:v10];

  return a3;
}

- (BOOL)enumerateFilesWithDomain:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PQLConnection *)self->_db fetch:@"SELECT inode, size, birth, modified, statusChanged, userID, groupID, mode, flags, protectionClass, xattrs, relativePath FROM FileMetadata;"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001FF3F4;
  v14[3] = &unk_1003C1808;
  v15 = v8;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  LOBYTE(a4) = [v10 enumerateWithError:a4 block:v14];

  return a4;
}

- (BOOL)enumerateFileMetadataWithError:(id *)a3 block:(id)a4
{
  v6 = a4;
  v7 = self->_db;
  v8 = [(PQLConnection *)v7 fetch:@"SELECT relativePath FROM FileMetadata ORDER BY relativePath ASC"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001FF558;
  v12[3] = &unk_1003C1830;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  LOBYTE(a3) = [v8 enumerateWithError:a3 block:v12];

  return a3;
}

- (BOOL)enumerateAssetRecordIdSuffixForNonEmptyFiles:(id *)a3 block:(id)a4
{
  v6 = a4;
  v7 = self->_db;
  v8 = [(PQLConnection *)v7 fetch:@"SELECT recordIDSuffix FROM FileMetadata INNER JOIN Assets ON FileMetadata.inode = Assets.inode WHERE assetType != %llu", 4];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001FF6C4;
  v11[3] = &unk_1003BE658;
  v12 = v6;
  v9 = v6;
  LOBYTE(a3) = [v8 enumerateWithError:a3 block:v11];

  return a3;
}

- (BOOL)computeAssetRecordIDChecksumWithPrefix:(id)a3 checksum:(int64_t *)a4 error:(id *)a5
{
  v8 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v9 = [(PQLConnection *)self->_db fetch:@"SELECT recordIDSuffix FROM Assets WHERE assetType != %llu", 4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001FF85C;
  v15[3] = &unk_1003C1858;
  v10 = v8;
  v16 = v10;
  v17 = &v18;
  v11 = [v9 enumerateWithError:a5 block:v15];
  v12 = v11;
  if (a4)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    *a4 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  return v12;
}

- (BOOL)fetchFileListStats:(id *)a3 error:(id *)a4
{
  if (!a3)
  {
    return 1;
  }

  a3->var4 = 0;
  *&a3->var0 = 0u;
  *&a3->var2 = 0u;
  db = self->_db;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001FF97C;
  v6[3] = &unk_1003C1898;
  v6[4] = a3;
  return [(PQLConnection *)db groupInTransaction:a4 transaction:v6];
}

- (id)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  v5 = [(MBFileListDB *)self path];
  v6 = [NSString stringWithFormat:@"<%s: %p path=%@>", Name, self, v5];;

  return v6;
}

@end