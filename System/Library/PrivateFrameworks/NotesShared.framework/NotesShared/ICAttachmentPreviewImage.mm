@interface ICAttachmentPreviewImage
+ (id)attachmentPreviewImageIdentifiersForAccount:(id)account;
+ (id)attachmentPreviewImageWithIdentifier:(id)identifier inContext:(id)context;
+ (id)concurrentFileLoadLimitSemaphore;
+ (id)fileGlobalQueue;
+ (id)fileQueueGroup;
+ (id)newAttachmentPreviewImageWithIdentifier:(id)identifier attachment:(id)attachment;
+ (id)previewImageURLsForIdentifier:(id)identifier account:(id)account;
+ (int64_t)updateFileWriteCounterBy:(int64_t)by identifier:(id)identifier;
+ (void)deleteStrandedAttachmentPreviewImagesInContext:(id)context;
+ (void)purgeAllAttachmentPreviewImagesInContext:(id)context;
+ (void)purgePreviewImageFilesForIdentifiers:(id)identifiers account:(id)account;
+ (void)waitUntilAllFileWritesAreFinished;
- (BOOL)hasAnyPNGPreviewImageFiles;
- (BOOL)imageIsValid;
- (BOOL)imageIsWriting;
- (BOOL)makeSurePreviewImageDirectoryExists:(id *)exists;
- (BOOL)setImageData:(id)data withSize:(CGSize)size scale:(double)scale appearanceType:(unint64_t)type;
- (BOOL)setScaledImageFromImageSrc:(CGImageSource *)src typeUTI:(__CFString *)i;
- (BOOL)shouldSyncToCloud;
- (CGAffineTransform)orientedImageTransform;
- (CGSize)size;
- (ICAccount)placeholderAccount;
- (ICAssetGenerationManager)generationManager;
- (ICAttachmentPreviewImage)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (NSData)metadata;
- (OS_dispatch_queue)fileQueue;
- (id)cloudAccount;
- (id)containerAccount;
- (id)containerDirectoryURL;
- (id)decryptedImageData;
- (id)encryptedPreviewImageFallbackURL;
- (id)encryptedPreviewImageURL;
- (id)ic_loggingValues;
- (id)orientedPreviewImageFallbackURLWithoutCreating;
- (id)orientedPreviewImageURL;
- (id)orientedPreviewImageURLWithoutCreating;
- (id)previewImageDirectoryURL;
- (id)previewImageFallbackURL;
- (id)previewImagePathExtension;
- (id)previewImageURL;
- (id)primaryEncryptedData;
- (id)primaryEncryptedDataFromRecord:(id)record;
- (id)urls;
- (void)accountWillChangeToAccount:(id)account;
- (void)awakeFromFetch;
- (void)clearDecryptedData;
- (void)containerAccount;
- (void)createOrientedPreviewIfNeeded;
- (void)deleteFromLocalDatabase;
- (void)invalidateCache;
- (void)invalidateImage;
- (void)invalidateOrientedImage;
- (void)prepareForDeletion;
- (void)previewImageURL;
- (void)removeItemAtURL:(id)l;
- (void)setMetadata:(id)metadata;
- (void)setPrimaryEncryptedData:(id)data;
- (void)updateFlagToExcludeFromCloudBackup;
- (void)willTurnIntoFault;
@end

@implementation ICAttachmentPreviewImage

- (ICAttachmentPreviewImage)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v5.receiver = self;
  v5.super_class = ICAttachmentPreviewImage;
  result = [(ICCloudSyncingObject *)&v5 initWithEntity:entity insertIntoManagedObjectContext:context];
  __dmb(0xBu);
  return result;
}

- (void)awakeFromFetch
{
  v3.receiver = self;
  v3.super_class = ICAttachmentPreviewImage;
  [(ICCloudSyncingObject *)&v3 awakeFromFetch];
  [(ICAssetGenerationManager *)self->_generationManager updateCurrentGeneration];
}

- (CGSize)size
{
  [(ICAttachmentPreviewImage *)self width];
  v4 = v3;
  [(ICAttachmentPreviewImage *)self height];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

+ (void)purgePreviewImageFilesForIdentifiers:(id)identifiers account:(id)account
{
  v40 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  accountCopy = account;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = identifiersCopy;
  v22 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  v7 = 0;
  if (v22)
  {
    v19 = *v31;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v8;
        v9 = *(*(&v30 + 1) + 8 * v8);
        context = objc_autoreleasePoolPush();
        v10 = [self previewImageURLsForIdentifier:v9 account:accountCopy];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          do
          {
            v14 = 0;
            do
            {
              v15 = v7;
              if (*v27 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v26 + 1) + 8 * v14);
              v25 = v7;
              [defaultManager removeItemAtURL:v16 error:&v25];
              v7 = v25;

              if (v7 && [v7 code] != 4)
              {
                v17 = os_log_create("com.apple.notes", "PreviewGeneration");
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v35 = v16;
                  v36 = 2112;
                  v37 = v7;
                  _os_log_error_impl(&dword_214D51000, v17, OS_LOG_TYPE_ERROR, "failed to remove media directory at URL: %@, error: %@", buf, 0x16u);
                }
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v26 objects:v38 count:16];
          }

          while (v12);
        }

        objc_autoreleasePoolPop(context);
        v8 = v24 + 1;
      }

      while (v24 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v22);
  }
}

- (OS_dispatch_queue)fileQueue
{
  identifier = [(ICAttachmentPreviewImage *)self identifier];
  v4 = +[ICAttachmentPreviewImage fileGlobalQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__ICAttachmentPreviewImage_fileQueue__block_invoke;
  v9[3] = &unk_278194AD8;
  v9[4] = self;
  v10 = identifier;
  v5 = identifier;
  dispatch_sync(v4, v9);

  fileQueue = self->_fileQueue;
  v7 = fileQueue;

  return fileQueue;
}

void __37__ICAttachmentPreviewImage_fileQueue__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 208))
  {
    v2 = ICAttachmentPreviewImageFileQueuesMap;
    if (!ICAttachmentPreviewImageFileQueuesMap)
    {
      v3 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      v4 = ICAttachmentPreviewImageFileQueuesMap;
      ICAttachmentPreviewImageFileQueuesMap = v3;

      v2 = ICAttachmentPreviewImageFileQueuesMap;
    }

    v5 = [v2 objectForKey:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 208);
    *(v6 + 208) = v5;

    if (!*(*(a1 + 32) + 208))
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-fileAccess", *(a1 + 40)];
      v9 = [v8 UTF8String];
      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_create(v9, v10);
      v12 = *(a1 + 32);
      v13 = *(v12 + 208);
      *(v12 + 208) = v11;

      v14 = ICAttachmentPreviewImageFileQueuesMap;
      v15 = *(a1 + 40);
      v16 = *(*(a1 + 32) + 208);

      [v14 setObject:v16 forKey:v15];
    }
  }
}

