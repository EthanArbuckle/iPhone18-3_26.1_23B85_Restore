@interface UARPDynamicAssetCmapDatabase
- (BOOL)addCmapMapping:(id)a3;
- (BOOL)cleanUpCmapDatabaseFiles;
- (BOOL)cmapDatabaseFileExists;
- (BOOL)createCmapDatabaseFile;
- (BOOL)decomposeUARP;
- (BOOL)flushToDisk;
- (UARPDynamicAssetCmapDatabase)init;
- (UARPDynamicAssetCmapDatabase)initWithCoder:(id)a3;
- (id)expandCrshData:(id)a3 withAppleModelNumber:(id)a4;
- (id)findCmapDatabaseFileUrl;
- (id)findCmapforAppleModel:(id)a3;
- (id)initCmapDatabase:(id)a3;
- (void)cleanUpCmapDatabaseFiles;
- (void)createCmapDatabaseFile;
- (void)flushToDisk;
@end

@implementation UARPDynamicAssetCmapDatabase

- (UARPDynamicAssetCmapDatabase)init
{
  [(UARPDynamicAssetCmapDatabase *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initCmapDatabase:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = UARPDynamicAssetCmapDatabase;
  v6 = [(UARPDynamicAssetCmapDatabase *)&v19 init];
  v7 = os_log_create("com.apple.accessoryupdater.uarp", "crsh");
  v8 = *(v6 + 4);
  *(v6 + 4) = v7;

  if (![v6 cmapDatabaseFileExists])
  {
LABEL_7:
    if (!*(v6 + 3))
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = *(v6 + 3);
      *(v6 + 3) = v14;
    }

    if (v5)
    {
      objc_storeStrong(v6 + 1, a3);
    }

    v6 = v6;
    v16 = v6;
    goto LABEL_12;
  }

  v9 = [v6 findCmapDatabaseFileUrl];
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9];
    v18 = 0;
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v18];
    v13 = v18;

    if (!v12 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCmapDatabase initCmapDatabase:];
    }

    v6 = v12;
    goto LABEL_7;
  }

  if (os_log_type_enabled(*(v6 + 4), OS_LOG_TYPE_ERROR))
  {
    [UARPDynamicAssetCmapDatabase initCmapDatabase:];
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (UARPDynamicAssetCmapDatabase)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = UARPDynamicAssetCmapDatabase;
  v5 = [(UARPDynamicAssetCmapDatabase *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"cmap"];

    v10 = [v9 mutableCopy];
    cmapDatabase = v5->_cmapDatabase;
    v5->_cmapDatabase = v10;

    v12 = os_log_create("com.apple.accessoryupdater.uarp", "crsh");
    log = v5->_log;
    v5->_log = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)flushToDisk
{
  v3 = [(UARPDynamicAssetCmapDatabase *)self findCmapDatabaseFileUrl];
  if (v3)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v8];
    v5 = v8;
    if (!v4 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCmapDatabase flushToDisk];
    }

    v6 = [v4 writeToURL:v3 atomically:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)decomposeUARP
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  asset = self->_asset;
  self->_asset = v3;

  if ([(UARPSuperBinaryAsset *)self->_asset expandHeadersAndTLVs:0])
  {
    v5 = +[UARPDynamicAssetCmapMapping tag];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(UARPSuperBinaryAsset *)self->_asset payloads];
    v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      v27 = v5;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          v11 = [v10 payloadTag];
          v12 = [v11 tag];
          v13 = [v5 tag];

          if (v12 == v13)
          {
            [v10 rangePayload];
            v15 = [(UARPSuperBinaryAsset *)self->_asset payloadData:v10 range:0 error:v14, 0];
            if (!v15)
            {
              goto LABEL_19;
            }

            v16 = v15;
            v17 = MEMORY[0x277CBEB98];
            v18 = objc_opt_class();
            v19 = objc_opt_class();
            v26 = objc_opt_class();
            v20 = [v17 setWithObjects:{v18, v19, v26, objc_opt_class(), 0}];
            v21 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v20 fromData:v16 error:0];
            if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {

              v5 = v27;
LABEL_19:

              v23 = 0;
              goto LABEL_20;
            }

            v22 = [(UARPDynamicAssetCmapDatabase *)self addCmapMapping:v21];

            v5 = v27;
            if (!v22)
            {
              goto LABEL_19;
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    if (self->_cmapDatabase)
    {
      [(UARPDynamicAssetCmapDatabase *)self flushToDisk];
    }

    v23 = 1;
LABEL_20:
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)addCmapMapping:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"AppleModelNumber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(UARPDynamicAssetCmapDatabase *)self findCmapforAppleModel:v5];
    v7 = [v4 objectForKeyedSubscript:@"sections"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v6)
      {
LABEL_6:
        v8 = [[UARPDynamicAssetCmapMapping alloc] initWithEventsArray:v7 appleModelNumber:v5];
        if (v8)
        {
          [(NSMutableArray *)self->_cmapDatabase addObject:v8];
        }

        goto LABEL_9;
      }

      if (MGGetBoolAnswer())
      {
        [(NSMutableArray *)self->_cmapDatabase removeObject:v6];
        goto LABEL_6;
      }

      if ([v6 appendCmapEventsArray:v7])
      {
LABEL_9:
        v9 = 1;
LABEL_16:

        goto LABEL_17;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetCmapDatabase addCmapMapping:];
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCmapDatabase addCmapMapping:];
    }

    v9 = 0;
    goto LABEL_16;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPDynamicAssetCmapDatabase addCmapMapping:];
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (id)findCmapforAppleModel:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_cmapDatabase;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isEqualAppleModel:{v4, v12}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)expandCrshData:(id)a3 withAppleModelNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UARPDynamicAssetCmapDatabase *)self findCmapforAppleModel:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 expandCrshDictionary:v6];
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCmapDatabase expandCrshData:withAppleModelNumber:];
    }

    v10 = 0;
  }

  return v10;
}

