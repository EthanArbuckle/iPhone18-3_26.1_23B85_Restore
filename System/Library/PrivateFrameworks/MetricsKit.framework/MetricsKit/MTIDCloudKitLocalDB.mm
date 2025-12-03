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
  v44 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typeCopy = type;
  dCopy = d;
  v41.receiver = self;
  v41.super_class = MTIDCloudKitLocalDB;
  v11 = [(MTIDCloudKitLocalDB *)&v41 init];
  v12 = v11;
  if (v11)
  {
    [(MTIDCloudKitLocalDB *)v11 setRecordType:typeCopy];
    [(MTIDCloudKitLocalDB *)v12 setRecordZoneID:dCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v14 = +[MTFrameworkEnvironment sharedEnvironment];
    localDataPath = [v14 localDataPath];

    v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:localDataPath];
    v17 = [v16 URLByAppendingPathComponent:@"MetricsIdentifiers"];

    v18 = [v17 URLByAppendingPathComponent:identifierCopy];

    if (v18)
    {
      v40 = 0;
      v19 = [defaultManager createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v40];
      v20 = v40;
      v21 = v20;
      if (v19)
      {
LABEL_7:
        [(MTIDCloudKitLocalDB *)v12 setPathURL:v18];

        goto LABEL_8;
      }

      v38 = v20;
      v39 = 0;
      path = [v18 path];
      v23 = [defaultManager fileExistsAtPath:path isDirectory:&v39];
      v24 = v39;

      if (v23 && (v24 & 1) != 0)
      {
        v21 = v38;
        goto LABEL_7;
      }

      v31 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v38;
        _os_log_impl(&dword_258F4B000, v31, OS_LOG_TYPE_ERROR, "MetricsKit: Error: %@", buf, 0xCu);
      }

      v32 = MEMORY[0x277CBEAD8];
      v33 = MEMORY[0x277CCACA8];
      path2 = [v18 path];
      v35 = [v33 stringWithFormat:@"Application doesn't have write access to %@", path2];
      userInfo = [v38 userInfo];
      v29 = [v32 exceptionWithName:@"MTIDCloudKitLocalDB" reason:v35 userInfo:userInfo];
      v37 = v29;
    }

    else
    {
      v27 = MEMORY[0x277CBEAD8];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTFrameworkEnvironment.sharedEnvironment.localDataPath is not valid: %@", localDataPath];
      v29 = [v27 exceptionWithName:@"MTIDCloudKitLocalDB" reason:v28 userInfo:0];
      v30 = v29;
    }

    objc_exception_throw(v29);
  }

LABEL_8:

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)dataForName:(id)name error:(id *)error
{
  nameCopy = name;
  pathURL = [(MTIDCloudKitLocalDB *)self pathURL];
  v8 = [pathURL URLByAppendingPathComponent:nameCopy];

  v16 = 0;
  v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8 options:0 error:&v16];
  v10 = v16;
  v11 = v10;
  if (error && !v9)
  {
    domain = [v10 domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA050]])
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

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v6 path];
  v9 = [defaultManager fileExistsAtPath:path];

  return v9;
}

- (BOOL)deleteIfExists:(id)exists error:(id *)error
{
  existsCopy = exists;
  pathURL = [(MTIDCloudKitLocalDB *)self pathURL];
  v8 = [pathURL URLByAppendingPathComponent:existsCopy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  v10 = [defaultManager removeItemAtURL:v8 error:&v16];
  v11 = v16;
  domain = [v11 domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA050]])
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
  v3 = MEMORY[0x277CCAAB0];
  recordCopy = record;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [recordCopy encodeSystemFieldsWithCoder:v5];
  v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  encodedData = [v5 encodedData];
  [v6 encodeObject:encodedData forKey:@"systemFields"];

  v8 = [recordCopy objectForKeyedSubscript:@"namespace"];
  [v6 encodeObject:v8 forKey:@"namespace"];

  v9 = [recordCopy objectForKeyedSubscript:@"secretKey"];
  [v6 encodeObject:v9 forKey:@"secretKey"];

  v10 = [recordCopy objectForKeyedSubscript:@"expiration"];
  [v6 encodeObject:v10 forKey:@"expiration"];

  mt_secretValue = [recordCopy mt_secretValue];

  [v6 encodeObject:mt_secretValue forKey:@"secretValue"];
  encodedData2 = [v6 encodedData];

  return encodedData2;
}

- (id)userRecordIDName
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = [(MTIDCloudKitLocalDB *)self dataForName:@"UserRecordID" error:&v8];
  v3 = v8;
  if (v3)
  {
    v4 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_258F4B000, v4, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to load user record ID with error %@", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (!v2)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_8;
  }

  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v2 encoding:4];
