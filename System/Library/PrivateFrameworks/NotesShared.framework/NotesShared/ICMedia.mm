@interface ICMedia
+ (id)containerDirectoryURLForMediaWithIdentifier:(id)a3 account:(id)a4;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)exportableContainerDirectoryURLForMediaWithIdentifier:(id)a3 account:(id)a4;
+ (id)keyPathsForValuesAffectingIsSharedViaICloud;
+ (id)mediaIdentifiersForAccount:(id)a3;
+ (id)mediaWithIdentifier:(id)a3 context:(id)a4;
+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newMediaWithAttachment:(id)a3;
+ (id)newMediaWithAttachment:(id)a3 forData:(id)a4 filename:(id)a5 error:(id *)a6;
+ (id)newMediaWithAttachment:(id)a3 forFileWrapper:(id)a4 error:(id *)a5;
+ (id)newMediaWithAttachment:(id)a3 forURL:(id)a4 error:(id *)a5;
+ (id)newMediaWithAttachment:(id)a3 forURL:(id)a4 filename:(id)a5 error:(id *)a6;
+ (id)newMediaWithIdentifier:(id)a3 account:(id)a4;
+ (id)newMediaWithIdentifier:(id)a3 attachment:(id)a4;
+ (void)purgeMedia:(id)a3;
+ (void)purgeMediaFilesForIdentifiers:(id)a3 account:(id)a4;
- (BOOL)hasAllMandatoryFields;
- (BOOL)hasFile;
- (BOOL)isArchivedDirectory;
- (BOOL)isInICloudAccount;
- (BOOL)isValid;
- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6;
- (BOOL)needsToBePushedToCloud;
- (BOOL)shouldAlwaysDownloadAssets;
- (BOOL)writeData:(id)a3 error:(id *)a4;
- (BOOL)writeDataFromAsset:(id)a3 accountID:(id)a4 isArchivedDirectory:(BOOL)a5 error:(id *)a6;
- (BOOL)writeDataFromFileURL:(id)a3 error:(id *)a4;
- (BOOL)writeDataFromFileWrapper:(id)a3 error:(id *)a4;
- (BOOL)writeDataWithBlock:(id)a3 error:(id *)a4;
- (ICAccount)containerAccount;
- (ICAccount)placeholderAccount;
- (ICAssetGenerationManager)generationManager;
- (NSSet)urlsToConsiderForCloudBackup;
- (id)cloudAccount;
- (id)containerDirectoryURL;
- (id)data;
- (id)dataWithoutImageMarkupMetadata:(BOOL)a3;
- (id)decryptedData;
- (id)encryptedMediaFallbackURL;
- (id)encryptedMediaURL;
- (id)exportableContainerDirectoryURL;
- (id)exportableMediaURL;
- (id)ic_loggingValues;
- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4;
- (id)mediaArchiveFallbackURL;
- (id)mediaArchiveURL;
- (id)mediaFallbackURL;
- (id)mediaTarArchiveURL;
- (id)mediaURL;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)parentCloudObject;
- (id)parentEncryptableObject;
- (id)prepareExportableMediaURL;
- (void)accountWillChangeToAccount:(id)a3;
- (void)applyRandomCryptoGooIfNeeded;
- (void)awakeFromFetch;
- (void)containerAccount;
- (void)deleteExportableMedia;
- (void)fixBrokenReferencesWithError:(id)a3;
- (void)markForDeletion;
- (void)objectWasPushedToCloudWithOperation:(id)a3 serverRecord:(id)a4;
- (void)prepareForDeletion;
- (void)setAttachment:(id)a3;
- (void)setFilename:(id)a3;
- (void)unmarkForDeletion;
- (void)updateFlagToExcludeFromCloudBackup;
- (void)writeDataFromItemProvider:(id)a3 checkForMarkupData:(BOOL)a4 completionBlock:(id)a5;
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
  v3 = [(ICMedia *)self filename];

  if (v3)
  {
    v4 = [(ICMedia *)self generationManager];
    v5 = [v4 generationURL];

    if (v5)
    {
      v6 = [(ICMedia *)self generationManager];
      v7 = [v6 generationURL];
      v8 = [(ICMedia *)self filename];
      v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:0];
    }

    else
    {
      v9 = [(ICMedia *)self mediaFallbackURL];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (ICAssetGenerationManager)generationManager
{
  v3 = [(ICMedia *)self containerDirectoryURL];

  if (v3)
  {
    generationManager = self->_generationManager;
    if (!generationManager)
    {
      v5 = [MEMORY[0x277CBEB18] array];
      v6 = [(ICMedia *)self mediaFallbackURL];
      [v5 ic_addNonNilObject:v6];

      v7 = [(ICMedia *)self encryptedMediaFallbackURL];
      [v5 ic_addNonNilObject:v7];

      v8 = [(ICMedia *)self mediaArchiveFallbackURL];
      [v5 ic_addNonNilObject:v8];

      v9 = NSStringFromSelector(sel_generation);
      v10 = [ICAssetGenerationManager alloc];
      v11 = [(ICMedia *)self containerDirectoryURL];
      v12 = [(ICAssetGenerationManager *)v10 initWithObject:self generationKeyPath:v9 containerURL:v11];
      v13 = self->_generationManager;
      self->_generationManager = v12;

      v14 = [v5 copy];
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
  v3 = [(ICMedia *)self identifier];
  if (v3 && (v4 = v3, [(ICMedia *)self containerAccount], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(ICMedia *)self identifier];
    v7 = [(ICMedia *)self containerAccount];
    v8 = [ICMedia containerDirectoryURLForMediaWithIdentifier:v6 account:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ICAccount)containerAccount
{
  v3 = [(ICMedia *)self attachment];
  v4 = [v3 note];
  v5 = [v4 account];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(ICMedia *)self attachment];
    v9 = [v8 note];
    v10 = [v9 folder];
    v7 = [v10 account];
  }

  if (!v7)
  {
    v7 = [(ICMedia *)self placeholderAccount];
    if (!v7)
    {
      v11 = [(ICMedia *)self managedObjectContext];
      v7 = [ICAccount defaultAccountInContext:v11];

      v12 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(ICMedia *)self containerAccount];
      }
    }
  }

  [(ICMedia *)self setPlaceholderAccount:v7];

  return v7;
}

- (id)mediaFallbackURL
{
  v3 = [(ICMedia *)self filename];

  if (v3)
  {
    v4 = [(ICMedia *)self containerDirectoryURL];
    v5 = [(ICMedia *)self filename];
    v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encryptedMediaFallbackURL
{
  v3 = [(ICMedia *)self containerDirectoryURL];
  v4 = [(ICMedia *)self identifier];
  v5 = [v3 URLByAppendingPathComponent:v4 isDirectory:0];

  return v5;
}

- (id)mediaArchiveFallbackURL
{
  v2 = [(ICMedia *)self mediaFallbackURL];
  v3 = [v2 URLByAppendingPathExtension:@"zip"];

  return v3;
}

- (BOOL)hasFile
{
  if (([(ICMedia *)self isPasswordProtected]& 1) != 0)
  {
    v3 = [(ICMedia *)self encryptedMediaURL];
    v4 = v3;
    v12 = 0;
    v5 = &v12;
    v6 = &v12;
  }

  else
  {
    v3 = [(ICMedia *)self mediaURL];
    v4 = v3;
    v11 = 0;
    v5 = &v11;
    v6 = &v11;
  }

  v7 = [v3 checkResourceIsReachableAndReturnError:{v6, v11, v12}];
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

+ (void)purgeMediaFilesForIdentifiers:(id)a3 account:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v6 mediaDirectoryURL];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v20 = v6;
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
        v18 = [v8 URLByAppendingPathComponent:v16 isDirectory:1];
        v21 = v12;
        [v7 removeItemAtURL:v18 error:&v21];
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

    v6 = v20;
  }
}

- (void)accountWillChangeToAccount:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(ICMedia *)self containerDirectoryURL];
  v7 = [(ICMedia *)self identifier];
  if (!v7)
  {
    v10 = 0;
LABEL_16:
    if (!v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    [(ICMedia *)self setPlaceholderAccount:v4];
    goto LABEL_18;
  }

  v8 = objc_opt_class();
  v9 = [(ICMedia *)self identifier];
  v10 = [v8 containerDirectoryURLForMediaWithIdentifier:v9 account:v4];

  v7 = 0;
  if (!v6 || !v10)
  {
    goto LABEL_16;
  }

  if (([v6 isEqual:v10] & 1) != 0 || (objc_msgSend(v6, "path"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v5, "fileExistsAtPath:", v11), v11, !v12))
  {
    v7 = 0;
    if (!v4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v13 = [v10 URLByDeletingLastPathComponent];
  v18 = 0;
  [v5 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v18];
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
  [v5 moveItemAtURL:v6 toURL:v10 error:&v17];
  v7 = v17;

  if (!v7)
  {
    goto LABEL_16;
  }

  v16 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [ICMedia accountWillChangeToAccount:];
  }

  if (v4)
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
  v3 = [(ICMedia *)self containerDirectoryURL];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    v5 = [v4 removeItemAtURL:v3 error:&v14];
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

  v8 = [(ICMedia *)self exportableContainerDirectoryURL];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = 0;
    v10 = [v9 removeItemAtURL:v8 error:&v13];
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

- (void)setAttachment:(id)a3
{
  v4 = a3;
  [(ICMedia *)self willChangeValueForKey:@"attachment"];
  [(ICMedia *)self setPrimitiveValue:v4 forKey:@"attachment"];
  [(ICMedia *)self didChangeValueForKey:@"attachment"];
  [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  v5 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICMedia *)v4 setAttachment:?];
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
    v4 = ;
    v16 = 0;
    v11 = *MEMORY[0x277CBE868];
    v15 = 0;
    [v4 getResourceValue:&v16 forKey:v11 error:&v15];
    v12 = v16;
    v13 = v15;
    v10 = [v12 BOOLValue];

LABEL_12:
    return v10;
  }

  v3 = [(ICMedia *)self attachment];

  if (v3)
  {
    v4 = [(ICMedia *)self attachment];
    v5 = [v4 typeUTI];
    if (v5)
    {
      v6 = MEMORY[0x277CE1CB8];
      v7 = [(ICMedia *)self attachment];
      v8 = [v7 typeUTI];
      v9 = [v6 typeWithIdentifier:v8];
      v10 = [v9 conformsToType:*MEMORY[0x277CE1D50]];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_12;
  }

  return 0;
}

- (NSSet)urlsToConsiderForCloudBackup
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICMedia *)self mediaURL];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(ICMedia *)self encryptedMediaURL];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(ICMedia *)self mediaArchiveURL];
  if (v6)
  {
    [v3 addObject:v6];
  }

  v7 = MEMORY[0x277CBEB98];
  v8 = [v3 copy];
  v9 = [v7 setWithArray:v8];

  return v9;
}

