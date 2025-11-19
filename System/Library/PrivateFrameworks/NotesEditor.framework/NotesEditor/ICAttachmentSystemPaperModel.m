@interface ICAttachmentSystemPaperModel
@end

@implementation ICAttachmentSystemPaperModel

void __142__ICAttachmentSystemPaperModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  if (!*(a1 + 32))
  {
    v12 = 0;
    goto LABEL_16;
  }

  v3 = dispatch_semaphore_create(0);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__19;
  v45 = __Block_byref_object_dispose__19;
  v46 = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v7 = *(a1 + 73);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __142__ICAttachmentSystemPaperModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_2;
  v38[3] = &unk_2781AF218;
  v40 = &v41;
  v8 = v3;
  v39 = v8;
  [v4 performSearchQuery:v5 fullWordsOnly:v6 caseMatchingOnly:(v7 & 1) == 0 withBlock:v38];
  v9 = dispatch_time(0, 5000000000);
  v27 = v8;
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      *buf = 138412290;
      v50 = v11;
      _os_log_impl(&dword_2151A1000, v10, OS_LOG_TYPE_DEFAULT, "Timed out performing search query for paper drawing %@", buf, 0xCu);
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = v42[5];
    v13 = [v10 countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (v13)
    {
      v12 = 0;
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          v17 = objc_alloc_init(ICPaperKitTextFindingResult);
          [v16 bounds];
          [(ICPaperKitTextFindingResult *)v17 setSearchResultRect:?];
          [(ICPaperKitTextFindingResult *)v17 setOrder:v12];
          [v2 addObject:v17];

          ++v12;
        }

        v13 = [v10 countByEnumeratingWithState:&v34 objects:v48 count:16];
      }

      while (v13);
      goto LABEL_15;
    }
  }

  v12 = 0;
LABEL_15:

  _Block_object_dispose(&v41, 8);
LABEL_16:
  v18 = [*(*(*(a1 + 64) + 8) + 40) searchWithQuery:*(a1 + 40)];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v47 count:16];
  if (v19)
  {
    v20 = *v31;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v30 + 1) + 8 * j);
        v23 = objc_alloc_init(ICPaperKitTextFindingResult);
        [v22 ic_rectValue];
        [(ICPaperKitTextFindingResult *)v23 setSearchResultRect:?];
        [(ICPaperKitTextFindingResult *)v23 setOrder:v12];
        [v2 addObject:v23];

        ++v12;
      }

      v19 = [v18 countByEnumeratingWithState:&v30 objects:v47 count:16];
    }

    while (v19);
  }

  v24 = *(a1 + 56);
  if (v24)
  {
    v29 = v24;
    v28 = v2;
    performBlockOnMainThread();
  }

  v25 = *(*(a1 + 64) + 8);
  v26 = *(v25 + 40);
  if (v26)
  {
    *(v25 + 40) = 0;
  }
}

void __142__ICAttachmentSystemPaperModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __142__ICAttachmentSystemPaperModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_15(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

void __72__ICAttachmentSystemPaperModel_TextFinding__systemPaperTextFindingQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.notes.systemPaperTextFinding", MEMORY[0x277D85CD8]);
  v1 = systemPaperTextFindingQueue_sSystemPaperFindingQueue;
  systemPaperTextFindingQueue_sSystemPaperFindingQueue = v0;
}

@end