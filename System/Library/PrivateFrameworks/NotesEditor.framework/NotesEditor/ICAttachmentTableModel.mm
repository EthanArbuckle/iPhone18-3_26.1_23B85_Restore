@interface ICAttachmentTableModel
@end

@implementation ICAttachmentTableModel

uint64_t __136__ICAttachmentTableModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = [a2 attributedString];
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [v7 string];
    v11 = [v8 ic_range];
    v13 = [v9 matchesInString:v10 options:0 range:{v11, v12}];

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __136__ICAttachmentTableModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_18;
    v38[3] = &unk_2781AEC40;
    v38[4] = *(a1 + 40);
    v14 = v8;
    v39 = v14;
    v15 = *(a1 + 48);
    v43 = *(a1 + 72);
    v44 = *(a1 + 73);
    v40 = v15;
    v41 = a4;
    v42 = a3;
    v26 = [v13 ic_compactMap:v38];
    [*(a1 + 56) addObjectsFromArray:v26];
    v16 = [MEMORY[0x277CBEB18] array];
    v17 = *MEMORY[0x277D74060];
    v18 = [v14 ic_range];
    v20 = v19;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __136__ICAttachmentTableModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_2;
    v27[3] = &unk_2781AEC68;
    v28 = *(a1 + 64);
    v21 = *(a1 + 32);
    v36 = *(a1 + 72);
    v37 = *(a1 + 73);
    v22 = *(a1 + 40);
    v29 = v21;
    v30 = v22;
    v31 = v14;
    v23 = *(a1 + 48);
    v34 = a4;
    v35 = a3;
    v32 = v23;
    v33 = v16;
    v24 = v16;
    [v31 enumerateAttribute:v17 inRange:v18 options:v20 usingBlock:{0, v27}];
    [*(a1 + 56) addObjectsFromArray:v24];
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "Find");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v46 = a3;
      v47 = 2048;
      v48 = a4;
      _os_log_impl(&dword_2151A1000, v13, OS_LOG_TYPE_INFO, "Skipping finding in table because attributed string is nil at column %lu row %lu.", buf, 0x16u);
    }
  }

  return 0;
}

uint64_t __136__ICAttachmentTableModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 range];
  LOBYTE(v7) = *(a1 + 74);
  return [v3 textFindingResultForMatchingRange:v4 findableAttributedString:v5 queryString:*(a1 + 40) ignoreCase:*(a1 + 48) wholeWords:*(a1 + 72) startsWith:*(a1 + 73) row:v7 column:{*(a1 + 56), *(a1 + 64)}];
}

void __136__ICAttachmentTableModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (v7 && [MEMORY[0x277D35F70] isInlineAttachment:v7])
  {
    v8 = [v7 inlineAttachmentInContext:*(a1 + 32)];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 textFindingResultsMatchingExpression:*(a1 + 40) ignoreCase:*(a1 + 96) wholeWords:*(a1 + 97) startsWith:*(a1 + 98)];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v18 = v9;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            LOBYTE(v17) = *(a1 + 98);
            v16 = [*(a1 + 48) textFindingResultForMatchingRange:a3 findableAttributedString:a4 queryString:*(a1 + 56) ignoreCase:*(a1 + 64) wholeWords:*(a1 + 96) startsWith:*(a1 + 97) row:v17 column:{*(a1 + 80), *(a1 + 88)}];
            [v16 setInlineTextFindingResult:v15];
            [*(a1 + 72) addObject:v16];
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
        v9 = v18;
      }
    }

    else
    {
      v10 = os_log_create("com.apple.notes", "Find");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __136__ICAttachmentTableModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_2_cold_1(v7, v10);
      }
    }
  }
}

void __153__ICAttachmentTableModel_TextFinding__undoablyReplaceAllOccurrencesOfQueryString_textView_ignoreCase_wholeWords_startsWith_withText_tableViewController___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [WeakRetained replaceTextFindingResult:*(*(&v10 + 1) + 8 * v9++) withReplacementString:*(a1 + 32) tableViewController:{*(a1 + 40), v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void __136__ICAttachmentTableModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Unable to get inline attachment for ttAttachment: %@", &v2, 0xCu);
}

@end