LABEL_8:

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)setUserRecordIDName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_DEBUG, "MetricsKit: CloudKit user has changed", buf, 2u);
    }

    [(MTIDCloudKitLocalDB *)self clearData];
    if (nameCopy)
    {
      [(MTIDCloudKitLocalDB *)self setNeedsFetchRecords:1];
    }

    v8 = [nameCopy dataUsingEncoding:4];
    v14 = 0;
    v9 = [(MTIDCloudKitLocalDB *)self writeData:v8 forName:@"UserRecordID" error:&v14];
    v10 = v14;

    if (!v9)
    {
      v11 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&dword_258F4B000, v11, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to write user record ID with error %@", buf, 0xCu);
      }
    }

    [(MTIDCloudKitLocalDB *)self setZoneCreated:0];

    v6 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setNeedsFetchRecords:(BOOL)records
{
  v12 = *MEMORY[0x277D85DE8];
  if (records)
  {
    v4 = [@"1" dataUsingEncoding:4];
    v9 = 0;
    [(MTIDCloudKitLocalDB *)self writeData:v4 forName:@"NeedsFetch" error:&v9];
    v5 = v9;

    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    [(MTIDCloudKitLocalDB *)self deleteIfExists:@"NeedsFetch" error:&v8];
    v5 = v8;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v6 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_258F4B000, v6, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to write fetch file with error %@", buf, 0xCu);
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
}

- (id)syncStatusCode
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = [(MTIDCloudKitLocalDB *)self dataForName:@"SyncEngineStatus" error:&v8];
  v3 = v8;
  if (v3)
  {
    v4 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_258F4B000, v4, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to load sync engine status with error %@", buf, 0xCu);
    }

    v5 = 0;
  }

  else if (v2)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v2 encoding:4];
  }

  else
  {
    v5 = @"Starting";
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setSyncStatusCode:(id)code
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [code dataUsingEncoding:4];
  v9 = 0;
  v5 = [(MTIDCloudKitLocalDB *)self writeData:v4 forName:@"SyncEngineStatus" error:&v9];
  v6 = v9;

  if (!v5)
  {
    v7 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to write sync engine status with error %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)writeRecord:(id)record error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
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
      v26 = 138412546;
      v27 = recordName;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_258F4B000, v16, OS_LOG_TYPE_DEBUG, "MetricsKit: Saving unsynchronized record with ID %@ for namespace %@", &v26, 0x16u);
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
    v26 = 138412546;
    v27 = recordName2;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_258F4B000, v10, OS_LOG_TYPE_DEBUG, "MetricsKit: Saving synchronized record with ID %@ for namespace %@", &v26, 0x16u);
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
  v24 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)recordWithID:(id)d error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mt_syncedFileName = [dCopy mt_syncedFileName];
  v9 = [(MTIDCloudKitLocalDB *)selfCopy fileExists:mt_syncedFileName];
  if ((v9 & 1) == 0)
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
      v18 = 0;
      v13 = [(MTIDCloudKitLocalDB *)selfCopy deleteIfExists:mt_syncedFileName error:&v18];
      v14 = v18;
      if (!v13)
      {
        v15 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v20 = mt_syncedFileName;
          v21 = 2112;
          v22 = v14;
          _os_log_impl(&dword_258F4B000, v15, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to delete corrupted data file %@ error %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x277D85DE8];

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
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  array = [MEMORY[0x277CBEB18] array];
  mt_syncingFileExtension = [MEMORY[0x277CBC5D0] mt_syncingFileExtension];
  pathURL = [(MTIDCloudKitLocalDB *)selfCopy pathURL];
  path = [pathURL path];
  v8 = [defaultManager enumeratorAtPath:path];
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
    if ([nextObject hasSuffix:mt_syncingFileExtension])
    {
      pathURL = [nextObject substringToIndex:{objc_msgSend(nextObject, "length") - objc_msgSend(mt_syncingFileExtension, "length")}];
      v11 = objc_alloc(MEMORY[0x277CBC5D0]);
      path = [(MTIDCloudKitLocalDB *)selfCopy recordZoneID];
      v12 = [v11 initWithRecordName:pathURL zoneID:path];
      [array addObject:v12];

      goto LABEL_2;
    }
  }

  objc_sync_exit(selfCopy);

  return array;
}

- (void)clearData
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_258F4B000, v3, OS_LOG_TYPE_DEBUG, "MetricsKit: Clearing local CloudKit record cache", buf, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  pathURL = [(MTIDCloudKitLocalDB *)selfCopy pathURL];
  v7 = [defaultManager enumeratorAtURL:pathURL includingPropertiesForKeys:0 options:1 errorHandler:0];

  v8 = 0;
  *&v9 = 138412546;
  v16 = v9;
  while (1)
  {
    nextObject = [v7 nextObject];

    if (!nextObject)
    {
      break;
    }

    v17 = 0;
    v11 = [defaultManager removeItemAtURL:nextObject error:&v17];
    v12 = v17;
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
        *buf = v16;
        v19 = nextObject;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_258F4B000, v14, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to remove local record data %@ with error %@", buf, 0x16u);
      }
    }

    v8 = nextObject;
  }

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x277D85DE8];
}

- (id)allRecords
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  pathURL = [(MTIDCloudKitLocalDB *)self pathURL];
  v5 = [defaultManager enumeratorAtURL:pathURL includingPropertiesForKeys:0 options:1 errorHandler:0];

  array = [MEMORY[0x277CBEB18] array];
  nextObject = [v5 nextObject];
  if (nextObject)
  {
    v8 = nextObject;
    do
    {
      v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8 options:0 error:0];
      if (v9)
      {
        path = [v8 path];
        mt_syncedFileExtension = [MEMORY[0x277CBC5D0] mt_syncedFileExtension];
        v12 = -[MTIDCloudKitLocalDB decodeRecordFromData:recordID:isSynchronized:](self, "decodeRecordFromData:recordID:isSynchronized:", v9, 0, [path hasSuffix:mt_syncedFileExtension]);

        if (v12)
        {
          [array addObject:v12];
        }
      }

      nextObject2 = [v5 nextObject];

      v8 = nextObject2;
    }

    while (nextObject2);
  }

  return array;
}

- (MTIDCloudKitLocalDBDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end