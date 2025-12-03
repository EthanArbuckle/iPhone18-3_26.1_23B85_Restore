@interface ICMarkupUtilities
+ (BOOL)hasPrivateImageMetadata:(id)metadata;
+ (id)cleanImageMetadataFromData:(id)data;
+ (id)createMarkupViewController;
+ (id)createProcessingMarkupViewControllerOutWindow:(id *)window;
+ (id)imageDataWithMarkupModelData:(id)data sourceImageData:(id)imageData embedData:(BOOL)embedData;
+ (id)imageDataWithMarkupModelData:(id)data sourceImageURL:(id)l;
+ (id)markupModelDataFromData:(id)data;
+ (id)markupModelDataFromDataAtURL:(id)l;
+ (void)applyMarkupModelData:(id)data attachment:(id)attachment completionBlock:(id)block;
+ (void)applyReturnedMarkupURL:(id)l attachment:(id)attachment completionBlock:(id)block;
+ (void)embedReturnedMarkupURL:(id)l attachment:(id)attachment completionBlock:(id)block;
+ (void)extractReturnedMarkupURL:(id)l attachment:(id)attachment completionBlock:(id)block;
@end

@implementation ICMarkupUtilities

+ (BOOL)hasPrivateImageMetadata:(id)metadata
{
  metadataCopy = metadata;
  Helper_x8__OBJC_CLASS___MarkupViewController = gotLoadHelper_x8__OBJC_CLASS___MarkupViewController(v3);
  v6 = [*(v5 + 1776) hasPrivateImageMetadata:{metadataCopy, Helper_x8__OBJC_CLASS___MarkupViewController}];

  return v6 & 1;
}

+ (id)cleanImageMetadataFromData:(id)data
{
  dataCopy = data;
  Helper_x8__OBJC_CLASS___MarkupViewController = gotLoadHelper_x8__OBJC_CLASS___MarkupViewController(v3);
  v6 = [*(v5 + 1776) cleanImageMetadataFromData:{dataCopy, Helper_x8__OBJC_CLASS___MarkupViewController}];

  return v6;
}

+ (id)createMarkupViewController
{
  gotLoadHelper_x8__OBJC_CLASS___MarkupViewController(v2);
  v4 = objc_alloc_init(*(v3 + 1776));

  return v4;
}

+ (id)createProcessingMarkupViewControllerOutWindow:(id *)window
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v5 = MEMORY[0x277D85DD0];
  performBlockOnMainThreadAndWait();
  [v8[5] setEncryptPrivateMetadata:{0, v5, 3221225472, __67__ICMarkupUtilities_createProcessingMarkupViewControllerOutWindow___block_invoke, &unk_278194D98, &v7, self}];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __67__ICMarkupUtilities_createProcessingMarkupViewControllerOutWindow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) createMarkupViewController];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)imageDataWithMarkupModelData:(id)data sourceImageData:(id)imageData embedData:(BOOL)embedData
{
  embedDataCopy = embedData;
  dataCopy = data;
  imageDataCopy = imageData;
  v10 = objc_autoreleasePoolPush();
  v24 = 0;
  v11 = [self createProcessingMarkupViewControllerOutWindow:&v24];
  v12 = v24;
  v20[1] = MEMORY[0x277D85DD0];
  v20[2] = 3221225472;
  v20[3] = __76__ICMarkupUtilities_imageDataWithMarkupModelData_sourceImageData_embedData___block_invoke;
  v20[4] = &unk_278194DC0;
  v13 = v11;
  v21 = v13;
  v14 = imageDataCopy;
  v22 = v14;
  v15 = dataCopy;
  v23 = v15;
  performBlockOnMainThreadAndWait();
  v20[0] = 0;
  v16 = [v13 dataRepresentationEmbeddingSourceImageAndEditModel:embedDataCopy error:v20];
  v17 = v20[0];
  if (v17)
  {
    v18 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[ICMarkupUtilities imageDataWithMarkupModelData:sourceImageData:embedData:];
    }
  }

  objc_autoreleasePoolPop(v10);

  return v16;
}

