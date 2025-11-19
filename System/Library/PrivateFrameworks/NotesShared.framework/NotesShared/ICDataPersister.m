@interface ICDataPersister
+ (id)rootCacheDirectoryPathForPasteboard:(BOOL)a3;
+ (void)deletePasteboardDataFiles;
- (BOOL)makeSureCacheDirectoryExists;
- (BOOL)saveData:(id)a3 identifier:(id)a4;
- (BOOL)verifyDataFiles;
- (ICDataPersister)init;
- (ICDataPersister)initWithCoder:(id)a3;
- (ICDataPersister)initWithObjectIdentifier:(id)a3 forPasteboard:(BOOL)a4;
- (id)description;
- (id)loadDataForIdentifier:(id)a3;
- (void)createDataCryptorIfNecessary;
- (void)deleteDataFiles;
- (void)encodeWithCoder:(id)a3;
- (void)verifyDataFiles;
@end

@implementation ICDataPersister

- (ICDataPersister)init
{
  [(ICDataPersister *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICDataPersister)initWithObjectIdentifier:(id)a3 forPasteboard:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v20.receiver = self;
  v20.super_class = ICDataPersister;
  v8 = [(ICDataPersister *)&v20 init];
  if (v8)
  {
    v9 = [objc_opt_class() rootCacheDirectoryPathForPasteboard:v4];
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v10 UUIDString];
    v12 = [v9 stringByAppendingPathComponent:v11];

    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
    cacheDirectoryURL = v8->_cacheDirectoryURL;
    v8->_cacheDirectoryURL = v13;

    objc_storeStrong(&v8->_objectIdentifier, a3);
    v15 = [MEMORY[0x277CBEB18] array];
    allURLs = v8->_allURLs;
    v8->_allURLs = v15;

    v17 = [MEMORY[0x277CBEB38] dictionary];
    identifierToDataDictionary = v8->_identifierToDataDictionary;
    v8->_identifierToDataDictionary = v17;

    [(ICDataPersister *)v8 createDataCryptorIfNecessary];
  }

  return v8;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = ICDataPersister;
  v3 = [(ICDataPersister *)&v9 description];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(ICDataPersister *)self cacheDirectoryURL];
  v6 = [(ICDataPersister *)self objectIdentifier];
  v7 = [v4 stringWithFormat:@"%@ <%@, %@>", v3, v5, v6];

  return v7;
}

- (void)createDataCryptorIfNecessary
{
  v3 = [(ICDataPersister *)self objectIdentifier];

  if (v3)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v4 = +[ICNoteContext sharedContext];
    v5 = [v4 snapshotManagedObjectContext];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__ICDataPersister_createDataCryptorIfNecessary__block_invoke;
    v11[3] = &unk_2781961E0;
    v11[4] = self;
    v6 = v5;
    v12 = v6;
    v13 = &v14;
    [v6 performBlockAndWait:v11];
    if (*(v15 + 24) == 1)
    {
      v7 = [ICDataCryptor alloc];
      v8 = [(ICDataPersister *)self objectIdentifier];
      v9 = [(ICDataCryptor *)v7 initWithObjectIdentifier:v8];
      dataCryptor = self->_dataCryptor;
      self->_dataCryptor = v9;
    }

    _Block_object_dispose(&v14, 8);
  }
}

void __47__ICDataPersister_createDataCryptorIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectIdentifier];
  v3 = [ICCloudSyncingObject cloudObjectWithIdentifier:v2 context:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = [v3 isPasswordProtected];
}

+ (id)rootCacheDirectoryPathForPasteboard:(BOOL)a3
{
  v3 = a3;
  v4 = NSTemporaryDirectory();
  v5 = v4;
  if (v3)
  {
    v6 = @"pasteboardDataPersister";
  }

  else
  {
    v6 = @"dataPersister";
  }

  v7 = [v4 stringByAppendingPathComponent:v6];

  return v7;
}

