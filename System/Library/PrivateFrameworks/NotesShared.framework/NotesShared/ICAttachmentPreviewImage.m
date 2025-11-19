@interface ICAttachmentPreviewImage
+ (id)attachmentPreviewImageIdentifiersForAccount:(id)a3;
+ (id)attachmentPreviewImageWithIdentifier:(id)a3 inContext:(id)a4;
+ (id)concurrentFileLoadLimitSemaphore;
+ (id)fileGlobalQueue;
+ (id)fileQueueGroup;
+ (id)newAttachmentPreviewImageWithIdentifier:(id)a3 attachment:(id)a4;
+ (id)previewImageURLsForIdentifier:(id)a3 account:(id)a4;
+ (int64_t)updateFileWriteCounterBy:(int64_t)a3 identifier:(id)a4;
+ (void)deleteStrandedAttachmentPreviewImagesInContext:(id)a3;
+ (void)purgeAllAttachmentPreviewImagesInContext:(id)a3;
+ (void)purgePreviewImageFilesForIdentifiers:(id)a3 account:(id)a4;
+ (void)waitUntilAllFileWritesAreFinished;
- (BOOL)hasAnyPNGPreviewImageFiles;
- (BOOL)imageIsValid;
- (BOOL)imageIsWriting;
- (BOOL)makeSurePreviewImageDirectoryExists:(id *)a3;
- (BOOL)setImageData:(id)a3 withSize:(CGSize)a4 scale:(double)a5 appearanceType:(unint64_t)a6;
- (BOOL)setScaledImageFromImageSrc:(CGImageSource *)a3 typeUTI:(__CFString *)a4;
- (BOOL)shouldSyncToCloud;
- (CGAffineTransform)orientedImageTransform;
- (CGSize)size;
- (ICAccount)placeholderAccount;
- (ICAssetGenerationManager)generationManager;
- (ICAttachmentPreviewImage)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
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
- (id)primaryEncryptedDataFromRecord:(id)a3;
- (id)urls;
- (void)accountWillChangeToAccount:(id)a3;
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
- (void)removeItemAtURL:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setPrimaryEncryptedData:(id)a3;
- (void)updateFlagToExcludeFromCloudBackup;
- (void)willTurnIntoFault;
@end

@implementation ICAttachmentPreviewImage

- (ICAttachmentPreviewImage)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v5.receiver = self;
  v5.super_class = ICAttachmentPreviewImage;
  result = [(ICCloudSyncingObject *)&v5 initWithEntity:a3 insertIntoManagedObjectContext:a4];
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

+ (void)purgePreviewImageFilesForIdentifiers:(id)a3 account:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21 = a4;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
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
        v10 = [a1 previewImageURLsForIdentifier:v9 account:v21];
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
              [v6 removeItemAtURL:v16 error:&v25];
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
  v3 = [(ICAttachmentPreviewImage *)self identifier];
  v4 = +[ICAttachmentPreviewImage fileGlobalQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__ICAttachmentPreviewImage_fileQueue__block_invoke;
  v9[3] = &unk_278194AD8;
  v9[4] = self;
  v10 = v3;
  v5 = v3;
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

+ (int64_t)updateFileWriteCounterBy:(int64_t)a3 identifier:(id)a4
{
  v5 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = +[ICAttachmentPreviewImage fileGlobalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ICAttachmentPreviewImage_updateFileWriteCounterBy_identifier___block_invoke;
  block[3] = &unk_278196870;
  v11 = v5;
  v12 = &v14;
  v13 = a3;
  v7 = v5;
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
  v2 = [a1 identifier];
  v3 = [a1 objectID];
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

- (void)accountWillChangeToAccount:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(ICAttachmentPreviewImage *)self containerAccount];
  v7 = objc_opt_class();
  v8 = [(ICAttachmentPreviewImage *)self identifier];
  v9 = [v7 previewImageURLsForIdentifier:v8 account:v6];

  v10 = objc_opt_class();
  v31 = self;
  v11 = [(ICAttachmentPreviewImage *)self identifier];
  v12 = [v10 previewImageURLsForIdentifier:v11 account:v4];

  v32 = v6;
  if ([v6 isEqual:v4])
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

      if (v4)
      {
        v16 = [v9 objectAtIndexedSubscript:v15];
        v17 = [v16 path];
        if (![v5 fileExistsAtPath:v17])
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
    v22 = [v21 URLByDeletingLastPathComponent];
    v35 = v33;
    [v5 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v35];
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
    [v5 moveItemAtURL:v25 toURL:v26 error:&v34];
    v27 = v34;

    v33 = v27;
    if (!v27)
    {
      v33 = 0;
      goto LABEL_20;
    }

    v17 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v28 = [v9 objectAtIndexedSubscript:v15];
      v29 = [v28 lastPathComponent];
      *buf = 138412546;
      v37 = v29;
      v38 = 2112;
      v39 = v33;
      _os_log_error_impl(&dword_214D51000, v17, OS_LOG_TYPE_ERROR, "Error moving preview image file %@, error %@", buf, 0x16u);
    }

    v16 = v17;
LABEL_19:

    goto LABEL_20;
  }

  v33 = 0;
LABEL_24:
  if (v4)
  {
    [(ICAttachmentPreviewImage *)v31 setPlaceholderAccount:v4];
  }
}

