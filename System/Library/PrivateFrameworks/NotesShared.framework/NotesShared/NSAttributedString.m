@interface NSAttributedString
@end

@implementation NSAttributedString

void __162__NSAttributedString_NSAttributedStringPersistenceAdditions__ic_attributedStringWithArchive_dataPersister_note_parentAttachment_shouldCreateNewAttachments_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v7 = [v16 todo];

  if (v7)
  {
    v8 = [v16 mutableCopy];
    v9 = [ICTTTodo alloc];
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v8 todo];
    v12 = -[ICTTTodo initWithIdentifier:done:](v9, "initWithIdentifier:done:", v10, [v11 done]);
    [v8 setTodo:v12];

    v13 = *(a1 + 32);
    v14 = ICTTAttributeNameParagraphStyle;
    v15 = [v8 copy];
    [v13 addAttribute:v14 value:v15 range:{a3, a4}];
  }
}

void __126__NSAttributedString_NSAttributedStringPersistenceAdditions__ic_saveToArchive_flags_dataPersister_managedObjectContext_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_282766DE0])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = v3;
    v6 = [v5 attachmentIdentifier];
    v7 = [ICTTAttachment isInlineAttachment:v5];
    v8 = a1[4];
    if (v7)
    {
      v9 = [(ICBaseAttachment *)ICInlineAttachment attachmentWithIdentifier:v6 context:v8];
      v10 = v9;
      if (!v9 || ([v9 markedForDeletion] & 1) != 0)
      {
        goto LABEL_18;
      }

      v11 = a1[8];
      v12 = *(v11 + 116);
      v13 = *(v11 + 112);
      if (v13 >= v12)
      {
        if (v12 == *(v11 + 120))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v11 + 104, v12 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::Attachment>::New();
      }

      v14 = *(v11 + 104);
      *(v11 + 112) = v13 + 1;
      v15 = *(v14 + 8 * v13);
      v22 = a1[5];
      v23 = *(a1[7] + 8);
      v25 = *(v23 + 40);
      v24 = (v23 + 40);
      v35 = v25;
      v26 = [v10 saveToArchive:v15 dataPersister:v22 error:&v35];
      v27 = v35;
    }

    else
    {
      v16 = [(ICBaseAttachment *)ICAttachment attachmentWithIdentifier:v6 context:v8];
      v10 = v16;
      if (!v16 || ([v16 markedForDeletion] & 1) != 0)
      {
        goto LABEL_18;
      }

      v17 = a1[8];
      v18 = *(v17 + 116);
      v19 = *(v17 + 112);
      if (v19 >= v18)
      {
        if (v18 == *(v17 + 120))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v17 + 104, v18 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::Attachment>::New();
      }

      v20 = *(v17 + 104);
      *(v17 + 112) = v19 + 1;
      v21 = *(v20 + 8 * v19);
      v28 = a1[5];
      v29 = (a1[9] >> 1) & 1;
      v30 = *(a1[7] + 8);
      v31 = *(v30 + 40);
      v24 = (v30 + 40);
      v34 = v31;
      v26 = [v10 saveToArchive:v21 dataPersister:v28 stripImageMarkupMetadata:v29 error:&v34];
      v27 = v34;
    }

    v32 = v27;
    v33 = *v24;
    *v24 = v32;

    *(*(a1[6] + 8) + 24) = v26;
LABEL_18:

    objc_autoreleasePoolPop(v4);
  }
}

void __109__NSAttributedString_NSAttributedStringPersistenceAdditions__ic_approximateAttachmentsSizeIncludingPreviews___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 conformsToProtocol:&unk_282766DE0])
  {
    v3 = [v7 attachmentIdentifier];
    v4 = +[ICNoteContext sharedContext];
    v5 = [v4 managedObjectContext];
    v6 = [(ICBaseAttachment *)ICAttachment attachmentWithIdentifier:v3 context:v5];

    if (v6)
    {
      *(*(*(a1 + 32) + 8) + 24) += [v6 approximateArchiveSizeIncludingPreviews:*(a1 + 40)];
    }
  }
}

void __88__NSAttributedString_Shared__ic_enumerateAttachmentsInContext_range_options_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if ([v3 conformsToProtocol:&unk_282766DE0])
  {
    v5 = [v3 attachmentInContext:*(a1 + 32)];
    if (v5)
    {
      v6 = v5;
      (*(*(a1 + 40) + 16))();
LABEL_7:
    }
  }

  else if (v3)
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __88__NSAttributedString_Shared__ic_enumerateAttachmentsInContext_range_options_usingBlock___block_invoke_cold_1(v3, v6, v7, v8, v9, v10, v11, v12);
    }

    goto LABEL_7;
  }

  objc_autoreleasePoolPop(v4);
}

