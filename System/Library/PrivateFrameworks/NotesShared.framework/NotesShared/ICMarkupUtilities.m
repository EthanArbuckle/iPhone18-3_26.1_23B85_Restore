@interface ICMarkupUtilities
+ (BOOL)hasPrivateImageMetadata:(id)a3;
+ (id)cleanImageMetadataFromData:(id)a3;
+ (id)createMarkupViewController;
+ (id)createProcessingMarkupViewControllerOutWindow:(id *)a3;
+ (id)imageDataWithMarkupModelData:(id)a3 sourceImageData:(id)a4 embedData:(BOOL)a5;
+ (id)imageDataWithMarkupModelData:(id)a3 sourceImageURL:(id)a4;
+ (id)markupModelDataFromData:(id)a3;
+ (id)markupModelDataFromDataAtURL:(id)a3;
+ (void)applyMarkupModelData:(id)a3 attachment:(id)a4 completionBlock:(id)a5;
+ (void)applyReturnedMarkupURL:(id)a3 attachment:(id)a4 completionBlock:(id)a5;
+ (void)embedReturnedMarkupURL:(id)a3 attachment:(id)a4 completionBlock:(id)a5;
+ (void)extractReturnedMarkupURL:(id)a3 attachment:(id)a4 completionBlock:(id)a5;
@end

@implementation ICMarkupUtilities

+ (BOOL)hasPrivateImageMetadata:(id)a3
{
  v8 = a3;
  Helper_x8__OBJC_CLASS___MarkupViewController = gotLoadHelper_x8__OBJC_CLASS___MarkupViewController(v3);
  v6 = [*(v5 + 1776) hasPrivateImageMetadata:{v8, Helper_x8__OBJC_CLASS___MarkupViewController}];

  return v6 & 1;
}

+ (id)cleanImageMetadataFromData:(id)a3
{
  v8 = a3;
  Helper_x8__OBJC_CLASS___MarkupViewController = gotLoadHelper_x8__OBJC_CLASS___MarkupViewController(v3);
  v6 = [*(v5 + 1776) cleanImageMetadataFromData:{v8, Helper_x8__OBJC_CLASS___MarkupViewController}];

  return v6;
}

+ (id)createMarkupViewController
{
  gotLoadHelper_x8__OBJC_CLASS___MarkupViewController(v2);
  v4 = objc_alloc_init(*(v3 + 1776));

  return v4;
}

+ (id)createProcessingMarkupViewControllerOutWindow:(id *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v5 = MEMORY[0x277D85DD0];
  performBlockOnMainThreadAndWait();
  [v8[5] setEncryptPrivateMetadata:{0, v5, 3221225472, __67__ICMarkupUtilities_createProcessingMarkupViewControllerOutWindow___block_invoke, &unk_278194D98, &v7, a1}];
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

+ (id)imageDataWithMarkupModelData:(id)a3 sourceImageData:(id)a4 embedData:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v24 = 0;
  v11 = [a1 createProcessingMarkupViewControllerOutWindow:&v24];
  v12 = v24;
  v20[1] = MEMORY[0x277D85DD0];
  v20[2] = 3221225472;
  v20[3] = __76__ICMarkupUtilities_imageDataWithMarkupModelData_sourceImageData_embedData___block_invoke;
  v20[4] = &unk_278194DC0;
  v13 = v11;
  v21 = v13;
  v14 = v9;
  v22 = v14;
  v15 = v8;
  v23 = v15;
  performBlockOnMainThreadAndWait();
  v20[0] = 0;
  v16 = [v13 dataRepresentationEmbeddingSourceImageAndEditModel:v5 error:v20];
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

+ (id)imageDataWithMarkupModelData:(id)a3 sourceImageURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v22 = 0;
  v9 = [a1 createProcessingMarkupViewControllerOutWindow:&v22];
  v10 = v22;
  v18[1] = MEMORY[0x277D85DD0];
  v18[2] = 3221225472;
  v18[3] = __65__ICMarkupUtilities_imageDataWithMarkupModelData_sourceImageURL___block_invoke;
  v18[4] = &unk_278194DC0;
  v11 = v9;
  v19 = v11;
  v12 = v7;
  v20 = v12;
  v13 = v6;
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

+ (void)applyReturnedMarkupURL:(id)a3 attachment:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v11 = [v9 managedObjectContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __71__ICMarkupUtilities_applyReturnedMarkupURL_attachment_completionBlock___block_invoke;
  v16 = &unk_278194DE8;
  v18 = &v19;
  v12 = v9;
  v17 = v12;
  [v11 performBlockAndWait:&v13];

  if (*(v20 + 24) == 1)
  {
    [a1 embedReturnedMarkupURL:v8 attachment:v12 completionBlock:{v10, v13, v14, v15, v16}];
  }

  else
  {
    [a1 extractReturnedMarkupURL:v8 attachment:v12 completionBlock:{v10, v13, v14, v15, v16}];
  }

  _Block_object_dispose(&v19, 8);
}

uint64_t __71__ICMarkupUtilities_applyReturnedMarkupURL_attachment_completionBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldEmbedMarkupDataInMedia];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (void)embedReturnedMarkupURL:(id)a3 attachment:(id)a4 completionBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [v9 startAccessingSecurityScopedResource];
  v12 = [v10 managedObjectContext];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__ICMarkupUtilities_embedReturnedMarkupURL_attachment_completionBlock___block_invoke;
  v16[3] = &unk_278194E10;
  v17 = v10;
  v18 = v9;
  v20 = a1;
  v21 = a2;
  v19 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  [v12 performBlockAndWait:v16];
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

+ (void)extractReturnedMarkupURL:(id)a3 attachment:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v10 startAccessingSecurityScopedResource];
  v11 = [a1 markupModelDataFromDataAtURL:v10];
  [v10 stopAccessingSecurityScopedResource];

  [a1 applyMarkupModelData:v11 attachment:v9 completionBlock:v8];
}

+ (void)applyMarkupModelData:(id)a3 attachment:(id)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__ICMarkupUtilities_applyMarkupModelData_attachment_completionBlock___block_invoke;
  v14[3] = &unk_278194E38;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  [v10 performBlockAndWait:v14];
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

+ (id)markupModelDataFromDataAtURL:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v13 = 0;
  v6 = [a1 createProcessingMarkupViewControllerOutWindow:&v13];
  v7 = v13;
  v11 = v6;
  v12 = v4;
  v8 = v6;
  performBlockOnMainThreadAndWait();
  v9 = [v8 createArchivedModelData];

  objc_autoreleasePoolPop(v5);

  return v9;
}

+ (id)markupModelDataFromData:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v13 = 0;
  v6 = [a1 createProcessingMarkupViewControllerOutWindow:&v13];
  v7 = v13;
  v11 = v6;
  v12 = v4;
  v8 = v6;
  performBlockOnMainThreadAndWait();
  v9 = [v8 createArchivedModelData];

  objc_autoreleasePoolPop(v5);

  return v9;
}

@end