+ (int64_t)updateFileWriteCounterBy:(int64_t)by identifier:(id)identifier
{
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = +[ICAttachmentPreviewImage fileGlobalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ICAttachmentPreviewImage_updateFileWriteCounterBy_identifier___block_invoke;
  block[3] = &unk_278196870;
  v11 = identifierCopy;
  v12 = &v14;
  byCopy = by;
  v7 = identifierCopy;
  dispatch_sync(v6, block);

  v8 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v8;
}

void __64__ICAttachmentPreviewImage_updateFileWriteCounterBy_identifier___block_invoke(void *a1)
{
  v2 = ICAttachmentPreviewFileWriteCounterMap;
  if (!ICAttachmentPreviewFileWriteCounterMap)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v4 = ICAttachmentPreviewFileWriteCounterMap;
    ICAttachmentPreviewFileWriteCounterMap = v3;

    v2 = ICAttachmentPreviewFileWriteCounterMap;
  }

  v5 = [v2 objectForKey:a1[4]];
  v9 = v5;
  if (v5)
  {
    *(*(a1[5] + 8) + 24) = [v5 integerValue];
    v5 = v9;
  }

  v6 = a1[6];
  if (v6)
  {
    v7 = ICAttachmentPreviewFileWriteCounterMap;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(a1[5] + 8) + 24) + v6];
    [v7 setObject:v8 forKey:a1[4]];

    v5 = v9;
  }
}

+ (id)concurrentFileLoadLimitSemaphore
{
  if (concurrentFileLoadLimitSemaphore_once != -1)
  {
    +[ICAttachmentPreviewImage concurrentFileLoadLimitSemaphore];
  }

  v3 = concurrentFileLoadLimitSemaphore_sema;

  return v3;
}

void __60__ICAttachmentPreviewImage_concurrentFileLoadLimitSemaphore__block_invoke()
{
  v0 = dispatch_semaphore_create(2);
  v1 = concurrentFileLoadLimitSemaphore_sema;
  concurrentFileLoadLimitSemaphore_sema = v0;
}

+ (id)fileGlobalQueue
{
  if (fileGlobalQueue_once != -1)
  {
    +[ICAttachmentPreviewImage fileGlobalQueue];
  }

  v3 = fileGlobalQueue_fileGlobalQueue;

  return v3;
}

void __43__ICAttachmentPreviewImage_fileGlobalQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("fileGlobalAccess", v2);
  v1 = fileGlobalQueue_fileGlobalQueue;
  fileGlobalQueue_fileGlobalQueue = v0;
}

+ (id)fileQueueGroup
{
  if (fileQueueGroup_once != -1)
  {
    +[ICAttachmentPreviewImage fileQueueGroup];
  }

  v3 = fileQueueGroup_fileGroup;

  return v3;
}

void __42__ICAttachmentPreviewImage_fileQueueGroup__block_invoke()
{
  v0 = dispatch_group_create();
  v1 = fileQueueGroup_fileGroup;
  fileQueueGroup_fileGroup = v0;
}

+ (void)waitUntilAllFileWritesAreFinished
{
  v2 = +[ICAttachmentPreviewImage fileQueueGroup];
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)prepareForDeletion
{
  identifier = [self identifier];
  objectID = [self objectID];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_7(&dword_214D51000, v4, v5, "Not deleting files for attachment preview image - identifier: %@, object ID: %@", v6, v7, v8, v9, 2u);
}

- (void)willTurnIntoFault
{
  v3.receiver = self;
  v3.super_class = ICAttachmentPreviewImage;
  [(ICAttachmentPreviewImage *)&v3 willTurnIntoFault];
  [(ICAttachmentPreviewImage *)self invalidateCache];
}

- (void)accountWillChangeToAccount:(id)account
{
  v40 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  containerAccount = [(ICAttachmentPreviewImage *)self containerAccount];
  v7 = objc_opt_class();
  identifier = [(ICAttachmentPreviewImage *)self identifier];
  v9 = [v7 previewImageURLsForIdentifier:identifier account:containerAccount];

  v10 = objc_opt_class();
  selfCopy = self;
  identifier2 = [(ICAttachmentPreviewImage *)self identifier];
  v12 = [v10 previewImageURLsForIdentifier:identifier2 account:accountCopy];

  v32 = containerAccount;
  if ([containerAccount isEqual:accountCopy])
  {
    v13 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ICAttachmentPreviewImage accountWillChangeToAccount:];
    }
  }

  if ([v9 count])
  {
    v33 = 0;
    v15 = 0;
    *&v14 = 138412290;
    v30 = v14;
    while (1)
    {
      if (v15 >= [v12 count])
      {
        goto LABEL_24;
      }

      if (accountCopy)
      {
        v16 = [v9 objectAtIndexedSubscript:v15];
        path = [v16 path];
        if (![defaultManager fileExistsAtPath:path])
        {
          goto LABEL_19;
        }

        v18 = [v9 objectAtIndexedSubscript:v15];
        v19 = [v12 objectAtIndexedSubscript:v15];
        v20 = [v18 isEqual:v19];

        if ((v20 & 1) == 0)
        {
          break;
        }
      }

LABEL_20:
      if (++v15 >= [v9 count])
      {
        goto LABEL_24;
      }
    }

    v21 = [v12 objectAtIndexedSubscript:v15];
    uRLByDeletingLastPathComponent = [v21 URLByDeletingLastPathComponent];
    v35 = v33;
    [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v35];
    v23 = v35;

    if (v23)
    {
      v24 = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = v30;
        v37 = v23;
        _os_log_error_impl(&dword_214D51000, v24, OS_LOG_TYPE_ERROR, "Error creating preview image directory %@", buf, 0xCu);
      }
    }

    v25 = [v9 objectAtIndexedSubscript:v15];
    v26 = [v12 objectAtIndexedSubscript:v15];
    v34 = v23;
    [defaultManager moveItemAtURL:v25 toURL:v26 error:&v34];
    v27 = v34;

    v33 = v27;
    if (!v27)
    {
      v33 = 0;
      goto LABEL_20;
    }

    path = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
    {
      v28 = [v9 objectAtIndexedSubscript:v15];
      lastPathComponent = [v28 lastPathComponent];
      *buf = 138412546;
      v37 = lastPathComponent;
      v38 = 2112;
      v39 = v33;
      _os_log_error_impl(&dword_214D51000, path, OS_LOG_TYPE_ERROR, "Error moving preview image file %@, error %@", buf, 0x16u);
    }

    v16 = path;