- (void)updateFlagToExcludeFromCloudBackup
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(ICMedia *)self urlsToConsiderForCloudBackup];
  v4 = [(ICMedia *)self attachment];
  v5 = [v4 note];
  v6 = [v5 account];
  v7 = [v6 shouldExcludeFilesFromCloudBackup];

  if (v7)
  {
    if ([(ICMedia *)self needsToBePushedToCloud])
    {
      v8 = [(ICCloudSyncingObject *)self shouldBeIgnoredForSync];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v3;
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

        [*(*(&v14 + 1) + 8 * v13++) ic_updateFlagToExcludeFromBackup:{v8, v14}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (BOOL)writeDataFromFileURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__ICMedia_writeDataFromFileURL_error___block_invoke;
  v9[3] = &unk_2781967B0;
  v10 = v6;
  v11 = self;
  v7 = v6;
  LOBYTE(a4) = [(ICMedia *)self writeDataWithBlock:v9 error:a4];

  return a4;
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

- (BOOL)writeDataFromAsset:(id)a3 accountID:(id)a4 isArchivedDirectory:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [(ICMedia *)self managedObjectContext];
  v13 = [ICAccount cloudKitAccountWithIdentifier:v11 context:v12];

  [(ICMedia *)self setPlaceholderAccount:v13];
  v14 = [(ICMedia *)self generationManager];
  LODWORD(v11) = [v14 beginGeneration];

  if (v11)
  {
    if (v7)
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
      v17 = [(ICMedia *)self encryptedMediaURL];

      v16 = v17;
    }

    if (!v16)
    {
      v28 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ICMedia writeDataFromAsset:? accountID:? isArchivedDirectory:? error:?];
      }

      v20 = [(ICMedia *)self generationManager];
      [v20 rollbackGeneration];
      goto LABEL_29;
    }

    v18 = [v10 fileURL];
    v19 = [v16 isEqual:v18];

    if (v19)
    {
      v20 = 0;
      goto LABEL_11;
    }

    v48 = a6;
    v29 = [MEMORY[0x277CCAA00] defaultManager];
    v30 = [v10 fileURL];
    v55 = 0;
    v31 = [v29 moveItemAtURL:v30 toURL:v16 error:&v55];
    v20 = v55;

    if (v31)
    {
      v21 = 1;
    }

    else
    {
      v32 = [MEMORY[0x277CCAA00] defaultManager];
      v33 = [v10 fileURL];
      v54 = v20;
      v34 = [v32 linkItemAtURL:v33 toURL:v16 error:&v54];
      v35 = v54;

      if ((v34 & 1) == 0)
      {
        v42 = v35;
        v43 = os_log_create("com.apple.notes", "Media");
        a6 = v48;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [ICMedia writeDataFromAsset:accountID:isArchivedDirectory:error:];
        }

        v44 = [MEMORY[0x277CCAA00] defaultManager];
        v45 = [v10 fileURL];
        v53 = v42;
        v47 = [v44 copyItemAtURL:v45 toURL:v16 error:&v53];
        v20 = v53;

        if (v47)
        {
LABEL_11:
          v21 = 1;
          if (v7)
          {
            goto LABEL_12;
          }

LABEL_22:
          v36 = [(ICMedia *)self managedObjectContext];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __66__ICMedia_writeDataFromAsset_accountID_isArchivedDirectory_error___block_invoke_2;
          v49[3] = &unk_278194B00;
          v49[4] = self;
          [v36 performBlockAndWait:v49];

          if (!v20)
          {
LABEL_23:
            v37 = [(ICMedia *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICMediaDidLoadNotification"];
          }

LABEL_24:
          if (a6)
          {
            v38 = v20;
            *a6 = v20;
          }

          v39 = [(ICMedia *)self generationManager];
          v40 = v39;
          if (v21)
          {
            v15 = [v39 commitGeneration];

LABEL_30:
            goto LABEL_31;
          }

          [v39 rollbackGeneration];

LABEL_29:
          v15 = 0;
          goto LABEL_30;
        }

        v46 = os_log_create("com.apple.notes", "Media");
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [ICMedia writeDataFromAsset:accountID:isArchivedDirectory:error:];
        }

        v21 = 0;
        if (!v7)
        {
          goto LABEL_22;
        }

LABEL_12:
        v22 = objc_alloc(MEMORY[0x277D36188]);
        v23 = [v16 URLByDeletingLastPathComponent];
        v24 = [v22 initWithSourceURL:v16 destinationURL:v23];

        v51 = v20;
        v52 = 0;
        [v24 unarchiveResultURLs:&v52 error:&v51];
        v25 = v52;
        v26 = v51;

        v27 = [(ICMedia *)self managedObjectContext];
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __66__ICMedia_writeDataFromAsset_accountID_isArchivedDirectory_error___block_invoke;
        v50[3] = &unk_278194B00;
        v50[4] = self;
        [v27 performBlockAndWait:v50];

        v20 = v26;
        if (!v26)
        {
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v21 = 1;
      v20 = v35;
    }

    a6 = v48;
    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v15 = 0;
LABEL_31:

  return v15;
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

- (void)writeDataFromItemProvider:(id)a3 checkForMarkupData:(BOOL)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__ICMedia_writeDataFromItemProvider_checkForMarkupData_completionBlock___block_invoke;
  aBlock[3] = &unk_2781967D8;
  aBlock[4] = self;
  v10 = v9;
  v35 = v10;
  v11 = _Block_copy(aBlock);
  v12 = *MEMORY[0x277CE1E90];
  v13 = [*MEMORY[0x277CE1E90] identifier];
  v14 = [v8 hasItemConformingToTypeIdentifier:v13];

  if (v14)
  {
    v15 = [v12 identifier];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __72__ICMedia_writeDataFromItemProvider_checkForMarkupData_completionBlock___block_invoke_2;
    v30[3] = &unk_278196828;
    v16 = &v31;
    v30[4] = self;
    v31 = v10;
    v33 = a4;
    v17 = &v32;
    v32 = v11;
    v18 = v30;
LABEL_5:
    [v8 loadItemForTypeIdentifier:v15 options:0 completionHandler:{v18, v22, v23, v24, v25, v26}];

    goto LABEL_6;
  }

  v19 = *MEMORY[0x277CE1D48];
  v20 = [*MEMORY[0x277CE1D48] identifier];
  v21 = [v8 hasItemConformingToTypeIdentifier:v20];

  if (v21)
  {
    v15 = [v19 identifier];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __72__ICMedia_writeDataFromItemProvider_checkForMarkupData_completionBlock___block_invoke_4;
    v25 = &unk_278196828;
    v16 = &v27;
    v26 = self;
    v27 = v10;
    v29 = a4;
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
    v4 = [(ICMedia *)self mediaArchiveURL];
    v5 = [v3 dataWithContentsOfURL:v4];

    if (v5)
    {
      goto LABEL_8;
    }

    v6 = MEMORY[0x277CBEA90];
    v7 = [(ICMedia *)self mediaTarArchiveURL];
  }

  else
  {
    if ([(ICMedia *)self isPasswordProtected])
    {
      v5 = [(ICMedia *)self decryptedData];
      goto LABEL_8;
    }

    v6 = MEMORY[0x277CBEA90];
    v7 = [(ICMedia *)self mediaURL];
  }

  v8 = v7;
  v5 = [v6 dataWithContentsOfURL:v7];

LABEL_8:

  return v5;
}

- (id)dataWithoutImageMarkupMetadata:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICMedia *)self data];
  if (v3)
  {
    v6 = [(ICMedia *)self attachment];
    v7 = [v6 hasMarkupData];

    if (v7)
    {
      v8 = [ICMarkupUtilities cleanImageMetadataFromData:v5];

      v5 = v8;
    }
  }

  return v5;
}

