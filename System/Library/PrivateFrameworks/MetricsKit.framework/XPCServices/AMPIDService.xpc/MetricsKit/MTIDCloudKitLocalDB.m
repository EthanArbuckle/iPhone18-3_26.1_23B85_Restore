@interface MTIDCloudKitLocalDB
- (BOOL)deleteIfExists:(id)a3 error:(id *)a4;
- (BOOL)deleteRecordWithID:(id)a3 error:(id *)a4;
- (BOOL)fileExists:(id)a3;
- (BOOL)setUserRecordIDName:(id)a3;
- (BOOL)writeData:(id)a3 forName:(id)a4 error:(id *)a5;
- (BOOL)writeRecord:(id)a3 error:(id *)a4;
- (MTIDCloudKitLocalDB)initWithContainerIdentifier:(id)a3 recordType:(id)a4 recordZoneID:(id)a5;
- (MTIDCloudKitLocalDBDelegate)delegate;
- (id)allRecords;
- (id)dataForName:(id)a3 error:(id *)a4;
- (id)encodeRecord:(id)a3;
- (id)pendingRecordIDs;
- (id)recordWithID:(id)a3 error:(id *)a4;
- (id)syncStatusCode;
- (id)userRecordIDName;
- (void)clearData;
- (void)setNeedsFetchRecords:(BOOL)a3;
- (void)setSyncStatusCode:(id)a3;
@end

@implementation MTIDCloudKitLocalDB

- (MTIDCloudKitLocalDB)initWithContainerIdentifier:(id)a3 recordType:(id)a4 recordZoneID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v37.receiver = self;
  v37.super_class = MTIDCloudKitLocalDB;
  v11 = [(MTIDCloudKitLocalDB *)&v37 init];
  v12 = v11;
  if (v11)
  {
    [(MTIDCloudKitLocalDB *)v11 setRecordType:v9];
    [(MTIDCloudKitLocalDB *)v12 setRecordZoneID:v10];
    v13 = +[NSFileManager defaultManager];
    v14 = +[MTFrameworkEnvironment sharedEnvironment];
    v15 = [v14 localDataPath];

    v16 = [NSURL fileURLWithPath:v15];
    v17 = [v16 URLByAppendingPathComponent:@"MetricsIdentifiers"];

    v18 = [v17 URLByAppendingPathComponent:v8];

    if (v18)
    {
      v36 = 0;
      v19 = [v13 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v36];
      v20 = v36;
      v21 = v20;
      if (v19)
      {
LABEL_7:
        [(MTIDCloudKitLocalDB *)v12 setPathURL:v18];

        goto LABEL_8;
      }

      v34 = v20;
      v35 = 0;
      v22 = [v18 path];
      v23 = [v13 fileExistsAtPath:v22 isDirectory:&v35];
      v24 = v35;

      if (v23 && (v24 & 1) != 0)
      {
        v21 = v34;
        goto LABEL_7;
      }

      v29 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v34;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "MetricsKit: Error: %@", buf, 0xCu);
      }

      v30 = [v18 path];
      v31 = [NSString stringWithFormat:@"Application doesn't have write access to %@", v30];
      v32 = [v34 userInfo];
      v27 = [NSException exceptionWithName:@"MTIDCloudKitLocalDB" reason:v31 userInfo:v32];
      v33 = v27;
    }

    else
    {
      v26 = [NSString stringWithFormat:@"MTFrameworkEnvironment.sharedEnvironment.localDataPath is not valid: %@", v15];
      v27 = [NSException exceptionWithName:@"MTIDCloudKitLocalDB" reason:v26 userInfo:0];
      v28 = v27;
    }

    objc_exception_throw(v27);
  }

LABEL_8:

  return v12;
}

- (id)dataForName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MTIDCloudKitLocalDB *)self pathURL];
  v8 = [v7 URLByAppendingPathComponent:v6];

  v16 = 0;
  v9 = [NSData dataWithContentsOfURL:v8 options:0 error:&v16];
  v10 = v16;
  v11 = v10;
  if (a4 && !v9)
  {
    v12 = [v10 domain];
    if ([v12 isEqualToString:NSCocoaErrorDomain])
    {
      v13 = [v11 code];

      if (v13 == 260)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v14 = v11;
    *a4 = v11;
  }

LABEL_8:

  return v9;
}

- (BOOL)writeData:(id)a3 forName:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(MTIDCloudKitLocalDB *)self pathURL];
    v11 = [v10 URLByAppendingPathComponent:v9];

    v12 = [v8 writeToURL:v11 options:1 error:a5];
    v9 = v11;
  }

  else
  {
    v12 = [(MTIDCloudKitLocalDB *)self deleteIfExists:v9 error:a5];
  }

  return v12;
}

- (BOOL)fileExists:(id)a3
{
  v4 = a3;
  v5 = [(MTIDCloudKitLocalDB *)self pathURL];
  v6 = [v5 URLByAppendingPathComponent:v4];

  v7 = +[NSFileManager defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8];

  return v9;
}

