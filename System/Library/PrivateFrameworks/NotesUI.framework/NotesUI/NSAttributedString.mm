@interface NSAttributedString
@end

@implementation NSAttributedString

uint64_t __74__NSAttributedString_IC_UI__ic_rangeForBaseAttachment_withTextAttachment___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v16 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = v16;
    v12 = [v11 attachment];
    v13 = [v12 isEqual:a1[4]];

    if (v13)
    {
      v14 = *(a1[5] + 8);
      *(v14 + 32) = a3;
      *(v14 + 40) = a4;
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
      *a5 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

uint64_t __109__NSAttributedString_IC_UI___ic_attributedStringByHighlightingRegexMatches_withHighlightColor_attributeName___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 range];

  return [v2 addIndexesInRange:{v4, v3}];
}

void __55__NSAttributedString_IC_UI__ic_itemProviderDataForUTI___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id __99__NSAttributedString_IC_UI__ic_attributedStringByFlatteningInlineAttachmentsWithContext_formatter___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = ICCheckedDynamicCast();

  if (v7)
  {
    v8 = [v7 uiModel];
    v9 = [v8 attributedStringWithSurroundingAttributes:v5 formatter:*(a1 + 32)];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __92__NSAttributedString_IC_UI__ic_attributedStringByFlatteningCalculateAttachmentsWithContext___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  v4 = ICCheckedDynamicCast();

  if (([v4 isCalculateResultAttachment] & 1) != 0 || objc_msgSend(v4, "isCalculateGraphExpressionAttachment"))
  {
    v5 = [v4 displayText];
    v6 = [v5 ic_stringByRemovingLanguageDirectionCharacters];

    v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __108__NSAttributedString_IC_UI__ic_attributedStringByCopyingInlineAttachmentsAndUpdatingChangeCountWithContext___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  v14 = ICDynamicCast();

  if (v14)
  {
    v8 = [MEMORY[0x1E69B7888] isInlineAttachment:v14];
    if (v8)
    {
      v9 = MEMORY[0x1E69B7778];
      v10 = [v14 attachmentIdentifier];
      v11 = [v9 cloneInlineAttachmentWithIdentifier:v10 context:*(a1 + 32)];

      v12 = [ICInlineTextAttachment textAttachmentWithAttachment:v11];
      [*(a1 + 40) addAttribute:*MEMORY[0x1E69DB5F8] value:v12 range:{a3, a4}];
      [v11 updateChangeCountWithReason:@"Copied inline attachment"];
    }
  }

  return MEMORY[0x1EEE66BB8](v8);
}

uint64_t __64__NSAttributedString_IC_UI__ic_containsBlockAttachmentsInRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = ICProtocolCast();
  if (v7)
  {
    v7 = [MEMORY[0x1E69B7888] isInlineAttachment:v7];
    if ((v7 & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a5 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8](v7);
}

uint64_t __55__NSAttributedString_IC_UI__ic_containsTextAttachment___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t __61__NSAttributedString_IC_UI__ic_attributedSubstringUntilLine___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v7 = [v6 characterIsMember:a3];

  if (v7)
  {
    isKindOfClass = 1;
  }

  else if (a3 == 65532)
  {
    v9 = [*(a1 + 32) attribute:*MEMORY[0x1E69DB5F8] atIndex:a2 effectiveRange:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

void __73__NSAttributedString_ICTableAdditions__ic_tableSizeForTextTable_inRange___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 textBlocks];
  v5 = [v4 count];

  if (v5)
  {
    if (a1[4])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = [v3 textBlocks];
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        v8 = *v22;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v22 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v21 + 1) + 8 * i);
            v11 = [v10 table];
            v12 = a1[4];

            if (v11 == v12)
            {
              v7 = v10;
              goto LABEL_14;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      objc_opt_class();
      v6 = [v3 textBlocks];
      v13 = [v6 objectAtIndex:0];
      v7 = ICDynamicCast();
    }

LABEL_14:

    if (v7)
    {
      v14 = [v7 startingColumn];
      v15 = [v7 columnSpan];
      v16 = [v7 startingRow];
      v17 = [v7 rowSpan];
      v18 = v17;
      v19 = *(a1[6] + 8);
      if (*(*(a1[5] + 8) + 24) == 1)
      {
        v19[2].location = v14;
        v19[2].length = v15;
        v20 = *(a1[7] + 8);
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        *(*(a1[5] + 8) + 24) = 0;
      }

      else
      {
        v27.location = v14;
        v27.length = v15;
        *(*(a1[6] + 8) + 32) = NSUnionRange(v19[2], v27);
        v28.location = v16;
        v28.length = v18;
        *(*(a1[7] + 8) + 32) = NSUnionRange(*(*(a1[7] + 8) + 32), v28);
      }
    }
  }
}

void __61__NSAttributedString_ICTableAdditions__ic_textTablesInRange___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a2 textBlocks];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) table];
        if (([*(*(*(a1 + 32) + 8) + 40) containsObject:v8] & 1) == 0)
        {
          [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
          [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end