- (void)removeItemAtURL:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277CCAA00];
    v4 = a3;
    v5 = [v3 defaultManager];
    v9 = 0;
    v6 = [v5 removeItemAtURL:v4 error:&v9];

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

  v3 = [(ICAttachmentPreviewImage *)self orientedPreviewImageURLWithoutCreating];
  [(ICAttachmentPreviewImage *)self removeItemAtURL:v3];
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
  v4 = [(ICAttachmentPreviewImage *)self attachment];
  if (v4)
  {
    v10 = v4;
    v5 = [v4 attachmentModel];
    v6 = v5;
    if (v5)
    {
      [v5 previewImageOrientationTransform];
    }

    else
    {
      *&retstr->c = 0u;
      *&retstr->tx = 0u;
      *&retstr->a = 0u;
    }

    v4 = v10;
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

  v4 = [(ICAttachmentPreviewImage *)self isPasswordProtected];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  if (v4)
  {
    [(ICAttachmentPreviewImage *)self encryptedPreviewImageURL];
  }

  else
  {
    [(ICAttachmentPreviewImage *)self previewImageURL];
  }
  v6 = ;
  v7 = [v6 path];
  v8 = [v5 fileExistsAtPath:v7];

  return v8;
}

- (BOOL)imageIsWriting
{
  v2 = [(ICAttachmentPreviewImage *)self identifier];
  v3 = [ICAttachmentPreviewImage updateFileWriteCounterBy:0 identifier:v2]> 0;

  return v3;
}

