@interface ICAttachmentModel
@end

@implementation ICAttachmentModel

uint64_t __81__ICAttachmentModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D35F30] sharedContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__ICAttachmentModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke_2;
  v7[3] = &unk_2781ABD48;
  v8 = *(a1 + 32);
  v9 = v3;
  v5 = v3;
  [v4 performSnapshotBackgroundTask:v7];

  return 0;
}

void __81__ICAttachmentModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D35E00] ic_existingObjectWithID:*(a1 + 32) context:a2];
  v4 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __81__ICAttachmentModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke_2_cold_1(v3);
  }

  v5 = *(a1 + 40);
  v6 = [v3 attachmentModel];
  v7 = [v6 itemProviderWritingURL];
  (*(v5 + 16))(v5, v7, 1, 0);
}

void __102__ICAttachmentModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D35E00] ic_existingObjectWithID:*(a1 + 32) context:a2];
  if (v3 && [*(a1 + 40) isEqualToString:*MEMORY[0x277D35D08]])
  {
    v4 = [v3 pasteboardData];
    v5 = [v4 persistenceData];

    v6 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __102__ICAttachmentModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(v3);
    }
  }

  else
  {
    v7 = [v3 attachmentModel];
    v5 = [v7 itemProviderWritingData];

    v6 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __102__ICAttachmentModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_2(v3);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __81__ICAttachmentModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke_2_cold_1(void *a1)
{
  [a1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() attachmentModel];
  v3 = [v2 itemProviderWritingURL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __102__ICAttachmentModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(void *a1)
{
  [a1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() length];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __102__ICAttachmentModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_2(void *a1)
{
  [a1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() length];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end