- (BOOL)deleteIfExists:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MTIDCloudKitLocalDB *)self pathURL];
  v8 = [v7 URLByAppendingPathComponent:v6];

  v9 = +[NSFileManager defaultManager];
  v16 = 0;
  v10 = [v9 removeItemAtURL:v8 error:&v16];
  v11 = v16;
  v12 = [v11 domain];
  if ([v12 isEqualToString:NSCocoaErrorDomain])
  {
    v13 = [v11 code] == 4;

    v10 |= v13;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if ((v10 & 1) == 0)
  {
    v14 = v11;
    *a4 = v11;
  }

LABEL_7:

  return v10 & 1;
}

- (id)encodeRecord:(id)a3
{
  v3 = a3;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v3 encodeSystemFieldsWithCoder:v4];
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  v6 = [v4 encodedData];
  [v5 encodeObject:v6 forKey:@"systemFields"];

  v7 = [v3 objectForKeyedSubscript:@"namespace"];
  [v5 encodeObject:v7 forKey:@"namespace"];

  v8 = [v3 objectForKeyedSubscript:@"secretKey"];
  [v5 encodeObject:v8 forKey:@"secretKey"];

  v9 = [v3 objectForKeyedSubscript:@"expiration"];
  [v5 encodeObject:v9 forKey:@"expiration"];

  v10 = [v3 mt_secretValue];

  [v5 encodeObject:v10 forKey:@"secretValue"];
  v11 = [v5 encodedData];

  return v11;
}

- (id)userRecordIDName
{
  v7 = 0;
  v2 = [(MTIDCloudKitLocalDB *)self dataForName:@"UserRecordID" error:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to load user record ID with error %@", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (!v2)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_8;
  }

  v5 = [[NSString alloc] initWithData:v2 encoding:4];
LABEL_8:

  return v5;
}

- (BOOL)setUserRecordIDName:(id)a3
{
  v4 = a3;
  v5 = [(MTIDCloudKitLocalDB *)self userRecordIDName];
  if (v5 == v4 || ([v4 isEqual:v5] & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v7 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "MetricsKit: CloudKit user has changed", buf, 2u);
    }

    [(MTIDCloudKitLocalDB *)self clearData];
    if (v4)
    {
      [(MTIDCloudKitLocalDB *)self setNeedsFetchRecords:1];
    }

    v8 = [v4 dataUsingEncoding:4];
    v13 = 0;
    v9 = [(MTIDCloudKitLocalDB *)self writeData:v8 forName:@"UserRecordID" error:&v13];
    v10 = v13;

    if ((v9 & 1) == 0)
    {
      v11 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to write user record ID with error %@", buf, 0xCu);
      }
    }

    [(MTIDCloudKitLocalDB *)self setZoneCreated:0];

    v6 = 1;
  }

  return v6;
}

- (void)setNeedsFetchRecords:(BOOL)a3
{
  if (a3)
  {
    v4 = [@"1" dataUsingEncoding:4];
    v8 = 0;
    [(MTIDCloudKitLocalDB *)self writeData:v4 forName:@"NeedsFetch" error:&v8];
    v5 = v8;

    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    [(MTIDCloudKitLocalDB *)self deleteIfExists:@"NeedsFetch" error:&v7];
    v5 = v7;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v6 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to write fetch file with error %@", buf, 0xCu);
  }

LABEL_8:
}

- (id)syncStatusCode
{
  v7 = 0;
  v2 = [(MTIDCloudKitLocalDB *)self dataForName:@"SyncEngineStatus" error:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to load sync engine status with error %@", buf, 0xCu);
    }

    v5 = 0;
  }

  else if (v2)
  {
    v5 = [[NSString alloc] initWithData:v2 encoding:4];
  }

  else
  {
    v5 = @"Starting";
  }

  return v5;
}

- (void)setSyncStatusCode:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];
  v8 = 0;
  v5 = [(MTIDCloudKitLocalDB *)self writeData:v4 forName:@"SyncEngineStatus" error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0)
  {
    v7 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to write sync engine status with error %@", buf, 0xCu);
    }
  }
}

- (BOOL)writeRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [v6 recordID];
  v9 = [v8 mt_syncingFileName];

  if (![v6 mt_isSynchronized])
  {
    v16 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v6 recordID];
      v18 = [v17 recordName];
      v19 = [v6 objectForKeyedSubscript:@"namespace"];
      v25 = 138412546;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "MetricsKit: Saving unsynchronized record with ID %@ for namespace %@", &v25, 0x16u);
    }

    v20 = [v6 recordID];
    v21 = [v20 mt_syncedFileName];
    v22 = [(MTIDCloudKitLocalDB *)v7 deleteIfExists:v21 error:a4];

    if (v22)
    {
      goto LABEL_9;
    }

