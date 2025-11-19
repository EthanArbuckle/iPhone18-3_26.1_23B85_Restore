@interface ICTable
@end

@implementation ICTable

void __98__ICTable_UI__enumerateTextStoragesForColumnIndexes_rowIndexes_undoTarget_undoManager_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = a3;
  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __98__ICTable_UI__enumerateTextStoragesForColumnIndexes_rowIndexes_undoTarget_undoManager_usingBlock___block_invoke_2;
  v10[3] = &unk_1E8468EB0;
  v13 = *(a1 + 72);
  v15 = a2;
  v9 = *(a1 + 40);
  v5 = *(&v9 + 1);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  v14 = v16;
  [v4 enumerateIndexesUsingBlock:v10];

  _Block_object_dispose(v16, 8);
}

void __98__ICTable_UI__enumerateTextStoragesForColumnIndexes_rowIndexes_undoTarget_undoManager_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    **(*(*(a1 + 72) + 8) + 24) = 1;
    *a3 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) textStorageForCellAtColumnIndex:*(a1 + 80) rowIndex:a2 undoTarget:*(a1 + 40) undoManager:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __101__ICTable_UI__joinedAttributedStringForColumns_rows_deepCopyInlineAttachments_note_parentAttachment___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(*(*(a1 + 56) + 8) + 24);
  if (v7 == a4)
  {
    v8 = @"\t";
  }

  else
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }

    v8 = @"\n";
  }

  [*(a1 + 32) ic_appendString:v8];
LABEL_6:
  v9 = [v6 attributedString];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    if (*(a1 + 64) == 1)
    {
      if (*(a1 + 40))
      {
        v11 = *MEMORY[0x1E69DB5F8];
        v12 = [v10 length];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __101__ICTable_UI__joinedAttributedStringForColumns_rows_deepCopyInlineAttachments_note_parentAttachment___block_invoke_2;
        v15[3] = &unk_1E8468F00;
        v16 = *(a1 + 40);
        v17 = *(a1 + 48);
        v18 = v10;
        [v18 enumerateAttribute:v11 inRange:0 options:v12 usingBlock:{0, v15}];

        v13 = v16;
      }

      else
      {
        v13 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __101__ICTable_UI__joinedAttributedStringForColumns_rows_deepCopyInlineAttachments_note_parentAttachment___block_invoke_cold_1(v13);
        }
      }
    }

    [*(a1 + 32) appendAttributedString:v10];
  }

  *(*(*(a1 + 56) + 8) + 24) = a4;

  return 0;
}

void __101__ICTable_UI__joinedAttributedStringForColumns_rows_deepCopyInlineAttachments_note_parentAttachment___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v18;
    objc_opt_class();
    v8 = [v7 attachment];

    v9 = ICCheckedDynamicCast();

    v10 = MEMORY[0x1E69B7778];
    v11 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v11 UUIDString];
    v13 = [v9 typeUTI];
    v14 = [v9 altText];
    v15 = [v9 tokenContentIdentifier];
    v16 = [v10 newAttachmentWithIdentifier:v12 typeUTI:v13 altText:v14 tokenContentIdentifier:v15 note:*(a1 + 32) parentAttachment:*(a1 + 40)];

    [v16 updateChangeCountWithReason:@"Cloned inline attachment"];
    v17 = [ICInlineTextAttachment textAttachmentWithAttachment:v16];
    [*(a1 + 48) addAttribute:*MEMORY[0x1E69DB5F8] value:v17 range:{a3, a4}];
  }
}

void __101__ICTable_NSTextTableAdditions__attributedStringWithNSTextTablesForColumns_rows_context_forPrinting___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) isRightToLeft])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __101__ICTable_NSTextTableAdditions__attributedStringWithNSTextTablesForColumns_rows_context_forPrinting___block_invoke_2;
  v6[3] = &unk_1E846DD58;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v10 = a2;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v11 = *(a1 + 72);
  [v5 enumerateIndexesWithOptions:v4 usingBlock:v6];
}

void __101__ICTable_NSTextTableAdditions__attributedStringWithNSTextTablesForColumns_rows_context_forPrinting___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4 identifierForColumnAtIndex:a2];
  v6 = [*(a1 + 32) identifierForRowAtIndex:*(a1 + 64)];
  v11 = [v4 mergeableStringForColumnID:v5 rowID:v6];

  v7 = [v11 attributedString];
  v8 = [v7 ic_attributedStringByFlatteningInlineAttachmentsWithContext:*(a1 + 40) formatter:0];

  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F4F94F00];
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 32) p_attributedStringForCell:v8 inTable:*(a1 + 56) atColumn:a2 row:*(a1 + 64) shouldFilter:(*(a1 + 72) & 1) == 0 context:*(a1 + 40)];
  [v9 appendAttributedString:v10];
}

@end