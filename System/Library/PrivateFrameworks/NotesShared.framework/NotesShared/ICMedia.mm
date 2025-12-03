@interface ICMedia
+ (id)containerDirectoryURLForMediaWithIdentifier:(id)identifier account:(id)account;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)exportableContainerDirectoryURLForMediaWithIdentifier:(id)identifier account:(id)account;
+ (id)keyPathsForValuesAffectingIsSharedViaICloud;
+ (id)mediaIdentifiersForAccount:(id)account;
+ (id)mediaWithIdentifier:(id)identifier context:(id)context;
+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context;
+ (id)newMediaWithAttachment:(id)attachment;
+ (id)newMediaWithAttachment:(id)attachment forData:(id)data filename:(id)filename error:(id *)error;
+ (id)newMediaWithAttachment:(id)attachment forFileWrapper:(id)wrapper error:(id *)error;
+ (id)newMediaWithAttachment:(id)attachment forURL:(id)l error:(id *)error;
+ (id)newMediaWithAttachment:(id)attachment forURL:(id)l filename:(id)filename error:(id *)error;
+ (id)newMediaWithIdentifier:(id)identifier account:(id)account;
+ (id)newMediaWithIdentifier:(id)identifier attachment:(id)attachment;
+ (void)purgeMedia:(id)media;
+ (void)purgeMediaFilesForIdentifiers:(id)identifiers account:(id)account;
- (BOOL)hasAllMandatoryFields;
- (BOOL)hasFile;
- (BOOL)isArchivedDirectory;
- (BOOL)isInICloudAccount;
- (BOOL)isValid;
- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state;
- (BOOL)needsToBePushedToCloud;
- (BOOL)shouldAlwaysDownloadAssets;
- (BOOL)writeData:(id)data error:(id *)error;
- (BOOL)writeDataFromAsset:(id)asset accountID:(id)d isArchivedDirectory:(BOOL)directory error:(id *)error;
- (BOOL)writeDataFromFileURL:(id)l error:(id *)error;
- (BOOL)writeDataFromFileWrapper:(id)wrapper error:(id *)error;
- (BOOL)writeDataWithBlock:(id)block error:(id *)error;
- (ICAccount)containerAccount;
- (ICAccount)placeholderAccount;
- (ICAssetGenerationManager)generationManager;
- (NSSet)urlsToConsiderForCloudBackup;
- (id)cloudAccount;
- (id)containerDirectoryURL;
- (id)data;
- (id)dataWithoutImageMarkupMetadata:(BOOL)metadata;
- (id)decryptedData;
- (id)encryptedMediaFallbackURL;
- (id)encryptedMediaURL;
- (id)exportableContainerDirectoryURL;
- (id)exportableMediaURL;
- (id)ic_loggingValues;
- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state;
- (id)mediaArchiveFallbackURL;
- (id)mediaArchiveURL;
- (id)mediaFallbackURL;
- (id)mediaTarArchiveURL;
- (id)mediaURL;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)parentCloudObject;
- (id)parentEncryptableObject;
- (id)prepareExportableMediaURL;
- (void)accountWillChangeToAccount:(id)account;
- (void)applyRandomCryptoGooIfNeeded;
- (void)awakeFromFetch;
- (void)containerAccount;
- (void)deleteExportableMedia;
- (void)fixBrokenReferencesWithError:(id)error;
- (void)markForDeletion;
- (void)objectWasPushedToCloudWithOperation:(id)operation serverRecord:(id)record;
- (void)prepareForDeletion;
- (void)setAttachment:(id)attachment;
- (void)setFilename:(id)filename;
- (void)unmarkForDeletion;
- (void)updateFlagToExcludeFromCloudBackup;
- (void)writeDataFromItemProvider:(id)provider checkForMarkupData:(BOOL)data completionBlock:(id)block;
@end

@implementation ICMedia

- (void)awakeFromFetch
{
  v3.receiver = self;
  v3.super_class = ICMedia;
  [(ICCloudSyncingObject *)&v3 awakeFromFetch];
  [(ICAssetGenerationManager *)self->_generationManager updateCurrentGeneration];
}

- (id)mediaURL
{
  filename = [(ICMedia *)self filename];

  if (filename)
  {
    generationManager = [(ICMedia *)self generationManager];
    generationURL = [generationManager generationURL];

    if (generationURL)
    {
      generationManager2 = [(ICMedia *)self generationManager];
      generationURL2 = [generationManager2 generationURL];
      filename2 = [(ICMedia *)self filename];
      mediaFallbackURL = [generationURL2 URLByAppendingPathComponent:filename2 isDirectory:0];
    }

    else
    {
      mediaFallbackURL = [(ICMedia *)self mediaFallbackURL];
    }
  }

  else
  {
    mediaFallbackURL = 0;
  }

  return mediaFallbackURL;
}

- (ICAssetGenerationManager)generationManager
{
  containerDirectoryURL = [(ICMedia *)self containerDirectoryURL];

  if (containerDirectoryURL)
  {
    generationManager = self->_generationManager;
    if (!generationManager)
    {
      array = [MEMORY[0x277CBEB18] array];
      mediaFallbackURL = [(ICMedia *)self mediaFallbackURL];
      [array ic_addNonNilObject:mediaFallbackURL];

      encryptedMediaFallbackURL = [(ICMedia *)self encryptedMediaFallbackURL];
      [array ic_addNonNilObject:encryptedMediaFallbackURL];

      mediaArchiveFallbackURL = [(ICMedia *)self mediaArchiveFallbackURL];
      [array ic_addNonNilObject:mediaArchiveFallbackURL];

      v9 = NSStringFromSelector(sel_generation);
      v10 = [ICAssetGenerationManager alloc];
      containerDirectoryURL2 = [(ICMedia *)self containerDirectoryURL];
      v12 = [(ICAssetGenerationManager *)v10 initWithObject:self generationKeyPath:v9 containerURL:containerDirectoryURL2];
      v13 = self->_generationManager;
      self->_generationManager = v12;

      v14 = [array copy];
      [(ICAssetGenerationManager *)self->_generationManager setFallbackURLs:v14];

      generationManager = self->_generationManager;
    }

    v15 = generationManager;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)containerDirectoryURL
{
  identifier = [(ICMedia *)self identifier];
  if (identifier && (v4 = identifier, [(ICMedia *)self containerAccount], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    identifier2 = [(ICMedia *)self identifier];
    containerAccount = [(ICMedia *)self containerAccount];
    v8 = [ICMedia containerDirectoryURLForMediaWithIdentifier:identifier2 account:containerAccount];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ICAccount)containerAccount
{
  attachment = [(ICMedia *)self attachment];
  note = [attachment note];
  account = [note account];
  v6 = account;
  if (account)
  {
    account2 = account;
  }

  else
  {
    attachment2 = [(ICMedia *)self attachment];
    note2 = [attachment2 note];
    folder = [note2 folder];
    account2 = [folder account];
  }

  if (!account2)
  {
    account2 = [(ICMedia *)self placeholderAccount];
    if (!account2)
    {
      managedObjectContext = [(ICMedia *)self managedObjectContext];
      account2 = [ICAccount defaultAccountInContext:managedObjectContext];

      v12 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(ICMedia *)self containerAccount];
      }
    }
  }

  [(ICMedia *)self setPlaceholderAccount:account2];

  return account2;
}

- (id)mediaFallbackURL
{
  filename = [(ICMedia *)self filename];

  if (filename)
  {
    containerDirectoryURL = [(ICMedia *)self containerDirectoryURL];
    filename2 = [(ICMedia *)self filename];
    v6 = [containerDirectoryURL URLByAppendingPathComponent:filename2 isDirectory:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encryptedMediaFallbackURL
{
  containerDirectoryURL = [(ICMedia *)self containerDirectoryURL];
  identifier = [(ICMedia *)self identifier];
  v5 = [containerDirectoryURL URLByAppendingPathComponent:identifier isDirectory:0];

  return v5;
}

- (id)mediaArchiveFallbackURL
{
  mediaFallbackURL = [(ICMedia *)self mediaFallbackURL];
  v3 = [mediaFallbackURL URLByAppendingPathExtension:@"zip"];

  return v3;
}

- (BOOL)hasFile
{
  if (([(ICMedia *)self isPasswordProtected]& 1) != 0)
  {
    encryptedMediaURL = [(ICMedia *)self encryptedMediaURL];
    v4 = encryptedMediaURL;
    v12 = 0;
    v5 = &v12;
    v6 = &v12;
  }

  else
  {
    encryptedMediaURL = [(ICMedia *)self mediaURL];
    v4 = encryptedMediaURL;
    v11 = 0;
    v5 = &v11;
    v6 = &v11;
  }

  v7 = [encryptedMediaURL checkResourceIsReachableAndReturnError:{v6, v11, v12}];
  v8 = *v5;

  if (v8 && [v8 code] != 260)
  {
    v9 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICMedia hasFile];
    }
  }

  return v7;
}

+ (void)purgeMediaFilesForIdentifiers:(id)identifiers account:(id)account
{
  v31 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  accountCopy = account;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  mediaDirectoryURL = [accountCopy mediaDirectoryURL];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = identifiersCopy;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v20 = accountCopy;
    v12 = 0;
    v13 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        v15 = v12;
        if (*v23 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [mediaDirectoryURL URLByAppendingPathComponent:v16 isDirectory:1];
        v21 = v12;
        [defaultManager removeItemAtURL:v18 error:&v21];
        v12 = v21;

        if (v12 && [v12 code] != 4)
        {
          v19 = os_log_create("com.apple.notes", "Media");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v27 = v18;
            v28 = 2112;
            v29 = v12;
            _os_log_error_impl(&dword_214D51000, v19, OS_LOG_TYPE_ERROR, "failed to remove media directory at URL: %@, error: %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v17);
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v11);

    accountCopy = v20;
  }
}

- (void)accountWillChangeToAccount:(id)account
{
  accountCopy = account;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  containerDirectoryURL = [(ICMedia *)self containerDirectoryURL];
  identifier = [(ICMedia *)self identifier];
  if (!identifier)
  {
    v10 = 0;
LABEL_16:
    if (!accountCopy)
    {
      goto LABEL_18;
    }

LABEL_17:
    [(ICMedia *)self setPlaceholderAccount:accountCopy];
    goto LABEL_18;
  }

  v8 = objc_opt_class();
  identifier2 = [(ICMedia *)self identifier];
  v10 = [v8 containerDirectoryURLForMediaWithIdentifier:identifier2 account:accountCopy];

  identifier = 0;
  if (!containerDirectoryURL || !v10)
  {
    goto LABEL_16;
  }

  if (([containerDirectoryURL isEqual:v10] & 1) != 0 || (objc_msgSend(containerDirectoryURL, "path"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(defaultManager, "fileExistsAtPath:", v11), v11, !v12))
  {
    identifier = 0;
    if (!accountCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  uRLByDeletingLastPathComponent = [v10 URLByDeletingLastPathComponent];
  v18 = 0;
  [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v18];
  v14 = v18;

  if (v14)
  {
    v15 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ICMedia accountWillChangeToAccount:];
    }
  }

  v17 = v14;
  [defaultManager moveItemAtURL:containerDirectoryURL toURL:v10 error:&v17];
  identifier = v17;

  if (!identifier)
  {
    goto LABEL_16;
  }

  v16 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [ICMedia accountWillChangeToAccount:];
  }

  if (accountCopy)
  {
    goto LABEL_17;
  }

LABEL_18:
}

- (void)prepareForDeletion
{
  v15.receiver = self;
  v15.super_class = ICMedia;
  [(ICMedia *)&v15 prepareForDeletion];
  containerDirectoryURL = [(ICMedia *)self containerDirectoryURL];
  if (containerDirectoryURL)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    v5 = [defaultManager removeItemAtURL:containerDirectoryURL error:&v14];
    v6 = v14;

    if ((v5 & 1) == 0 && [v6 code] != 4)
    {
      v7 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ICMedia prepareForDeletion];
      }
    }
  }

  exportableContainerDirectoryURL = [(ICMedia *)self exportableContainerDirectoryURL];
  if (exportableContainerDirectoryURL)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = 0;
    v10 = [defaultManager2 removeItemAtURL:exportableContainerDirectoryURL error:&v13];
    v11 = v13;

    if ((v10 & 1) == 0 && [v11 code] != 4)
    {
      v12 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ICMedia prepareForDeletion];
      }
    }
  }
}