LABEL_19:

    goto LABEL_20;
  }

  v33 = 0;
LABEL_24:
  if (accountCopy)
  {
    [(ICAttachmentPreviewImage *)selfCopy setPlaceholderAccount:accountCopy];
  }
}

- (void)removeItemAtURL:(id)l
{
  v12 = *MEMORY[0x277D85DE8];
  if (l)
  {
    v3 = MEMORY[0x277CCAA00];
    lCopy = l;
    defaultManager = [v3 defaultManager];
    v9 = 0;
    v6 = [defaultManager removeItemAtURL:lCopy error:&v9];

    v7 = v9;
    if ((v6 & 1) == 0 && [v7 code] != 4)
    {
      v8 = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_DEFAULT, "Error removing preview image file: %@", buf, 0xCu);
      }
    }
  }
}

- (void)invalidateOrientedImage
{
  ++self->_imageID;
  if (objc_opt_respondsToSelector())
  {
    [(ICAttachmentPreviewImage *)self clearCachedOrientedImage];
  }

  orientedPreviewImageURLWithoutCreating = [(ICAttachmentPreviewImage *)self orientedPreviewImageURLWithoutCreating];
  [(ICAttachmentPreviewImage *)self removeItemAtURL:orientedPreviewImageURLWithoutCreating];
}

- (void)invalidateImage
{
  [(ICAttachmentPreviewImage *)self invalidateCache];

  [(ICAttachmentPreviewImage *)self invalidateOrientedImage];
}

- (void)invalidateCache
{
  if (objc_opt_respondsToSelector())
  {
    [(ICAttachmentPreviewImage *)self clearCachedImage];
  }

  if (objc_opt_respondsToSelector())
  {

    [(ICAttachmentPreviewImage *)self clearCachedOrientedImage];
  }
}

- (CGAffineTransform)orientedImageTransform
{
  attachment = [(ICAttachmentPreviewImage *)self attachment];
  if (attachment)
  {
    v10 = attachment;
    attachmentModel = [attachment attachmentModel];
    v6 = attachmentModel;
    if (attachmentModel)
    {
      [attachmentModel previewImageOrientationTransform];
    }

    else
    {
      *&retstr->c = 0u;
      *&retstr->tx = 0u;
      *&retstr->a = 0u;
    }

    attachment = v10;
  }

  else
  {
    v7 = MEMORY[0x277CBF2C0];
    v8 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v8;
    *&retstr->tx = *(v7 + 32);
  }

  return result;
}

- (BOOL)imageIsValid
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(ICAttachmentPreviewImage *)self hasCachedImage]& 1) != 0)
  {
    return 1;
  }

  isPasswordProtected = [(ICAttachmentPreviewImage *)self isPasswordProtected];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (isPasswordProtected)
  {
    [(ICAttachmentPreviewImage *)self encryptedPreviewImageURL];
  }

  else
  {
    [(ICAttachmentPreviewImage *)self previewImageURL];
  }
  v6 = ;
  path = [v6 path];
  v8 = [defaultManager fileExistsAtPath:path];

  return v8;
}

- (BOOL)imageIsWriting
{
  identifier = [(ICAttachmentPreviewImage *)self identifier];
  v3 = [ICAttachmentPreviewImage updateFileWriteCounterBy:0 identifier:identifier]> 0;

  return v3;
}

- (BOOL)setImageData:(id)data withSize:(CGSize)size scale:(double)scale appearanceType:(unint64_t)type
{
  typeCopy = type;
  height = size.height;
  width = size.width;
  dataCopy = data;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  identifier = [(ICAttachmentPreviewImage *)self identifier];

  if (!identifier)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.identifier != ((void*)0)" functionName:"-[ICAttachmentPreviewImage setImageData:withSize:scale:appearanceType:]" simulateCrash:1 showAlert:0 format:@"Why doesn't the preview image have an identifier?"];
  }

  identifier2 = [(ICAttachmentPreviewImage *)self identifier];

  if (!identifier2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(ICAttachmentPreviewImage *)self setIdentifier:uUIDString];
  }

  [(ICAttachmentPreviewImage *)self invalidateImage];
  generationManager = [(ICAttachmentPreviewImage *)self generationManager];
  beginGeneration = [generationManager beginGeneration];

  if (beginGeneration)
  {
    previewImageURL = [(ICAttachmentPreviewImage *)self previewImageURL];
    encryptedPreviewImageURL = [(ICAttachmentPreviewImage *)self encryptedPreviewImageURL];
    isPasswordProtected = [(ICAttachmentPreviewImage *)self isPasswordProtected];
    fileQueue = [(ICAttachmentPreviewImage *)self fileQueue];
    identifier3 = [(ICAttachmentPreviewImage *)self identifier];
    [(ICAttachmentPreviewImage *)self setWidth:width];
    [(ICAttachmentPreviewImage *)self setHeight:height];
    [(ICAttachmentPreviewImage *)self setScale:scale];
    date = [MEMORY[0x277CBEAA8] date];
    [(ICAttachmentPreviewImage *)self setModifiedDate:date];

    [(ICAttachmentPreviewImage *)self setAppearanceType:typeCopy];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__ICAttachmentPreviewImage_setImageData_withSize_scale_appearanceType___block_invoke;
    block[3] = &unk_278199EF8;
    v24 = identifier3;
    v32 = v24;
    selfCopy = self;
    v37 = &v39;
    v38 = isPasswordProtected;
    v34 = dataCopy;
    v25 = previewImageURL;
    v35 = v25;
    v26 = encryptedPreviewImageURL;
    v36 = v26;
    dispatch_sync(fileQueue, block);
    if (*(v40 + 24) == 1)
    {
      generationManager2 = [(ICAttachmentPreviewImage *)self generationManager];
      commitGeneration = [generationManager2 commitGeneration];
      *(v40 + 24) = commitGeneration;
    }

    else
    {
      generationManager2 = [(ICAttachmentPreviewImage *)self generationManager];
      [generationManager2 rollbackGeneration];
    }

    v29 = *(v40 + 24);
  }

  else
  {
    v29 = 0;
  }

  _Block_object_dispose(&v39, 8);

  return v29 & 1;
}