+ (id)imageDataWithMarkupModelData:(id)data sourceImageURL:(id)l
{
  dataCopy = data;
  lCopy = l;
  v8 = objc_autoreleasePoolPush();
  v22 = 0;
  v9 = [self createProcessingMarkupViewControllerOutWindow:&v22];
  v10 = v22;
  v18[1] = MEMORY[0x277D85DD0];
  v18[2] = 3221225472;
  v18[3] = __65__ICMarkupUtilities_imageDataWithMarkupModelData_sourceImageURL___block_invoke;
  v18[4] = &unk_278194DC0;
  v11 = v9;
  v19 = v11;
  v12 = lCopy;
  v20 = v12;
  v13 = dataCopy;
  v21 = v13;
  performBlockOnMainThreadAndWait();
  v18[0] = 0;
  v14 = [v11 dataRepresentationEmbeddingSourceImageAndEditModel:0 error:v18];
  v15 = v18[0];
  if (v15)
  {
    v16 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[ICMarkupUtilities imageDataWithMarkupModelData:sourceImageData:embedData:];
    }
  }

  objc_autoreleasePoolPop(v8);

  return v14;
}

+ (void)applyReturnedMarkupURL:(id)l attachment:(id)attachment completionBlock:(id)block
{
  lCopy = l;
  attachmentCopy = attachment;
  blockCopy = block;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  managedObjectContext = [attachmentCopy managedObjectContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __71__ICMarkupUtilities_applyReturnedMarkupURL_attachment_completionBlock___block_invoke;
  v16 = &unk_278194DE8;
  v18 = &v19;
  v12 = attachmentCopy;
  v17 = v12;
  [managedObjectContext performBlockAndWait:&v13];

  if (*(v20 + 24) == 1)
  {
    [self embedReturnedMarkupURL:lCopy attachment:v12 completionBlock:{blockCopy, v13, v14, v15, v16}];
  }

  else
  {
    [self extractReturnedMarkupURL:lCopy attachment:v12 completionBlock:{blockCopy, v13, v14, v15, v16}];
  }

  _Block_object_dispose(&v19, 8);
}

uint64_t __71__ICMarkupUtilities_applyReturnedMarkupURL_attachment_completionBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldEmbedMarkupDataInMedia];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (void)embedReturnedMarkupURL:(id)l attachment:(id)attachment completionBlock:(id)block
{
  lCopy = l;
  attachmentCopy = attachment;
  blockCopy = block;
  [lCopy startAccessingSecurityScopedResource];
  managedObjectContext = [attachmentCopy managedObjectContext];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__ICMarkupUtilities_embedReturnedMarkupURL_attachment_completionBlock___block_invoke;
  v16[3] = &unk_278194E10;
  v17 = attachmentCopy;
  v18 = lCopy;
  selfCopy = self;
  v21 = a2;
  v19 = blockCopy;
  v13 = blockCopy;
  v14 = lCopy;
  v15 = attachmentCopy;
  [managedObjectContext performBlockAndWait:v16];
}

void __71__ICMarkupUtilities_embedReturnedMarkupURL_attachment_completionBlock___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) media];
  v3 = *(a1 + 40);
  v19 = 0;
  v4 = [v2 writeDataFromFileURL:v3 error:&v19];
  v5 = v19;

  [*(a1 + 40) stopAccessingSecurityScopedResource];
  v6 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(*(a1 + 64));
    *buf = 138412546;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ B", buf, 0x16u);
  }

  if (v4)
  {
    v10 = [*(a1 + 32) media];
    v11 = [v10 data];

    [*(a1 + 32) setHasMarkupData:{objc_msgSend(*(a1 + 56), "hasPrivateImageMetadata:", v11)}];
    [*(a1 + 32) setPreviewUpdateDate:0];
    [*(a1 + 32) attachmentDidChange];
    v12 = [*(a1 + 32) managedObjectContext];
    v18 = v5;
    [v12 save:&v18];
    v13 = v18;

    if (v13)
    {
      v14 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __71__ICMarkupUtilities_embedReturnedMarkupURL_attachment_completionBlock___block_invoke_cold_1();
      }
    }

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = [*(a1 + 32) objectID];
    [v15 postNotificationName:@"ICAttachmentNeedsPreviewGenerationNotification" object:v16];
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __71__ICMarkupUtilities_embedReturnedMarkupURL_attachment_completionBlock___block_invoke_cold_1();
    }

    v13 = v5;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))();
  }
}