- (void)setAttachment:(id)attachment
{
  attachmentCopy = attachment;
  [(ICMedia *)self willChangeValueForKey:@"attachment"];
  [(ICMedia *)self setPrimitiveValue:attachmentCopy forKey:@"attachment"];
  [(ICMedia *)self didChangeValueForKey:@"attachment"];
  [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  v5 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICMedia *)attachmentCopy setAttachment:?];
  }
}

- (BOOL)isValid
{
  if (([(ICMedia *)self needsInitialFetchFromCloud]& 1) != 0 || ([(ICMedia *)self needsToBeFetchedFromCloud]& 1) != 0)
  {
    return 0;
  }

  return [(ICMedia *)self hasFile];
}

- (BOOL)isArchivedDirectory
{
  if ([(ICMedia *)self hasFile])
  {
    if (([(ICMedia *)self isPasswordProtected]& 1) != 0)
    {
      [(ICMedia *)self encryptedMediaURL];
    }

    else
    {
      [(ICMedia *)self mediaURL];
    }
    attachment2 = ;
    v16 = 0;
    v11 = *MEMORY[0x277CBE868];
    v15 = 0;
    [attachment2 getResourceValue:&v16 forKey:v11 error:&v15];
    v12 = v16;
    v13 = v15;
    bOOLValue = [v12 BOOLValue];

LABEL_12:
    return bOOLValue;
  }

  attachment = [(ICMedia *)self attachment];

  if (attachment)
  {
    attachment2 = [(ICMedia *)self attachment];
    typeUTI = [attachment2 typeUTI];
    if (typeUTI)
    {
      v6 = MEMORY[0x277CE1CB8];
      attachment3 = [(ICMedia *)self attachment];
      typeUTI2 = [attachment3 typeUTI];
      v9 = [v6 typeWithIdentifier:typeUTI2];
      bOOLValue = [v9 conformsToType:*MEMORY[0x277CE1D50]];
    }

    else
    {
      bOOLValue = 0;
    }

    goto LABEL_12;
  }

  return 0;
}

- (NSSet)urlsToConsiderForCloudBackup
{
  array = [MEMORY[0x277CBEB18] array];
  mediaURL = [(ICMedia *)self mediaURL];
  if (mediaURL)
  {
    [array addObject:mediaURL];
  }

  encryptedMediaURL = [(ICMedia *)self encryptedMediaURL];
  if (encryptedMediaURL)
  {
    [array addObject:encryptedMediaURL];
  }

  mediaArchiveURL = [(ICMedia *)self mediaArchiveURL];
  if (mediaArchiveURL)
  {
    [array addObject:mediaArchiveURL];
  }

  v7 = MEMORY[0x277CBEB98];
  v8 = [array copy];
  v9 = [v7 setWithArray:v8];

  return v9;
}

- (void)updateFlagToExcludeFromCloudBackup
{
  v19 = *MEMORY[0x277D85DE8];
  urlsToConsiderForCloudBackup = [(ICMedia *)self urlsToConsiderForCloudBackup];
  attachment = [(ICMedia *)self attachment];
  note = [attachment note];
  account = [note account];
  shouldExcludeFilesFromCloudBackup = [account shouldExcludeFilesFromCloudBackup];

  if (shouldExcludeFilesFromCloudBackup)
  {
    if ([(ICMedia *)self needsToBePushedToCloud])
    {
      shouldBeIgnoredForSync = [(ICCloudSyncingObject *)self shouldBeIgnoredForSync];
    }

    else
    {
      shouldBeIgnoredForSync = 1;
    }
  }

  else
  {
    shouldBeIgnoredForSync = 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = urlsToConsiderForCloudBackup;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) ic_updateFlagToExcludeFromBackup:{shouldBeIgnoredForSync, v14}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (BOOL)writeDataFromFileURL:(id)l error:(id *)error
{
  lCopy = l;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__ICMedia_writeDataFromFileURL_error___block_invoke;
  v9[3] = &unk_2781967B0;
  v10 = lCopy;
  selfCopy = self;
  v7 = lCopy;
  LOBYTE(error) = [(ICMedia *)self writeDataWithBlock:v9 error:error];

  return error;
}

uint64_t __38__ICMedia_writeDataFromFileURL_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v38 = 0;
  v7 = *MEMORY[0x277CBE868];
  v37 = 0;
  v8 = [v6 getResourceValue:&v38 forKey:v7 error:&v37];
  v9 = v38;
  v10 = v37;
  if (v8)
  {
    v11 = [v9 BOOLValue];
  }

  else
  {
    v11 = 0;
  }

  v12 = [*(a1 + 40) mediaArchiveURL];
  if (v11)
  {
    v13 = objc_alloc(MEMORY[0x277D36190]);
    v14 = [*(a1 + 32) URLByDeletingLastPathComponent];
    v15 = [v13 initWithDestinationURL:v12 baseURL:v14];

    [v15 setUsesCompression:0];
    v45[0] = *(a1 + 32);
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    v36 = v10;
    [v15 writeURLs:v16 error:&v36];
    v17 = v36;

    if (v17)
    {
      v18 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        *buf = 138412802;
        v40 = v19;
        v41 = 2112;
        v42 = v12;
        v43 = 2112;
        v44 = v17;
        _os_log_error_impl(&dword_214D51000, v18, OS_LOG_TYPE_ERROR, "Failed to write file %@ to archive %@, error %@", buf, 0x20u);
      }

LABEL_11:

      v21 = 0;
      v10 = v17;
      goto LABEL_18;
    }

    v35 = 0;
    [v15 finish:&v35];
    v20 = v35;
    if (v20)
    {
      v17 = v20;
      v18 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __38__ICMedia_writeDataFromFileURL_error___block_invoke_cold_1();
      }

      goto LABEL_11;
    }

    v10 = 0;
  }

  v15 = [v5 URLByAppendingPathExtension:@"tempMedia"];
  v22 = [MEMORY[0x277CCAA00] defaultManager];
  v23 = [v22 copyItemAtURL:*(a1 + 32) toURL:v15 error:a3];

  if (v23)
  {
    v24 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = [v24 moveItemAtURL:v15 toURL:v5 error:a3];

    v25 = [*(a1 + 40) managedObjectContext];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __38__ICMedia_writeDataFromFileURL_error___block_invoke_22;
    v34[3] = &unk_278194B00;
    v34[4] = *(a1 + 40);
    [v25 performBlockAndWait:v34];
  }

  else
  {
    v26 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __38__ICMedia_writeDataFromFileURL_error___block_invoke_cold_2(a3, v26, v27, v28, v29, v30, v31, v32);
    }

    v21 = 0;
  }

