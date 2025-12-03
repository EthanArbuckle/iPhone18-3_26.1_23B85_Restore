@interface MTIDCloudKitLocalDB
- (BOOL)deleteIfExists:(id)exists error:(id *)error;
- (BOOL)deleteRecordWithID:(id)d error:(id *)error;
- (BOOL)fileExists:(id)exists;
- (BOOL)setUserRecordIDName:(id)name;
- (BOOL)writeData:(id)data forName:(id)name error:(id *)error;
- (BOOL)writeRecord:(id)record error:(id *)error;
- (MTIDCloudKitLocalDB)initWithContainerIdentifier:(id)identifier recordType:(id)type recordZoneID:(id)d;
- (MTIDCloudKitLocalDBDelegate)delegate;
- (id)allRecords;
- (id)dataForName:(id)name error:(id *)error;
- (id)encodeRecord:(id)record;
- (id)pendingRecordIDs;
- (id)recordWithID:(id)d error:(id *)error;
- (id)syncStatusCode;
- (id)userRecordIDName;
- (void)clearData;
- (void)setNeedsFetchRecords:(BOOL)records;
- (void)setSyncStatusCode:(id)code;
@end

@implementation MTIDCloudKitLocalDB

- (MTIDCloudKitLocalDB)initWithContainerIdentifier:(id)identifier recordType:(id)type recordZoneID:(id)d
{
  identifierCopy = identifier;
  typeCopy = type;
  dCopy = d;
  v37.receiver = self;
  v37.super_class = MTIDCloudKitLocalDB;
  v11 = [(MTIDCloudKitLocalDB *)&v37 init];
  v12 = v11;
  if (v11)
  {
    [(MTIDCloudKitLocalDB *)v11 setRecordType:typeCopy];
    [(MTIDCloudKitLocalDB *)v12 setRecordZoneID:dCopy];
    v13 = +[NSFileManager defaultManager];
    v14 = +[MTFrameworkEnvironment sharedEnvironment];
    localDataPath = [v14 localDataPath];

    v16 = [NSURL fileURLWithPath:localDataPath];
    v17 = [v16 URLByAppendingPathComponent:@"MetricsIdentifiers"];

    v18 = [v17 URLByAppendingPathComponent:identifierCopy];

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
      path = [v18 path];
      v23 = [v13 fileExistsAtPath:path isDirectory:&v35];
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

      path2 = [v18 path];
      v31 = [NSString stringWithFormat:@"Application doesn't have write access to %@", path2];
      userInfo = [v34 userInfo];
      v27 = [NSException exceptionWithName:@"MTIDCloudKitLocalDB" reason:v31 userInfo:userInfo];
      v33 = v27;
    }

    else
    {
      v26 = [NSString stringWithFormat:@"MTFrameworkEnvironment.sharedEnvironment.localDataPath is not valid: %@", localDataPath];
      v27 = [NSException exceptionWithName:@"MTIDCloudKitLocalDB" reason:v26 userInfo:0];
      v28 = v27;
    }

    objc_exception_throw(v27);
  }

LABEL_8:

  return v12;
}

- (id)dataForName:(id)name error:(id *)error
{
  nameCopy = name;
  pathURL = [(MTIDCloudKitLocalDB *)self pathURL];
  v8 = [pathURL URLByAppendingPathComponent:nameCopy];

  v16 = 0;
  v9 = [NSData dataWithContentsOfURL:v8 options:0 error:&v16];
  v10 = v16;
  v11 = v10;
  if (error && !v9)
  {
    domain = [v10 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [v11 code];

      if (code == 260)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v14 = v11;
    *error = v11;
  }

LABEL_8:

  return v9;
}

- (BOOL)writeData:(id)data forName:(id)name error:(id *)error
{
  dataCopy = data;
  nameCopy = name;
  if (dataCopy)
  {
    pathURL = [(MTIDCloudKitLocalDB *)self pathURL];
    v11 = [pathURL URLByAppendingPathComponent:nameCopy];

    v12 = [dataCopy writeToURL:v11 options:1 error:error];
    nameCopy = v11;
  }

  else
  {
    v12 = [(MTIDCloudKitLocalDB *)self deleteIfExists:nameCopy error:error];
  }

  return v12;
}

- (BOOL)fileExists:(id)exists
{
  existsCopy = exists;
  pathURL = [(MTIDCloudKitLocalDB *)self pathURL];
  v6 = [pathURL URLByAppendingPathComponent:existsCopy];

  v7 = +[NSFileManager defaultManager];
  path = [v6 path];
  v9 = [v7 fileExistsAtPath:path];

  return v9;
}

- (BOOL)deleteIfExists:(id)exists error:(id *)error
{
  existsCopy = exists;
  pathURL = [(MTIDCloudKitLocalDB *)self pathURL];
  v8 = [pathURL URLByAppendingPathComponent:existsCopy];

  v9 = +[NSFileManager defaultManager];
  v16 = 0;
  v10 = [v9 removeItemAtURL:v8 error:&v16];
  v11 = v16;
  domain = [v11 domain];
  if ([domain isEqualToString:NSCocoaErrorDomain])
  {
    v13 = [v11 code] == 4;

    v10 |= v13;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!error)
    {
      goto LABEL_7;
    }
  }

  if ((v10 & 1) == 0)
  {
    v14 = v11;
    *error = v11;
  }

LABEL_7:

  return v10 & 1;
}