LABEL_11:
    LOBYTE(a4) = 0;
    goto LABEL_12;
  }

  v10 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v6 recordID];
    v12 = [v11 recordName];
    v13 = [v6 objectForKeyedSubscript:@"namespace"];
    v25 = 138412546;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MetricsKit: Saving synchronized record with ID %@ for namespace %@", &v25, 0x16u);
  }

  if (![(MTIDCloudKitLocalDB *)v7 deleteIfExists:v9 error:a4])
  {
    goto LABEL_11;
  }

  v14 = [v6 recordID];
  v15 = [v14 mt_syncedFileName];

  v9 = v15;
LABEL_9:
  v23 = [(MTIDCloudKitLocalDB *)v7 encodeRecord:v6];
  LODWORD(a4) = [(MTIDCloudKitLocalDB *)v7 writeData:v23 forName:v9 error:a4];

  if (a4)
  {
    a4 = [(MTIDCloudKitLocalDB *)v7 delegate];
    [a4 cloudKitLocalDB:v7 didChangeRecord:v6];

    LOBYTE(a4) = 1;
  }

LABEL_12:

  objc_sync_exit(v7);
  return a4;
}

- (id)recordWithID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [v6 mt_syncedFileName];
  v9 = [(MTIDCloudKitLocalDB *)v7 fileExists:v8];
  if (!v9)
  {
    v10 = [v6 mt_syncingFileName];

    v8 = v10;
  }

  v11 = [(MTIDCloudKitLocalDB *)v7 dataForName:v8 error:a4];
  if (v11)
  {
    v12 = [(MTIDCloudKitLocalDB *)v7 decodeRecordFromData:v11 recordID:v6 isSynchronized:v9];
    if (!v12)
    {
      v17 = 0;
      v13 = [(MTIDCloudKitLocalDB *)v7 deleteIfExists:v8 error:&v17];
      v14 = v17;
      if ((v13 & 1) == 0)
      {
        v15 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v19 = v8;
          v20 = 2112;
          v21 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to delete corrupted data file %@ error %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  objc_sync_exit(v7);

  return v12;
}

- (BOOL)deleteRecordWithID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [v6 mt_syncingFileName];
  if ([(MTIDCloudKitLocalDB *)v7 deleteIfExists:v8 error:a4])
  {
    v9 = [v6 mt_syncedFileName];
    v10 = [(MTIDCloudKitLocalDB *)v7 deleteIfExists:v9 error:a4];
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(v7);
  return v10;
}

- (id)pendingRecordIDs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = +[NSFileManager defaultManager];
  v4 = +[NSMutableArray array];
  v5 = +[CKRecordID mt_syncingFileExtension];
  v6 = [(MTIDCloudKitLocalDB *)v2 pathURL];
  v7 = [v6 path];
  v8 = [v3 enumeratorAtPath:v7];
  v9 = 0;
LABEL_2:

  v10 = v9;
  while (1)
  {
    v9 = [v8 nextObject];

    if (!v9)
    {
      break;
    }

    v10 = v9;
    if ([v9 hasSuffix:v5])
    {
      v6 = [v9 substringToIndex:{objc_msgSend(v9, "length") - objc_msgSend(v5, "length")}];
      v11 = [CKRecordID alloc];
      v7 = [(MTIDCloudKitLocalDB *)v2 recordZoneID];
      v12 = [v11 initWithRecordName:v6 zoneID:v7];
      [v4 addObject:v12];

      goto LABEL_2;
    }
  }

  objc_sync_exit(v2);

  return v4;
}

- (void)clearData
{
  v3 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "MetricsKit: Clearing local CloudKit record cache", buf, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = +[NSFileManager defaultManager];
  v6 = [(MTIDCloudKitLocalDB *)v4 pathURL];
  v7 = [v5 enumeratorAtURL:v6 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v8 = 0;
  *&v9 = 138412546;
  v15 = v9;
  while (1)
  {
    v10 = [v7 nextObject];

    if (!v10)
    {
      break;
    }

    v16 = 0;
    v11 = [v5 removeItemAtURL:v10 error:&v16];
    v12 = v16;
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      v14 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = v15;
        v18 = v10;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to remove local record data %@ with error %@", buf, 0x16u);
      }
    }

    v8 = v10;
  }

  objc_sync_exit(v4);
}

- (id)allRecords
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(MTIDCloudKitLocalDB *)self pathURL];
  v5 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v6 = +[NSMutableArray array];
  v7 = [v5 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = [NSData dataWithContentsOfURL:v8 options:0 error:0];
      if (v9)
      {
        v10 = [v8 path];
        v11 = +[CKRecordID mt_syncedFileExtension];
        v12 = -[MTIDCloudKitLocalDB decodeRecordFromData:recordID:isSynchronized:](self, "decodeRecordFromData:recordID:isSynchronized:", v9, 0, [v10 hasSuffix:v11]);

        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v13 = [v5 nextObject];

      v8 = v13;
    }

    while (v13);
  }

  return v6;
}

- (MTIDCloudKitLocalDBDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end