LABEL_18:

  return v21;
}

void __38__ICMedia_writeDataFromFileURL_error___block_invoke_22(uint64_t a1)
{
  [*(a1 + 32) updateChangeCountWithReason:@"Wrote media data"];
  v2 = [*(a1 + 32) attachment];
  [v2 updateChangeCountWithReason:@"Wrote media data"];

  v3 = [*(a1 + 32) attachment];
  LOBYTE(v2) = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = [*(a1 + 32) attachment];
    [v4 setCachedImage:0];
  }
}

- (BOOL)writeDataFromAsset:(id)asset accountID:(id)d isArchivedDirectory:(BOOL)directory error:(id *)error
{
  directoryCopy = directory;
  assetCopy = asset;
  dCopy = d;
  managedObjectContext = [(ICMedia *)self managedObjectContext];
  v13 = [ICAccount cloudKitAccountWithIdentifier:dCopy context:managedObjectContext];

  [(ICMedia *)self setPlaceholderAccount:v13];
  generationManager = [(ICMedia *)self generationManager];
  LODWORD(dCopy) = [generationManager beginGeneration];

  if (dCopy)
  {
    if (directoryCopy)
    {
      [(ICMedia *)self mediaArchiveURL];
    }

    else
    {
      [(ICMedia *)self mediaURL];
    }
    v16 = ;
    if ([(ICMedia *)self isPasswordProtected])
    {
      encryptedMediaURL = [(ICMedia *)self encryptedMediaURL];

      v16 = encryptedMediaURL;
    }

    if (!v16)
    {
      v28 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ICMedia writeDataFromAsset:? accountID:? isArchivedDirectory:? error:?];
      }

      generationManager2 = [(ICMedia *)self generationManager];
      [generationManager2 rollbackGeneration];
      goto LABEL_29;
    }

    fileURL = [assetCopy fileURL];
    v19 = [v16 isEqual:fileURL];

    if (v19)
    {
      generationManager2 = 0;
      goto LABEL_11;
    }

    errorCopy = error;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    fileURL2 = [assetCopy fileURL];
    v55 = 0;
    v31 = [defaultManager moveItemAtURL:fileURL2 toURL:v16 error:&v55];
    generationManager2 = v55;

    if (v31)
    {
      v21 = 1;
    }

    else
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      fileURL3 = [assetCopy fileURL];
      v54 = generationManager2;
      v34 = [defaultManager2 linkItemAtURL:fileURL3 toURL:v16 error:&v54];
      v35 = v54;

      if ((v34 & 1) == 0)
      {
        v42 = v35;
        v43 = os_log_create("com.apple.notes", "Media");
        error = errorCopy;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [ICMedia writeDataFromAsset:accountID:isArchivedDirectory:error:];
        }

        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        fileURL4 = [assetCopy fileURL];
        v53 = v42;
        v47 = [defaultManager3 copyItemAtURL:fileURL4 toURL:v16 error:&v53];
        generationManager2 = v53;

        if (v47)
        {
LABEL_11:
          v21 = 1;
          if (directoryCopy)
          {
            goto LABEL_12;
          }

LABEL_22:
          managedObjectContext2 = [(ICMedia *)self managedObjectContext];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __66__ICMedia_writeDataFromAsset_accountID_isArchivedDirectory_error___block_invoke_2;
          v49[3] = &unk_278194B00;
          v49[4] = self;
          [managedObjectContext2 performBlockAndWait:v49];

          if (!generationManager2)
          {
LABEL_23:
            v37 = [(ICMedia *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICMediaDidLoadNotification"];
          }

LABEL_24:
          if (error)
          {
            v38 = generationManager2;
            *error = generationManager2;
          }

          generationManager3 = [(ICMedia *)self generationManager];
          v40 = generationManager3;
          if (v21)
          {
            commitGeneration = [generationManager3 commitGeneration];

LABEL_30:
            goto LABEL_31;
          }

          [generationManager3 rollbackGeneration];

LABEL_29:
          commitGeneration = 0;
          goto LABEL_30;
        }

        v46 = os_log_create("com.apple.notes", "Media");
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [ICMedia writeDataFromAsset:accountID:isArchivedDirectory:error:];
        }

        v21 = 0;
        if (!directoryCopy)
        {
          goto LABEL_22;
        }

LABEL_12:
        v22 = objc_alloc(MEMORY[0x277D36188]);
        uRLByDeletingLastPathComponent = [v16 URLByDeletingLastPathComponent];
        v24 = [v22 initWithSourceURL:v16 destinationURL:uRLByDeletingLastPathComponent];

        v51 = generationManager2;
        v52 = 0;
        [v24 unarchiveResultURLs:&v52 error:&v51];
        v25 = v52;
        v26 = v51;

        managedObjectContext3 = [(ICMedia *)self managedObjectContext];
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __66__ICMedia_writeDataFromAsset_accountID_isArchivedDirectory_error___block_invoke;
        v50[3] = &unk_278194B00;
        v50[4] = self;
        [managedObjectContext3 performBlockAndWait:v50];

        generationManager2 = v26;
        if (!v26)
        {
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v21 = 1;
      generationManager2 = v35;
    }

    error = errorCopy;
    if (!directoryCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  commitGeneration = 0;
LABEL_31:

  return commitGeneration;
}

void __66__ICMedia_writeDataFromAsset_accountID_isArchivedDirectory_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateFlagToExcludeFromCloudBackup];
  v2 = [*(a1 + 32) attachment];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) attachment];
    [v4 setCachedImage:0];
  }
}

void __66__ICMedia_writeDataFromAsset_accountID_isArchivedDirectory_error___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) updateFlagToExcludeFromCloudBackup];
  v2 = [*(a1 + 32) attachment];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) attachment];
    [v4 setCachedImage:0];
  }
}

- (void)writeDataFromItemProvider:(id)provider checkForMarkupData:(BOOL)data completionBlock:(id)block
{
  providerCopy = provider;
  blockCopy = block;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__ICMedia_writeDataFromItemProvider_checkForMarkupData_completionBlock___block_invoke;
  aBlock[3] = &unk_2781967D8;
  aBlock[4] = self;
  v10 = blockCopy;
  v35 = v10;
  v11 = _Block_copy(aBlock);
  v12 = *MEMORY[0x277CE1E90];
  identifier = [*MEMORY[0x277CE1E90] identifier];
  v14 = [providerCopy hasItemConformingToTypeIdentifier:identifier];

  if (v14)
  {
    identifier2 = [v12 identifier];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __72__ICMedia_writeDataFromItemProvider_checkForMarkupData_completionBlock___block_invoke_2;
    v30[3] = &unk_278196828;
    v16 = &v31;
    v30[4] = self;
    v31 = v10;
    dataCopy = data;
    v17 = &v32;
    v32 = v11;
    v18 = v30;
LABEL_5:
    [providerCopy loadItemForTypeIdentifier:identifier2 options:0 completionHandler:{v18, v22, v23, v24, v25, selfCopy}];

    goto LABEL_6;
  }

  v19 = *MEMORY[0x277CE1D48];
  identifier3 = [*MEMORY[0x277CE1D48] identifier];
  v21 = [providerCopy hasItemConformingToTypeIdentifier:identifier3];

  if (v21)
  {
    identifier2 = [v19 identifier];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __72__ICMedia_writeDataFromItemProvider_checkForMarkupData_completionBlock___block_invoke_4;
    v25 = &unk_278196828;
    v16 = &v27;
    selfCopy = self;
    v27 = v10;
    dataCopy2 = data;
    v17 = &v28;
    v28 = v11;
    v18 = &v22;
    goto LABEL_5;
  }

LABEL_6:
}

