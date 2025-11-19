@interface UARPDynamicAssetTmapDatabase
- (BOOL)addTmapMapping:(id)a3;
- (BOOL)cleanUpTmapDatabaseFiles;
- (BOOL)createTmapDatabaseFile;
- (BOOL)decomposeUARP;
- (BOOL)flushToDisk;
- (BOOL)loadPlist;
- (BOOL)tmapDatabaseFileExists;
- (UARPDynamicAssetTmapDatabase)init;
- (UARPDynamicAssetTmapDatabase)initWithCoder:(id)a3;
- (UARPDynamicAssetTmapDatabase)initWithUrl:(id)a3;
- (id)description;
- (id)findTmapDatabaseFileUrl;
- (id)findTmapforAppleModel:(id)a3;
- (id)initTmapDatabase:(id)a3;
- (id)initTmapDatabaseWithPlist:(id)a3;
- (void)cleanUpTmapDatabaseFiles;
- (void)createTmapDatabaseFile;
- (void)decomposeUARP;
@end

@implementation UARPDynamicAssetTmapDatabase

- (UARPDynamicAssetTmapDatabase)init
{
  [(UARPDynamicAssetTmapDatabase *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initTmapDatabase:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = UARPDynamicAssetTmapDatabase;
  v6 = [(UARPDynamicAssetTmapDatabase *)&v18 init];
  v7 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
  v8 = *(v6 + 5);
  *(v6 + 5) = v7;

  if ([v6 tmapDatabaseFileExists])
  {
    v9 = [v6 findTmapDatabaseFileUrl];
    if (!v9)
    {
      if (os_log_type_enabled(*(v6 + 5), OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetTmapDatabase initTmapDatabase:];
      }

      goto LABEL_12;
    }

    v10 = v9;
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9];
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:0];

    v6 = v12;
  }

  v13 = *(v6 + 4);
  if (!(v5 | v13))
  {
LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = *(v6 + 4);
    *(v6 + 4) = v14;
  }

  if (v5)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  v6 = v6;
  v16 = v6;
LABEL_13:

  return v16;
}

- (id)initTmapDatabaseWithPlist:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = UARPDynamicAssetTmapDatabase;
  v6 = [(UARPDynamicAssetTmapDatabase *)&v18 init];
  v7 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
  v8 = *(v6 + 5);
  *(v6 + 5) = v7;

  if ([v6 tmapDatabaseFileExists])
  {
    v9 = [v6 findTmapDatabaseFileUrl];
    if (!v9)
    {
      if (os_log_type_enabled(*(v6 + 5), OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetTmapDatabase initTmapDatabase:];
      }

      goto LABEL_12;
    }

    v10 = v9;
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9];
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:0];

    v6 = v12;
  }

  v13 = *(v6 + 4);
  if (!(v5 | v13))
  {
LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = *(v6 + 4);
    *(v6 + 4) = v14;
  }

  if (v5)
  {
    objc_storeStrong(v6 + 2, a3);
  }

  v6 = v6;
  v16 = v6;
LABEL_13:

  return v16;
}

- (UARPDynamicAssetTmapDatabase)initWithUrl:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
  log = self->_log;
  self->_log = v5;

  if (v4)
  {
    v7 = v4;
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7];
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:0];

    self = v9;
    v10 = self;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetTmapDatabase initWithUrl:];
    }

    v10 = 0;
  }

  return v10;
}

- (UARPDynamicAssetTmapDatabase)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = UARPDynamicAssetTmapDatabase;
  v5 = [(UARPDynamicAssetTmapDatabase *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"tmap"];

    v10 = [v9 mutableCopy];
    tmapDatabase = v5->_tmapDatabase;
    v5->_tmapDatabase = v10;

    v12 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
    log = v5->_log;
    v5->_log = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)description
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = v3;
  tmapDatabase = self->_tmapDatabase;
  if (tmapDatabase)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = tmapDatabase;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v4 appendFormat:@"TMAP Mapping %@\n", *(*(&v13 + 1) + 8 * i)];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [v3 appendFormat:@"No TMAP Database"];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)flushToDisk
{
  v3 = [(UARPDynamicAssetTmapDatabase *)self findTmapDatabaseFileUrl];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    v5 = [v4 writeToURL:v3 atomically:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)decomposeUARP
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  asset = self->_asset;
  self->_asset = v3;

  if ([(UARPSuperBinaryAsset *)self->_asset expandHeadersAndTLVs:0])
  {
    v5 = +[UARPDynamicAssetTmapMapping tag];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(UARPSuperBinaryAsset *)self->_asset payloads];
    v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v34;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          v11 = [v10 payloadTag];
          v12 = [v11 tag];
          v13 = [v5 tag];

          if (v12 == v13)
          {
            [v10 rangePayload];
            v15 = [(UARPSuperBinaryAsset *)self->_asset payloadData:v10 range:0 error:v14, 0];
            if (!v15)
            {
              if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
              {
                [UARPDynamicAssetTmapDatabase decomposeUARP];
              }

              goto LABEL_24;
            }

            v16 = v15;
            v17 = MEMORY[0x277CBEB98];
            v18 = objc_opt_class();
            v19 = objc_opt_class();
            v20 = objc_opt_class();
            v21 = [v17 setWithObjects:{v18, v19, v20, objc_opt_class(), 0}];
            v32 = 0;
            v22 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v21 fromData:v16 error:&v32];
            v23 = v32;
            if (!v22)
            {
              v31 = 0;
              v22 = [MEMORY[0x277CCAC58] propertyListWithData:v16 options:0 format:0 error:&v31];
              v24 = v31;

              v23 = v24;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              log = self->_log;
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                [(UARPDynamicAssetTmapDatabase *)v22 decomposeUARP];
              }

LABEL_24:
              v26 = 0;
              goto LABEL_25;
            }

            v25 = [(UARPDynamicAssetTmapDatabase *)self addTmapMapping:v22];

            if (!v25)
            {
              goto LABEL_24;
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    if (self->_tmapDatabase)
    {
      [(UARPDynamicAssetTmapDatabase *)self flushToDisk];
    }

    v26 = 1;
LABEL_25:
  }

  else
  {
    v26 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)loadPlist
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = [(NSURL *)self->_plistURL path];
  v5 = [v3 dictionaryWithContentsOfFile:v4];

  v6 = [(UARPDynamicAssetTmapDatabase *)self addTmapMapping:v5];
  if (v6 && self->_tmapDatabase)
  {
    [(UARPDynamicAssetTmapDatabase *)self flushToDisk];
  }

  return v6;
}

