@interface ICAttachmentGalleryModel
@end

@implementation ICAttachmentGalleryModel

void __109__ICAttachmentGalleryModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D35E00] ic_existingObjectWithID:a1[4] context:a2];
  v4 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __109__ICAttachmentGalleryModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(v3);
  }

  v5 = a1[5];
  v14 = 0;
  v6 = [MEMORY[0x277D36788] blockingGeneratePDFURLForAttachment:v3 withProgress:v5 error:&v14];
  v7 = v14;
  if (v6)
  {
    v13 = v7;
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6 options:1 error:&v13];
    v9 = v13;

    (*(a1[6] + 16))();
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = 0;
    [v10 removeItemAtURL:v6 error:&v12];
    v7 = v12;

    if (v7)
    {
      v11 = os_log_create("com.apple.notes", "DragAndDrop");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&dword_2151A1000, v11, OS_LOG_TYPE_DEFAULT, "Failed to remove temporary file for attachment item provider: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

id __88__ICAttachmentGalleryModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CCAC48]);
  v5 = [MEMORY[0x277D35F30] sharedContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__ICAttachmentGalleryModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke_2;
  v11[3] = &unk_2781ABD98;
  v12 = *(a1 + 32);
  v6 = v4;
  v13 = v6;
  v14 = v3;
  v7 = v3;
  [v5 performBackgroundTask:v11];

  v8 = v14;
  v9 = v6;

  return v6;
}

void __88__ICAttachmentGalleryModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D35E00] ic_existingObjectWithID:a1[4] context:a2];
  v4 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __88__ICAttachmentGalleryModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke_2_cold_1(v3);
  }

  v5 = a1[5];
  v8 = 0;
  v6 = [MEMORY[0x277D36788] blockingGeneratePDFURLForAttachment:v3 withProgress:v5 error:&v8];
  v7 = v8;
  (*(a1[6] + 16))();
}

void __109__ICAttachmentGalleryModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __88__ICAttachmentGalleryModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke_2_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end