void __72__ICMedia_writeDataFromItemProvider_checkForMarkupData_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!v7)
  {
    v3 = [*(a1 + 32) attachment];
    v4 = [v3 attachmentModel];
    [v4 updateFileBasedAttributes];

    [*(a1 + 32) updateChangeCountWithReason:@"Wrote media data"];
    v5 = [*(a1 + 32) attachment];
    [v5 attachmentDidChange];

    v6 = [*(a1 + 32) attachment];
    [v6 setPreviewUpdateDate:0];
  }

  (*(*(a1 + 40) + 16))();
}

void __72__ICMedia_writeDataFromItemProvider_checkForMarkupData_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  v7 = ICDynamicCast();

  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else if (v7)
  {
    [v7 startAccessingSecurityScopedResource];
    v8 = [*(a1 + 32) managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__ICMedia_writeDataFromItemProvider_checkForMarkupData_completionBlock___block_invoke_3;
    v9[3] = &unk_278196800;
    v9[4] = *(a1 + 32);
    v10 = v7;
    v12 = *(a1 + 56);
    v11 = *(a1 + 48);
    [v8 performBlockAndWait:v9];
  }
}

void __72__ICMedia_writeDataFromItemProvider_checkForMarkupData_completionBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = [v2 writeDataFromFileURL:v3 error:&v9];
  v5 = v9;
  if (v4 && *(a1 + 56) == 1)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:*(a1 + 40)];
    v7 = [ICMarkupUtilities hasPrivateImageMetadata:v6];
    v8 = [*(a1 + 32) attachment];
    [v8 setHasMarkupData:v7];
  }

  [*(a1 + 40) stopAccessingSecurityScopedResource];
  (*(*(a1 + 48) + 16))();
}

void __72__ICMedia_writeDataFromItemProvider_checkForMarkupData_completionBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  v7 = ICDynamicCast();

  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else if (v7)
  {
    v8 = [*(a1 + 32) managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__ICMedia_writeDataFromItemProvider_checkForMarkupData_completionBlock___block_invoke_5;
    v9[3] = &unk_278196800;
    v9[4] = *(a1 + 32);
    v10 = v7;
    v12 = *(a1 + 56);
    v11 = *(a1 + 48);
    [v8 performBlockAndWait:v9];
  }
}

void __72__ICMedia_writeDataFromItemProvider_checkForMarkupData_completionBlock___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = 0;
  v4 = [v2 writeData:v3 error:&v8];
  v5 = v8;
  if (v4 && *(a1 + 56) == 1)
  {
    v6 = [ICMarkupUtilities hasPrivateImageMetadata:*(a1 + 40)];
    v7 = [*(a1 + 32) attachment];
    [v7 setHasMarkupData:v6];
  }

  (*(*(a1 + 48) + 16))();
}

- (id)data
{
  if ([(ICMedia *)self isArchivedDirectory])
  {
    v3 = MEMORY[0x277CBEA90];
    mediaArchiveURL = [(ICMedia *)self mediaArchiveURL];
    decryptedData = [v3 dataWithContentsOfURL:mediaArchiveURL];

    if (decryptedData)
    {
      goto LABEL_8;
    }

    v6 = MEMORY[0x277CBEA90];
    mediaTarArchiveURL = [(ICMedia *)self mediaTarArchiveURL];
  }

  else
  {
    if ([(ICMedia *)self isPasswordProtected])
    {
      decryptedData = [(ICMedia *)self decryptedData];
      goto LABEL_8;
    }

    v6 = MEMORY[0x277CBEA90];
    mediaTarArchiveURL = [(ICMedia *)self mediaURL];
  }

  v8 = mediaTarArchiveURL;
  decryptedData = [v6 dataWithContentsOfURL:mediaTarArchiveURL];

LABEL_8:

  return decryptedData;
}

- (id)dataWithoutImageMarkupMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  data = [(ICMedia *)self data];
  if (metadataCopy)
  {
    attachment = [(ICMedia *)self attachment];
    hasMarkupData = [attachment hasMarkupData];

    if (hasMarkupData)
    {
      v8 = [ICMarkupUtilities cleanImageMetadataFromData:data];

      data = v8;
    }
  }

  return data;
}

- (BOOL)writeData:(id)data error:(id *)error
{
  dataCopy = data;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__ICMedia_writeData_error___block_invoke;
  v9[3] = &unk_2781967B0;
  v9[4] = self;
  v10 = dataCopy;
  v7 = dataCopy;
  LOBYTE(error) = [(ICMedia *)self writeDataWithBlock:v9 error:error];

  return error;
}

uint64_t __27__ICMedia_writeData_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) mediaArchiveURL];
  v7 = [*(a1 + 32) isArchivedDirectory];
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;
  if (!v9)
  {
    v14 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __27__ICMedia_writeData_error___block_invoke_cold_2(v14);
    }

    goto LABEL_12;
  }

  if (([*(a1 + 40) writeToURL:v9 options:1 error:a3] & 1) == 0)
  {
    v14 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __27__ICMedia_writeData_error___block_invoke_cold_1(a3, v14, v15, v16, v17, v18, v19, v20);
    }

LABEL_12:

    v13 = 0;
    goto LABEL_15;
  }

  if (v7)
  {
    v10 = objc_alloc(MEMORY[0x277D36188]);
    v11 = [v5 URLByDeletingLastPathComponent];
    v12 = [v10 initWithSourceURL:v6 destinationURL:v11];

    v24 = 0;
    v13 = [v12 unarchiveResultURLs:&v24 error:a3];
  }

  else
  {
    v13 = 1;
  }

  v21 = [*(a1 + 32) managedObjectContext];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __27__ICMedia_writeData_error___block_invoke_37;
  v23[3] = &unk_278194B00;
  v23[4] = *(a1 + 32);
  [v21 performBlockAndWait:v23];

LABEL_15:
  return v13;
}

void __27__ICMedia_writeData_error___block_invoke_37(uint64_t a1)
{
  [*(a1 + 32) updateChangeCountWithReason:@"Wrote media data"];
  v2 = [*(a1 + 32) attachment];
  [v2 updateChangeCountWithReason:@"Wrote media data"];

  v3 = [*(a1 + 32) attachment];
  LOBYTE(v2) = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = [*(a1 + 32) attachment];
    [v4 setCachedImage:0];
  }
}

- (BOOL)writeDataFromFileWrapper:(id)wrapper error:(id *)error
{
  wrapperCopy = wrapper;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ICMedia_writeDataFromFileWrapper_error___block_invoke;
  v9[3] = &unk_2781967B0;
  v10 = wrapperCopy;
  selfCopy = self;
  v7 = wrapperCopy;
  LOBYTE(error) = [(ICMedia *)self writeDataWithBlock:v9 error:error];

  return error;
}

uint64_t __42__ICMedia_writeDataFromFileWrapper_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) isDirectory];
  v7 = [*(a1 + 40) mediaArchiveURL];
  if (v6)
  {
    v46 = 0;
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = &v46;
    }

    v9 = NSTemporaryDirectory();
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v10 UUIDString];
    v12 = [v9 stringByAppendingPathComponent:v11];

    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
    v14 = [v5 lastPathComponent];
    v15 = [v13 URLByAppendingPathComponent:v14 isDirectory:0];

    v16 = [v15 URLByAppendingPathExtension:@"zip"];
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    [v17 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v8];

    if (*v8)
    {
      v18 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_cold_2();
      }

LABEL_16:

LABEL_17:
LABEL_18:
      v20 = 0;
      goto LABEL_19;
    }

    [*(a1 + 32) writeToURL:v15 options:1 originalContentsURL:0 error:v8];
    if (*v8)
    {
      v18 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_cold_3();
      }

      goto LABEL_16;
    }

    v29 = [objc_alloc(MEMORY[0x277D36190]) initWithDestinationURL:v16 baseURL:v13];
    [v29 setUsesCompression:0];
    v53[0] = v15;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
    [v29 writeURLs:v30 error:v8];

    if (*v8)
    {
      v31 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = *v8;
        *buf = 138412802;
        v48 = v15;
        v49 = 2112;
        v50 = v16;
        v51 = 2112;
        v52 = v32;
        _os_log_error_impl(&dword_214D51000, v31, OS_LOG_TYPE_ERROR, "Failed to write file %@ to archive %@, error %@", buf, 0x20u);
      }

      goto LABEL_26;
    }

    [v29 finish:v8];
    if (*v8)
    {
      v31 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_cold_4();
      }

      goto LABEL_26;
    }

    v33 = [MEMORY[0x277CCAA00] defaultManager];
    v41 = [v33 moveItemAtURL:v15 toURL:v5 error:v8];

    if (v41 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v34 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v34, "copyItemAtURL:toURL:error:", v15, v5, v8), v34, (v42))
    {
      v35 = [MEMORY[0x277CCAA00] defaultManager];
      v43 = [v35 moveItemAtURL:v16 toURL:v7 error:v8];

      if (v43)
      {
LABEL_35:
        v39 = [MEMORY[0x277CCAA00] defaultManager];
        [v39 removeItemAtURL:v13 error:v8];

        if (*v8)
        {
          v40 = os_log_create("com.apple.notes", "Media");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_cold_8();
          }

          *v8 = 0;
        }

        goto LABEL_9;
      }

      v36 = [MEMORY[0x277CCAA00] defaultManager];
      v44 = [v36 copyItemAtURL:v16 toURL:v7 error:v8];

      if (v44)
      {
        v37 = [MEMORY[0x277CCAA00] defaultManager];
        [v37 removeItemAtURL:v16 error:v8];

        if (*v8)
        {
          v38 = os_log_create("com.apple.notes", "Media");
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_cold_7();
          }

          *v8 = 0;
        }

        goto LABEL_35;
      }

      v31 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }
    }

    else
    {
      v31 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_41:
        __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_cold_5();
      }
    }

