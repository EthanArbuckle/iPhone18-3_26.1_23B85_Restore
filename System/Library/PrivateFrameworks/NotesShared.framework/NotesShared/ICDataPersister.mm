@interface ICDataPersister
+ (id)rootCacheDirectoryPathForPasteboard:(BOOL)pasteboard;
+ (void)deletePasteboardDataFiles;
- (BOOL)makeSureCacheDirectoryExists;
- (BOOL)saveData:(id)data identifier:(id)identifier;
- (BOOL)verifyDataFiles;
- (ICDataPersister)init;
- (ICDataPersister)initWithCoder:(id)coder;
- (ICDataPersister)initWithObjectIdentifier:(id)identifier forPasteboard:(BOOL)pasteboard;
- (id)description;
- (id)loadDataForIdentifier:(id)identifier;
- (void)createDataCryptorIfNecessary;
- (void)deleteDataFiles;
- (void)encodeWithCoder:(id)coder;
- (void)verifyDataFiles;
@end

@implementation ICDataPersister

- (ICDataPersister)init
{
  [(ICDataPersister *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICDataPersister)initWithObjectIdentifier:(id)identifier forPasteboard:(BOOL)pasteboard
{
  pasteboardCopy = pasteboard;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = ICDataPersister;
  v8 = [(ICDataPersister *)&v20 init];
  if (v8)
  {
    v9 = [objc_opt_class() rootCacheDirectoryPathForPasteboard:pasteboardCopy];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v12 = [v9 stringByAppendingPathComponent:uUIDString];

    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
    cacheDirectoryURL = v8->_cacheDirectoryURL;
    v8->_cacheDirectoryURL = v13;

    objc_storeStrong(&v8->_objectIdentifier, identifier);
    array = [MEMORY[0x277CBEB18] array];
    allURLs = v8->_allURLs;
    v8->_allURLs = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    identifierToDataDictionary = v8->_identifierToDataDictionary;
    v8->_identifierToDataDictionary = dictionary;

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
  cacheDirectoryURL = [(ICDataPersister *)self cacheDirectoryURL];
  objectIdentifier = [(ICDataPersister *)self objectIdentifier];
  v7 = [v4 stringWithFormat:@"%@ <%@, %@>", v3, cacheDirectoryURL, objectIdentifier];

  return v7;
}

- (void)createDataCryptorIfNecessary
{
  objectIdentifier = [(ICDataPersister *)self objectIdentifier];

  if (objectIdentifier)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v4 = +[ICNoteContext sharedContext];
    snapshotManagedObjectContext = [v4 snapshotManagedObjectContext];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__ICDataPersister_createDataCryptorIfNecessary__block_invoke;
    v11[3] = &unk_2781961E0;
    v11[4] = self;
    v6 = snapshotManagedObjectContext;
    v12 = v6;
    v13 = &v14;
    [v6 performBlockAndWait:v11];
    if (*(v15 + 24) == 1)
    {
      v7 = [ICDataCryptor alloc];
      objectIdentifier2 = [(ICDataPersister *)self objectIdentifier];
      v9 = [(ICDataCryptor *)v7 initWithObjectIdentifier:objectIdentifier2];
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

+ (id)rootCacheDirectoryPathForPasteboard:(BOOL)pasteboard
{
  pasteboardCopy = pasteboard;
  v4 = NSTemporaryDirectory();
  v5 = v4;
  if (pasteboardCopy)
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
  cacheDirectoryURL = [(ICDataPersister *)self cacheDirectoryURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = 0;
  v4 = [defaultManager createDirectoryAtURL:cacheDirectoryURL withIntermediateDirectories:1 attributes:0 error:&v8];
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

- (BOOL)saveData:(id)data identifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  if ([(ICDataPersister *)self makeSureCacheDirectoryExists])
  {
    dataCryptor = [(ICDataPersister *)self dataCryptor];

    if (dataCryptor)
    {
      dataCryptor2 = [(ICDataPersister *)self dataCryptor];
      v10 = [dataCryptor2 encryptData:dataCopy];

      dataCopy = v10;
    }

    cacheDirectoryURL = [(ICDataPersister *)self cacheDirectoryURL];
    v12 = [cacheDirectoryURL URLByAppendingPathComponent:identifierCopy isDirectory:0];

    path = [v12 path];
    v14 = [dataCopy writeToFile:path atomically:1];

    if (v14)
    {
      -[ICDataPersister setAccumulatedDataSize:](self, "setAccumulatedDataSize:", -[ICDataPersister accumulatedDataSize](self, "accumulatedDataSize") + [dataCopy length]);
      allURLs = [(ICDataPersister *)self allURLs];
      [allURLs addObject:v12];
    }

    else
    {
      allURLs = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(allURLs, OS_LOG_TYPE_ERROR))
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

- (id)loadDataForIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  identifierToDataDictionary = [(ICDataPersister *)self identifierToDataDictionary];
  v6 = [identifierToDataDictionary objectForKeyedSubscript:identifierCopy];

  if (!v6)
  {
    cacheDirectoryURL = [(ICDataPersister *)self cacheDirectoryURL];
    v8 = [cacheDirectoryURL URLByAppendingPathComponent:identifierCopy isDirectory:0];

    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8];
    if (v9)
    {
      v6 = v9;
      dataCryptor = [(ICDataPersister *)self dataCryptor];

      if (!dataCryptor)
      {
        goto LABEL_10;
      }

      dataCryptor2 = [(ICDataPersister *)self dataCryptor];
      v12 = [dataCryptor2 decryptData:v6];

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
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  cacheDirectoryURL = [(ICDataPersister *)self cacheDirectoryURL];
  v8 = 0;
  v5 = [defaultManager removeItemAtURL:cacheDirectoryURL error:&v8];
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
        lastPathComponent = [v8 lastPathComponent];
        identifierToDataDictionary = [(ICDataPersister *)self identifierToDataDictionary];
        v11 = [identifierToDataDictionary objectForKeyedSubscript:lastPathComponent];
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
  v2[1] = self & 1;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Deleted pasteboard data files: %d", v2, 8u);
}

- (ICDataPersister)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = ICDataPersister;
  v5 = [(ICDataPersister *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cacheDirectoryURL"];
    cacheDirectoryURL = v5->_cacheDirectoryURL;
    v5->_cacheDirectoryURL = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"allURLs"];
    allURLs = v5->_allURLs;
    v5->_allURLs = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectIdentifier"];
    objectIdentifier = v5->_objectIdentifier;
    v5->_objectIdentifier = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataCryptor"];
    dataCryptor = v5->_dataCryptor;
    v5->_dataCryptor = v15;

    v5->_accumulatedDataSize = [coderCopy decodeIntegerForKey:@"accumulatedDataSize"];
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"identifierToDataDictionary"];
    identifierToDataDictionary = v5->_identifierToDataDictionary;
    v5->_identifierToDataDictionary = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v35 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  [coderCopy encodeInteger:-[ICDataPersister accumulatedDataSize](self forKey:{"accumulatedDataSize"), @"accumulatedDataSize"}];
  cacheDirectoryURL = [(ICDataPersister *)self cacheDirectoryURL];
  [coderCopy encodeObject:cacheDirectoryURL forKey:@"cacheDirectoryURL"];

  allURLs = [(ICDataPersister *)self allURLs];
  [coderCopy encodeObject:allURLs forKey:@"allURLs"];

  objectIdentifier = [(ICDataPersister *)self objectIdentifier];

  if (objectIdentifier)
  {
    objectIdentifier2 = [(ICDataPersister *)self objectIdentifier];
    [coderCopy encodeObject:objectIdentifier2 forKey:@"objectIdentifier"];
  }

  dataCryptor = [(ICDataPersister *)self dataCryptor];

  if (dataCryptor)
  {
    dataCryptor2 = [(ICDataPersister *)self dataCryptor];
    [coderCopy encodeObject:dataCryptor2 forKey:@"dataCryptor"];
  }

  accumulatedDataSize = [(ICDataPersister *)self accumulatedDataSize];
  identifierToDataDictionary3 = os_log_create("com.apple.notes", "Topotext");
  v13 = os_log_type_enabled(identifierToDataDictionary3, OS_LOG_TYPE_DEBUG);
  if (accumulatedDataSize >> 21 > 0x4A)
  {
    if (v13)
    {
      [ICDataPersister encodeWithCoder:?];
    }
  }

  else
  {
    v29 = coderCopy;
    if (v13)
    {
      [ICDataPersister encodeWithCoder:?];
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    allURLs2 = [(ICDataPersister *)self allURLs];
    v15 = [allURLs2 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(allURLs2);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          lastPathComponent = [v19 lastPathComponent];
          identifierToDataDictionary = [(ICDataPersister *)self identifierToDataDictionary];
          v22 = [identifierToDataDictionary objectForKeyedSubscript:lastPathComponent];

          if (!v22)
          {
            v23 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v19];
            if (v23)
            {
              v24 = v23;
              dataCryptor3 = [(ICDataPersister *)self dataCryptor];

              if (!dataCryptor3 || (-[ICDataPersister dataCryptor](self, "dataCryptor"), v26 = objc_claimAutoreleasedReturnValue(), [v26 decryptData:v24], v27 = objc_claimAutoreleasedReturnValue(), v24, v26, (v24 = v27) != 0))
              {
                identifierToDataDictionary2 = [(ICDataPersister *)self identifierToDataDictionary];
                [identifierToDataDictionary2 setObject:v24 forKeyedSubscript:lastPathComponent];
              }
            }
          }
        }

        v16 = [allURLs2 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v16);
    }

    identifierToDataDictionary3 = [(ICDataPersister *)self identifierToDataDictionary];
    coderCopy = v29;
    [v29 encodeObject:identifierToDataDictionary3 forKey:@"identifierToDataDictionary"];
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