@interface ICAttachmentInlineDrawingModel
@end

@implementation ICAttachmentInlineDrawingModel

void __115__ICAttachmentInlineDrawingModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke(void *a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D35E00] ic_existingObjectWithID:a1[4] context:a2];
  if ([MEMORY[0x277D35E00] typeUTIIsInlineDrawing:a1[5]])
  {
    v31 = a1;
    v4 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __115__ICAttachmentInlineDrawingModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_4(v3);
    }

    objc_opt_class();
    v32 = v3;
    v5 = [v3 attachmentModel];
    v6 = ICDynamicCast();
    v7 = [v6 newDrawingFromMergeableData];

    v33 = objc_alloc_init(MEMORY[0x277CD95F8]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = v7;
    v8 = [v7 strokes];
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      v12 = *MEMORY[0x277CD96C8];
      v13 = MEMORY[0x277CBF2C0];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          v16 = [v15 ink];
          v17 = [v16 identifier];
          v18 = [v17 isEqualToString:v12];

          if ((v18 & 1) == 0)
          {
            v19 = v13[1];
            v34[0] = *v13;
            v34[1] = v19;
            v34[2] = v13[2];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v10);
    }

    [v30 _canvasBounds];
    [v33 set_canvasBounds:?];
    v20 = v31[6];
    v21 = [v33 serialize];
    (*(v20 + 16))(v20, v21, 0);

    v3 = v32;
    goto LABEL_26;
  }

  v22 = a1[5];
  v23 = [MEMORY[0x277D35E00] fallbackImageUTI];
  LODWORD(v22) = [v22 isEqualToString:v23];

  if (!v22)
  {
    v29 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      __115__ICAttachmentInlineDrawingModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(v3, (a1 + 5), v29);
    }

    goto LABEL_25;
  }

  v24 = [v3 hasFallbackImage];
  v25 = os_log_create("com.apple.notes", "DragAndDrop");
  v26 = v25;
  if (!v24)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __115__ICAttachmentInlineDrawingModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_2(v3, v26);
    }

LABEL_25:
    (*(a1[6] + 16))();
    goto LABEL_26;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    __115__ICAttachmentInlineDrawingModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_3(v3);
  }

  v27 = a1[6];
  v28 = [v3 fallbackImageData];
  (*(v27 + 16))(v27, v28, 0);

LABEL_26:
}

void __144__ICAttachmentInlineDrawingModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 88);
  v6 = *(a1 + 89);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __144__ICAttachmentInlineDrawingModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_2;
  v13[3] = &unk_2781ADE48;
  v14 = *(a1 + 48);
  v17 = *(a1 + 72);
  v7 = v2;
  v15 = v7;
  v16 = *(a1 + 56);
  [v3 performSearchQuery:v4 fullWordsOnly:v5 caseMatchingOnly:(v6 & 1) == 0 withBlock:v13];
  v8 = *(a1 + 56);
  v9 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_2151A1000, v10, OS_LOG_TYPE_DEFAULT, "Timed out performing search query for inline drawing %@", buf, 0xCu);
    }
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    (*(v12 + 16))(v12, v7);
  }
}

void __144__ICAttachmentInlineDrawingModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __144__ICAttachmentInlineDrawingModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_2_cold_1(a1, v3, v4);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __144__ICAttachmentInlineDrawingModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_12;
  v5[3] = &unk_2781ADE20;
  v7 = *(a1 + 56);
  v6 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:v5];
  dispatch_semaphore_signal(*(a1 + 48));
}

void __144__ICAttachmentInlineDrawingModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_12(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(ICPencilKitTextFindingResult);
  [(ICPencilKitTextFindingResult *)v6 setSearchQueryItem:v5];

  [(ICPencilKitTextFindingResult *)v6 setOrder:a3];
  [(ICPencilKitTextFindingResult *)v6 setDrawingSize:*(a1 + 40), *(a1 + 48)];
  [*(a1 + 32) addObject:v6];
}

void __76__ICAttachmentInlineDrawingModel_TextFinding__inlineDrawingTextFindingQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.notes.inlineDrawingTextFinding", MEMORY[0x277D85CD8]);
  v1 = inlineDrawingTextFindingQueue_sDrawingFindingQueue;
  inlineDrawingTextFindingQueue_sDrawingFindingQueue = v0;
}

void __115__ICAttachmentInlineDrawingModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = v5;
  _os_log_error_impl(&dword_2151A1000, a3, OS_LOG_TYPE_ERROR, "Unexpected typeIdentifier for attachment: %@, %@", v6, 0x16u);
}

void __115__ICAttachmentInlineDrawingModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Fallback image missing for attachment: %@", v4, 0xCu);
}

void __115__ICAttachmentInlineDrawingModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __115__ICAttachmentInlineDrawingModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_4(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __144__ICAttachmentInlineDrawingModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_2_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = 138412546;
  v6 = v4;
  v7 = 2048;
  v8 = [a2 count];
  _os_log_debug_impl(&dword_2151A1000, a3, OS_LOG_TYPE_DEBUG, "Finished search query in %@ with %ld results", &v5, 0x16u);
}

@end