- (id)encodeRecord:(id)record
{
  recordCopy = record;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [recordCopy encodeSystemFieldsWithCoder:v4];
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  encodedData = [v4 encodedData];
  [v5 encodeObject:encodedData forKey:@"systemFields"];

  v7 = [recordCopy objectForKeyedSubscript:@"namespace"];
  [v5 encodeObject:v7 forKey:@"namespace"];

  v8 = [recordCopy objectForKeyedSubscript:@"secretKey"];
  [v5 encodeObject:v8 forKey:@"secretKey"];

  v9 = [recordCopy objectForKeyedSubscript:@"expiration"];
  [v5 encodeObject:v9 forKey:@"expiration"];

  mt_secretValue = [recordCopy mt_secretValue];

  [v5 encodeObject:mt_secretValue forKey:@"secretValue"];
  encodedData2 = [v5 encodedData];

  return encodedData2;
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

- (BOOL)setUserRecordIDName:(id)name
{
  nameCopy = name;
  userRecordIDName = [(MTIDCloudKitLocalDB *)self userRecordIDName];
  if (userRecordIDName == nameCopy || ([nameCopy isEqual:userRecordIDName] & 1) != 0)
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
    if (nameCopy)
    {
      [(MTIDCloudKitLocalDB *)self setNeedsFetchRecords:1];
    }

    v8 = [nameCopy dataUsingEncoding:4];
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

- (void)setNeedsFetchRecords:(BOOL)records
{
  if (records)
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

- (void)setSyncStatusCode:(id)code
{
  v4 = [code dataUsingEncoding:4];
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

- (BOOL)writeRecord:(id)record error:(id *)error
{
  recordCopy = record;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  recordID = [recordCopy recordID];
  mt_syncingFileName = [recordID mt_syncingFileName];

  if (![recordCopy mt_isSynchronized])
  {
    v16 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      recordID2 = [recordCopy recordID];
      recordName = [recordID2 recordName];
      v19 = [recordCopy objectForKeyedSubscript:@"namespace"];
      v25 = 138412546;
      v26 = recordName;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "MetricsKit: Saving unsynchronized record with ID %@ for namespace %@", &v25, 0x16u);
    }

    recordID3 = [recordCopy recordID];
    mt_syncedFileName = [recordID3 mt_syncedFileName];
    v22 = [(MTIDCloudKitLocalDB *)selfCopy deleteIfExists:mt_syncedFileName error:error];

    if (v22)
    {
      goto LABEL_9;
    }

LABEL_11:
    LOBYTE(error) = 0;
    goto LABEL_12;
  }

  v10 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    recordID4 = [recordCopy recordID];
    recordName2 = [recordID4 recordName];
    v13 = [recordCopy objectForKeyedSubscript:@"namespace"];
    v25 = 138412546;
    v26 = recordName2;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MetricsKit: Saving synchronized record with ID %@ for namespace %@", &v25, 0x16u);
  }

  if (![(MTIDCloudKitLocalDB *)selfCopy deleteIfExists:mt_syncingFileName error:error])
  {
    goto LABEL_11;
  }

  recordID5 = [recordCopy recordID];
  mt_syncedFileName2 = [recordID5 mt_syncedFileName];

  mt_syncingFileName = mt_syncedFileName2;
LABEL_9:
  v23 = [(MTIDCloudKitLocalDB *)selfCopy encodeRecord:recordCopy];
  LODWORD(error) = [(MTIDCloudKitLocalDB *)selfCopy writeData:v23 forName:mt_syncingFileName error:error];

  if (error)
  {
    error = [(MTIDCloudKitLocalDB *)selfCopy delegate];
    [error cloudKitLocalDB:selfCopy didChangeRecord:recordCopy];

    LOBYTE(error) = 1;
  }

LABEL_12:

  objc_sync_exit(selfCopy);
  return error;
}

- (id)recordWithID:(id)d error:(id *)error
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mt_syncedFileName = [dCopy mt_syncedFileName];
  v9 = [(MTIDCloudKitLocalDB *)selfCopy fileExists:mt_syncedFileName];
  if (!v9)
  {
    mt_syncingFileName = [dCopy mt_syncingFileName];

    mt_syncedFileName = mt_syncingFileName;
  }

  v11 = [(MTIDCloudKitLocalDB *)selfCopy dataForName:mt_syncedFileName error:error];
  if (v11)
  {
    v12 = [(MTIDCloudKitLocalDB *)selfCopy decodeRecordFromData:v11 recordID:dCopy isSynchronized:v9];
    if (!v12)
    {
      v17 = 0;
      v13 = [(MTIDCloudKitLocalDB *)selfCopy deleteIfExists:mt_syncedFileName error:&v17];
      v14 = v17;
      if ((v13 & 1) == 0)
      {
        v15 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v19 = mt_syncedFileName;
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

  objc_sync_exit(selfCopy);

  return v12;
}

- (BOOL)deleteRecordWithID:(id)d error:(id *)error
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mt_syncingFileName = [dCopy mt_syncingFileName];
  if ([(MTIDCloudKitLocalDB *)selfCopy deleteIfExists:mt_syncingFileName error:error])
  {
    mt_syncedFileName = [dCopy mt_syncedFileName];
    v10 = [(MTIDCloudKitLocalDB *)selfCopy deleteIfExists:mt_syncedFileName error:error];
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(selfCopy);
  return v10;
}

- (id)pendingRecordIDs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = +[NSFileManager defaultManager];
  v4 = +[NSMutableArray array];
  v5 = +[CKRecordID mt_syncingFileExtension];
  pathURL = [(MTIDCloudKitLocalDB *)selfCopy pathURL];
  path = [pathURL path];
  v8 = [v3 enumeratorAtPath:path];
  nextObject = 0;
LABEL_2:

  v10 = nextObject;
  while (1)
  {
    nextObject = [v8 nextObject];

    if (!nextObject)
    {
      break;
    }

    v10 = nextObject;
    if ([nextObject hasSuffix:v5])
    {
      pathURL = [nextObject substringToIndex:{objc_msgSend(nextObject, "length") - objc_msgSend(v5, "length")}];
      v11 = [CKRecordID alloc];
      path = [(MTIDCloudKitLocalDB *)selfCopy recordZoneID];
      v12 = [v11 initWithRecordName:pathURL zoneID:path];
      [v4 addObject:v12];

      goto LABEL_2;
    }
  }

  objc_sync_exit(selfCopy);

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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = +[NSFileManager defaultManager];
  pathURL = [(MTIDCloudKitLocalDB *)selfCopy pathURL];
  v7 = [v5 enumeratorAtURL:pathURL includingPropertiesForKeys:0 options:1 errorHandler:0];

  v8 = 0;
  *&v9 = 138412546;
  v15 = v9;
  while (1)
  {
    nextObject = [v7 nextObject];

    if (!nextObject)
    {
      break;
    }

    v16 = 0;
    v11 = [v5 removeItemAtURL:nextObject error:&v16];
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
        v18 = nextObject;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to remove local record data %@ with error %@", buf, 0x16u);
      }
    }

    v8 = nextObject;
  }

  objc_sync_exit(selfCopy);
}

- (id)allRecords
{
  v3 = +[NSFileManager defaultManager];
  pathURL = [(MTIDCloudKitLocalDB *)self pathURL];
  v5 = [v3 enumeratorAtURL:pathURL includingPropertiesForKeys:0 options:1 errorHandler:0];

  v6 = +[NSMutableArray array];
  nextObject = [v5 nextObject];
  if (nextObject)
  {
    v8 = nextObject;
    do
    {
      v9 = [NSData dataWithContentsOfURL:v8 options:0 error:0];
      if (v9)
      {
        path = [v8 path];
        v11 = +[CKRecordID mt_syncedFileExtension];
        v12 = -[MTIDCloudKitLocalDB decodeRecordFromData:recordID:isSynchronized:](self, "decodeRecordFromData:recordID:isSynchronized:", v9, 0, [path hasSuffix:v11]);

        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      nextObject2 = [v5 nextObject];

      v8 = nextObject2;
    }

    while (nextObject2);
  }

  return v6;
}

- (MTIDCloudKitLocalDBDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end