+ (void)extractReturnedMarkupURL:(id)l attachment:(id)attachment completionBlock:(id)block
{
  blockCopy = block;
  attachmentCopy = attachment;
  lCopy = l;
  [lCopy startAccessingSecurityScopedResource];
  v11 = [self markupModelDataFromDataAtURL:lCopy];
  [lCopy stopAccessingSecurityScopedResource];

  [self applyMarkupModelData:v11 attachment:attachmentCopy completionBlock:blockCopy];
}

+ (void)applyMarkupModelData:(id)data attachment:(id)attachment completionBlock:(id)block
{
  dataCopy = data;
  attachmentCopy = attachment;
  blockCopy = block;
  managedObjectContext = [attachmentCopy managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__ICMarkupUtilities_applyMarkupModelData_attachment_completionBlock___block_invoke;
  v14[3] = &unk_278194E38;
  v15 = dataCopy;
  v16 = attachmentCopy;
  v17 = blockCopy;
  v11 = blockCopy;
  v12 = attachmentCopy;
  v13 = dataCopy;
  [managedObjectContext performBlockAndWait:v14];
}

uint64_t __69__ICMarkupUtilities_applyMarkupModelData_attachment_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) markupModelData];
  if (v2 | v3)
  {
    v4 = v3;
    v5 = [v2 isEqual:v3];

    if ((v5 & 1) == 0)
    {
      [*(a1 + 40) setMarkupModelData:*(a1 + 32)];
      [*(a1 + 40) attachmentDidChange];
      [*(a1 + 40) setPreviewUpdateDate:0];
      v6 = [*(a1 + 40) parentAttachment];
      [v6 attachmentDidChange];

      v7 = [*(a1 + 40) parentAttachment];
      [v7 setPreviewUpdateDate:0];

      v8 = [*(a1 + 40) managedObjectContext];
      [v8 ic_save];

      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = [*(a1 + 40) objectID];
      [v9 postNotificationName:@"ICAttachmentDidUpdateMarkupDataNotification" object:v10];

      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      v12 = [*(a1 + 40) objectID];
      [v11 postNotificationName:@"ICAttachmentNeedsPreviewGenerationNotification" object:v12];
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    v14 = *(result + 16);

    return v14();
  }

  return result;
}

+ (id)markupModelDataFromDataAtURL:(id)l
{
  lCopy = l;
  v5 = objc_autoreleasePoolPush();
  v13 = 0;
  v6 = [self createProcessingMarkupViewControllerOutWindow:&v13];
  v7 = v13;
  v11 = v6;
  v12 = lCopy;
  v8 = v6;
  performBlockOnMainThreadAndWait();
  createArchivedModelData = [v8 createArchivedModelData];

  objc_autoreleasePoolPop(v5);

  return createArchivedModelData;
}

+ (id)markupModelDataFromData:(id)data
{
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  v13 = 0;
  v6 = [self createProcessingMarkupViewControllerOutWindow:&v13];
  v7 = v13;
  v11 = v6;
  v12 = dataCopy;
  v8 = v6;
  performBlockOnMainThreadAndWait();
  createArchivedModelData = [v8 createArchivedModelData];

  objc_autoreleasePoolPop(v5);

  return createArchivedModelData;
}

@end