void __94__NSAttributedString_Shared__ic_enumerateInlineAttachmentsInContext_range_options_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if ([v3 conformsToProtocol:&unk_282766DE0])
  {
    v5 = v3;
    if ([ICTTAttachment isInlineAttachment:v5])
    {
      v6 = [v5 inlineAttachmentInContext:*(a1 + 32)];

      if (v6)
      {
        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
    }
  }

  else if (v3)
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __88__NSAttributedString_Shared__ic_enumerateAttachmentsInContext_range_options_usingBlock___block_invoke_cold_1(v3, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  objc_autoreleasePoolPop(v4);
}

void __96__NSAttributedString_Shared__ic_enumerateAbstractAttachmentsInContext_range_options_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if ([v3 conformsToProtocol:&unk_282766DE0])
  {
    v5 = v3;
    v6 = [ICTTAttachment isInlineAttachment:v5];
    v7 = *(a1 + 32);
    if (v6)
    {
      [v5 inlineAttachmentInContext:v7];
    }

    else
    {
      [v5 attachmentInContext:v7];
    }
    v8 = ;

    if (v8)
    {
      (*(*(a1 + 40) + 16))();
LABEL_10:
    }
  }

  else if (v3)
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __88__NSAttributedString_Shared__ic_enumerateAttachmentsInContext_range_options_usingBlock___block_invoke_cold_1(v3, v8, v9, v10, v11, v12, v13, v14);
    }

    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v4);
}

void __80__NSAttributedString_Shared__ic_attributedStringByRefreshingParagraphStyleUUIDs__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v11 = [a2 mutableCopy];
    v7 = [MEMORY[0x277CCAD78] UUID];
    [v11 setUuid:v7];

    v8 = *(a1 + 32);
    v9 = ICTTAttributeNameParagraphStyle;
    v10 = [v11 copy];
    [v8 addAttribute:v9 value:v10 range:{a3, a4}];
  }
}

id __130__NSAttributedString_Shared__ic_attributedStringByFlatteningInlineAttachmentsWithContext_flattenUnsupportedInlineattachmentsOnly___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = ICCheckedDynamicCast();

  if ([v6 isLinkAttachment])
  {
    v7 = [v6 tokenContentIdentifier];
    v8 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier(v7);

    [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D740E8]];
  }

  v9 = [v6 displayText];
  v10 = [v9 ic_stringByRemovingLanguageDirectionCharacters];

  if ([v10 length])
  {
    v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v10 attributes:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __196__NSAttributedString_Shared__ic_attributedStringByFlatteningInlineAttachmentsWithContext_flattenUnsupportedInlineAttachmentsOnly_updateRangeValueToObjectMapBlock_replacementAttributedStringBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v7 = [v16 conformsToProtocol:&unk_282766DE0];
  v8 = v16;
  if (v7)
  {
    v9 = v16;
    if (![ICTTAttachment isInlineAttachment:v9])
    {
LABEL_14:

      v8 = v16;
      goto LABEL_15;
    }

    v10 = [MEMORY[0x277CCAE60] valueWithRange:{a3, a4}];
    if (*(a1 + 32))
    {
      v11 = [v9 inlineAttachmentInContext:?];
      v12 = v11;
      if (!v11)
      {
LABEL_13:

        goto LABEL_14;
      }

      if (*(a1 + 64) != 1 || (![v11 isUnsupported] ? (v13 = 0) : (v13 = v12), v14 = v13, v12, v14))
      {
        [*(a1 + 40) insertObject:v10 atIndex:0];
        v15 = *(a1 + 56);
        if (v15)
        {
          (*(v15 + 16))(v15, v10, v12, *(a1 + 48));
        }

        goto LABEL_13;
      }
    }

    v12 = 0;
    goto LABEL_13;
  }

LABEL_15:
}

uint64_t __196__NSAttributedString_Shared__ic_attributedStringByFlatteningInlineAttachmentsWithContext_flattenUnsupportedInlineAttachmentsOnly_updateRangeValueToObjectMapBlock_replacementAttributedStringBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 rangeValue];
  v6 = [v4 rangeValue];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

void __90__NSAttributedString_Shared__ic_attributedStringWithOnlyAdaptiveImageAttributeIfNecessary__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a2 forKey:*MEMORY[0x277D74058]];
    [*(a1 + 32) setAttributes:v7 range:{a3, a4}];
  }
}

uint64_t __59__NSAttributedString_Shared__ic_searchableStringInContext___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) addAttribute:*MEMORY[0x277D74058] value:a2 range:{a3, a4}];
  }

  return result;
}

void __59__NSAttributedString_Shared__ic_searchableStringInContext___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    v17 = v7;
    v9 = [v7 conformsToProtocol:&unk_282766DE0];
    v8 = v17;
    if (v9)
    {
      v10 = v17;
      v11 = [ICTTAttachment isInlineAttachment:v10];
      v12 = *(a1 + 32);
      if (v11)
      {
        v13 = [v10 inlineAttachmentInContext:v12];
        v14 = [v13 searchableTextContentInNote];
        if (!v14)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = [v10 attachmentInContext:v12];
        v15 = [v13 attachmentModel];
        v14 = [v15 searchableTextContentInNote];

        if (!v14)
        {
LABEL_11:

          v8 = v17;
          goto LABEL_12;
        }
      }

      if (![v14 length])
      {
        v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];

        v14 = v16;
      }

      [*(a1 + 40) replaceCharactersInRange:a3 withAttributedString:{a4, v14}];
      if (v13)
      {
        [*(a1 + 40) addAttribute:@"ICAttachmentSearchable" value:v13 range:{a3, objc_msgSend(v14, "length")}];
      }

      goto LABEL_11;
    }
  }

LABEL_12:
}

void __59__NSAttributedString_UI__enumerateEditsInRange_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [[ICTTTextEdit alloc] initWithAttributes:v7 range:a3, a4];

  (*(*(a1 + 32) + 16))();
}

@end