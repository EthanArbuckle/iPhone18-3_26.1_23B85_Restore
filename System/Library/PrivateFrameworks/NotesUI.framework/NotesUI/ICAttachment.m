@interface ICAttachment
@end

@implementation ICAttachment

uint64_t __30__ICAttachment_UI__imageCache__block_invoke()
{
  imageCache_imageCache_2 = objc_alloc_init(MEMORY[0x1E69B7A48]);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __46__ICAttachment_UI__imageLoadingOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = imageLoadingOperationQueue_imageLoadingOperationQueue;
  imageLoadingOperationQueue_imageLoadingOperationQueue = v0;

  [imageLoadingOperationQueue_imageLoadingOperationQueue setName:@"com.apple.notes.attachment-image-loading-queue"];
  v2 = imageLoadingOperationQueue_imageLoadingOperationQueue;

  return [v2 setMaxConcurrentOperationCount:2];
}

void __51__ICAttachment_PDFGalleryVersion__docCamPDFVersion__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) modificationDate];
  [v3 timeIntervalSince1970];
  *(*(*(a1 + 40) + 8) + 24) = v2;
}

void __61__ICAttachment_SearchIndexable_UI__fileURLForTypeIdentifier___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__ICAttachment_SearchIndexable_UI__fileURLForTypeIdentifier___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) attachmentModel];
  v4 = [v3 fileURLForTypeIdentifier:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) shortLoggingDescription];
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_debug_impl(&dword_1D4171000, v7, OS_LOG_TYPE_DEBUG, "Got file URL (%@) for %@ %@", &v11, 0x20u);
  }
}

void __58__ICAttachment_SearchIndexable_UI__dataForTypeIdentifier___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__ICAttachment_SearchIndexable_UI__dataForTypeIdentifier___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) attachmentModel];
  v4 = [v3 dataForTypeIdentifier:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [*(*(*(a1 + 48) + 8) + 40) length];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) shortLoggingDescription];
    v11 = 134218498;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_debug_impl(&dword_1D4171000, v7, OS_LOG_TYPE_DEBUG, "Got %ld bytes for %@ %@", &v11, 0x20u);
  }
}

void __54__ICAttachment_LinkPresentation__retrieveLinkMetadata__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained linkPresentationArchivedMetadata];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if ([*(a1 + 32) attachmentType] == 2)
  {
    v5 = [WeakRetained title];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __54__ICAttachment_LinkPresentation__persistLinkMetadata___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setLinkPresentationArchivedMetadata:*(a1 + 40)];
  v2 = [*(a1 + 32) managedObjectContext];
  [v2 ic_save];
}

void __48__ICAttachment_LinkPresentation__metadataExists__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained linkPresentationArchivedMetadata];
  *(*(*(a1 + 32) + 8) + 24) = v2 != 0;
}

void __55__ICAttachment_LinkPresentation__requestRemoteMetadata__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained attachmentModel];
  [v1 generatePreviewsInOperation:0];
}

uint64_t __60__ICAttachment_LinkPresentation__filePreviewGenerationQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.mobilenotes.filePreviewGenerationQueue", 0);
  filePreviewGenerationQueue_queue = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t __59__ICAttachment_LinkPresentation__webPreviewGenerationQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.mobilenotes.webPreviewGenerationQueue", 0);
  webPreviewGenerationQueue_queue = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t __59__ICAttachment_LinkPresentation__mapPreviewGenerationQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.mobilenotes.mapPreviewGenerationQueue", 0);
  mapPreviewGenerationQueue_queue = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t __43__ICAttachment_UI__thumbnailOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(ICAttachmentThumbnailOperationQueue);
  v1 = thumbnailOperationQueue_thumbnailOperationQueue;
  thumbnailOperationQueue_thumbnailOperationQueue = v0;

  [thumbnailOperationQueue_thumbnailOperationQueue setName:@"com.apple.notes.attachment-thumbnail-queue"];
  v2 = thumbnailOperationQueue_thumbnailOperationQueue;

  return [v2 setMaxConcurrentOperationCount:2];
}

