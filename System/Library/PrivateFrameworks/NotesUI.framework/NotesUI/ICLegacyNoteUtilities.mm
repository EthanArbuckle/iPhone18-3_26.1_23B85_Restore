@interface ICLegacyNoteUtilities
+ (id)temporaryTextStorageWithAttributedString:(id)a3 replicaID:(id)a4 styler:(id)a5;
+ (void)copyValuesFromLegacyNote:(id)a3 toNote:(id)a4 styler:(id)a5 attachmentPreviewGenerator:(id)a6;
+ (void)importLegacyNote:(id)a3 temporaryTextStorage:(id)a4 toNote:(id)a5 attachmentPreviewGenerator:(id)a6;
@end

@implementation ICLegacyNoteUtilities

+ (id)temporaryTextStorageWithAttributedString:(id)a3 replicaID:(id)a4 styler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[ICTTTextStorage alloc] initWithData:0 replicaID:v8];

  v11 = [(ICTTTextStorage *)v10 styler];

  [(ICTTTextStorage *)v10 setStyler:v7];
  [(ICTTTextStorage *)v10 setConvertAttributes:1];
  [(ICTTTextStorage *)v10 setWantsUndoCommands:0];
  [(ICTTTextStorage *)v10 replaceCharactersInRange:0 withAttributedString:[(ICTTTextStorage *)v10 length], v9];

  [(ICTTTextStorage *)v10 fixupAfterEditing];
  [(ICTTTextStorage *)v10 setConvertAttributes:0];
  if (!v11)
  {
    [(ICTTTextStorage *)v10 setStyler:0];
  }

  return v10;
}

+ (void)importLegacyNote:(id)a3 temporaryTextStorage:(id)a4 toNote:(id)a5 attachmentPreviewGenerator:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = [v9 managedObjectContext];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __97__ICLegacyNoteUtilities_importLegacyNote_temporaryTextStorage_toNote_attachmentPreviewGenerator___block_invoke;
  v42[3] = &unk_1E8468F80;
  v15 = v9;
  v43 = v15;
  v16 = v13;
  v44 = v16;
  [v14 performBlockAndWait:v42];

  v17 = *MEMORY[0x1E69B7628];
  v18 = [v10 length];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __97__ICLegacyNoteUtilities_importLegacyNote_temporaryTextStorage_toNote_attachmentPreviewGenerator___block_invoke_2;
  v38[3] = &unk_1E846D8C0;
  v19 = v15;
  v39 = v19;
  v20 = v16;
  v40 = v20;
  v21 = v10;
  v41 = v21;
  [v21 enumerateAttribute:v17 inRange:0 options:v18 usingBlock:{0, v38}];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = [v20 allValues];
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      v26 = 0;
      do
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [MEMORY[0x1E69B77B0] importLegacyAttachment:*(*(&v34 + 1) + 8 * v26++) toNote:v11 attachmentPreviewGenerator:v12];
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v24);
  }

  v27 = [v11 textStorage];
  [v27 setWantsUndoCommands:0];

  v28 = [v11 textStorage];
  v29 = [v11 textStorage];
  [v28 deleteCharactersInRange:{0, objc_msgSend(v29, "length")}];

  v30 = [v11 textStorage];
  v31 = [v30 mergeableString];
  v32 = [v21 mergeableString];
  [v31 mergeWithString:v32];

  v33 = [v11 textStorage];
  [v33 setWantsUndoCommands:1];
}