void __71__ICAttachmentPreviewImage_setImageData_withSize_scale_appearanceType___block_invoke(uint64_t a1)
{
  v2 = +[ICAttachmentPreviewImage fileQueueGroup];
  dispatch_group_enter(v2);

  [ICAttachmentPreviewImage updateFileWriteCounterBy:1 identifier:*(a1 + 32)];
  v3 = *(a1 + 40);
  v25 = 0;
  v4 = [v3 makeSurePreviewImageDirectoryExists:&v25];
  v5 = v25;
  if (v4)
  {
    if (*(a1 + 80))
    {
      v6 = [*(a1 + 40) cryptoStrategy];
      *(*(*(a1 + 72) + 8) + 24) = [v6 writeEncryptedImageData:*(a1 + 48)];
    }

    else
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v24 = v5;
      v10 = [v8 writeToURL:v9 options:1 error:&v24];
      v11 = v24;

      if ((v10 & 1) == 0)
      {
        v12 = os_log_create("com.apple.notes", "PreviewGeneration");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __71__ICAttachmentPreviewImage_setImageData_withSize_scale_appearanceType___block_invoke_cold_2((a1 + 32), v11, v12);
        }

        *(*(*(a1 + 72) + 8) + 24) = 0;
      }

      v5 = v11;
    }
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__ICAttachmentPreviewImage_setImageData_withSize_scale_appearanceType___block_invoke_cold_1();
    }

    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v13 = 56;
    if (*(a1 + 80))
    {
      v13 = 64;
    }

    v14 = *(a1 + v13);
    v23 = 0;
    v15 = *MEMORY[0x277CBE7B0];
    v22 = 0;
    v16 = [v14 getResourceValue:&v23 forKey:v15 error:&v22];
    v17 = v23;
    v18 = v22;
    v19 = v18;
    if (v16)
    {
      [*(a1 + 40) setModifiedDate:v17];
    }

    else if (v18)
    {
      v20 = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __71__ICAttachmentPreviewImage_setImageData_withSize_scale_appearanceType___block_invoke_cold_3(v19, v14);
      }
    }

    [*(a1 + 40) updateFlagToExcludeFromCloudBackup];
  }

  [ICAttachmentPreviewImage updateFileWriteCounterBy:-1 identifier:*(a1 + 32)];
  v21 = +[ICAttachmentPreviewImage fileQueueGroup];
  dispatch_group_leave(v21);
}

- (BOOL)setScaledImageFromImageSrc:(CGImageSource *)src typeUTI:(__CFString *)i
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  identifier = [(ICAttachmentPreviewImage *)self identifier];

  if (!identifier)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.identifier != ((void*)0)" functionName:"-[ICAttachmentPreviewImage setScaledImageFromImageSrc:typeUTI:]" simulateCrash:1 showAlert:0 format:@"Why doesn't the preview image have an identifier?"];
  }

  identifier2 = [(ICAttachmentPreviewImage *)self identifier];

  if (!identifier2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(ICAttachmentPreviewImage *)self setIdentifier:uUIDString];
  }

  [(ICAttachmentPreviewImage *)self invalidateImage];
  generationManager = [(ICAttachmentPreviewImage *)self generationManager];
  beginGeneration = [generationManager beginGeneration];

  if (beginGeneration)
  {
    previewImageURL = [(ICAttachmentPreviewImage *)self previewImageURL];
    encryptedPreviewImageURL = [(ICAttachmentPreviewImage *)self encryptedPreviewImageURL];
    identifier3 = [(ICAttachmentPreviewImage *)self identifier];
    isPasswordProtected = [(ICAttachmentPreviewImage *)self isPasswordProtected];
    [(ICAttachmentPreviewImage *)self width];
    v18 = v17;
    [(ICAttachmentPreviewImage *)self height];
    if (v18 < v19)
    {
      v18 = v19;
    }

    CFRetain(src);
    fileQueue = [(ICAttachmentPreviewImage *)self fileQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__ICAttachmentPreviewImage_setScaledImageFromImageSrc_typeUTI___block_invoke;
    block[3] = &unk_278199F20;
    v21 = identifier3;
    v29 = v21;
    selfCopy = self;
    v37 = isPasswordProtected;
    iCopy = i;
    v22 = previewImageURL;
    srcCopy = src;
    v36 = v18;
    v31 = v22;
    v33 = &v38;
    v23 = encryptedPreviewImageURL;
    v32 = v23;
    dispatch_sync(fileQueue, block);

    if (*(v39 + 24) == 1)
    {
      generationManager2 = [(ICAttachmentPreviewImage *)self generationManager];
      commitGeneration = [generationManager2 commitGeneration];
      *(v39 + 24) = commitGeneration;
    }

    else
    {
      generationManager2 = [(ICAttachmentPreviewImage *)self generationManager];
      [generationManager2 rollbackGeneration];
    }

    v26 = *(v39 + 24);
  }

  else
  {
    v26 = 0;
  }

  _Block_object_dispose(&v38, 8);
  return v26 & 1;
}

void __63__ICAttachmentPreviewImage_setScaledImageFromImageSrc_typeUTI___block_invoke(uint64_t a1)
{
  v27[3] = *MEMORY[0x277D85DE8];
  v2 = +[ICAttachmentPreviewImage fileQueueGroup];
  dispatch_group_enter(v2);

  [ICAttachmentPreviewImage updateFileWriteCounterBy:1 identifier:*(a1 + 32)];
  v3 = *(a1 + 40);
  v25 = 0;
  v4 = [v3 makeSurePreviewImageDirectoryExists:&v25];
  v5 = v25;
  if (v4)
  {
    if (*(a1 + 96) == 1)
    {
      v6 = [MEMORY[0x277CBEB28] data];
      v7 = CGImageDestinationCreateWithData(v6, *(a1 + 72), 1uLL, 0);
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = CGImageDestinationCreateWithURL(*(a1 + 48), *(a1 + 72), 1uLL, 0);
      v6 = 0;
      if (!v7)
      {
LABEL_9:
        if (*(*(*(a1 + 64) + 8) + 24) == 1 && *(a1 + 96) == 1)
        {
          v13 = [*(a1 + 40) cryptoStrategy];
          *(*(*(a1 + 64) + 8) + 24) = [v13 writeEncryptedImageData:v6];
        }

        goto LABEL_12;
      }
    }

    v26[0] = *MEMORY[0x277CD2D40];
    v8 = *(a1 + 80);
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 88)];
    v10 = *MEMORY[0x277CD3568];
    v27[0] = v9;
    v27[1] = MEMORY[0x277CBEC38];
    v11 = *MEMORY[0x277CD3578];
    v26[1] = v10;
    v26[2] = v11;
    v27[2] = MEMORY[0x277CBEC38];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    CGImageDestinationAddImageFromSource(v7, v8, 0, v12);

    *(*(*(a1 + 64) + 8) + 24) = CGImageDestinationFinalize(v7);
    CFRelease(v7);
    goto LABEL_9;
  }

  v6 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __63__ICAttachmentPreviewImage_setScaledImageFromImageSrc_typeUTI___block_invoke_cold_1();
  }