void __25__ICAttachment_UI__image__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __68__ICAttachment_UI__loadImage_aboutToLoadHandler_forceFullSizeImage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) media];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) imageCacheKey];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) attachmentType];
  result = [*(a1 + 32) isUnsupportedOnCurrentPlatform];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

void __68__ICAttachment_UI__loadImage_aboutToLoadHandler_forceFullSizeImage___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = WeakRetained;
      [WeakRetained removeCompletionHandler:v3 cancelIfNoneLeft:1];
      WeakRetained = v4;
    }
  }
}

void __36__ICAttachment_UI__attributedString__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v12 attachment];
    v10 = *(a1 + 32);

    if (v9 == v10)
    {
      v11 = *(*(a1 + 40) + 8);
      *(v11 + 32) = a3;
      *(v11 + 40) = a4;
      *a5 = 1;
    }
  }
}

void __67__ICAttachment_UI__deviceInfosWithoutPreviewImagesFromDeviceInfos___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E69B7858] previewDeviceInfoForPreviewImage:a2];
  [v2 ic_removeNonNilObject:v3];
}

void __152__ICAttachment_UI__fetchThumbnailImageWithMinSize_scale_appearanceInfo_cache_cacheKey_processingBlock_completionBlock_fallbackBlock_aboutToLoadHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(*(a1 + 40) + 8) + 40) image];
  (*(v2 + 16))(v2, v3, [*(*(*(a1 + 40) + 8) + 40) imageScaling], objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "showAsFileIcon"), objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "isMovie"));
}

void __101__ICAttachment_InlineAttachmentManagement_UI__filterInlineAttachmentsInTableColumnTextStorage_range___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = a2;
  if (v7)
  {
    v8 = [*(a1 + 32) inlineAttachmentFromObject:v7 createIfNecessary:0];
    if (v8)
    {
      v9 = v8;
      objc_opt_class();
      v10 = ICDynamicCast();
      if (!v10 && [ICTextAttachment textAttachmentIsContent:v7])
      {
        v11 = [ICInlineTextAttachment textAttachmentWithAttachment:v9];
        if (v11)
        {
          [*(a1 + 40) addAttribute:*MEMORY[0x1E69DB5F8] value:v11 range:{a3, a4}];
        }

        else
        {
          v12 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            __101__ICAttachment_InlineAttachmentManagement_UI__filterInlineAttachmentsInTableColumnTextStorage_range___block_invoke_cold_1(v9, a3, a4);
          }

          [*(a1 + 40) removeAttribute:*MEMORY[0x1E69DB5F8] range:{a3, a4}];
        }
      }

      goto LABEL_14;
    }

    if ([objc_opt_class() isInlineAttachment:v7])
    {
      v9 = [*(a1 + 32) inlineAttachmentFromObject:v7 createIfNecessary:1];
      [v9 setNeedsInitialFetchFromCloud:1];
LABEL_14:
    }
  }
}

void __61__ICAttachment_SearchIndexable_UI__fileURLForTypeIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2(&dword_1D4171000, v2, v3, "Getting %@ file URL for %@", v4, v5, v6, v7, v8);
}

void __58__ICAttachment_SearchIndexable_UI__dataForTypeIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2(&dword_1D4171000, v2, v3, "Getting %@ data for %@", v4, v5, v6, v7, v8);
}

void __101__ICAttachment_InlineAttachmentManagement_UI__filterInlineAttachmentsInTableColumnTextStorage_range___block_invoke_cold_1(void *a1, NSUInteger a2, NSUInteger a3)
{
  v5 = [a1 shortLoggingDescription];
  v13.location = a2;
  v13.length = a3;
  v12 = NSStringFromRange(v13);
  OUTLINED_FUNCTION_4(&dword_1D4171000, v6, v7, "Table: Found a token text attachment that we could not create a text attachment for: %@ at %@", v8, v9, v10, v11, 2u);
}

@end