- (BOOL)setImageData:(id)a3 withSize:(CGSize)a4 scale:(double)a5 appearanceType:(unint64_t)a6
{
  v6 = a6;
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v12 = [(ICAttachmentPreviewImage *)self identifier];

  if (!v12)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.identifier != ((void*)0)" functionName:"-[ICAttachmentPreviewImage setImageData:withSize:scale:appearanceType:]" simulateCrash:1 showAlert:0 format:@"Why doesn't the preview image have an identifier?"];
  }

  v13 = [(ICAttachmentPreviewImage *)self identifier];

  if (!v13)
  {
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v14 UUIDString];
    [(ICAttachmentPreviewImage *)self setIdentifier:v15];
  }

  [(ICAttachmentPreviewImage *)self invalidateImage];
  v16 = [(ICAttachmentPreviewImage *)self generationManager];
  v17 = [v16 beginGeneration];

  if (v17)
  {
    v18 = [(ICAttachmentPreviewImage *)self previewImageURL];
    v19 = [(ICAttachmentPreviewImage *)self encryptedPreviewImageURL];
    v20 = [(ICAttachmentPreviewImage *)self isPasswordProtected];
    v21 = [(ICAttachmentPreviewImage *)self fileQueue];
    v22 = [(ICAttachmentPreviewImage *)self identifier];
    [(ICAttachmentPreviewImage *)self setWidth:width];
    [(ICAttachmentPreviewImage *)self setHeight:height];
    [(ICAttachmentPreviewImage *)self setScale:a5];
    v23 = [MEMORY[0x277CBEAA8] date];
    [(ICAttachmentPreviewImage *)self setModifiedDate:v23];

    [(ICAttachmentPreviewImage *)self setAppearanceType:v6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__ICAttachmentPreviewImage_setImageData_withSize_scale_appearanceType___block_invoke;
    block[3] = &unk_278199EF8;
    v24 = v22;
    v32 = v24;
    v33 = self;
    v37 = &v39;
    v38 = v20;
    v34 = v11;
    v25 = v18;
    v35 = v25;
    v26 = v19;
    v36 = v26;
    dispatch_sync(v21, block);
    if (*(v40 + 24) == 1)
    {
      v27 = [(ICAttachmentPreviewImage *)self generationManager];
      v28 = [v27 commitGeneration];
      *(v40 + 24) = v28;
    }

    else
    {
      v27 = [(ICAttachmentPreviewImage *)self generationManager];
      [v27 rollbackGeneration];
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

- (BOOL)setScaledImageFromImageSrc:(CGImageSource *)a3 typeUTI:(__CFString *)a4
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v7 = [(ICAttachmentPreviewImage *)self identifier];

  if (!v7)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.identifier != ((void*)0)" functionName:"-[ICAttachmentPreviewImage setScaledImageFromImageSrc:typeUTI:]" simulateCrash:1 showAlert:0 format:@"Why doesn't the preview image have an identifier?"];
  }

  v8 = [(ICAttachmentPreviewImage *)self identifier];

  if (!v8)
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    [(ICAttachmentPreviewImage *)self setIdentifier:v10];
  }

  [(ICAttachmentPreviewImage *)self invalidateImage];
  v11 = [(ICAttachmentPreviewImage *)self generationManager];
  v12 = [v11 beginGeneration];

  if (v12)
  {
    v13 = [(ICAttachmentPreviewImage *)self previewImageURL];
    v14 = [(ICAttachmentPreviewImage *)self encryptedPreviewImageURL];
    v15 = [(ICAttachmentPreviewImage *)self identifier];
    v16 = [(ICAttachmentPreviewImage *)self isPasswordProtected];
    [(ICAttachmentPreviewImage *)self width];
    v18 = v17;
    [(ICAttachmentPreviewImage *)self height];
    if (v18 < v19)
    {
      v18 = v19;
    }

    CFRetain(a3);
    v20 = [(ICAttachmentPreviewImage *)self fileQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__ICAttachmentPreviewImage_setScaledImageFromImageSrc_typeUTI___block_invoke;
    block[3] = &unk_278199F20;
    v21 = v15;
    v29 = v21;
    v30 = self;
    v37 = v16;
    v34 = a4;
    v22 = v13;
    v35 = a3;
    v36 = v18;
    v31 = v22;
    v33 = &v38;
    v23 = v14;
    v32 = v23;
    dispatch_sync(v20, block);

    if (*(v39 + 24) == 1)
    {
      v24 = [(ICAttachmentPreviewImage *)self generationManager];
      v25 = [v24 commitGeneration];
      *(v39 + 24) = v25;
    }

    else
    {
      v24 = [(ICAttachmentPreviewImage *)self generationManager];
      [v24 rollbackGeneration];
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

- (BOOL)makeSurePreviewImageDirectoryExists:(id *)a3
{
  v4 = [(ICAttachmentPreviewImage *)self containerAccount];
  v5 = [v4 previewImageDirectoryURL];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277D36230] defaultPreviewImageDirectoryURL];
  }

  v8 = v7;

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:a3];

  return v10;
}

- (id)containerAccount
{
  v3 = [(ICAttachmentPreviewImage *)self attachment];
  v4 = [v3 note];
  v5 = [v4 account];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(ICAttachmentPreviewImage *)self attachment];
    v9 = [v8 note];
    v10 = [v9 folder];
    v7 = [v10 account];
  }

  if (!v7)
  {
    v7 = [(ICAttachmentPreviewImage *)self placeholderAccount];
    if (!v7)
    {
      v11 = [(ICAttachmentPreviewImage *)self managedObjectContext];
      v7 = [ICAccount defaultAccountInContext:v11];

      v12 = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(ICAttachmentPreviewImage *)self containerAccount];
      }
    }
  }

  [(ICAttachmentPreviewImage *)self setPlaceholderAccount:v7];

  return v7;
}