LABEL_26:

    goto LABEL_17;
  }

  if (([*(a1 + 32) writeToURL:v5 options:1 originalContentsURL:0 error:a3] & 1) == 0)
  {
    v21 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_cold_1(a3, v21, v22, v23, v24, v25, v26, v27);
    }

    goto LABEL_18;
  }

LABEL_9:
  v19 = [*(a1 + 40) managedObjectContext];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_39;
  v45[3] = &unk_278194B00;
  v45[4] = *(a1 + 40);
  [v19 performBlockAndWait:v45];

  v20 = 1;
LABEL_19:

  return v20;
}

void __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_39(uint64_t a1)
{
  [*(a1 + 32) updateChangeCountWithReason:@"Wrote media data"];
  v2 = [*(a1 + 32) attachment];
  [v2 updateChangeCountWithReason:@"Wrote media data"];

  v3 = [*(a1 + 32) attachment];
  LOBYTE(v2) = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = [*(a1 + 32) attachment];
    [v4 setCachedImage:0];
  }
}

- (BOOL)writeDataWithBlock:(id)block error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  [(ICMedia *)self deleteExportableMedia];
  generationManager = [(ICMedia *)self generationManager];
  beginGeneration = [generationManager beginGeneration];

  if (!beginGeneration)
  {
    v13 = 0;
    goto LABEL_11;
  }

  mediaURL = [(ICMedia *)self mediaURL];
  encryptedMediaURL = [(ICMedia *)self encryptedMediaURL];
  if (!mediaURL || [(ICMedia *)self isPasswordProtected]&& !encryptedMediaURL)
  {
    v11 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ICMedia writeDataWithBlock:? error:?];
    }

    v12 = 0;
    goto LABEL_8;
  }

  v15 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
    *buf = 138412546;
    v33 = shortLoggingDescription;
    v34 = 2112;
    v35 = mediaURL;
    _os_log_impl(&dword_214D51000, v15, OS_LOG_TYPE_INFO, "Writing media… {mediaID: %@, url: %@}", buf, 0x16u);
  }

  v31 = 0;
  v17 = blockCopy[2](blockCopy, mediaURL, &v31);
  v12 = v31;
  if (v17)
  {
    if (![(ICMedia *)self isPasswordProtected])
    {
      v20 = v12;
      goto LABEL_28;
    }

    if (![(ICCloudSyncingObject *)self encryptFileFromURL:mediaURL toURL:encryptedMediaURL])
    {
      v28 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ICMedia writeDataWithBlock:? error:?];
      }

      generationManager2 = [(ICMedia *)self generationManager];
      [generationManager2 rollbackGeneration];

      goto LABEL_8;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v30 = v12;
    v19 = [defaultManager removeItemAtURL:mediaURL error:&v30];
    v20 = v30;

    if ((v19 & 1) == 0)
    {
      code = [v20 code];

      if (code == 4)
      {
LABEL_28:
        generationManager3 = [(ICMedia *)self generationManager];
        commitGeneration = [generationManager3 commitGeneration];

        if (commitGeneration)
        {
          [(ICMedia *)self updateFlagToExcludeFromCloudBackup];
          v27 = [(ICMedia *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICMediaDidLoadNotification"];
          v13 = 1;
        }

        else
        {
          v13 = 0;
        }

        v12 = v20;
        goto LABEL_9;
      }

      defaultManager = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
      {
        [ICMedia writeDataWithBlock:? error:?];
      }
    }

    goto LABEL_28;
  }

  v22 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [ICMedia writeDataWithBlock:? error:?];
  }

  generationManager4 = [(ICMedia *)self generationManager];
  [generationManager4 rollbackGeneration];

  if (error)
  {
    v24 = v12;
    v13 = 0;
    *error = v12;
    goto LABEL_9;
  }

LABEL_8:
  v13 = 0;
LABEL_9:

LABEL_11:
  return v13;
}

+ (id)containerDirectoryURLForMediaWithIdentifier:(id)identifier account:(id)account
{
  identifierCopy = identifier;
  mediaDirectoryURL = [account mediaDirectoryURL];
  v7 = [mediaDirectoryURL URLByAppendingPathComponent:identifierCopy isDirectory:1];

  return v7;
}

- (id)encryptedMediaURL
{
  identifier = [(ICMedia *)self identifier];

  if (identifier)
  {
    generationManager = [(ICMedia *)self generationManager];
    generationURL = [generationManager generationURL];

    if (generationURL)
    {
      generationManager2 = [(ICMedia *)self generationManager];
      generationURL2 = [generationManager2 generationURL];
      identifier2 = [(ICMedia *)self identifier];
      encryptedMediaFallbackURL = [generationURL2 URLByAppendingPathComponent:identifier2 isDirectory:0];
    }

    else
    {
      encryptedMediaFallbackURL = [(ICMedia *)self encryptedMediaFallbackURL];
    }
  }

  else
  {
    encryptedMediaFallbackURL = 0;
  }

  return encryptedMediaFallbackURL;
}

- (id)mediaTarArchiveURL
{
  mediaURL = [(ICMedia *)self mediaURL];
  v3 = [mediaURL URLByAppendingPathExtension:@"tar"];

  return v3;
}

- (id)mediaArchiveURL
{
  mediaURL = [(ICMedia *)self mediaURL];
  v3 = [mediaURL URLByAppendingPathExtension:@"zip"];

  return v3;
}

+ (id)exportableContainerDirectoryURLForMediaWithIdentifier:(id)identifier account:(id)account
{
  identifierCopy = identifier;
  exportableMediaDirectoryURL = [account exportableMediaDirectoryURL];
  v7 = [exportableMediaDirectoryURL URLByAppendingPathComponent:identifierCopy isDirectory:1];

  return v7;
}

- (id)exportableContainerDirectoryURL
{
  identifier = [(ICMedia *)self identifier];
  if (identifier && (v4 = identifier, [(ICMedia *)self containerAccount], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    identifier2 = [(ICMedia *)self identifier];
    containerAccount = [(ICMedia *)self containerAccount];
    v8 = [ICMedia exportableContainerDirectoryURLForMediaWithIdentifier:identifier2 account:containerAccount];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)exportableMediaURL
{
  filename = [(ICMedia *)self filename];

  if (filename)
  {
    exportableContainerDirectoryURL = [(ICMedia *)self exportableContainerDirectoryURL];
    filename2 = [(ICMedia *)self filename];
    v6 = [exportableContainerDirectoryURL URLByAppendingPathComponent:filename2 isDirectory:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)prepareExportableMediaURL
{
  attachment = [(ICMedia *)self attachment];
  hasMarkupData = [attachment hasMarkupData];

  if (!hasMarkupData)
  {
    mediaURL = [(ICMedia *)self mediaURL];
    goto LABEL_28;
  }

  if (([(ICMedia *)self isPasswordProtected]& 1) != 0)
  {
    mediaURL = 0;
    goto LABEL_28;
  }

  mediaURL = [(ICMedia *)self exportableMediaURL];
  if ([mediaURL checkResourceIsReachableAndReturnError:0])
  {
    mediaURL2 = [(ICMedia *)self mediaURL];
    v32 = 0;
    v7 = *MEMORY[0x277CBE7B0];
    v31 = 0;
    v8 = [mediaURL2 getResourceValue:&v32 forKey:v7 error:&v31];
    v9 = v32;
    v10 = v31;
    if (v8)
    {
      v29 = 0;
      v30 = 0;
      v11 = [mediaURL getResourceValue:&v30 forKey:v7 error:&v29];
      v12 = v30;
      v13 = v29;

      if (v11)
      {
        v14 = [v9 compare:v12] < 1;
      }

      else
      {
        v16 = os_log_create("com.apple.notes", "Media");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [ICMedia prepareExportableMediaURL];
        }

        v14 = 0;
      }
    }

    else
    {
      v15 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ICMedia prepareExportableMediaURL];
      }

      v12 = 0;
      v14 = 1;
      v13 = v10;
    }
  }

  else
  {
    v14 = 0;
  }

  exportableContainerDirectoryURL = [(ICMedia *)self exportableContainerDirectoryURL];
  if (exportableContainerDirectoryURL && !v14)
  {
    v18 = [(ICMedia *)self dataWithoutImageMarkupMetadata:1];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v28 = 0;
    v20 = [defaultManager createDirectoryAtURL:exportableContainerDirectoryURL withIntermediateDirectories:1 attributes:0 error:&v28];
    v21 = v28;
    v22 = v21;
    if (v20)
    {
      v27 = v21;
      v23 = [v18 writeToURL:mediaURL options:1 error:&v27];
      v24 = v27;

      if (v23)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {

      v24 = v22;
    }

    v25 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ICMedia prepareExportableMediaURL];
    }

    mediaURL = 0;
    goto LABEL_26;
  }

LABEL_27:

LABEL_28:

  return mediaURL;
}