- (BOOL)makeSureCacheDirectoryExists
{
  v2 = [(ICDataPersister *)self cacheDirectoryURL];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = 0;
  v4 = [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v8];
  v5 = v8;

  if ((v4 & 1) == 0)
  {
    v6 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICDataPersister makeSureCacheDirectoryExists];
    }
  }

  return v4;
}

- (BOOL)saveData:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ICDataPersister *)self makeSureCacheDirectoryExists])
  {
    v8 = [(ICDataPersister *)self dataCryptor];

    if (v8)
    {
      v9 = [(ICDataPersister *)self dataCryptor];
      v10 = [v9 encryptData:v6];

      v6 = v10;
    }

    v11 = [(ICDataPersister *)self cacheDirectoryURL];
    v12 = [v11 URLByAppendingPathComponent:v7 isDirectory:0];

    v13 = [v12 path];
    v14 = [v6 writeToFile:v13 atomically:1];

    if (v14)
    {
      -[ICDataPersister setAccumulatedDataSize:](self, "setAccumulatedDataSize:", -[ICDataPersister accumulatedDataSize](self, "accumulatedDataSize") + [v6 length]);
      v15 = [(ICDataPersister *)self allURLs];
      [v15 addObject:v12];
    }

    else
    {
      v15 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ICDataPersister saveData:identifier:];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)loadDataForIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICDataPersister *)self identifierToDataDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(ICDataPersister *)self cacheDirectoryURL];
    v8 = [v7 URLByAppendingPathComponent:v4 isDirectory:0];

    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8];
    if (v9)
    {
      v6 = v9;
      v10 = [(ICDataPersister *)self dataCryptor];

      if (!v10)
      {
        goto LABEL_10;
      }

      v11 = [(ICDataPersister *)self dataCryptor];
      v12 = [v11 decryptData:v6];

      v6 = v12;
      if (v12)
      {
        goto LABEL_10;
      }

      v13 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_DEFAULT, "Unable to decrypt data at: %@", &v15, 0xCu);
      }
    }

    else
    {
      v13 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ICDataPersister loadDataForIdentifier:];
      }
    }

    v6 = 0;
LABEL_10:
  }

  return v6;
}

- (void)deleteDataFiles
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(ICDataPersister *)self cacheDirectoryURL];
  v8 = 0;
  v5 = [v3 removeItemAtURL:v4 error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0 && [v6 code] != 4)
  {
    v7 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICDataPersister deleteDataFiles];
    }
  }
}

- (BOOL)verifyDataFiles
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(ICDataPersister *)self allURLs];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v22;
    *&v4 = 138412290;
    v17 = v4;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 lastPathComponent];
        v10 = [(ICDataPersister *)self identifierToDataDictionary];
        v11 = [v10 objectForKeyedSubscript:v9];
        if (v11)
        {

          v12 = 0;
        }

        else
        {
          v20 = 0;
          v19 = [v8 checkResourceIsReachableAndReturnError:&v20];
          v12 = v20;

          if ((v19 & 1) == 0)
          {
            if ([v12 code] != 4)
            {
              v15 = os_log_create("com.apple.notes", "Topotext");
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v17;
                v26 = v12;
                _os_log_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEFAULT, "Got error when checking if data persister file exists: %@", buf, 0xCu);
              }
            }

            obj = os_log_create("com.apple.notes", "Topotext");
            if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
            {
              [ICDataPersister verifyDataFiles];
            }

            v14 = 0;
            goto LABEL_21;
          }
        }

        v13 = os_log_create("com.apple.notes", "Topotext");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = v17;
          v26 = v8;
          _os_log_debug_impl(&dword_214D51000, v13, OS_LOG_TYPE_DEBUG, "Verified file exists at %@", buf, 0xCu);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_21:

  return v14;
}

+ (void)deletePasteboardDataFiles
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Deleted pasteboard data files: %d", v2, 8u);
}