LABEL_12:

  CFRelease(*(a1 + 80));
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v14 = 48;
    if (*(a1 + 96))
    {
      v14 = 56;
    }

    v15 = *(a1 + v14);
    v24 = 0;
    v16 = *MEMORY[0x277CBE7B0];
    v23 = 0;
    v17 = [v15 getResourceValue:&v24 forKey:v16 error:&v23];
    v18 = v24;
    v19 = v23;
    v20 = v19;
    if (v17)
    {
      [*(a1 + 40) setModifiedDate:v18];
    }

    else if (v19)
    {
      v21 = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __71__ICAttachmentPreviewImage_setImageData_withSize_scale_appearanceType___block_invoke_cold_3(v20, v15);
      }
    }

    [*(a1 + 40) updateFlagToExcludeFromCloudBackup];
  }

  [ICAttachmentPreviewImage updateFileWriteCounterBy:-1 identifier:*(a1 + 32)];
  v22 = +[ICAttachmentPreviewImage fileQueueGroup];
  dispatch_group_leave(v22);
}

- (BOOL)makeSurePreviewImageDirectoryExists:(id *)exists
{
  containerAccount = [(ICAttachmentPreviewImage *)self containerAccount];
  previewImageDirectoryURL = [containerAccount previewImageDirectoryURL];
  v6 = previewImageDirectoryURL;
  if (previewImageDirectoryURL)
  {
    defaultPreviewImageDirectoryURL = previewImageDirectoryURL;
  }

  else
  {
    defaultPreviewImageDirectoryURL = [MEMORY[0x277D36230] defaultPreviewImageDirectoryURL];
  }

  v8 = defaultPreviewImageDirectoryURL;

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [defaultManager createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:exists];

  return v10;
}

- (id)containerAccount
{
  attachment = [(ICAttachmentPreviewImage *)self attachment];
  note = [attachment note];
  account = [note account];
  v6 = account;
  if (account)
  {
    account2 = account;
  }

  else
  {
    attachment2 = [(ICAttachmentPreviewImage *)self attachment];
    note2 = [attachment2 note];
    folder = [note2 folder];
    account2 = [folder account];
  }

  if (!account2)
  {
    account2 = [(ICAttachmentPreviewImage *)self placeholderAccount];
    if (!account2)
    {
      managedObjectContext = [(ICAttachmentPreviewImage *)self managedObjectContext];
      account2 = [ICAccount defaultAccountInContext:managedObjectContext];

      v12 = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(ICAttachmentPreviewImage *)self containerAccount];
      }
    }
  }

  [(ICAttachmentPreviewImage *)self setPlaceholderAccount:account2];

  return account2;
}

- (id)previewImagePathExtension
{
  attachment = [(ICAttachmentPreviewImage *)self attachment];
  attachmentModel = [attachment attachmentModel];
  previewImageTypeUTI = [attachmentModel previewImageTypeUTI];
  v5 = *MEMORY[0x277CE1DC0];
  identifier = [*MEMORY[0x277CE1DC0] identifier];
  if ([previewImageTypeUTI isEqualToString:identifier])
  {
    v7 = v5;
  }

  else
  {
    v7 = *MEMORY[0x277CE1E10];
  }

  preferredFilenameExtension = [v7 preferredFilenameExtension];

  return preferredFilenameExtension;
}

- (id)previewImageDirectoryURL
{
  containerAccount = [(ICAttachmentPreviewImage *)self containerAccount];
  previewImageDirectoryURL = [containerAccount previewImageDirectoryURL];
  v4 = previewImageDirectoryURL;
  if (previewImageDirectoryURL)
  {
    defaultPreviewImageDirectoryURL = previewImageDirectoryURL;
  }

  else
  {
    defaultPreviewImageDirectoryURL = [MEMORY[0x277D36230] defaultPreviewImageDirectoryURL];
  }

  v6 = defaultPreviewImageDirectoryURL;

  return v6;
}