- (BOOL)addTmapMapping:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Adding TMAP Mapping", &v15, 2u);
  }

  v6 = [v4 objectForKeyedSubscript:@"AppleModelNumber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 objectForKeyedSubscript:@"Endian"];
    if (!v7)
    {
      v7 = @"BigEndian";
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetTmapDatabase addTmapMapping:];
      }

      v12 = 0;
      goto LABEL_28;
    }

    v8 = [v4 objectForKeyedSubscript:@"Events"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetTmapDatabase addTmapMapping:];
      }

      v12 = 0;
      goto LABEL_27;
    }

    v9 = [(UARPDynamicAssetTmapDatabase *)self findTmapforAppleModel:v6];
    if (v9)
    {
      if ((MGGetBoolAnswer() & 1) == 0)
      {
        if (([v9 appendTmapEvents:v8 endian:v7] & 1) == 0)
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetTmapDatabase addTmapMapping:];
          }

          v12 = 0;
          goto LABEL_17;
        }

LABEL_16:
        v12 = 1;
LABEL_17:

LABEL_27:
LABEL_28:

        goto LABEL_29;
      }

      [(NSMutableArray *)self->_tmapDatabase removeObject:v9];
    }

    v10 = [[UARPDynamicAssetTmapMapping alloc] initWithEvents:v8 appleModelNumber:v6 endian:v7];
    if (v10)
    {
      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_247AA7000, v11, OS_LOG_TYPE_INFO, "Adding TMAP for Apple Model Number: %@", &v15, 0xCu);
      }

      [(NSMutableArray *)self->_tmapDatabase addObject:v10];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPDynamicAssetTmapDatabase addTmapMapping:];
  }

  v12 = 0;
LABEL_29:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)findTmapforAppleModel:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_tmapDatabase;
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

- (id)findTmapDatabaseFileUrl
{
  if ([(UARPDynamicAssetTmapDatabase *)self tmapDatabaseFileExists]|| [(UARPDynamicAssetTmapDatabase *)self createTmapDatabaseFile])
  {
    v3 = MEMORY[0x277CBEBC0];
    v4 = UARPStringTmapDatabaseFilePath();
    v5 = [v3 fileURLWithPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)createTmapDatabaseFile
{
  if ([(UARPDynamicAssetTmapDatabase *)self tmapDatabaseFileExists])
  {
    return 1;
  }

  v4 = UARPStringTmapDirectoryPath();
  UARPUtilsCreateTemporaryFolder(v4);

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = UARPStringTmapDatabaseFilePath();
  v3 = [v5 createFileAtPath:v6 contents:0 attributes:0];

  if ((v3 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetTmapDatabase *)log createTmapDatabaseFile];
    }
  }

  return v3;
}

- (BOOL)tmapDatabaseFileExists
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = UARPStringTmapDatabaseFilePath();
  v4 = [v2 fileExistsAtPath:v3];

  return v4;
}

- (BOOL)cleanUpTmapDatabaseFiles
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = UARPStringTmapDirectoryPath();
  v9 = 0;
  v5 = [v3 removeItemAtPath:v4 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetTmapDatabase *)log cleanUpTmapDatabaseFiles];
    }
  }

  return v5;
}

- (void)decomposeUARP
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_247AA7000, log, OS_LOG_TYPE_ERROR, "TMAP Data is nil or not a dictionary: TMAP Value: %@, Error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)createTmapDatabaseFile
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = UARPStringTmapDatabaseFilePath();
  v4[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_247AA7000, v1, OS_LOG_TYPE_ERROR, "%s: Unable to create file at %@", v4, 0x16u);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpTmapDatabaseFiles
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = UARPStringTmapDirectoryPath();
  v7[0] = 136315650;
  OUTLINED_FUNCTION_2();
  v8 = v5;
  v9 = a2;
  _os_log_error_impl(&dword_247AA7000, v3, OS_LOG_TYPE_ERROR, "%s: Unable to remove files at %@ (%@)", v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

@end