- (ICDataPersister)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ICDataPersister;
  v5 = [(ICDataPersister *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cacheDirectoryURL"];
    cacheDirectoryURL = v5->_cacheDirectoryURL;
    v5->_cacheDirectoryURL = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"allURLs"];
    allURLs = v5->_allURLs;
    v5->_allURLs = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectIdentifier"];
    objectIdentifier = v5->_objectIdentifier;
    v5->_objectIdentifier = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataCryptor"];
    dataCryptor = v5->_dataCryptor;
    v5->_dataCryptor = v15;

    v5->_accumulatedDataSize = [v4 decodeIntegerForKey:@"accumulatedDataSize"];
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"identifierToDataDictionary"];
    identifierToDataDictionary = v5->_identifierToDataDictionary;
    v5->_identifierToDataDictionary = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 encodeInteger:-[ICDataPersister accumulatedDataSize](self forKey:{"accumulatedDataSize"), @"accumulatedDataSize"}];
  v5 = [(ICDataPersister *)self cacheDirectoryURL];
  [v4 encodeObject:v5 forKey:@"cacheDirectoryURL"];

  v6 = [(ICDataPersister *)self allURLs];
  [v4 encodeObject:v6 forKey:@"allURLs"];

  v7 = [(ICDataPersister *)self objectIdentifier];

  if (v7)
  {
    v8 = [(ICDataPersister *)self objectIdentifier];
    [v4 encodeObject:v8 forKey:@"objectIdentifier"];
  }

  v9 = [(ICDataPersister *)self dataCryptor];

  if (v9)
  {
    v10 = [(ICDataPersister *)self dataCryptor];
    [v4 encodeObject:v10 forKey:@"dataCryptor"];
  }

  v11 = [(ICDataPersister *)self accumulatedDataSize];
  v12 = os_log_create("com.apple.notes", "Topotext");
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11 >> 21 > 0x4A)
  {
    if (v13)
    {
      [ICDataPersister encodeWithCoder:?];
    }
  }

  else
  {
    v29 = v4;
    if (v13)
    {
      [ICDataPersister encodeWithCoder:?];
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = [(ICDataPersister *)self allURLs];
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          v20 = [v19 lastPathComponent];
          v21 = [(ICDataPersister *)self identifierToDataDictionary];
          v22 = [v21 objectForKeyedSubscript:v20];

          if (!v22)
          {
            v23 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v19];
            if (v23)
            {
              v24 = v23;
              v25 = [(ICDataPersister *)self dataCryptor];

              if (!v25 || (-[ICDataPersister dataCryptor](self, "dataCryptor"), v26 = objc_claimAutoreleasedReturnValue(), [v26 decryptData:v24], v27 = objc_claimAutoreleasedReturnValue(), v24, v26, (v24 = v27) != 0))
              {
                v28 = [(ICDataPersister *)self identifierToDataDictionary];
                [v28 setObject:v24 forKeyedSubscript:v20];
              }
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v16);
    }

    v12 = [(ICDataPersister *)self identifierToDataDictionary];
    v4 = v29;
    [v29 encodeObject:v12 forKey:@"identifierToDataDictionary"];
  }
}

- (void)loadDataForIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_214D51000, v0, OS_LOG_TYPE_DEBUG, "Unable to find large data at URL: %@", v1, 0xCu);
}

- (void)verifyDataFiles
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_214D51000, v0, OS_LOG_TYPE_DEBUG, "Not all files exists for ICDataPersister: %@", v1, 0xCu);
}

- (void)encodeWithCoder:(void *)a1 .cold.1(void *a1)
{
  [a1 accumulatedDataSize];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v1, v2, "Data is too large to be encoded for the pasteboard: %lu", v3, v4, v5, v6, v7);
}

- (void)encodeWithCoder:(void *)a1 .cold.2(void *a1)
{
  [a1 accumulatedDataSize];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v1, v2, "Encoding all data for pasteboard: %lu", v3, v4, v5, v6, v7);
}

@end