- (id)previewImagePathExtension
{
  v2 = [(ICAttachmentPreviewImage *)self attachment];
  v3 = [v2 attachmentModel];
  v4 = [v3 previewImageTypeUTI];
  v5 = *MEMORY[0x277CE1DC0];
  v6 = [*MEMORY[0x277CE1DC0] identifier];
  if ([v4 isEqualToString:v6])
  {
    v7 = v5;
  }

  else
  {
    v7 = *MEMORY[0x277CE1E10];
  }

  v8 = [v7 preferredFilenameExtension];

  return v8;
}

- (id)previewImageDirectoryURL
{
  v2 = [(ICAttachmentPreviewImage *)self containerAccount];
  v3 = [v2 previewImageDirectoryURL];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D36230] defaultPreviewImageDirectoryURL];
  }

  v6 = v5;

  return v6;
}

- (id)containerDirectoryURL
{
  v3 = [(ICAttachmentPreviewImage *)self identifier];

  if (v3)
  {
    v4 = [(ICAttachmentPreviewImage *)self previewImageDirectoryURL];
    v5 = [(ICAttachmentPreviewImage *)self identifier];
    v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)previewImageFallbackURL
{
  v3 = [(ICAttachmentPreviewImage *)self identifier];

  if (v3)
  {
    v4 = [(ICAttachmentPreviewImage *)self previewImageDirectoryURL];
    v5 = [(ICAttachmentPreviewImage *)self identifier];
    v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:0];

    v7 = [(ICAttachmentPreviewImage *)self previewImagePathExtension];
    v8 = [v6 URLByAppendingPathExtension:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)previewImageURL
{
  v3 = [(ICAttachmentPreviewImage *)self previewImageFallbackURL];
  v4 = [(ICAttachmentPreviewImage *)self encryptedPreviewImageFallbackURL];
  v5 = [(ICAttachmentPreviewImage *)self generationManager];
  v6 = [v5 generationURL];

  if (!v6)
  {
    v16 = v3;
    v14 = 0;
    goto LABEL_18;
  }

  if (v3)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = 0;
    v8 = [v7 removeItemAtURL:v3 error:&v23];
    v9 = v23;
    v10 = v9;
    if ((v8 & 1) == 0)
    {
      v11 = [v9 code];

      if (v11 == 4)
      {
        goto LABEL_8;
      }

      v7 = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ICAttachmentPreviewImage previewImageURL];
      }
    }

LABEL_8:
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_16:
    v14 = v10;
    goto LABEL_17;
  }

  v10 = 0;
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_9:
  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = v10;
  v13 = [v12 removeItemAtURL:v4 error:&v22];
  v14 = v22;

  if (v13)
  {
LABEL_13:

    goto LABEL_17;
  }

  v15 = [v14 code];

  if (v15 != 4)
  {
    v12 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICAttachmentPreviewImage previewImageURL];
    }

    goto LABEL_13;
  }

LABEL_17:
  v17 = [(ICAttachmentPreviewImage *)self generationManager];
  v18 = [v17 generationURL];
  v19 = [v18 URLByAppendingPathComponent:@"Preview" isDirectory:0];

  v20 = [(ICAttachmentPreviewImage *)self previewImagePathExtension];
  v16 = [v19 URLByAppendingPathExtension:v20];

LABEL_18:

  return v16;
}

- (id)encryptedPreviewImageFallbackURL
{
  v2 = [(ICAttachmentPreviewImage *)self previewImageFallbackURL];
  v3 = [v2 URLByAppendingPathExtension:@"encrypted"];

  return v3;
}

