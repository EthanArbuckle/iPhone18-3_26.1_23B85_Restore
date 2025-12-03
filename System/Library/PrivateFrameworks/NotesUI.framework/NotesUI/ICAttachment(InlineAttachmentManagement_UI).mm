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
  selfCopy = self;
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
      v7 = [self inlineAttachmentWithICTTAttachment:v6];
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
        [(ICAttachment(InlineAttachmentManagement_UI) *)v8 inlineAttachmentFromObject:self createIfNecessary:v9];
      }

      attachmentIdentifier = [v8 attachmentIdentifier];
      if ([attachmentIdentifier length])
      {
        v7 = [self addInlineAttachmentWithIdentifier:attachmentIdentifier];
        [v7 setNeedsInitialFetchFromCloud:1];
        attachmentUTI = [v8 attachmentUTI];
        [v7 setTypeUTI:attachmentUTI];

        typeUTI = [v7 typeUTI];

        if (!typeUTI)
        {
          v13 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [ICAttachment(InlineAttachmentManagement_UI) inlineAttachmentFromObject:v8 createIfNecessary:self];
          }

          [v7 setTypeUTI:*MEMORY[0x1E69B7550]];
        }
      }

      else
      {
        v14 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [ICAttachment(InlineAttachmentManagement_UI) inlineAttachmentFromObject:v8 createIfNecessary:self];
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

  [v7 setParentAttachment:self];
  [self addInlineAttachmentsObject:v7];
  note = [self note];
  [v7 setNote:note];

  note2 = [self note];
  [note2 addInlineAttachmentsObject:v7];

LABEL_23:

  return v7;
}

- (id)inlineAttachmentWithICTTAttachment:()InlineAttachmentManagement_UI
{
  v22 = *MEMORY[0x1E69E9840];
  attachmentIdentifier = [a3 attachmentIdentifier];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  inlineAttachments = [self inlineAttachments];
  v6 = [inlineAttachments countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(inlineAttachments);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      identifier = [v10 identifier];
      v12 = [identifier isEqualToString:attachmentIdentifier];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [inlineAttachments countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  managedObjectContext = [self managedObjectContext];
  v13 = [v14 attachmentWithIdentifier:attachmentIdentifier context:managedObjectContext];

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