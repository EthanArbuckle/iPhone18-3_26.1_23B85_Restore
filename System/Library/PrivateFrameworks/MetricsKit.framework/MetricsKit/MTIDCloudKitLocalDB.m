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
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v41.receiver = self;
  v41.super_class = MTIDCloudKitLocalDB;
  v11 = [(MTIDCloudKitLocalDB *)&v41 init];
  v12 = v11;
  if (v11)
  {
    [(MTIDCloudKitLocalDB *)v11 setRecordType:v9];
    [(MTIDCloudKitLocalDB *)v12 setRecordZoneID:v10];
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = +[MTFrameworkEnvironment sharedEnvironment];
    v15 = [v14 localDataPath];

    v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
    v17 = [v16 URLByAppendingPathComponent:@"MetricsIdentifiers"];

    v18 = [v17 URLByAppendingPathComponent:v8];

    if (v18)
    {
      v40 = 0;
      v19 = [v13 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v40];
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
      v22 = [v18 path];
      v23 = [v13 fileExistsAtPath:v22 isDirectory:&v39];
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
      v34 = [v18 path];
      v35 = [v33 stringWithFormat:@"Application doesn't have write access to %@", v34];
      v36 = [v38 userInfo];
      v29 = [v32 exceptionWithName:@"MTIDCloudKitLocalDB" reason:v35 userInfo:v36];
      v37 = v29;
    }

    else
    {
      v27 = MEMORY[0x277CBEAD8];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTFrameworkEnvironment.sharedEnvironment.localDataPath is not valid: %@", v15];
      v29 = [v27 exceptionWithName:@"MTIDCloudKitLocalDB" reason:v28 userInfo:0];
      v30 = v29;
    }

    objc_exception_throw(v29);
  }

LABEL_8:

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)dataForName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MTIDCloudKitLocalDB *)self pathURL];
  v8 = [v7 URLByAppendingPathComponent:v6];

  v16 = 0;
  v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8 options:0 error:&v16];
  v10 = v16;
  v11 = v10;
  if (a4 && !v9)
  {
    v12 = [v10 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CCA050]])
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

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8];

  return v9;
}

- (BOOL)deleteIfExists:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MTIDCloudKitLocalDB *)self pathURL];
  v8 = [v7 URLByAppendingPathComponent:v6];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  v10 = [v9 removeItemAtURL:v8 error:&v16];
  v11 = v16;
  v12 = [v11 domain];
  if ([v12 isEqualToString:*MEMORY[0x277CCA050]])
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
  v3 = MEMORY[0x277CCAAB0];
  v4 = a3;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v4 encodeSystemFieldsWithCoder:v5];
  v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  v7 = [v5 encodedData];
  [v6 encodeObject:v7 forKey:@"systemFields"];

  v8 = [v4 objectForKeyedSubscript:@"namespace"];
  [v6 encodeObject:v8 forKey:@"namespace"];

  v9 = [v4 objectForKeyedSubscript:@"secretKey"];
  [v6 encodeObject:v9 forKey:@"secretKey"];

  v10 = [v4 objectForKeyedSubscript:@"expiration"];
  [v6 encodeObject:v10 forKey:@"expiration"];

  v11 = [v4 mt_secretValue];

  [v6 encodeObject:v11 forKey:@"secretValue"];
  v12 = [v6 encodedData];

  return v12;
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

- (BOOL)setUserRecordIDName:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_DEBUG, "MetricsKit: CloudKit user has changed", buf, 2u);
    }

    [(MTIDCloudKitLocalDB *)self clearData];
    if (v4)
    {
      [(MTIDCloudKitLocalDB *)self setNeedsFetchRecords:1];
    }

    v8 = [v4 dataUsingEncoding:4];
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

- (void)setNeedsFetchRecords:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
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

- (void)setSyncStatusCode:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a3 dataUsingEncoding:4];
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

- (BOOL)writeRecord:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
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
      v26 = 138412546;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_258F4B000, v16, OS_LOG_TYPE_DEBUG, "MetricsKit: Saving unsynchronized record with ID %@ for namespace %@", &v26, 0x16u);
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
    v26 = 138412546;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_258F4B000, v10, OS_LOG_TYPE_DEBUG, "MetricsKit: Saving synchronized record with ID %@ for namespace %@", &v26, 0x16u);
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
  v24 = *MEMORY[0x277D85DE8];
  return a4;
}

- (id)recordWithID:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [v6 mt_syncedFileName];
  v9 = [(MTIDCloudKitLocalDB *)v7 fileExists:v8];
  if ((v9 & 1) == 0)
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
      v18 = 0;
      v13 = [(MTIDCloudKitLocalDB *)v7 deleteIfExists:v8 error:&v18];
      v14 = v18;
      if (!v13)
      {
        v15 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v20 = v8;
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

  objc_sync_exit(v7);
  v16 = *MEMORY[0x277D85DE8];

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
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBC5D0] mt_syncingFileExtension];
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
      v11 = objc_alloc(MEMORY[0x277CBC5D0]);
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
  v22 = *MEMORY[0x277D85DE8];
  v3 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_258F4B000, v3, OS_LOG_TYPE_DEBUG, "MetricsKit: Clearing local CloudKit record cache", buf, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(MTIDCloudKitLocalDB *)v4 pathURL];
  v7 = [v5 enumeratorAtURL:v6 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v8 = 0;
  *&v9 = 138412546;
  v16 = v9;
  while (1)
  {
    v10 = [v7 nextObject];

    if (!v10)
    {
      break;
    }

    v17 = 0;
    v11 = [v5 removeItemAtURL:v10 error:&v17];
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
        v19 = v10;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_258F4B000, v14, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to remove local record data %@ with error %@", buf, 0x16u);
      }
    }

    v8 = v10;
  }

  objc_sync_exit(v4);
  v15 = *MEMORY[0x277D85DE8];
}

- (id)allRecords
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(MTIDCloudKitLocalDB *)self pathURL];
  v5 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v5 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8 options:0 error:0];
      if (v9)
      {
        v10 = [v8 path];
        v11 = [MEMORY[0x277CBC5D0] mt_syncedFileExtension];
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