- (void)deleteExportableMedia
{
  exportableMediaURL = [(ICMedia *)self exportableMediaURL];
  if ([exportableMediaURL checkResourceIsReachableAndReturnError:0])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = 0;
    v4 = [defaultManager removeItemAtURL:exportableMediaURL error:&v7];
    v5 = v7;

    if ((v4 & 1) == 0)
    {
      v6 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [ICMedia deleteExportableMedia];
      }
    }
  }
}

- (id)ic_loggingValues
{
  v12.receiver = self;
  v12.super_class = ICMedia;
  ic_loggingValues = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [ic_loggingValues mutableCopy];

  managedObjectContext = [(ICMedia *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __27__ICMedia_ic_loggingValues__block_invoke;
  v10[3] = &unk_278194AD8;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  [managedObjectContext performBlockAndWait:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __27__ICMedia_ic_loggingValues__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasFile];
  if ((v2 & 1) == 0)
  {
    [*(a1 + 40) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasFile"];
  }

  v3 = [*(a1 + 32) attachment];
  v4 = [v3 identifier];

  if (v4)
  {
    v5 = [*(a1 + 32) attachment];
    v6 = [v5 identifier];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:@"attachment"];
  }

  if ([*(a1 + 32) isArchivedDirectory])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:@"isArchivedDirectory"];

    if ((v2 & 1) == 0)
    {
      return;
    }

    v8 = [*(a1 + 32) mediaArchiveURL];
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      return;
    }

    v9 = [*(a1 + 32) isPasswordProtected];
    v10 = *(a1 + 32);
    if (v9)
    {
      [v10 encryptedMediaURL];
    }

    else
    {
      [v10 mediaURL];
    }
    v8 = ;
  }

  v11 = v8;
  v16 = 0;
  [v8 getResourceValue:&v16 forKey:*MEMORY[0x277CBE838] error:0];
  v12 = v16;
  if (v12)
  {
    [*(a1 + 40) setObject:v12 forKeyedSubscript:@"fileSize"];
  }

  v13 = MEMORY[0x277CCABB0];
  v14 = [*(a1 + 32) filename];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "hash")}];
  [*(a1 + 40) setObject:v15 forKeyedSubscript:@"filename"];
}

- (void)markForDeletion
{
  v4.receiver = self;
  v4.super_class = ICMedia;
  [(ICCloudSyncingObject *)&v4 markForDeletion];
  attachment = [(ICMedia *)self attachment];
  [attachment markForDeletion];
}

- (void)unmarkForDeletion
{
  v4.receiver = self;
  v4.super_class = ICMedia;
  [(ICCloudSyncingObject *)&v4 unmarkForDeletion];
  attachment = [(ICMedia *)self attachment];
  [attachment unmarkForDeletion];
}

- (id)decryptedData
{
  cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
  decryptedData = [cryptoStrategy decryptedData];

  return decryptedData;
}

- (id)parentEncryptableObject
{
  attachment = [(ICMedia *)self attachment];
  v4 = attachment;
  if (attachment)
  {
    account = attachment;
  }

  else
  {
    account = [(ICMedia *)self account];
  }

  v6 = account;

  return v6;
}

- (void)applyRandomCryptoGooIfNeeded
{
  v9.receiver = self;
  v9.super_class = ICMedia;
  [(ICCloudSyncingObject *)&v9 applyRandomCryptoGooIfNeeded];
  assetCryptoTag = [(ICMedia *)self assetCryptoTag];
  v4 = [assetCryptoTag length];

  if (!v4)
  {
    v5 = [MEMORY[0x277CBEA90] ic_random128BitData:0];
    [(ICMedia *)self setAssetCryptoTag:v5];
  }

  assetCryptoInitializationVector = [(ICMedia *)self assetCryptoInitializationVector];
  v7 = [assetCryptoInitializationVector length];

  if (!v7)
  {
    v8 = [MEMORY[0x277CBEA90] ic_random128BitData:0];
    [(ICMedia *)self setAssetCryptoInitializationVector:v8];
  }
}

- (void)setFilename:(id)filename
{
  ic_sanitizedFilenameString = [filename ic_sanitizedFilenameString];
  if ([ic_sanitizedFilenameString length])
  {
    v4 = ic_sanitizedFilenameString;
  }

  else
  {
    identifier = [(ICMedia *)self identifier];

    v4 = identifier;
  }

  v7 = v4;
  [(ICCloudSyncingObject *)self setValue:v4 forEncryptableKey:@"filename"];
}

- (id)cloudAccount
{
  account = [(ICMedia *)self account];
  v4 = account;
  if (account)
  {
    cloudAccount = account;
  }

  else
  {
    attachment = [(ICMedia *)self attachment];
    cloudAccount = [attachment cloudAccount];
  }

  return cloudAccount;
}

- (id)parentCloudObject
{
  attachment = [(ICMedia *)self attachment];
  note = [attachment note];

  return note;
}

+ (id)keyPathsForValuesAffectingIsSharedViaICloud
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___ICMedia;
  v2 = objc_msgSendSuper2(&v5, sel_keyPathsForValuesAffectingIsSharedViaICloud);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"self.attachment.note"];
  [v3 addObject:@"self.attachment.note.isSharedViaICloud"];

  return v3;
}

- (ICAccount)placeholderAccount
{
  WeakRetained = objc_loadWeakRetained(&self->placeholderAccount);

  return WeakRetained;
}

+ (id)newMediaWithIdentifier:(id)identifier account:(id)account
{
  accountCopy = account;
  identifierCopy = identifier;
  managedObjectContext = [accountCopy managedObjectContext];
  v9 = [self newObjectWithIdentifier:identifierCopy context:managedObjectContext];

  [v9 setAccount:accountCopy];
  persistentStore = [accountCopy persistentStore];

  [v9 assignToPersistentStore:persistentStore];
  return v9;
}

+ (id)newMediaWithIdentifier:(id)identifier attachment:(id)attachment
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  managedObjectContext = [attachmentCopy managedObjectContext];
  v9 = [self newObjectWithIdentifier:identifierCopy context:managedObjectContext];

  account = [attachmentCopy account];
  persistentStore = [account persistentStore];
  [v9 assignToPersistentStore:persistentStore];

  account2 = [attachmentCopy account];
  [v9 setAccount:account2];

  [v9 setAttachment:attachmentCopy];
  [attachmentCopy setMedia:v9];
  isPasswordProtected = [attachmentCopy isPasswordProtected];

  [v9 setIsPasswordProtected:isPasswordProtected];
  if ([v9 isPasswordProtected])
  {
    [v9 initializeCryptoProperties];
  }

  return v9;
}

+ (id)newMediaWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  managedObjectContext = [attachmentCopy managedObjectContext];
  v8 = [self newObjectWithIdentifier:uUIDString context:managedObjectContext];

  if (attachmentCopy)
  {
    note = [attachmentCopy note];
    account = [note account];
    persistentStore = [account persistentStore];
    [v8 assignToPersistentStore:persistentStore];

    account2 = [attachmentCopy account];
    [v8 setAccount:account2];

    [v8 setAttachment:attachmentCopy];
    [attachmentCopy setMedia:v8];
    [v8 setIsPasswordProtected:{objc_msgSend(attachmentCopy, "isPasswordProtected")}];
    if ([v8 isPasswordProtected])
    {
      [v8 initializeCryptoProperties];
    }
  }

  return v8;
}

+ (id)newMediaWithAttachment:(id)attachment forData:(id)data filename:(id)filename error:(id *)error
{
  attachmentCopy = attachment;
  filenameCopy = filename;
  dataCopy = data;
  v13 = [self newMediaWithAttachment:attachmentCopy];
  if (![filenameCopy length])
  {
    v14 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ICMedia(Management) newMediaWithAttachment:v14 forData:? filename:? error:?];
    }

    identifier = [v13 identifier];

    filenameCopy = identifier;
  }

  v16 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    +[ICMedia(Management) newMediaWithAttachment:forData:filename:error:];
  }

  [v13 setFilename:filenameCopy];
  v17 = [v13 writeData:dataCopy error:error];

  if ((v17 & 1) == 0)
  {
    if (error)
    {
      v18 = *error;
    }

    else
    {
      v18 = 0;
    }

    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICMedia(Management) newMediaWithAttachment:forData:filename:error:]" simulateCrash:1 showAlert:1 format:{@"Failed to write media to disk: %@", v18}];
    managedObjectContext = [attachmentCopy managedObjectContext];
    [managedObjectContext deleteObject:v13];

    v13 = 0;
  }

  return v13;
}