- (id)encryptedPreviewImageURL
{
  v3 = [(ICAttachmentPreviewImage *)self generationManager];
  v4 = [v3 generationURL];

  if (v4)
  {
    v5 = [(ICAttachmentPreviewImage *)self previewImageURL];
    v6 = [v5 URLByAppendingPathExtension:@"encrypted"];
  }

  else
  {
    v6 = [(ICAttachmentPreviewImage *)self encryptedPreviewImageFallbackURL];
  }

  return v6;
}

- (id)orientedPreviewImageFallbackURLWithoutCreating
{
  v3 = [(ICAttachmentPreviewImage *)self identifier];
  v4 = [v3 stringByAppendingString:@"-oriented"];

  v5 = [(ICAttachmentPreviewImage *)self previewImagePathExtension];
  v6 = [v4 stringByAppendingPathExtension:v5];

  v7 = [(ICAttachmentPreviewImage *)self containerAccount];
  v8 = [v7 previewImageDirectoryURL];
  v9 = [v8 URLByAppendingPathComponent:v6 isDirectory:0];

  return v9;
}

- (id)orientedPreviewImageURLWithoutCreating
{
  v3 = [(ICAttachmentPreviewImage *)self identifier];

  if (v3)
  {
    v4 = [(ICAttachmentPreviewImage *)self generationManager];
    v5 = [v4 generationURL];

    if (v5)
    {
      v6 = [(ICAttachmentPreviewImage *)self generationManager];
      v7 = [v6 generationURL];
      v8 = [v7 URLByAppendingPathComponent:@"OrientedPreview" isDirectory:0];

      v9 = [(ICAttachmentPreviewImage *)self previewImagePathExtension];
      v10 = [v8 URLByAppendingPathExtension:v9];
    }

    else
    {
      v10 = [(ICAttachmentPreviewImage *)self orientedPreviewImageFallbackURLWithoutCreating];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)orientedPreviewImageURL
{
  [(ICAttachmentPreviewImage *)self createOrientedPreviewIfNeeded];

  return [(ICAttachmentPreviewImage *)self orientedPreviewImageURLWithoutCreating];
}

- (id)urls
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(ICAttachmentPreviewImage *)self previewImageURL];
  [v3 ic_addNonNilObject:v4];

  v5 = [(ICAttachmentPreviewImage *)self encryptedPreviewImageURL];
  [v3 ic_addNonNilObject:v5];

  v6 = [(ICAttachmentPreviewImage *)self orientedPreviewImageURLWithoutCreating];
  [v3 ic_addNonNilObject:v6];

  v7 = [v3 copy];

  return v7;
}

