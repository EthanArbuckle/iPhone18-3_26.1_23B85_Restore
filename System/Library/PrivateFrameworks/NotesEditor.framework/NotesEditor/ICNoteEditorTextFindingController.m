@interface ICNoteEditorTextFindingController
+ (OS_dispatch_queue)textFindingQueue;
+ (id)textFindingResultsForPattern:(id)a3 textView:(id)a4 textStorage:(id)a5 ignoreCase:(BOOL)a6 wholeWords:(BOOL)a7;
@end

@implementation ICNoteEditorTextFindingController

+ (OS_dispatch_queue)textFindingQueue
{
  if (textFindingQueue_onceToken != -1)
  {
    +[ICNoteEditorTextFindingController textFindingQueue];
  }

  v3 = textFindingQueue_sTextFindingQueue;

  return v3;
}

void __53__ICNoteEditorTextFindingController_textFindingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.notes.textFinding", v2);
  v1 = textFindingQueue_sTextFindingQueue;
  textFindingQueue_sTextFindingQueue = v0;
}

+ (id)textFindingResultsForPattern:(id)a3 textView:(id)a4 textStorage:(id)a5 ignoreCase:(BOOL)a6 wholeWords:(BOOL)a7
{
  v7 = a7;
  v43 = a6;
  v68 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v44 = a4;
  v11 = a5;
  v45 = v10;
  if ([v10 length])
  {
    v12 = [v11 string];
    v13 = [v12 length];

    if (v13)
    {
      v60 = 0;
      v61 = &v60;
      v62 = 0x3032000000;
      v63 = __Block_byref_object_copy__11;
      v64 = __Block_byref_object_dispose__11;
      v65 = [MEMORY[0x277CBEB18] array];
      v42 = [MEMORY[0x277CCAC68] escapedPatternForString:v10];
      v59 = 0;
      v14 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v42 options:v43 error:&v59];
      v38 = v59;
      v40 = v14;
      if (v14)
      {
        v15 = [v11 string];
        v16 = [v14 matchesInString:v15 options:0 range:{0, objc_msgSend(v11, "length")}];

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v55 objects:v67 count:16];
        if (v18)
        {
          v19 = *v56;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v56 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v55 + 1) + 8 * i);
              if (v7)
              {
                v22 = [v11 string];
                v23 = [v21 range];
                v25 = [v22 ic_rangeEncapsulatesWord:{v23, v24}];

                if ((v25 & 1) == 0)
                {
                  continue;
                }
              }

              v26 = objc_alloc_init(ICTextFindingResult);
              v27 = [v21 range];
              [(ICTextFindingResult *)v26 setRange:v27, v28];
              [v61[5] addObject:v26];
            }

            v18 = [v17 countByEnumeratingWithState:&v55 objects:v67 count:16];
          }

          while (v18);
        }
      }

      else
      {
        v17 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [ICNoteEditorTextFindingController textFindingResultsForPattern:v38 textView:v17 textStorage:? ignoreCase:? wholeWords:?];
        }
      }

      v29 = [MEMORY[0x277D35F30] sharedContext];
      v30 = [v29 managedObjectContext];

      v31 = dispatch_group_create();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __109__ICNoteEditorTextFindingController_textFindingResultsForPattern_textView_textStorage_ignoreCase_wholeWords___block_invoke;
      v46[3] = &unk_2781AE438;
      v47 = v11;
      v32 = v30;
      v48 = v32;
      v33 = v31;
      v49 = v33;
      v52 = &v60;
      v50 = v45;
      v51 = v44;
      v53 = v43;
      v54 = v7;
      [v32 performBlockAndWait:v46];
      v34 = dispatch_time(0, 10000000000);
      if (dispatch_group_wait(v33, v34))
      {
        v35 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = NSStringFromSelector(a2);
          [ICNoteEditorTextFindingController textFindingResultsForPattern:v36 textView:buf textStorage:v35 ignoreCase:? wholeWords:?];
        }
      }

      v13 = [v61[5] sortedArrayUsingSelector:{sel_compare_, v38}];

      _Block_object_dispose(&v60, 8);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __109__ICNoteEditorTextFindingController_textFindingResultsForPattern_textView_textStorage_ignoreCase_wholeWords___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 ic_range];
  v6 = v5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __109__ICNoteEditorTextFindingController_textFindingResultsForPattern_textView_textStorage_ignoreCase_wholeWords___block_invoke_2;
  v12[3] = &unk_2781AE410;
  v7 = *(a1 + 48);
  v8 = *(a1 + 72);
  v9 = *(a1 + 56);
  *&v10 = *(a1 + 64);
  *(&v10 + 1) = v8;
  *&v11 = v7;
  *(&v11 + 1) = v9;
  v13 = v11;
  v14 = v10;
  v15 = *(a1 + 80);
  [v2 ic_enumerateAbstractAttachmentsInContext:v3 range:v4 options:v6 usingBlock:{0, v12}];
}

void __109__ICNoteEditorTextFindingController_textFindingResultsForPattern_textView_textStorage_ignoreCase_wholeWords___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  dispatch_group_enter(v7);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __109__ICNoteEditorTextFindingController_textFindingResultsForPattern_textView_textStorage_ignoreCase_wholeWords___block_invoke_3;
  v19 = &unk_2781AE3E8;
  v23 = a3;
  v24 = a4;
  v10 = *(a1 + 56);
  v20 = v9;
  v22 = v10;
  v21 = *(a1 + 32);
  v11 = v9;
  v12 = _Block_copy(&aBlock);
  objc_opt_class();
  v13 = ICDynamicCast();
  [v13 textFindingResultsMatchingString:*(a1 + 40) textView:*(a1 + 48) ignoreCase:*(a1 + 64) wholeWords:*(a1 + 65) startsWith:0 usePattern:0 completion:{v12, aBlock, v17, v18, v19}];

  objc_opt_class();
  v14 = ICDynamicCast();

  v15 = [v14 attachmentModel];
  [v15 textFindingResultsMatchingString:*(a1 + 40) textView:*(a1 + 48) ignoreCase:*(a1 + 64) wholeWords:*(a1 + 65) startsWith:0 usePattern:0 completion:v12];
}

void __109__ICNoteEditorTextFindingController_textFindingResultsForPattern_textView_textStorage_ignoreCase_wholeWords___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 56);
        v9 = *(a1 + 64);
        v10 = *(*(&v11 + 1) + 8 * v7);
        [v10 setRange:{v8, v9}];
        [v10 setAttachmentResult:1];
        [*(a1 + 32) addObject:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [*(*(*(a1 + 48) + 8) + 40) ic_addObjectsFromNonNilArray:*(a1 + 32)];
  dispatch_group_leave(*(a1 + 40));
}

+ (void)textFindingResultsForPattern:(uint64_t)a1 textView:(NSObject *)a2 textStorage:ignoreCase:wholeWords:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Error creating plaintext regular expression: %@", &v2, 0xCu);
}

+ (void)textFindingResultsForPattern:(os_log_t)log textView:textStorage:ignoreCase:wholeWords:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2151A1000, log, OS_LOG_TYPE_ERROR, "%@ timed out finding text", buf, 0xCu);
}

@end