- (BOOL)writeData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__ICMedia_writeData_error___block_invoke;
  v9[3] = &unk_2781967B0;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  LOBYTE(a4) = [(ICMedia *)self writeDataWithBlock:v9 error:a4];

  return a4;
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

- (BOOL)writeDataFromFileWrapper:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ICMedia_writeDataFromFileWrapper_error___block_invoke;
  v9[3] = &unk_2781967B0;
  v10 = v6;
  v11 = self;
  v7 = v6;
  LOBYTE(a4) = [(ICMedia *)self writeDataWithBlock:v9 error:a4];

  return a4;
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

- (BOOL)writeDataWithBlock:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(ICMedia *)self deleteExportableMedia];
  v7 = [(ICMedia *)self generationManager];
  v8 = [v7 beginGeneration];

  if (!v8)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v9 = [(ICMedia *)self mediaURL];
  v10 = [(ICMedia *)self encryptedMediaURL];
  if (!v9 || [(ICMedia *)self isPasswordProtected]&& !v10)
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
    v16 = [(ICCloudSyncingObject *)self shortLoggingDescription];
    *buf = 138412546;
    v33 = v16;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_214D51000, v15, OS_LOG_TYPE_INFO, "Writing media… {mediaID: %@, url: %@}", buf, 0x16u);
  }

  v31 = 0;
  v17 = v6[2](v6, v9, &v31);
  v12 = v31;
  if (v17)
  {
    if (![(ICMedia *)self isPasswordProtected])
    {
      v20 = v12;
      goto LABEL_28;
    }

    if (![(ICCloudSyncingObject *)self encryptFileFromURL:v9 toURL:v10])
    {
      v28 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ICMedia writeDataWithBlock:? error:?];
      }

      v29 = [(ICMedia *)self generationManager];
      [v29 rollbackGeneration];

      goto LABEL_8;
    }

    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v30 = v12;
    v19 = [v18 removeItemAtURL:v9 error:&v30];
    v20 = v30;

    if ((v19 & 1) == 0)
    {
      v21 = [v20 code];

      if (v21 == 4)
      {
LABEL_28:
        v25 = [(ICMedia *)self generationManager];
        v26 = [v25 commitGeneration];

        if (v26)
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

      v18 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
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

  v23 = [(ICMedia *)self generationManager];
  [v23 rollbackGeneration];

  if (a4)
  {
    v24 = v12;
    v13 = 0;
    *a4 = v12;
    goto LABEL_9;
  }

LABEL_8:
  v13 = 0;
LABEL_9:

LABEL_11:
  return v13;
}

+ (id)containerDirectoryURLForMediaWithIdentifier:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = [a4 mediaDirectoryURL];
  v7 = [v6 URLByAppendingPathComponent:v5 isDirectory:1];

  return v7;
}