- (ICAssetGenerationManager)generationManager
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = [(ICAttachmentPreviewImage *)self containerDirectoryURL];
  if (v3)
  {
    v4 = v3;
    v5 = [(ICAttachmentPreviewImage *)self containerAccount];

    if (v5)
    {
      generationManager = self->_generationManager;
      if (!generationManager)
      {
        v7 = NSStringFromSelector(sel_generation);
        v8 = [ICAssetGenerationManager alloc];
        v9 = [(ICAttachmentPreviewImage *)self containerDirectoryURL];
        v10 = [(ICAssetGenerationManager *)v8 initWithObject:self generationKeyPath:v7 containerURL:v9];
        v11 = self->_generationManager;
        self->_generationManager = v10;

        v12 = [(ICAttachmentPreviewImage *)self previewImageFallbackURL];
        v13 = [(ICAttachmentPreviewImage *)self encryptedPreviewImageFallbackURL];
        v17[1] = v13;
        v14 = [(ICAttachmentPreviewImage *)self orientedPreviewImageFallbackURLWithoutCreating];
        v17[2] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
        [(ICAssetGenerationManager *)self->_generationManager setFallbackURLs:v15];

        generationManager = self->_generationManager;
      }

      v3 = generationManager;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)hasAnyPNGPreviewImageFiles
{
  v3 = [(ICAttachmentPreviewImage *)self orientedPreviewImageURLWithoutCreating];
  v4 = [v3 URLByDeletingPathExtension];
  v5 = *MEMORY[0x277CE1E10];
  v6 = [*MEMORY[0x277CE1E10] preferredFilenameExtension];
  v7 = [v4 URLByAppendingPathExtension:v6];

  if ([v7 checkResourceIsReachableAndReturnError:0])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(ICAttachmentPreviewImage *)self previewImageURL];
    v10 = [v9 URLByDeletingPathExtension];
    v11 = [v5 preferredFilenameExtension];
    v12 = [v10 URLByAppendingPathExtension:v11];

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
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setMetadata:(id)a3
{
  v4 = a3;
  if ([(ICAttachmentPreviewImage *)self isPasswordProtected])
  {
    v5 = [(ICCloudSyncingObject *)self cryptoStrategy];
    [v5 writeEncryptedMetadata:v4];
  }

  else
  {
    [(ICAttachmentPreviewImage *)self willChangeValueForKey:@"metadata"];
    [(ICAttachmentPreviewImage *)self setPrimitiveValue:v4 forKey:@"metadata"];

    [(ICAttachmentPreviewImage *)self didChangeValueForKey:@"metadata"];
  }
}

- (NSData)metadata
{
  [(ICAttachmentPreviewImage *)self willAccessValueForKey:@"metadata"];
  if ([(ICAttachmentPreviewImage *)self isPasswordProtected])
  {
    v3 = [(ICCloudSyncingObject *)self cryptoStrategy];
    v4 = [v3 decryptedMetadata];
  }

  else
  {
    v4 = [(ICAttachmentPreviewImage *)self primitiveValueForKey:@"metadata"];
  }

  [(ICAttachmentPreviewImage *)self didAccessValueForKey:@"metadata"];

  return v4;
}

+ (id)previewImageURLsForIdentifier:(id)a3 account:(id)a4
{
  v38[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    context = objc_autoreleasePoolPush();
    v8 = [v6 previewImageDirectoryURL];
    v9 = v8;
    v30 = v6;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [MEMORY[0x277D36230] defaultPreviewImageDirectoryURL];
    }

    v12 = v10;

    v13 = [v12 URLByAppendingPathComponent:v5 isDirectory:0];
    [v7 addObject:v13];
    v14 = [*MEMORY[0x277CE1E10] preferredFilenameExtension];
    v38[0] = v14;
    v15 = [*MEMORY[0x277CE1DC0] preferredFilenameExtension];
    v38[1] = v15;
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
          v21 = [v5 stringByAppendingPathExtension:v20];
          v22 = [v12 URLByAppendingPathComponent:v21 isDirectory:0];

          [v7 addObject:v22];
          v23 = [v12 URLByAppendingPathComponent:v21 isDirectory:0];
          v24 = [v23 URLByAppendingPathExtension:@"encrypted"];

          [v7 addObject:v24];
          v25 = [v5 stringByAppendingString:@"-oriented"];
          v26 = [v25 stringByAppendingPathExtension:v20];

          v27 = [v12 URLByAppendingPathComponent:v26 isDirectory:0];

          [v7 addObject:v27];
          v13 = [v12 URLByAppendingPathComponent:v5 isDirectory:1];

          [v7 addObject:v13];
        }

        v18 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    objc_autoreleasePoolPop(context);
    v6 = v30;
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ICAttachmentPreviewImage previewImageURLsForIdentifier:v11 account:?];
    }

    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (BOOL)shouldSyncToCloud
{
  v2 = self;
  v3 = [(ICAttachmentPreviewImage *)self attachment];
  v4 = [v3 attachmentModel];
  LOBYTE(v2) = [v4 shouldSyncPreviewImageToCloud:v2];

  return v2;
}

