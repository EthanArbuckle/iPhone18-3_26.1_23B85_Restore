@interface ICLegacyNoteUtilities
+ (id)temporaryTextStorageWithAttributedString:(id)string replicaID:(id)d styler:(id)styler;
+ (void)copyValuesFromLegacyNote:(id)note toNote:(id)toNote styler:(id)styler attachmentPreviewGenerator:(id)generator;
+ (void)importLegacyNote:(id)note temporaryTextStorage:(id)storage toNote:(id)toNote attachmentPreviewGenerator:(id)generator;
@end

@implementation ICLegacyNoteUtilities

+ (id)temporaryTextStorageWithAttributedString:(id)string replicaID:(id)d styler:(id)styler
{
  stylerCopy = styler;
  dCopy = d;
  stringCopy = string;
  v10 = [[ICTTTextStorage alloc] initWithData:0 replicaID:dCopy];

  styler = [(ICTTTextStorage *)v10 styler];

  [(ICTTTextStorage *)v10 setStyler:stylerCopy];
  [(ICTTTextStorage *)v10 setConvertAttributes:1];
  [(ICTTTextStorage *)v10 setWantsUndoCommands:0];
  [(ICTTTextStorage *)v10 replaceCharactersInRange:0 withAttributedString:[(ICTTTextStorage *)v10 length], stringCopy];

  [(ICTTTextStorage *)v10 fixupAfterEditing];
  [(ICTTTextStorage *)v10 setConvertAttributes:0];
  if (!styler)
  {
    [(ICTTTextStorage *)v10 setStyler:0];
  }

  return v10;
}

+ (void)importLegacyNote:(id)note temporaryTextStorage:(id)storage toNote:(id)toNote attachmentPreviewGenerator:(id)generator
{
  v46 = *MEMORY[0x1E69E9840];
  noteCopy = note;
  storageCopy = storage;
  toNoteCopy = toNote;
  generatorCopy = generator;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  managedObjectContext = [noteCopy managedObjectContext];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __97__ICLegacyNoteUtilities_importLegacyNote_temporaryTextStorage_toNote_attachmentPreviewGenerator___block_invoke;
  v42[3] = &unk_1E8468F80;
  v15 = noteCopy;
  v43 = v15;
  v16 = v13;
  v44 = v16;
  [managedObjectContext performBlockAndWait:v42];

  v17 = *MEMORY[0x1E69B7628];
  v18 = [storageCopy length];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __97__ICLegacyNoteUtilities_importLegacyNote_temporaryTextStorage_toNote_attachmentPreviewGenerator___block_invoke_2;
  v38[3] = &unk_1E846D8C0;
  v19 = v15;
  v39 = v19;
  v20 = v16;
  v40 = v20;
  v21 = storageCopy;
  v41 = v21;
  [v21 enumerateAttribute:v17 inRange:0 options:v18 usingBlock:{0, v38}];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  allValues = [v20 allValues];
  v23 = [allValues countByEnumeratingWithState:&v34 objects:v45 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [MEMORY[0x1E69B77B0] importLegacyAttachment:*(*(&v34 + 1) + 8 * v26++) toNote:toNoteCopy attachmentPreviewGenerator:generatorCopy];
      }

      while (v24 != v26);
      v24 = [allValues countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v24);
  }

  textStorage = [toNoteCopy textStorage];
  [textStorage setWantsUndoCommands:0];

  textStorage2 = [toNoteCopy textStorage];
  textStorage3 = [toNoteCopy textStorage];
  [textStorage2 deleteCharactersInRange:{0, objc_msgSend(textStorage3, "length")}];

  textStorage4 = [toNoteCopy textStorage];
  mergeableString = [textStorage4 mergeableString];
  mergeableString2 = [v21 mergeableString];
  [mergeableString mergeWithString:mergeableString2];

  textStorage5 = [toNoteCopy textStorage];
  [textStorage5 setWantsUndoCommands:1];
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

+ (void)copyValuesFromLegacyNote:(id)note toNote:(id)toNote styler:(id)styler attachmentPreviewGenerator:(id)generator
{
  noteCopy = note;
  toNoteCopy = toNote;
  generatorCopy = generator;
  stylerCopy = styler;
  managedObjectContext = [noteCopy managedObjectContext];

  if (!managedObjectContext)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"legacyNote.managedObjectContext" functionName:"+[ICLegacyNoteUtilities copyValuesFromLegacyNote:toNote:styler:attachmentPreviewGenerator:]" simulateCrash:1 showAlert:0 format:{@"Legacy note does not have valid object context %@", noteCopy}];
  }

  htmlString = [noteCopy htmlString];
  v15 = MEMORY[0x1E69B77F0];
  mEMORY[0x1E69B7868] = [MEMORY[0x1E69B7868] sharedInstance];
  v17 = [v15 attributedStringFromHTMLString:htmlString readerDelegate:mEMORY[0x1E69B7868]];

  currentReplicaID = [toNoteCopy currentReplicaID];
  v19 = [self temporaryTextStorageWithAttributedString:v17 replicaID:currentReplicaID styler:stylerCopy];

  creationDate = [noteCopy creationDate];
  if (creationDate)
  {
    [toNoteCopy setCreationDate:creationDate];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    [toNoteCopy setCreationDate:date];
  }

  modificationDate = [noteCopy modificationDate];
  if (modificationDate)
  {
    [toNoteCopy setModificationDate:modificationDate];
  }

  else
  {
    date2 = [MEMORY[0x1E695DF00] date];
    [toNoteCopy setModificationDate:date2];
  }

  title = [noteCopy title];
  [toNoteCopy setTitle:title];

  [self importLegacyNote:noteCopy temporaryTextStorage:v19 toNote:toNoteCopy attachmentPreviewGenerator:generatorCopy];
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