+ (id)newMediaWithAttachment:(id)attachment forFileWrapper:(id)wrapper error:(id *)error
{
  attachmentCopy = attachment;
  wrapperCopy = wrapper;
  v10 = [self newMediaWithAttachment:attachmentCopy];
  v11 = [ICNoteContext filenameFromFileWrapper:wrapperCopy];
  if (![v11 length])
  {
    v12 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[ICMedia(Management) newMediaWithAttachment:forFileWrapper:error:];
    }

    identifier = [v10 identifier];

    v11 = identifier;
  }

  v14 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[ICMedia(Management) newMediaWithAttachment:forData:filename:error:];
  }

  [v10 setFilename:v11];
  if (([v10 writeDataFromFileWrapper:wrapperCopy error:error] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICMedia(Management) newMediaWithAttachment:forFileWrapper:error:]" simulateCrash:1 showAlert:1 format:{@"Failed to write media to disk: %@", *error}];
    managedObjectContext = [attachmentCopy managedObjectContext];
    [managedObjectContext deleteObject:v10];

    v10 = 0;
  }

  return v10;
}

+ (id)newMediaWithAttachment:(id)attachment forURL:(id)l error:(id *)error
{
  lCopy = l;
  attachmentCopy = attachment;
  lastPathComponent = [lCopy lastPathComponent];
  v10 = [ICMedia newMediaWithAttachment:attachmentCopy forURL:lCopy filename:lastPathComponent error:error];

  return v10;
}

+ (id)newMediaWithAttachment:(id)attachment forURL:(id)l filename:(id)filename error:(id *)error
{
  attachmentCopy = attachment;
  filenameCopy = filename;
  lCopy = l;
  v13 = [self newMediaWithAttachment:attachmentCopy];
  [v13 setFilename:filenameCopy];

  v14 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ICMedia(Management) newMediaWithAttachment:v13 forURL:? filename:? error:?];
  }

  v15 = [v13 writeDataFromFileURL:lCopy error:error];
  if ((v15 & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICMedia(Management) newMediaWithAttachment:forURL:filename:error:]" simulateCrash:1 showAlert:1 format:{@"Failed to write media to disk: %@", *error}];
    managedObjectContext = [attachmentCopy managedObjectContext];
    [managedObjectContext deleteObject:v13];

    v13 = 0;
  }

  return v13;
}

+ (void)purgeMedia:(id)media
{
  mediaCopy = media;
  managedObjectContext = [mediaCopy managedObjectContext];
  [managedObjectContext deleteObject:mediaCopy];
}

+ (id)mediaWithIdentifier:(id)identifier context:(id)context
{
  v6 = MEMORY[0x277CCAC30];
  contextCopy = context;
  identifier = [v6 predicateWithFormat:@"identifier = %@", identifier];
  v9 = [self ic_objectsMatchingPredicate:identifier context:contextCopy];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)mediaIdentifiersForAccount:(id)account
{
  accountCopy = account;
  managedObjectContext = [accountCopy managedObjectContext];
  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"ICMedia"];
  accountCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"attachment.note.account == %@", accountCopy];

  [v5 setPredicate:accountCopy];
  [v5 setResultType:2];
  [v5 setPropertiesToFetch:&unk_282747F88];
  v12 = 0;
  v7 = [managedObjectContext executeFetchRequest:v5 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ICMedia(Management) mediaIdentifiersForAccount:];
    }

    goto LABEL_4;
  }

  v9 = [v7 valueForKey:@"identifier"];
  if (!v9)
  {
LABEL_4:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = [MEMORY[0x277CBEB98] setWithArray:v9];
LABEL_7:

  return v10;
}

- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state
{
  recordCopy = record;
  dCopy = d;
  if (approach)
  {
    v12 = MEMORY[0x277D36198];
    className = [(ICMedia *)self className];
    v14 = ICStringFromSyncingApproach(approach);
    [v12 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICMedia(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", className, v14}];

LABEL_11:
    v24 = 0;
    goto LABEL_12;
  }

  v50.receiver = self;
  v50.super_class = ICMedia;
  if (![(ICCloudSyncingObject *)&v50 mergeCloudKitRecord:recordCopy accountID:dCopy approach:0 mergeableFieldState:state])
  {
    goto LABEL_11;
  }

  v15 = [recordCopy objectForKeyedSubscript:@"AssetCryptoTag"];
  [(ICMedia *)self setAssetCryptoTag:v15];

  v16 = [recordCopy objectForKeyedSubscript:@"AssetCryptoInitializationVector"];
  [(ICMedia *)self setAssetCryptoInitializationVector:v16];

  assetCryptoTag = [(ICMedia *)self assetCryptoTag];
  if (assetCryptoTag)
  {
    v18 = assetCryptoTag;
    assetCryptoInitializationVector = [(ICMedia *)self assetCryptoInitializationVector];

    if (assetCryptoInitializationVector)
    {
      [(ICMedia *)self setIsPasswordProtected:1];
    }
  }

  encryptedValues = [recordCopy encryptedValues];
  v21 = [encryptedValues objectForKeyedSubscript:@"FilenameEncrypted"];

  if (v21 && ([(ICMedia *)self isPasswordProtected]& 1) == 0)
  {
    ic_stringValue = [v21 ic_stringValue];
    goto LABEL_14;
  }

  v22 = [recordCopy objectForKeyedSubscript:@"Filename"];

  if (v22)
  {
    ic_stringValue = [recordCopy objectForKeyedSubscript:@"Filename"];
LABEL_14:
    v26 = ic_stringValue;
    [(ICMedia *)self setFilename:ic_stringValue];
LABEL_15:

    goto LABEL_16;
  }

  v40 = [recordCopy objectForKeyedSubscript:@"FilenameExtension"];

  if (v40)
  {
    v26 = [recordCopy objectForKeyedSubscript:@"FilenameExtension"];
    identifier = [(ICMedia *)self identifier];
    v42 = [identifier stringByAppendingPathExtension:v26];
    [(ICMedia *)self setFilename:v42];

    v43 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [ICMedia(CloudKit) mergeCloudKitRecord:recordCopy accountID:v43 approach:? mergeableFieldState:?];
    }

    [(ICCloudSyncingObject *)self updateChangeCountWithReason:@"Corrected filename"];
    goto LABEL_15;
  }

LABEL_16:
  v27 = [recordCopy objectForKeyedSubscript:@"Asset"];
  fileURL = [v27 fileURL];
  if (fileURL && (v29 = fileURL, [MEMORY[0x277CCAA00] defaultManager], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "fileURL"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "path"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v30, "fileExistsAtPath:", v32), v32, v31, v30, v29, v33))
  {
    v34 = [recordCopy objectForKeyedSubscript:@"IsArchivedDirectory"];
    v49 = 0;
    v35 = -[ICMedia writeDataFromAsset:accountID:isArchivedDirectory:error:](self, "writeDataFromAsset:accountID:isArchivedDirectory:error:", v27, dCopy, [v34 BOOLValue], &v49);
    v36 = v49;

    if (!v35)
    {
      v37 = MEMORY[0x277D36198];
      shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
      [v37 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICMedia(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:1 format:{@"Error writing data from asset for %@: %@", shortLoggingDescription, v36}];
    }
  }

  else
  {
    unappliedEncryptedRecord = [(ICCloudSyncingObject *)self unappliedEncryptedRecord];
    if (unappliedEncryptedRecord)
    {
    }

    else if (![(ICCloudSyncingObject *)self isMergingUnappliedEncryptedRecord])
    {
      [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:1];
    }
  }

  markedForDeletion = [(ICMedia *)self markedForDeletion];
  attachment = [(ICMedia *)self attachment];
  markedForDeletion2 = [attachment markedForDeletion];

  if (markedForDeletion != markedForDeletion2)
  {
    markedForDeletion3 = [(ICMedia *)self markedForDeletion];
    attachment2 = [(ICMedia *)self attachment];
    [attachment2 setMarkedForDeletion:markedForDeletion3];
  }

  v24 = 1;
LABEL_12:

  return v24;
}

- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state
{
  v39 = *MEMORY[0x277D85DE8];
  if (approach)
  {
    v6 = MEMORY[0x277D36198];
    v7 = [(ICMedia *)self className:approach];
    v8 = ICStringFromSyncingApproach(approach);
    [v6 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICMedia(CloudKit) makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v7, v8}];

    v9 = 0;
    goto LABEL_20;
  }

  v34.receiver = self;
  v34.super_class = ICMedia;
  v9 = [(ICCloudSyncingObject *)&v34 makeCloudKitRecordForApproach:0 mergeableFieldState:state];
  managedObjectContext = [(ICMedia *)self managedObjectContext];
  v11 = [ICAssetSignature shouldWriteAssetIfNeededToKey:@"Asset" inRecord:v9 forObject:self context:managedObjectContext];

  if (v11)
  {
    if ([(ICMedia *)self isPasswordProtected])
    {
      assetCryptoInitializationVector = [(ICMedia *)self assetCryptoInitializationVector];
      [v9 setObject:assetCryptoInitializationVector forKeyedSubscript:@"AssetCryptoInitializationVector"];

      assetCryptoTag = [(ICMedia *)self assetCryptoTag];
      [v9 setObject:assetCryptoTag forKeyedSubscript:@"AssetCryptoTag"];

      encryptedMediaURL = [(ICMedia *)self encryptedMediaURL];
      filename2 = [ICCloudSyncingObject assetForURL:encryptedMediaURL];

      if (!filename2)
      {
LABEL_19:

        goto LABEL_20;
      }

      [v9 setObject:filename2 forKeyedSubscript:@"Asset"];
      identifier = [(ICMedia *)self identifier];
      encryptedValues2 = [identifier dataUsingEncoding:4];
      encryptedValues = [v9 encryptedValues];
      [encryptedValues setObject:encryptedValues2 forKeyedSubscript:@"FilenameEncrypted"];

LABEL_18:
      goto LABEL_19;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    mediaArchiveURL = [(ICMedia *)self mediaArchiveURL];
    path = [mediaArchiveURL path];
    v22 = [defaultManager fileExistsAtPath:path];

    if (v22)
    {
      mediaArchiveURL2 = [(ICMedia *)self mediaArchiveURL];
      v24 = [ICCloudSyncingObject assetForURL:mediaArchiveURL2];

      if (v24)
      {
        [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IsArchivedDirectory"];
LABEL_12:
        [v9 setObject:v24 forKeyedSubscript:@"Asset"];
      }
    }

    else
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      mediaURL = [(ICMedia *)self mediaURL];
      path2 = [mediaURL path];
      v28 = [defaultManager2 fileExistsAtPath:path2];

      if (!v28)
      {
        v24 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          className = [(ICMedia *)self className];
          identifier2 = [(ICMedia *)self identifier];
          *buf = 138412546;
          v36 = className;
          v37 = 2112;
          v38 = identifier2;
          _os_log_impl(&dword_214D51000, v24, OS_LOG_TYPE_DEFAULT, "Trying to push an %@ with no media file: %@", buf, 0x16u);
        }

        goto LABEL_16;
      }

      mediaURL2 = [(ICMedia *)self mediaURL];
      v24 = [ICCloudSyncingObject assetForURL:mediaURL2];

      if (v24)
      {
        goto LABEL_12;
      }
    }

LABEL_16:

    filename = [(ICMedia *)self filename];

    if (!filename)
    {
      goto LABEL_20;
    }

    filename2 = [(ICMedia *)self filename];
    identifier = [filename2 dataUsingEncoding:4];
    encryptedValues2 = [v9 encryptedValues];
    [encryptedValues2 setObject:identifier forKeyedSubscript:@"FilenameEncrypted"];
    goto LABEL_18;
  }

LABEL_20:

  return v9;
}

