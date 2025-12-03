@interface ICAttachmentTableModel(TextFinding)
- (ICTableTextFindingResult)textFindingResultForMatchingRange:()TextFinding findableAttributedString:queryString:ignoreCase:wholeWords:startsWith:row:column:;
- (void)replaceTextFindingResult:()TextFinding withReplacementString:tableViewController:;
- (void)textFindingResultsMatchingString:()TextFinding textView:ignoreCase:wholeWords:startsWith:usePattern:completion:;
- (void)undoablyReplaceAllOccurrencesOfQueryString:()TextFinding textView:ignoreCase:wholeWords:startsWith:withText:tableViewController:;
- (void)undoablyReplaceTextFindingResult:()TextFinding withReplacementString:tableViewController:;
@end

@implementation ICAttachmentTableModel(TextFinding)

- (ICTableTextFindingResult)textFindingResultForMatchingRange:()TextFinding findableAttributedString:queryString:ignoreCase:wholeWords:startsWith:row:column:
{
  v35[2] = *MEMORY[0x277D85DE8];
  v16 = a5;
  v17 = a6;
  if (a8 && ([v16 string], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "ic_rangeEncapsulatesWord:", a3, a4), v18, !v19) || a9 && (objc_msgSend(v16, "string"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "ic_startsWithDelimeter:", a3, a4), v20, !v21))
  {
    v29 = 0;
  }

  else
  {
    v22 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v16];
    v34[0] = @"SearchTableRow";
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a10];
    v34[1] = @"SearchTableColumn";
    v35[0] = v23;
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a11];
    v35[1] = v24;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v26 = v25 = a7;
    ic_range = [v22 ic_range];
    [v22 addAttributes:v26 range:{ic_range, v28}];

    v29 = objc_alloc_init(ICTableTextFindingResult);
    attachment = [self attachment];
    [(ICTableTextFindingResult *)v29 setAttachment:attachment];

    v31 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v22];
    [(ICTableTextFindingResult *)v29 setFindableString:v31];

    [(ICTableTextFindingResult *)v29 setRangeInFindableString:a3, a4];
    [(ICTableTextFindingResult *)v29 setQueryString:v17];
    [(ICTableTextFindingResult *)v29 setIgnoreCase:v25];
    [(ICTableTextFindingResult *)v29 setRow:a10];
    [(ICTableTextFindingResult *)v29 setColumn:a11];
  }

  return v29;
}

- (void)textFindingResultsMatchingString:()TextFinding textView:ignoreCase:wholeWords:startsWith:usePattern:completion:
{
  v14 = a3;
  v30 = a4;
  v15 = a9;
  if (a8)
  {
    v16 = v14;
  }

  else
  {
    v16 = [MEMORY[0x277CCAC68] escapedPatternForString:v14];
  }

  v17 = v16;
  if (a5)
  {
    v18 = 1;
  }

  else
  {
    v18 = 1024;
  }

  v19 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v16 options:v18 error:0];
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];

  array = [MEMORY[0x277CBEB18] array];
  table = [self table];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __136__ICAttachmentTableModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke;
  v31[3] = &unk_2781AEC90;
  v24 = v19;
  v32 = v24;
  selfCopy = self;
  v25 = v14;
  v34 = v25;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v26 = array;
  v35 = v26;
  v27 = managedObjectContext;
  v36 = v27;
  [table enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:0 copyItems:0 usingBlock:v31];

  if (v15)
  {
    v28 = [MEMORY[0x277CBEA60] arrayWithArray:v26];
    v15[2](v15, v28);
  }
}

- (void)undoablyReplaceAllOccurrencesOfQueryString:()TextFinding textView:ignoreCase:wholeWords:startsWith:withText:tableViewController:
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v18 = a9;
  [v18 beginEditing];
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __153__ICAttachmentTableModel_TextFinding__undoablyReplaceAllOccurrencesOfQueryString_textView_ignoreCase_wholeWords_startsWith_withText_tableViewController___block_invoke;
  v24[3] = &unk_2781AECB8;
  objc_copyWeak(&v27, &location);
  v19 = v17;
  v25 = v19;
  v20 = v18;
  v26 = v20;
  [self textFindingResultsMatchingString:v15 textView:v16 ignoreCase:a5 wholeWords:a6 startsWith:a7 usePattern:0 completion:v24];
  [v20 endEditing];
  [v20 saveOnMainThread];
  undoManager = [v20 undoManager];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v23 = [mainBundle localizedStringForKey:@"Replace All" value:&stru_282757698 table:0];
  [undoManager setActionName:v23];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)undoablyReplaceTextFindingResult:()TextFinding withReplacementString:tableViewController:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v8 beginEditing];
  [self replaceTextFindingResult:v10 withReplacementString:v9 tableViewController:v8];

  [v8 endEditing];
  [v8 saveOnMainThread];
  undoManager = [v8 undoManager];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle localizedStringForKey:@"Replace" value:&stru_282757698 table:0];
  [undoManager setActionName:v12];
}

- (void)replaceTextFindingResult:()TextFinding withReplacementString:tableViewController:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  v10 = ICDynamicCast();
  v11 = v10;
  if (v10)
  {
    if ([v10 row] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v11, "column") == 0x7FFFFFFFFFFFFFFFLL)
    {
      table = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(table, OS_LOG_TYPE_ERROR))
      {
        [ICAttachmentTableModel(TextFinding) replaceTextFindingResult:v11 withReplacementString:table tableViewController:?];
      }
    }

    else
    {
      inlineTextFindingResult = [v11 inlineTextFindingResult];

      if (inlineTextFindingResult)
      {
        goto LABEL_10;
      }

      table = [v9 table];
      v14 = [v11 row];
      column = [v11 column];
      rangeInFindableString = [v11 rangeInFindableString];
      v17 = v16;
      undoTarget = [v9 undoTarget];
      undoManager = [v9 undoManager];
      v20 = [table textStorageForCellAtColumnIndex:column rowIndex:v14 undoTarget:undoTarget undoManager:undoManager];

      [v20 replaceCharactersInRange:rangeInFindableString withString:{v17, v8}];
    }
  }

  else
  {
    table = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(table, OS_LOG_TYPE_ERROR))
    {
      [ICAttachmentTableModel(TextFinding) replaceTextFindingResult:v7 withReplacementString:table tableViewController:?];
    }
  }

LABEL_10:
}

- (void)replaceTextFindingResult:()TextFinding withReplacementString:tableViewController:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Cannot retrieve the row and column numbers for tableFindingResult: %@", &v2, 0xCu);
}

- (void)replaceTextFindingResult:()TextFinding withReplacementString:tableViewController:.cold.2(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Cannot cast findingResult %@ to type %@", &v6, 0x16u);
}

@end