- (id)encryptedMediaURL
{
  v3 = [(ICMedia *)self identifier];

  if (v3)
  {
    v4 = [(ICMedia *)self generationManager];
    v5 = [v4 generationURL];

    if (v5)
    {
      v6 = [(ICMedia *)self generationManager];
      v7 = [v6 generationURL];
      v8 = [(ICMedia *)self identifier];
      v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:0];
    }

    else
    {
      v9 = [(ICMedia *)self encryptedMediaFallbackURL];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)mediaTarArchiveURL
{
  v2 = [(ICMedia *)self mediaURL];
  v3 = [v2 URLByAppendingPathExtension:@"tar"];

  return v3;
}

- (id)mediaArchiveURL
{
  v2 = [(ICMedia *)self mediaURL];
  v3 = [v2 URLByAppendingPathExtension:@"zip"];

  return v3;
}

+ (id)exportableContainerDirectoryURLForMediaWithIdentifier:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = [a4 exportableMediaDirectoryURL];
  v7 = [v6 URLByAppendingPathComponent:v5 isDirectory:1];

  return v7;
}

- (id)exportableContainerDirectoryURL
{
  v3 = [(ICMedia *)self identifier];
  if (v3 && (v4 = v3, [(ICMedia *)self containerAccount], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(ICMedia *)self identifier];
    v7 = [(ICMedia *)self containerAccount];
    v8 = [ICMedia exportableContainerDirectoryURLForMediaWithIdentifier:v6 account:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)exportableMediaURL
{
  v3 = [(ICMedia *)self filename];

  if (v3)
  {
    v4 = [(ICMedia *)self exportableContainerDirectoryURL];
    v5 = [(ICMedia *)self filename];
    v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)prepareExportableMediaURL
{
  v3 = [(ICMedia *)self attachment];
  v4 = [v3 hasMarkupData];

  if (!v4)
  {
    v5 = [(ICMedia *)self mediaURL];
    goto LABEL_28;
  }

  if (([(ICMedia *)self isPasswordProtected]& 1) != 0)
  {
    v5 = 0;
    goto LABEL_28;
  }

  v5 = [(ICMedia *)self exportableMediaURL];
  if ([v5 checkResourceIsReachableAndReturnError:0])
  {
    v6 = [(ICMedia *)self mediaURL];
    v32 = 0;
    v7 = *MEMORY[0x277CBE7B0];
    v31 = 0;
    v8 = [v6 getResourceValue:&v32 forKey:v7 error:&v31];
    v9 = v32;
    v10 = v31;
    if (v8)
    {
      v29 = 0;
      v30 = 0;
      v11 = [v5 getResourceValue:&v30 forKey:v7 error:&v29];
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

  v17 = [(ICMedia *)self exportableContainerDirectoryURL];
  if (v17 && !v14)
  {
    v18 = [(ICMedia *)self dataWithoutImageMarkupMetadata:1];
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = 0;
    v20 = [v19 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:&v28];
    v21 = v28;
    v22 = v21;
    if (v20)
    {
      v27 = v21;
      v23 = [v18 writeToURL:v5 options:1 error:&v27];
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

    v5 = 0;
    goto LABEL_26;
  }

LABEL_27:

LABEL_28:

  return v5;
}

- (void)deleteExportableMedia
{
  v2 = [(ICMedia *)self exportableMediaURL];
  if ([v2 checkResourceIsReachableAndReturnError:0])
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = 0;
    v4 = [v3 removeItemAtURL:v2 error:&v7];
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
  v3 = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [v3 mutableCopy];

  v5 = [(ICMedia *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __27__ICMedia_ic_loggingValues__block_invoke;
  v10[3] = &unk_278194AD8;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  [v5 performBlockAndWait:v10];

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
  v3 = [(ICMedia *)self attachment];
  [v3 markForDeletion];
}

- (void)unmarkForDeletion
{
  v4.receiver = self;
  v4.super_class = ICMedia;
  [(ICCloudSyncingObject *)&v4 unmarkForDeletion];
  v3 = [(ICMedia *)self attachment];
  [v3 unmarkForDeletion];
}

- (id)decryptedData
{
  v2 = [(ICCloudSyncingObject *)self cryptoStrategy];
  v3 = [v2 decryptedData];

  return v3;
}

- (id)parentEncryptableObject
{
  v3 = [(ICMedia *)self attachment];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(ICMedia *)self account];
  }

  v6 = v5;

  return v6;
}

- (void)applyRandomCryptoGooIfNeeded
{
  v9.receiver = self;
  v9.super_class = ICMedia;
  [(ICCloudSyncingObject *)&v9 applyRandomCryptoGooIfNeeded];
  v3 = [(ICMedia *)self assetCryptoTag];
  v4 = [v3 length];

  if (!v4)
  {
    v5 = [MEMORY[0x277CBEA90] ic_random128BitData:0];
    [(ICMedia *)self setAssetCryptoTag:v5];
  }

  v6 = [(ICMedia *)self assetCryptoInitializationVector];
  v7 = [v6 length];

  if (!v7)
  {
    v8 = [MEMORY[0x277CBEA90] ic_random128BitData:0];
    [(ICMedia *)self setAssetCryptoInitializationVector:v8];
  }
}

- (void)setFilename:(id)a3
{
  v6 = [a3 ic_sanitizedFilenameString];
  if ([v6 length])
  {
    v4 = v6;
  }

  else
  {
    v5 = [(ICMedia *)self identifier];

    v4 = v5;
  }

  v7 = v4;
  [(ICCloudSyncingObject *)self setValue:v4 forEncryptableKey:@"filename"];
}

- (id)cloudAccount
{
  v3 = [(ICMedia *)self account];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(ICMedia *)self attachment];
    v5 = [v6 cloudAccount];
  }

  return v5;
}

- (id)parentCloudObject
{
  v2 = [(ICMedia *)self attachment];
  v3 = [v2 note];

  return v3;
}

+ (id)keyPathsForValuesAffectingIsSharedViaICloud
{
  v5.receiver = a1;
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

+ (id)newMediaWithIdentifier:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 managedObjectContext];
  v9 = [a1 newObjectWithIdentifier:v7 context:v8];

  [v9 setAccount:v6];
  v10 = [v6 persistentStore];

  [v9 assignToPersistentStore:v10];
  return v9;
}

+ (id)newMediaWithIdentifier:(id)a3 attachment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 managedObjectContext];
  v9 = [a1 newObjectWithIdentifier:v7 context:v8];

  v10 = [v6 account];
  v11 = [v10 persistentStore];
  [v9 assignToPersistentStore:v11];

  v12 = [v6 account];
  [v9 setAccount:v12];

  [v9 setAttachment:v6];
  [v6 setMedia:v9];
  v13 = [v6 isPasswordProtected];

  [v9 setIsPasswordProtected:v13];
  if ([v9 isPasswordProtected])
  {
    [v9 initializeCryptoProperties];
  }

  return v9;
}

+ (id)newMediaWithAttachment:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];
  v7 = [v4 managedObjectContext];
  v8 = [a1 newObjectWithIdentifier:v6 context:v7];

  if (v4)
  {
    v9 = [v4 note];
    v10 = [v9 account];
    v11 = [v10 persistentStore];
    [v8 assignToPersistentStore:v11];

    v12 = [v4 account];
    [v8 setAccount:v12];

    [v8 setAttachment:v4];
    [v4 setMedia:v8];
    [v8 setIsPasswordProtected:{objc_msgSend(v4, "isPasswordProtected")}];
    if ([v8 isPasswordProtected])
    {
      [v8 initializeCryptoProperties];
    }
  }

  return v8;
}