- (BOOL)shouldAlwaysDownloadAssets
{
  selfCopy = self;
  managedObjectContext = [(ICMedia *)self managedObjectContext];
  LOBYTE(selfCopy) = [ICAssetSignature hasLocallyStoredAssetsInObject:selfCopy context:managedObjectContext];

  return selfCopy;
}

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  contextCopy = context;
  recordName = [d recordName];
  v8 = [ICMedia mediaWithIdentifier:recordName context:contextCopy];

  return v8;
}

+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context
{
  dCopy = d;
  recordCopy = record;
  v9 = [ICAccount cloudKitAccountWithIdentifier:dCopy context:context];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v12 = [ICMedia newMediaWithIdentifier:recordName account:v9];

  [v12 mergeCloudKitRecord:recordCopy accountID:dCopy approach:0];
  [v12 setServerRecord:recordCopy];

  [v12 setInCloud:1];
  [v12 clearChangeCountWithReason:@"Created object"];
  [v12 updateParentReferenceIfNecessary];

  return v12;
}

- (BOOL)needsToBePushedToCloud
{
  v7.receiver = self;
  v7.super_class = ICMedia;
  needsToBePushedToCloud = [(ICCloudSyncingObject *)&v7 needsToBePushedToCloud];
  attachment = [(ICMedia *)self attachment];
  if (attachment && needsToBePushedToCloud)
  {
    do
    {
      v5 = attachment;
      needsToBePushedToCloud = [attachment isBeingEditedLocallyOnDevice];
      attachment = [attachment parentAttachment];
    }

    while (attachment && !needsToBePushedToCloud);
    LOBYTE(needsToBePushedToCloud) = needsToBePushedToCloud ^ 1;
  }

  return needsToBePushedToCloud;
}

- (void)objectWasPushedToCloudWithOperation:(id)operation serverRecord:(id)record
{
  v7.receiver = self;
  v7.super_class = ICMedia;
  [(ICCloudSyncingObject *)&v7 objectWasPushedToCloudWithOperation:operation serverRecord:record];
  managedObjectContext = [(ICMedia *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__ICMedia_CloudKit__objectWasPushedToCloudWithOperation_serverRecord___block_invoke;
  v6[3] = &unk_278194B00;
  v6[4] = self;
  [managedObjectContext performBlock:v6];
}

- (void)fixBrokenReferencesWithError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    loggingDescription = [(ICCloudSyncingObject *)self loggingDescription];
    v18 = 138412290;
    v19 = loggingDescription;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEFAULT, "Fixing broken references for %@", &v18, 0xCu);
  }

  v6 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
    attachment = [(ICMedia *)self attachment];
    loggingDescription2 = [attachment loggingDescription];
    v18 = 138412546;
    v19 = shortLoggingDescription;
    v20 = 2112;
    v21 = loggingDescription2;
    _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "%@ attachment=%@", &v18, 0x16u);
  }

  v10 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    shortLoggingDescription2 = [(ICCloudSyncingObject *)self shortLoggingDescription];
    attachment2 = [(ICMedia *)self attachment];
    note = [attachment2 note];
    loggingDescription3 = [note loggingDescription];
    v18 = 138412546;
    v19 = shortLoggingDescription2;
    v20 = 2112;
    v21 = loggingDescription3;
    _os_log_impl(&dword_214D51000, v10, OS_LOG_TYPE_DEFAULT, "%@ note=%@", &v18, 0x16u);
  }

  attachment3 = [(ICMedia *)self attachment];
  [attachment3 updateChangeCountWithReason:@"Fixed broken reference"];

  attachment4 = [(ICMedia *)self attachment];
  note2 = [attachment4 note];
  [note2 updateChangeCountWithReason:@"Fixed broken reference"];
}

- (BOOL)hasAllMandatoryFields
{
  if (([(ICMedia *)self isPasswordProtected]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    filename = [(ICMedia *)self filename];
    v3 = [filename length] != 0;
  }

  v7.receiver = self;
  v7.super_class = ICMedia;
  hasAllMandatoryFields = [(ICCloudSyncingObject *)&v7 hasAllMandatoryFields];
  if (hasAllMandatoryFields)
  {
    LOBYTE(hasAllMandatoryFields) = [(ICMedia *)self hasFile]&& v3;
  }

  return hasAllMandatoryFields;
}

- (BOOL)isInICloudAccount
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(ICMedia *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__ICMedia_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __38__ICMedia_CloudKit__isInICloudAccount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isInICloudAccount];
}

- (id)objectsToBeDeletedBeforeThisObject
{
  v8.receiver = self;
  v8.super_class = ICMedia;
  objectsToBeDeletedBeforeThisObject = [(ICCloudSyncingObject *)&v8 objectsToBeDeletedBeforeThisObject];
  v4 = [objectsToBeDeletedBeforeThisObject mutableCopy];

  attachment = [(ICMedia *)self attachment];
  [v4 ic_addNonNilObject:attachment];

  v6 = [v4 copy];

  return v6;
}

- (void)setAttachment:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [a1 identifier];
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)writeDataFromAsset:(void *)a1 accountID:isArchivedDirectory:error:.cold.3(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_13(&dword_214D51000, v0, v1, "Failed to create temporary directory %@, error %@");
}

void __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_13(&dword_214D51000, v0, v1, "Failed to write file wrapper to temporary file %@, error %@");
}

void __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_5_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_13(&dword_214D51000, v0, v1, "Failed to finish archive %@, error %@");
}

void __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_5_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_13(&dword_214D51000, v0, v1, "Failed to copy directory attachment to file %@, error %@");
}

void __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_5_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_13(&dword_214D51000, v0, v1, "Failed to remove temporary archive file %@, error %@");
}

void __42__ICMedia_writeDataFromFileWrapper_error___block_invoke_cold_8()
{
  OUTLINED_FUNCTION_5_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_13(&dword_214D51000, v0, v1, "Failed to remove temporary directory %@, error %@");
}

- (void)writeDataWithBlock:(void *)a1 error:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)writeDataWithBlock:(void *)a1 error:.cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)writeDataWithBlock:(void *)a1 error:.cold.3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)writeDataWithBlock:(void *)a1 error:.cold.4(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)containerAccount
{
  identifier = [self identifier];
  identifier2 = [a2 identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

@end