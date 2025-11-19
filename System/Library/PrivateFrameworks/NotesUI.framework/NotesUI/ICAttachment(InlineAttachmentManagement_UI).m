@interface ICAttachment(InlineAttachmentManagement_UI)
- (id)inlineAttachmentFromObject:()InlineAttachmentManagement_UI createIfNecessary:;
- (id)inlineAttachmentWithICTTAttachment:()InlineAttachmentManagement_UI;
- (void)filterInlineAttachmentsInTableColumnTextStorage:()InlineAttachmentManagement_UI range:;
@end

@implementation ICAttachment(InlineAttachmentManagement_UI)

- (void)filterInlineAttachmentsInTableColumnTextStorage:()InlineAttachmentManagement_UI range:
{
  v8 = a3;
  [v8 beginSkippingTimestampUpdates];
  v9 = *MEMORY[0x1E69DB5F8];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __101__ICAttachment_InlineAttachmentManagement_UI__filterInlineAttachmentsInTableColumnTextStorage_range___block_invoke;
  v14 = &unk_1E846A768;
  v15 = a1;
  v16 = v8;
  v10 = v8;
  [v10 enumerateAttribute:v9 inRange:a4 options:a5 usingBlock:{0, &v11}];
  [v10 endSkippingTimestampUpdates];
}

- (id)inlineAttachmentFromObject:()InlineAttachmentManagement_UI createIfNecessary:
{
  v6 = a3;
  if (![objc_opt_class() isInlineAttachment:v6])
  {
    v7 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 attachment], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([v6 conformsToProtocol:&unk_1F4FC5D80])
    {
      v7 = [a1 inlineAttachmentWithICTTAttachment:v6];
      if (v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v7 = 0;
    }

    if (a4)
    {
      v8 = v6;
      v9 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(ICAttachment(InlineAttachmentManagement_UI) *)v8 inlineAttachmentFromObject:a1 createIfNecessary:v9];
      }

      v10 = [v8 attachmentIdentifier];
      if ([v10 length])
      {
        v7 = [a1 addInlineAttachmentWithIdentifier:v10];
        [v7 setNeedsInitialFetchFromCloud:1];
        v11 = [v8 attachmentUTI];
        [v7 setTypeUTI:v11];

        v12 = [v7 typeUTI];

        if (!v12)
        {
          v13 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [ICAttachment(InlineAttachmentManagement_UI) inlineAttachmentFromObject:v8 createIfNecessary:a1];
          }

          [v7 setTypeUTI:*MEMORY[0x1E69B7550]];
        }
      }

      else
      {
        v14 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [ICAttachment(InlineAttachmentManagement_UI) inlineAttachmentFromObject:v8 createIfNecessary:a1];
        }

        v7 = 0;
      }
    }

LABEL_21:
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  [v7 setParentAttachment:a1];
  [a1 addInlineAttachmentsObject:v7];
  v15 = [a1 note];
  [v7 setNote:v15];

  v16 = [a1 note];
  [v16 addInlineAttachmentsObject:v7];

LABEL_23:

  return v7;
}

- (id)inlineAttachmentWithICTTAttachment:()InlineAttachmentManagement_UI
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [a3 attachmentIdentifier];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a1 inlineAttachments];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = [v10 identifier];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v14 = MEMORY[0x1E69B7778];
  v15 = [a1 managedObjectContext];
  v13 = [v14 attachmentWithIdentifier:v4 context:v15];

LABEL_12:

  return v13;
}

- (void)inlineAttachmentFromObject:()InlineAttachmentManagement_UI createIfNecessary:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(&dword_1D4171000, a3, OS_LOG_TYPE_DEBUG, "Trying to get an inline attachment (%@) that we haven't downloaded yet for an attachment (%@). Creating a temporary one.", v5, 0x16u);
}

- (void)inlineAttachmentFromObject:()InlineAttachmentManagement_UI createIfNecessary:.cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_4(&dword_1D4171000, v3, v4, "Found an inline attachment (%@) in text of attachment (%@) that doesn't have a typeUTI", v5, v6, v7, v8, v9);
}

- (void)inlineAttachmentFromObject:()InlineAttachmentManagement_UI createIfNecessary:.cold.3(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_4(&dword_1D4171000, v3, v4, "Found an inline attachment (%@) in text of note (%@) that doesn't have an identifier", v5, v6, v7, v8, v9);
}

@end