- (id)findCmapDatabaseFileUrl
{
  if ([(UARPDynamicAssetCmapDatabase *)self cmapDatabaseFileExists]|| [(UARPDynamicAssetCmapDatabase *)self createCmapDatabaseFile])
  {
    v3 = MEMORY[0x277CBEBC0];
    v4 = UARPStringCmapDatabaseFilePath();
    v5 = [v3 fileURLWithPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)createCmapDatabaseFile
{
  if ([(UARPDynamicAssetCmapDatabase *)self cmapDatabaseFileExists])
  {
    return 1;
  }

  v4 = UARPStringCmapDirectoryPath();
  UARPUtilsCreateTemporaryFolder(v4);

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = UARPStringCmapDatabaseFilePath();
  v3 = [v5 createFileAtPath:v6 contents:0 attributes:0];

  if ((v3 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetCmapDatabase *)log createCmapDatabaseFile];
    }
  }

  return v3;
}

- (BOOL)cmapDatabaseFileExists
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = UARPStringCmapDatabaseFilePath();
  v4 = [v2 fileExistsAtPath:v3];

  return v4;
}

- (BOOL)cleanUpCmapDatabaseFiles
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = UARPStringCmapDirectoryPath();
  v9 = 0;
  v5 = [v3 removeItemAtPath:v4 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetCmapDatabase *)log cleanUpCmapDatabaseFiles];
    }
  }

  return v5;
}

- (void)initCmapDatabase:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initCmapDatabase:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)flushToDisk
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addCmapMapping:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addCmapMapping:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addCmapMapping:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)expandCrshData:withAppleModelNumber:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createCmapDatabaseFile
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = UARPStringCmapDatabaseFilePath();
  v4[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_247AA7000, v1, OS_LOG_TYPE_ERROR, "%s: Unable to create file at %@", v4, 0x16u);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpCmapDatabaseFiles
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = UARPStringCmapDirectoryPath();
  v7[0] = 136315650;
  OUTLINED_FUNCTION_2();
  v8 = v5;
  v9 = a2;
  _os_log_error_impl(&dword_247AA7000, v3, OS_LOG_TYPE_ERROR, "%s: Unable to remove files at %@ (%@)", v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

@end