void __97__ICLegacyNoteUtilities_importLegacyNote_temporaryTextStorage_toNote_attachmentPreviewGenerator___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) attachments];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = ICCheckedProtocolCast();
        v8 = [v7 contentID];
        if (v8)
        {
          v9 = [*(a1 + 40) objectForKeyedSubscript:v8];

          if (v9)
          {
            [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"!legacyAttachmentIDMap[contentID]" functionName:"+[ICLegacyNoteUtilities importLegacyNote:temporaryTextStorage:toNote:attachmentPreviewGenerator:]_block_invoke" simulateCrash:1 showAlert:0 format:{@"Duplicate contentID found %@, existing attachment will be overwritten", v8}];
          }

          [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
        }

        else
        {
          [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"contentID" functionName:"+[ICLegacyNoteUtilities importLegacyNote:temporaryTextStorage:toNote:attachmentPreviewGenerator:]_block_invoke" simulateCrash:1 showAlert:0 format:@"legacyAttachment.contentID is nil"];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __97__ICLegacyNoteUtilities_importLegacyNote_temporaryTextStorage_toNote_attachmentPreviewGenerator___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 fileWrapper];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v7 fileWrapper];
    v11 = MEMORY[0x1E69B77B0];
    v12 = [v10 cidURL];
    v13 = [v11 contentIDStringFromCIDURL:v12];

    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__60;
    v31 = __Block_byref_object_dispose__60;
    v32 = 0;
    if (v13)
    {
      v14 = [*(a1 + 32) managedObjectContext];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __97__ICLegacyNoteUtilities_importLegacyNote_temporaryTextStorage_toNote_attachmentPreviewGenerator___block_invoke_100;
      v23[3] = &unk_1E8469640;
      v26 = &v27;
      v15 = v13;
      v24 = v15;
      v25 = *(a1 + 32);
      [v14 performBlockAndWait:v23];

      v16 = v28[5];
      v17 = *(a1 + 40);
      if (v16)
      {
        [v17 setObject:v16 forKeyedSubscript:v15];
      }

      else
      {
        v20 = [v17 objectForKeyedSubscript:v15];
        v21 = v28[5];
        v28[5] = v20;
      }

      v18 = v24;
    }

    else
    {
      v18 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [v10 cidURL];
        __97__ICLegacyNoteUtilities_importLegacyNote_temporaryTextStorage_toNote_attachmentPreviewGenerator___block_invoke_2_cold_1(v19, buf, v18);
      }
    }

    if (!v28[5])
    {
      v22 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        __97__ICLegacyNoteUtilities_importLegacyNote_temporaryTextStorage_toNote_attachmentPreviewGenerator___block_invoke_2_cold_2(v13, v22);
      }

      [*(a1 + 48) deleteCharactersInRange:{a3, a4}];
    }

    _Block_object_dispose(&v27, 8);
  }
}

void __97__ICLegacyNoteUtilities_importLegacyNote_temporaryTextStorage_toNote_attachmentPreviewGenerator___block_invoke_100(uint64_t a1)
{
  v2 = MEMORY[0x1E69B77B0];
  v3 = *(a1 + 32);
  v7 = [*(a1 + 40) managedObjectContext];
  v4 = [v2 attachmentWithContentID:v3 context:v7];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (void)copyValuesFromLegacyNote:(id)a3 toNote:(id)a4 styler:(id)a5 attachmentPreviewGenerator:(id)a6
{
  v25 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = [v25 managedObjectContext];

  if (!v13)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"legacyNote.managedObjectContext" functionName:"+[ICLegacyNoteUtilities copyValuesFromLegacyNote:toNote:styler:attachmentPreviewGenerator:]" simulateCrash:1 showAlert:0 format:{@"Legacy note does not have valid object context %@", v25}];
  }

  v14 = [v25 htmlString];
  v15 = MEMORY[0x1E69B77F0];
  v16 = [MEMORY[0x1E69B7868] sharedInstance];
  v17 = [v15 attributedStringFromHTMLString:v14 readerDelegate:v16];

  v18 = [v10 currentReplicaID];
  v19 = [a1 temporaryTextStorageWithAttributedString:v17 replicaID:v18 styler:v12];

  v20 = [v25 creationDate];
  if (v20)
  {
    [v10 setCreationDate:v20];
  }

  else
  {
    v21 = [MEMORY[0x1E695DF00] date];
    [v10 setCreationDate:v21];
  }

  v22 = [v25 modificationDate];
  if (v22)
  {
    [v10 setModificationDate:v22];
  }

  else
  {
    v23 = [MEMORY[0x1E695DF00] date];
    [v10 setModificationDate:v23];
  }

  v24 = [v25 title];
  [v10 setTitle:v24];

  [a1 importLegacyNote:v25 temporaryTextStorage:v19 toNote:v10 attachmentPreviewGenerator:v11];
}

void __97__ICLegacyNoteUtilities_importLegacyNote_temporaryTextStorage_toNote_attachmentPreviewGenerator___block_invoke_2_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1D4171000, log, OS_LOG_TYPE_DEBUG, "Could not find a content ID string for CID URL %@", buf, 0xCu);
}

void __97__ICLegacyNoteUtilities_importLegacyNote_temporaryTextStorage_toNote_attachmentPreviewGenerator___block_invoke_2_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "No legacy attachment for content ID %@", &v2, 0xCu);
}

@end