- (id)containerDirectoryURL
{
  identifier = [(ICAttachmentPreviewImage *)self identifier];

  if (identifier)
  {
    previewImageDirectoryURL = [(ICAttachmentPreviewImage *)self previewImageDirectoryURL];
    identifier2 = [(ICAttachmentPreviewImage *)self identifier];
    v6 = [previewImageDirectoryURL URLByAppendingPathComponent:identifier2 isDirectory:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)previewImageFallbackURL
{
  identifier = [(ICAttachmentPreviewImage *)self identifier];

  if (identifier)
  {
    previewImageDirectoryURL = [(ICAttachmentPreviewImage *)self previewImageDirectoryURL];
    identifier2 = [(ICAttachmentPreviewImage *)self identifier];
    v6 = [previewImageDirectoryURL URLByAppendingPathComponent:identifier2 isDirectory:0];

    previewImagePathExtension = [(ICAttachmentPreviewImage *)self previewImagePathExtension];
    v8 = [v6 URLByAppendingPathExtension:previewImagePathExtension];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)previewImageURL
{
  previewImageFallbackURL = [(ICAttachmentPreviewImage *)self previewImageFallbackURL];
  encryptedPreviewImageFallbackURL = [(ICAttachmentPreviewImage *)self encryptedPreviewImageFallbackURL];
  generationManager = [(ICAttachmentPreviewImage *)self generationManager];
  generationURL = [generationManager generationURL];

  if (!generationURL)
  {
    v16 = previewImageFallbackURL;
    v14 = 0;
    goto LABEL_18;
  }

  if (previewImageFallbackURL)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v23 = 0;
    v8 = [defaultManager removeItemAtURL:previewImageFallbackURL error:&v23];
    v9 = v23;
    v10 = v9;
    if ((v8 & 1) == 0)
    {
      code = [v9 code];

      if (code == 4)
      {
        goto LABEL_8;
      }

      defaultManager = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
      {
        [ICAttachmentPreviewImage previewImageURL];
      }
    }

LABEL_8:
    if (encryptedPreviewImageFallbackURL)
    {
      goto LABEL_9;
    }

LABEL_16:
    v14 = v10;
    goto LABEL_17;
  }

  v10 = 0;
  if (!encryptedPreviewImageFallbackURL)
  {
    goto LABEL_16;
  }

LABEL_9:
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = v10;
  v13 = [defaultManager2 removeItemAtURL:encryptedPreviewImageFallbackURL error:&v22];
  v14 = v22;

  if (v13)
  {
LABEL_13:

    goto LABEL_17;
  }

  code2 = [v14 code];

  if (code2 != 4)
  {
    defaultManager2 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(defaultManager2, OS_LOG_TYPE_ERROR))
    {
      [ICAttachmentPreviewImage previewImageURL];
    }

    goto LABEL_13;
  }

LABEL_17:
  generationManager2 = [(ICAttachmentPreviewImage *)self generationManager];
  generationURL2 = [generationManager2 generationURL];
  v19 = [generationURL2 URLByAppendingPathComponent:@"Preview" isDirectory:0];

  previewImagePathExtension = [(ICAttachmentPreviewImage *)self previewImagePathExtension];
  v16 = [v19 URLByAppendingPathExtension:previewImagePathExtension];

LABEL_18:

  return v16;
}

- (id)encryptedPreviewImageFallbackURL
{
  previewImageFallbackURL = [(ICAttachmentPreviewImage *)self previewImageFallbackURL];
  v3 = [previewImageFallbackURL URLByAppendingPathExtension:@"encrypted"];

  return v3;
}

- (id)encryptedPreviewImageURL
{
  generationManager = [(ICAttachmentPreviewImage *)self generationManager];
  generationURL = [generationManager generationURL];

  if (generationURL)
  {
    previewImageURL = [(ICAttachmentPreviewImage *)self previewImageURL];
    encryptedPreviewImageFallbackURL = [previewImageURL URLByAppendingPathExtension:@"encrypted"];
  }

  else
  {
    encryptedPreviewImageFallbackURL = [(ICAttachmentPreviewImage *)self encryptedPreviewImageFallbackURL];
  }

  return encryptedPreviewImageFallbackURL;
}

- (id)orientedPreviewImageFallbackURLWithoutCreating
{
  identifier = [(ICAttachmentPreviewImage *)self identifier];
  v4 = [identifier stringByAppendingString:@"-oriented"];

  previewImagePathExtension = [(ICAttachmentPreviewImage *)self previewImagePathExtension];
  v6 = [v4 stringByAppendingPathExtension:previewImagePathExtension];

  containerAccount = [(ICAttachmentPreviewImage *)self containerAccount];
  previewImageDirectoryURL = [containerAccount previewImageDirectoryURL];
  v9 = [previewImageDirectoryURL URLByAppendingPathComponent:v6 isDirectory:0];

  return v9;
}

- (id)orientedPreviewImageURLWithoutCreating
{
  identifier = [(ICAttachmentPreviewImage *)self identifier];

  if (identifier)
  {
    generationManager = [(ICAttachmentPreviewImage *)self generationManager];
    generationURL = [generationManager generationURL];

    if (generationURL)
    {
      generationManager2 = [(ICAttachmentPreviewImage *)self generationManager];
      generationURL2 = [generationManager2 generationURL];
      v8 = [generationURL2 URLByAppendingPathComponent:@"OrientedPreview" isDirectory:0];

      previewImagePathExtension = [(ICAttachmentPreviewImage *)self previewImagePathExtension];
      orientedPreviewImageFallbackURLWithoutCreating = [v8 URLByAppendingPathExtension:previewImagePathExtension];
    }

    else
    {
      orientedPreviewImageFallbackURLWithoutCreating = [(ICAttachmentPreviewImage *)self orientedPreviewImageFallbackURLWithoutCreating];
    }
  }

  else
  {
    orientedPreviewImageFallbackURLWithoutCreating = 0;
  }

  return orientedPreviewImageFallbackURLWithoutCreating;
}

- (id)orientedPreviewImageURL
{
  [(ICAttachmentPreviewImage *)self createOrientedPreviewIfNeeded];

  return [(ICAttachmentPreviewImage *)self orientedPreviewImageURLWithoutCreating];
}

- (id)urls
{
  v3 = [MEMORY[0x277CBEB58] set];
  previewImageURL = [(ICAttachmentPreviewImage *)self previewImageURL];
  [v3 ic_addNonNilObject:previewImageURL];

  encryptedPreviewImageURL = [(ICAttachmentPreviewImage *)self encryptedPreviewImageURL];
  [v3 ic_addNonNilObject:encryptedPreviewImageURL];

  orientedPreviewImageURLWithoutCreating = [(ICAttachmentPreviewImage *)self orientedPreviewImageURLWithoutCreating];
  [v3 ic_addNonNilObject:orientedPreviewImageURLWithoutCreating];

  v7 = [v3 copy];

  return v7;
}

- (ICAssetGenerationManager)generationManager
{
  v17[3] = *MEMORY[0x277D85DE8];
  containerDirectoryURL = [(ICAttachmentPreviewImage *)self containerDirectoryURL];
  if (containerDirectoryURL)
  {
    v4 = containerDirectoryURL;
    containerAccount = [(ICAttachmentPreviewImage *)self containerAccount];

    if (containerAccount)
    {
      generationManager = self->_generationManager;
      if (!generationManager)
      {
        v7 = NSStringFromSelector(sel_generation);
        v8 = [ICAssetGenerationManager alloc];
        containerDirectoryURL2 = [(ICAttachmentPreviewImage *)self containerDirectoryURL];
        v10 = [(ICAssetGenerationManager *)v8 initWithObject:self generationKeyPath:v7 containerURL:containerDirectoryURL2];
        v11 = self->_generationManager;
        self->_generationManager = v10;

        previewImageFallbackURL = [(ICAttachmentPreviewImage *)self previewImageFallbackURL];
        encryptedPreviewImageFallbackURL = [(ICAttachmentPreviewImage *)self encryptedPreviewImageFallbackURL];
        v17[1] = encryptedPreviewImageFallbackURL;
        orientedPreviewImageFallbackURLWithoutCreating = [(ICAttachmentPreviewImage *)self orientedPreviewImageFallbackURLWithoutCreating];
        v17[2] = orientedPreviewImageFallbackURLWithoutCreating;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
        [(ICAssetGenerationManager *)self->_generationManager setFallbackURLs:v15];

        generationManager = self->_generationManager;
      }

      containerDirectoryURL = generationManager;
    }

    else
    {
      containerDirectoryURL = 0;
    }
  }

  return containerDirectoryURL;
}

- (BOOL)hasAnyPNGPreviewImageFiles
{
  orientedPreviewImageURLWithoutCreating = [(ICAttachmentPreviewImage *)self orientedPreviewImageURLWithoutCreating];
  uRLByDeletingPathExtension = [orientedPreviewImageURLWithoutCreating URLByDeletingPathExtension];
  v5 = *MEMORY[0x277CE1E10];
  preferredFilenameExtension = [*MEMORY[0x277CE1E10] preferredFilenameExtension];
  v7 = [uRLByDeletingPathExtension URLByAppendingPathExtension:preferredFilenameExtension];

  if ([v7 checkResourceIsReachableAndReturnError:0])
  {
    v8 = 1;
  }

  else
  {
    previewImageURL = [(ICAttachmentPreviewImage *)self previewImageURL];
    uRLByDeletingPathExtension2 = [previewImageURL URLByDeletingPathExtension];
    preferredFilenameExtension2 = [v5 preferredFilenameExtension];
    v12 = [uRLByDeletingPathExtension2 URLByAppendingPathExtension:preferredFilenameExtension2];

    if ([(ICAttachmentPreviewImage *)self isPasswordProtected])
    {
      v13 = [v12 URLByAppendingPathExtension:@"encrypted"];

      v12 = v13;
    }

    v8 = [v12 checkResourceIsReachableAndReturnError:0];
  }

  return v8;
}

- (void)createOrientedPreviewIfNeeded
{
  identifier = [self identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([(ICAttachmentPreviewImage *)self isPasswordProtected])
  {
    cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
    [cryptoStrategy writeEncryptedMetadata:metadataCopy];
  }

  else
  {
    [(ICAttachmentPreviewImage *)self willChangeValueForKey:@"metadata"];
    [(ICAttachmentPreviewImage *)self setPrimitiveValue:metadataCopy forKey:@"metadata"];

    [(ICAttachmentPreviewImage *)self didChangeValueForKey:@"metadata"];
  }
}

- (NSData)metadata
{
  [(ICAttachmentPreviewImage *)self willAccessValueForKey:@"metadata"];
  if ([(ICAttachmentPreviewImage *)self isPasswordProtected])
  {
    cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
    decryptedMetadata = [cryptoStrategy decryptedMetadata];
  }

  else
  {
    decryptedMetadata = [(ICAttachmentPreviewImage *)self primitiveValueForKey:@"metadata"];
  }

  [(ICAttachmentPreviewImage *)self didAccessValueForKey:@"metadata"];

  return decryptedMetadata;
}

+ (id)previewImageURLsForIdentifier:(id)identifier account:(id)account
{
  v38[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  accountCopy = account;
  if (identifierCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    context = objc_autoreleasePoolPush();
    previewImageDirectoryURL = [accountCopy previewImageDirectoryURL];
    v9 = previewImageDirectoryURL;
    v30 = accountCopy;
    if (previewImageDirectoryURL)
    {
      defaultPreviewImageDirectoryURL = previewImageDirectoryURL;
    }

    else
    {
      defaultPreviewImageDirectoryURL = [MEMORY[0x277D36230] defaultPreviewImageDirectoryURL];
    }

    v12 = defaultPreviewImageDirectoryURL;

    v13 = [v12 URLByAppendingPathComponent:identifierCopy isDirectory:0];
    [array addObject:v13];
    preferredFilenameExtension = [*MEMORY[0x277CE1E10] preferredFilenameExtension];
    v38[0] = preferredFilenameExtension;
    preferredFilenameExtension2 = [*MEMORY[0x277CE1DC0] preferredFilenameExtension];
    v38[1] = preferredFilenameExtension2;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v16;
    v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v32 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          v21 = [identifierCopy stringByAppendingPathExtension:v20];
          v22 = [v12 URLByAppendingPathComponent:v21 isDirectory:0];

          [array addObject:v22];
          v23 = [v12 URLByAppendingPathComponent:v21 isDirectory:0];
          v24 = [v23 URLByAppendingPathExtension:@"encrypted"];

          [array addObject:v24];
          v25 = [identifierCopy stringByAppendingString:@"-oriented"];
          v26 = [v25 stringByAppendingPathExtension:v20];

          v27 = [v12 URLByAppendingPathComponent:v26 isDirectory:0];

          [array addObject:v27];
          v13 = [v12 URLByAppendingPathComponent:identifierCopy isDirectory:1];

          [array addObject:v13];
        }

        v18 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    objc_autoreleasePoolPop(context);
    accountCopy = v30;
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ICAttachmentPreviewImage previewImageURLsForIdentifier:v11 account:?];
    }

    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

- (BOOL)shouldSyncToCloud
{
  selfCopy = self;
  attachment = [(ICAttachmentPreviewImage *)self attachment];
  attachmentModel = [attachment attachmentModel];
  LOBYTE(selfCopy) = [attachmentModel shouldSyncPreviewImageToCloud:selfCopy];

  return selfCopy;
}

- (id)ic_loggingValues
{
  v12.receiver = self;
  v12.super_class = ICAttachmentPreviewImage;
  ic_loggingValues = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [ic_loggingValues mutableCopy];

  managedObjectContext = [(ICAttachmentPreviewImage *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__ICAttachmentPreviewImage_ic_loggingValues__block_invoke;
  v9[3] = &unk_278194AD8;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v9];

  v7 = v6;
  return v6;
}

void __44__ICAttachmentPreviewImage_ic_loggingValues__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 40) scale];
  v3 = [v2 numberWithDouble:?];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"scale"];

  v4 = MEMORY[0x277CCABB0];
  [*(a1 + 40) width];
  v5 = [v4 numberWithDouble:?];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"width"];

  v6 = MEMORY[0x277CCABB0];
  [*(a1 + 40) height];
  v7 = [v6 numberWithDouble:?];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"height"];

  v8 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(*(a1 + 40), "appearanceType")}];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"appearanceType"];

  v9 = [*(a1 + 40) modifiedDate];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"nil";
  }

  [*(a1 + 32) setObject:v11 forKeyedSubscript:@"modifiedDate"];

  v15 = [*(a1 + 40) attachment];
  v12 = [v15 identifier];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_2827172C0;
  }

  [*(a1 + 32) setObject:v14 forKeyedSubscript:@"attachment"];
}