+ (id)newMediaWithAttachment:(id)a3 forData:(id)a4 filename:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [a1 newMediaWithAttachment:v10];
  if (![v11 length])
  {
    v14 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ICMedia(Management) newMediaWithAttachment:v14 forData:? filename:? error:?];
    }

    v15 = [v13 identifier];

    v11 = v15;
  }

  v16 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    +[ICMedia(Management) newMediaWithAttachment:forData:filename:error:];
  }

  [v13 setFilename:v11];
  v17 = [v13 writeData:v12 error:a6];

  if ((v17 & 1) == 0)
  {
    if (a6)
    {
      v18 = *a6;
    }

    else
    {
      v18 = 0;
    }

    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICMedia(Management) newMediaWithAttachment:forData:filename:error:]" simulateCrash:1 showAlert:1 format:{@"Failed to write media to disk: %@", v18}];
    v19 = [v10 managedObjectContext];
    [v19 deleteObject:v13];

    v13 = 0;
  }

  return v13;
}

+ (id)newMediaWithAttachment:(id)a3 forFileWrapper:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 newMediaWithAttachment:v8];
  v11 = [ICNoteContext filenameFromFileWrapper:v9];
  if (![v11 length])
  {
    v12 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[ICMedia(Management) newMediaWithAttachment:forFileWrapper:error:];
    }

    v13 = [v10 identifier];

    v11 = v13;
  }

  v14 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[ICMedia(Management) newMediaWithAttachment:forData:filename:error:];
  }

  [v10 setFilename:v11];
  if (([v10 writeDataFromFileWrapper:v9 error:a5] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICMedia(Management) newMediaWithAttachment:forFileWrapper:error:]" simulateCrash:1 showAlert:1 format:{@"Failed to write media to disk: %@", *a5}];
    v15 = [v8 managedObjectContext];
    [v15 deleteObject:v10];

    v10 = 0;
  }

  return v10;
}