- (id)ic_loggingValues
{
  v12.receiver = self;
  v12.super_class = ICAttachmentPreviewImage;
  v3 = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [v3 mutableCopy];

  v5 = [(ICAttachmentPreviewImage *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__ICAttachmentPreviewImage_ic_loggingValues__block_invoke;
  v9[3] = &unk_278194AD8;
  v6 = v4;
  v10 = v6;
  v11 = self;
  [v5 performBlockAndWait:v9];

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
  v2 = [(ICAttachmentPreviewImage *)self urls];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) ic_updateFlagToExcludeFromBackup:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)deleteFromLocalDatabase
{
  v3 = [(ICAttachmentPreviewImage *)self managedObjectContext];
  [v3 deleteObject:self];
}

- (id)cloudAccount
{
  v2 = [(ICAttachmentPreviewImage *)self attachment];
  v3 = [v2 cloudAccount];

  return v3;
}

- (id)decryptedImageData
{
  v2 = [(ICCloudSyncingObject *)self cryptoStrategy];
  v3 = [v2 decryptedImageData];

  return v3;
}

- (id)primaryEncryptedData
{
  v2 = MEMORY[0x277CBEA90];
  v3 = [(ICAttachmentPreviewImage *)self encryptedPreviewImageURL];
  v4 = [v2 dataWithContentsOfURL:v3];

  return v4;
}

- (void)setPrimaryEncryptedData:(id)a3
{
  v10 = a3;
  v4 = [(ICAttachmentPreviewImage *)self generationManager];
  v5 = [v4 beginGeneration];

  if (v5)
  {
    v6 = [(ICAttachmentPreviewImage *)self encryptedPreviewImageURL];
    v7 = [v10 writeToURL:v6 atomically:1];

    v8 = [(ICAttachmentPreviewImage *)self generationManager];
    v9 = v8;
    if (v7)
    {
      [v8 commitGeneration];
    }

    else
    {
      [v8 rollbackGeneration];
    }
  }
}

- (id)primaryEncryptedDataFromRecord:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"PreviewImages"];

  v5 = ICDynamicCast();

  v6 = [v5 firstObject];
  v7 = [v6 fileURL];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)clearDecryptedData
{
  v3 = [(ICAttachmentPreviewImage *)self orientedPreviewImageURLWithoutCreating];
  if (v3)
  {
    [(ICAttachmentPreviewImage *)self removeItemAtURL:v3];
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

+ (id)newAttachmentPreviewImageWithIdentifier:(id)a3 attachment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 managedObjectContext];
  v9 = [a1 newObjectWithIdentifier:v7 context:v8];

  [v9 setAttachment:v6];
  v10 = [v6 note];

  v11 = [v10 account];
  v12 = [v11 persistentStore];
  [v9 assignToPersistentStore:v12];

  return v9;
}

+ (void)purgeAllAttachmentPreviewImagesInContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 allAttachmentPreviewImagesInContext:{v4, 0}];
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
        v11 = [v10 attachment];
        [v11 removePreviewImagesObject:v10];

        v12 = [v10 attachment];
        [v12 setPreviewUpdateDate:0];

        [v4 deleteObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [ICAttachment enumerateAttachmentsInContext:v4 batchSize:5 visibleOnly:0 saveAfterBatch:1 usingBlock:&__block_literal_global_347];
}

void __81__ICAttachmentPreviewImage_Management__purgeAllAttachmentPreviewImagesInContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPreviewUpdateDate:0];
  [v2 ic_postNotificationOnMainThreadWithName:@"ICAttachmentPreviewImagesDidUpdateNotification"];
}

+ (id)attachmentPreviewImageWithIdentifier:(id)a3 inContext:(id)a4
{
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"%K == %@", @"identifier", a3];
  v9 = [a1 attachmentPreviewImagesMatchingPredicate:v8 inContext:v7];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)attachmentPreviewImageIdentifiersForAccount:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 set];
  v6 = [v4 managedObjectContext];
  v7 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"ICAttachmentPreviewImage"];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"attachment.note.account == %@", v4];

  [v7 setPredicate:v8];
  [v7 setResultType:2];
  [v7 setPropertiesToFetch:&unk_282748108];
  v14 = 0;
  v9 = [v6 executeFetchRequest:v7 error:&v14];
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

+ (void)deleteStrandedAttachmentPreviewImagesInContext:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCA920];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"attachment == nil"];
  v20[0] = v6;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == NO", @"markedForDeletion"];
  v20[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v9 = [v5 andPredicateWithSubpredicates:v8];

  v10 = [a1 attachmentPreviewImagesMatchingPredicate:v9 inContext:v4];
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
  v3 = [a1 identifier];
  v4 = [a2 identifier];
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