- (void)updateFlagToExcludeFromCloudBackup
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  urls = [(ICAttachmentPreviewImage *)self urls];
  v3 = [urls countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(urls);
        }

        [*(*(&v7 + 1) + 8 * v6++) ic_updateFlagToExcludeFromBackup:1];
      }

      while (v4 != v6);
      v4 = [urls countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)deleteFromLocalDatabase
{
  managedObjectContext = [(ICAttachmentPreviewImage *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
}

- (id)cloudAccount
{
  attachment = [(ICAttachmentPreviewImage *)self attachment];
  cloudAccount = [attachment cloudAccount];

  return cloudAccount;
}

- (id)decryptedImageData
{
  cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
  decryptedImageData = [cryptoStrategy decryptedImageData];

  return decryptedImageData;
}

- (id)primaryEncryptedData
{
  v2 = MEMORY[0x277CBEA90];
  encryptedPreviewImageURL = [(ICAttachmentPreviewImage *)self encryptedPreviewImageURL];
  v4 = [v2 dataWithContentsOfURL:encryptedPreviewImageURL];

  return v4;
}

- (void)setPrimaryEncryptedData:(id)data
{
  dataCopy = data;
  generationManager = [(ICAttachmentPreviewImage *)self generationManager];
  beginGeneration = [generationManager beginGeneration];

  if (beginGeneration)
  {
    encryptedPreviewImageURL = [(ICAttachmentPreviewImage *)self encryptedPreviewImageURL];
    v7 = [dataCopy writeToURL:encryptedPreviewImageURL atomically:1];

    generationManager2 = [(ICAttachmentPreviewImage *)self generationManager];
    v9 = generationManager2;
    if (v7)
    {
      [generationManager2 commitGeneration];
    }

    else
    {
      [generationManager2 rollbackGeneration];
    }
  }
}

- (id)primaryEncryptedDataFromRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  v4 = [recordCopy objectForKeyedSubscript:@"PreviewImages"];

  v5 = ICDynamicCast();

  firstObject = [v5 firstObject];
  fileURL = [firstObject fileURL];

  if (fileURL)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:fileURL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)clearDecryptedData
{
  orientedPreviewImageURLWithoutCreating = [(ICAttachmentPreviewImage *)self orientedPreviewImageURLWithoutCreating];
  if (orientedPreviewImageURLWithoutCreating)
  {
    [(ICAttachmentPreviewImage *)self removeItemAtURL:orientedPreviewImageURLWithoutCreating];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICAttachmentPreviewImage *)self clearCachedImage];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICAttachmentPreviewImage *)self clearCachedOrientedImage];
  }

  v4.receiver = self;
  v4.super_class = ICAttachmentPreviewImage;
  [(ICCloudSyncingObject *)&v4 clearDecryptedData];
}