+ (id)newMediaWithAttachment:(id)a3 forURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 lastPathComponent];
  v10 = [ICMedia newMediaWithAttachment:v8 forURL:v7 filename:v9 error:a5];

  return v10;
}

+ (id)newMediaWithAttachment:(id)a3 forURL:(id)a4 filename:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [a1 newMediaWithAttachment:v10];
  [v13 setFilename:v11];

  v14 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ICMedia(Management) newMediaWithAttachment:v13 forURL:? filename:? error:?];
  }

  v15 = [v13 writeDataFromFileURL:v12 error:a6];
  if ((v15 & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICMedia(Management) newMediaWithAttachment:forURL:filename:error:]" simulateCrash:1 showAlert:1 format:{@"Failed to write media to disk: %@", *a6}];
    v16 = [v10 managedObjectContext];
    [v16 deleteObject:v13];

    v13 = 0;
  }

  return v13;
}

+ (void)purgeMedia:(id)a3
{
  v3 = a3;
  v4 = [v3 managedObjectContext];
  [v4 deleteObject:v3];
}

+ (id)mediaWithIdentifier:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"identifier = %@", a3];
  v9 = [a1 ic_objectsMatchingPredicate:v8 context:v7];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)mediaIdentifiersForAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 managedObjectContext];
  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"ICMedia"];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"attachment.note.account == %@", v3];

  [v5 setPredicate:v6];
  [v5 setResultType:2];
  [v5 setPropertiesToFetch:&unk_282747F88];
  v12 = 0;
  v7 = [v4 executeFetchRequest:v5 error:&v12];
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

- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6
{
  v10 = a3;
  v11 = a4;
  if (a5)
  {
    v12 = MEMORY[0x277D36198];
    v13 = [(ICMedia *)self className];
    v14 = ICStringFromSyncingApproach(a5);
    [v12 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICMedia(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v13, v14}];

LABEL_11:
    v24 = 0;
    goto LABEL_12;
  }

  v50.receiver = self;
  v50.super_class = ICMedia;
  if (![(ICCloudSyncingObject *)&v50 mergeCloudKitRecord:v10 accountID:v11 approach:0 mergeableFieldState:a6])
  {
    goto LABEL_11;
  }

  v15 = [v10 objectForKeyedSubscript:@"AssetCryptoTag"];
  [(ICMedia *)self setAssetCryptoTag:v15];

  v16 = [v10 objectForKeyedSubscript:@"AssetCryptoInitializationVector"];
  [(ICMedia *)self setAssetCryptoInitializationVector:v16];

  v17 = [(ICMedia *)self assetCryptoTag];
  if (v17)
  {
    v18 = v17;
    v19 = [(ICMedia *)self assetCryptoInitializationVector];

    if (v19)
    {
      [(ICMedia *)self setIsPasswordProtected:1];
    }
  }

  v20 = [v10 encryptedValues];
  v21 = [v20 objectForKeyedSubscript:@"FilenameEncrypted"];

  if (v21 && ([(ICMedia *)self isPasswordProtected]& 1) == 0)
  {
    v23 = [v21 ic_stringValue];
    goto LABEL_14;
  }

  v22 = [v10 objectForKeyedSubscript:@"Filename"];

  if (v22)
  {
    v23 = [v10 objectForKeyedSubscript:@"Filename"];
LABEL_14:
    v26 = v23;
    [(ICMedia *)self setFilename:v23];
LABEL_15:

    goto LABEL_16;
  }

  v40 = [v10 objectForKeyedSubscript:@"FilenameExtension"];

  if (v40)
  {
    v26 = [v10 objectForKeyedSubscript:@"FilenameExtension"];
    v41 = [(ICMedia *)self identifier];
    v42 = [v41 stringByAppendingPathExtension:v26];
    [(ICMedia *)self setFilename:v42];

    v43 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [ICMedia(CloudKit) mergeCloudKitRecord:v10 accountID:v43 approach:? mergeableFieldState:?];
    }

    [(ICCloudSyncingObject *)self updateChangeCountWithReason:@"Corrected filename"];
    goto LABEL_15;
  }

LABEL_16:
  v27 = [v10 objectForKeyedSubscript:@"Asset"];
  v28 = [v27 fileURL];
  if (v28 && (v29 = v28, [MEMORY[0x277CCAA00] defaultManager], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "fileURL"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "path"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v30, "fileExistsAtPath:", v32), v32, v31, v30, v29, v33))
  {
    v34 = [v10 objectForKeyedSubscript:@"IsArchivedDirectory"];
    v49 = 0;
    v35 = -[ICMedia writeDataFromAsset:accountID:isArchivedDirectory:error:](self, "writeDataFromAsset:accountID:isArchivedDirectory:error:", v27, v11, [v34 BOOLValue], &v49);
    v36 = v49;

    if (!v35)
    {
      v37 = MEMORY[0x277D36198];
      v38 = [(ICCloudSyncingObject *)self shortLoggingDescription];
      [v37 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICMedia(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:1 format:{@"Error writing data from asset for %@: %@", v38, v36}];
    }
  }

  else
  {
    v39 = [(ICCloudSyncingObject *)self unappliedEncryptedRecord];
    if (v39)
    {
    }

    else if (![(ICCloudSyncingObject *)self isMergingUnappliedEncryptedRecord])
    {
      [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:1];
    }
  }

  v44 = [(ICMedia *)self markedForDeletion];
  v45 = [(ICMedia *)self attachment];
  v46 = [v45 markedForDeletion];

  if (v44 != v46)
  {
    v47 = [(ICMedia *)self markedForDeletion];
    v48 = [(ICMedia *)self attachment];
    [v48 setMarkedForDeletion:v47];
  }

  v24 = 1;
LABEL_12:

  return v24;
}

- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = MEMORY[0x277D36198];
    v7 = [(ICMedia *)self className:a3];
    v8 = ICStringFromSyncingApproach(a3);
    [v6 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICMedia(CloudKit) makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v7, v8}];

    v9 = 0;
    goto LABEL_20;
  }

  v34.receiver = self;
  v34.super_class = ICMedia;
  v9 = [(ICCloudSyncingObject *)&v34 makeCloudKitRecordForApproach:0 mergeableFieldState:a4];
  v10 = [(ICMedia *)self managedObjectContext];
  v11 = [ICAssetSignature shouldWriteAssetIfNeededToKey:@"Asset" inRecord:v9 forObject:self context:v10];

  if (v11)
  {
    if ([(ICMedia *)self isPasswordProtected])
    {
      v12 = [(ICMedia *)self assetCryptoInitializationVector];
      [v9 setObject:v12 forKeyedSubscript:@"AssetCryptoInitializationVector"];

      v13 = [(ICMedia *)self assetCryptoTag];
      [v9 setObject:v13 forKeyedSubscript:@"AssetCryptoTag"];

      v14 = [(ICMedia *)self encryptedMediaURL];
      v15 = [ICCloudSyncingObject assetForURL:v14];

      if (!v15)
      {
LABEL_19:

        goto LABEL_20;
      }

      [v9 setObject:v15 forKeyedSubscript:@"Asset"];
      v16 = [(ICMedia *)self identifier];
      v17 = [v16 dataUsingEncoding:4];
      v18 = [v9 encryptedValues];
      [v18 setObject:v17 forKeyedSubscript:@"FilenameEncrypted"];

LABEL_18:
      goto LABEL_19;
    }

    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = [(ICMedia *)self mediaArchiveURL];
    v21 = [v20 path];
    v22 = [v19 fileExistsAtPath:v21];

    if (v22)
    {
      v23 = [(ICMedia *)self mediaArchiveURL];
      v24 = [ICCloudSyncingObject assetForURL:v23];

      if (v24)
      {
        [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IsArchivedDirectory"];
LABEL_12:
        [v9 setObject:v24 forKeyedSubscript:@"Asset"];
      }
    }

    else
    {
      v25 = [MEMORY[0x277CCAA00] defaultManager];
      v26 = [(ICMedia *)self mediaURL];
      v27 = [v26 path];
      v28 = [v25 fileExistsAtPath:v27];

      if (!v28)
      {
        v24 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [(ICMedia *)self className];
          v31 = [(ICMedia *)self identifier];
          *buf = 138412546;
          v36 = v30;
          v37 = 2112;
          v38 = v31;
          _os_log_impl(&dword_214D51000, v24, OS_LOG_TYPE_DEFAULT, "Trying to push an %@ with no media file: %@", buf, 0x16u);
        }

        goto LABEL_16;
      }

      v29 = [(ICMedia *)self mediaURL];
      v24 = [ICCloudSyncingObject assetForURL:v29];

      if (v24)
      {
        goto LABEL_12;
      }
    }

LABEL_16:

    v32 = [(ICMedia *)self filename];

    if (!v32)
    {
      goto LABEL_20;
    }

    v15 = [(ICMedia *)self filename];
    v16 = [v15 dataUsingEncoding:4];
    v17 = [v9 encryptedValues];
    [v17 setObject:v16 forKeyedSubscript:@"FilenameEncrypted"];
    goto LABEL_18;
  }