- (ICAccount)placeholderAccount
{
  WeakRetained = objc_loadWeakRetained(&self->placeholderAccount);

  return WeakRetained;
}

+ (id)newAttachmentPreviewImageWithIdentifier:(id)identifier attachment:(id)attachment
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  managedObjectContext = [attachmentCopy managedObjectContext];
  v9 = [self newObjectWithIdentifier:identifierCopy context:managedObjectContext];

  [v9 setAttachment:attachmentCopy];
  note = [attachmentCopy note];

  account = [note account];
  persistentStore = [account persistentStore];
  [v9 assignToPersistentStore:persistentStore];

  return v9;
}

+ (void)purgeAllAttachmentPreviewImagesInContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [self allAttachmentPreviewImagesInContext:{contextCopy, 0}];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        attachment = [v10 attachment];
        [attachment removePreviewImagesObject:v10];

        attachment2 = [v10 attachment];
        [attachment2 setPreviewUpdateDate:0];

        [contextCopy deleteObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [ICAttachment enumerateAttachmentsInContext:contextCopy batchSize:5 visibleOnly:0 saveAfterBatch:1 usingBlock:&__block_literal_global_347];
}

void __81__ICAttachmentPreviewImage_Management__purgeAllAttachmentPreviewImagesInContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPreviewUpdateDate:0];
  [v2 ic_postNotificationOnMainThreadWithName:@"ICAttachmentPreviewImagesDidUpdateNotification"];
}

+ (id)attachmentPreviewImageWithIdentifier:(id)identifier inContext:(id)context
{
  v6 = MEMORY[0x277CCAC30];
  contextCopy = context;
  identifier = [v6 predicateWithFormat:@"%K == %@", @"identifier", identifier];
  v9 = [self attachmentPreviewImagesMatchingPredicate:identifier inContext:contextCopy];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)attachmentPreviewImageIdentifiersForAccount:(id)account
{
  v3 = MEMORY[0x277CBEB98];
  accountCopy = account;
  v5 = [v3 set];
  managedObjectContext = [accountCopy managedObjectContext];
  v7 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"ICAttachmentPreviewImage"];
  accountCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"attachment.note.account == %@", accountCopy];

  [v7 setPredicate:accountCopy];
  [v7 setResultType:2];
  [v7 setPropertiesToFetch:&unk_282748108];
  v14 = 0;
  v9 = [managedObjectContext executeFetchRequest:v7 error:&v14];
  v10 = v14;
  if (v10)
  {
    v11 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[ICAttachmentPreviewImage(Management) attachmentPreviewImageIdentifiersForAccount:];
    }
  }

  else
  {
    v11 = [v9 valueForKey:@"identifier"];
    if (v11)
    {
      v12 = [MEMORY[0x277CBEB98] setWithArray:v11];

      v5 = v12;
    }
  }

  return v5;
}

+ (void)deleteStrandedAttachmentPreviewImagesInContext:(id)context
{
  v20[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = MEMORY[0x277CCA920];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"attachment == nil"];
  v20[0] = v6;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == NO", @"markedForDeletion"];
  v20[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v9 = [v5 andPredicateWithSubpredicates:v8];

  v10 = [self attachmentPreviewImagesMatchingPredicate:v9 inContext:contextCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) markForDeletion];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)accountWillChangeToAccount:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_214D51000, v0, OS_LOG_TYPE_DEBUG, "Preview image source and destination account are the same %@", v1, 0xCu);
}

void __71__ICAttachmentPreviewImage_setImageData_withSize_scale_appearanceType___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __71__ICAttachmentPreviewImage_setImageData_withSize_scale_appearanceType___block_invoke_cold_2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Error writing preview image to disk for %@: %@", &v4, 0x16u);
}

void __71__ICAttachmentPreviewImage_setImageData_withSize_scale_appearanceType___block_invoke_cold_3(uint64_t a1, void *a2)
{
  v2 = [a2 path];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __63__ICAttachmentPreviewImage_setScaledImageFromImageSrc_typeUTI___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)containerAccount
{
  identifier = [self identifier];
  identifier2 = [a2 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_7(&dword_214D51000, v5, v6, "Couldn't find account for media %@, using default account %@ for container directory.", v7, v8, v9, v10, 2u);
}

- (void)previewImageURL
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end