LABEL_20:

  return v9;
}

- (BOOL)shouldAlwaysDownloadAssets
{
  v2 = self;
  v3 = [(ICMedia *)self managedObjectContext];
  LOBYTE(v2) = [ICAssetSignature hasLocallyStoredAssetsInObject:v2 context:v3];

  return v2;
}

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v6 = a5;
  v7 = [a3 recordName];
  v8 = [ICMedia mediaWithIdentifier:v7 context:v6];

  return v8;
}

+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [ICAccount cloudKitAccountWithIdentifier:v7 context:a5];
  v10 = [v8 recordID];
  v11 = [v10 recordName];
  v12 = [ICMedia newMediaWithIdentifier:v11 account:v9];

  [v12 mergeCloudKitRecord:v8 accountID:v7 approach:0];
  [v12 setServerRecord:v8];

  [v12 setInCloud:1];
  [v12 clearChangeCountWithReason:@"Created object"];
  [v12 updateParentReferenceIfNecessary];

  return v12;
}

- (BOOL)needsToBePushedToCloud
{
  v7.receiver = self;
  v7.super_class = ICMedia;
  v3 = [(ICCloudSyncingObject *)&v7 needsToBePushedToCloud];
  v4 = [(ICMedia *)self attachment];
  if (v4 && v3)
  {
    do
    {
      v5 = v4;
      v3 = [v4 isBeingEditedLocallyOnDevice];
      v4 = [v4 parentAttachment];
    }

    while (v4 && !v3);
    LOBYTE(v3) = v3 ^ 1;
  }

  return v3;
}

- (void)objectWasPushedToCloudWithOperation:(id)a3 serverRecord:(id)a4
{
  v7.receiver = self;
  v7.super_class = ICMedia;
  [(ICCloudSyncingObject *)&v7 objectWasPushedToCloudWithOperation:a3 serverRecord:a4];
  v5 = [(ICMedia *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__ICMedia_CloudKit__objectWasPushedToCloudWithOperation_serverRecord___block_invoke;
  v6[3] = &unk_278194B00;
  v6[4] = self;
  [v5 performBlock:v6];
}

- (void)fixBrokenReferencesWithError:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(ICCloudSyncingObject *)self loggingDescription];
    v18 = 138412290;
    v19 = v5;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEFAULT, "Fixing broken references for %@", &v18, 0xCu);
  }

  v6 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(ICCloudSyncingObject *)self shortLoggingDescription];
    v8 = [(ICMedia *)self attachment];
    v9 = [v8 loggingDescription];
    v18 = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "%@ attachment=%@", &v18, 0x16u);
  }

  v10 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(ICCloudSyncingObject *)self shortLoggingDescription];
    v12 = [(ICMedia *)self attachment];
    v13 = [v12 note];
    v14 = [v13 loggingDescription];
    v18 = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_214D51000, v10, OS_LOG_TYPE_DEFAULT, "%@ note=%@", &v18, 0x16u);
  }

  v15 = [(ICMedia *)self attachment];
  [v15 updateChangeCountWithReason:@"Fixed broken reference"];

  v16 = [(ICMedia *)self attachment];
  v17 = [v16 note];
  [v17 updateChangeCountWithReason:@"Fixed broken reference"];
}

- (BOOL)hasAllMandatoryFields
{
  if (([(ICMedia *)self isPasswordProtected]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v4 = [(ICMedia *)self filename];
    v3 = [v4 length] != 0;
  }

  v7.receiver = self;
  v7.super_class = ICMedia;
  v5 = [(ICCloudSyncingObject *)&v7 hasAllMandatoryFields];
  if (v5)
  {
    LOBYTE(v5) = [(ICMedia *)self hasFile]&& v3;
  }

  return v5;
}

- (BOOL)isInICloudAccount
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICMedia *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__ICMedia_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
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
  v3 = [(ICCloudSyncingObject *)&v8 objectsToBeDeletedBeforeThisObject];
  v4 = [v3 mutableCopy];

  v5 = [(ICMedia *)self attachment];
  [v4 ic_addNonNilObject:v5];

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
  v3 = [a1 identifier];
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

@end