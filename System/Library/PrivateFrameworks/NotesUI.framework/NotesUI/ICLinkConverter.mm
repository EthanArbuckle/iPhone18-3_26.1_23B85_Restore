@interface ICLinkConverter
- (BOOL)canConvertAttachmentToLink:(id)a3;
- (BOOL)canConvertLinkAtLocationToAttachment:(unint64_t)a3;
- (ICAttachmentInsertionController)insertionController;
- (ICLinkConverter)initWithInsertionController:(id)a3;
- (ICTTTextStorage)textStorage;
- (void)convertAttachmentToLink:(id)a3;
- (void)convertLinkAtLocationToAttachment:(unint64_t)a3;
@end

@implementation ICLinkConverter

- (ICLinkConverter)initWithInsertionController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICLinkConverter;
  v5 = [(ICLinkConverter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_insertionController, v4);
  }

  return v6;
}

- (ICTTTextStorage)textStorage
{
  v2 = [(ICLinkConverter *)self insertionController];
  v3 = [v2 note];
  v4 = [v3 textStorage];

  return v4;
}

- (BOOL)canConvertAttachmentToLink:(id)a3
{
  v4 = a3;
  if (ICInternalSettingsIsLinkConversionEnabled())
  {
    v5 = [(ICLinkConverter *)self insertionController];
    v6 = [v5 note];
    if (v6 && ([v4 needsInitialFetchFromCloud] & 1) == 0)
    {
      v8 = [v4 parentAttachment];
      if (!v8 && [v4 isUsed] && objc_msgSend(v4, "isURL"))
      {
        v9 = [v4 URL];
        v7 = v9 != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)convertAttachmentToLink:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(ICLinkConverter *)self canConvertAttachmentToLink:v4])
  {
    v5 = [v4 title];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [v4 urlString];
    }

    v9 = v7;

    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v22 = *MEMORY[0x1E69DB670];
    v11 = [v4 URL];
    v23[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v8 = [v10 initWithString:v9 attributes:v12];

    v13 = [(ICLinkConverter *)self textStorage];
    v14 = [v4 rangeInNote];
    [v13 replaceCharactersInRange:v14 withAttributedString:{v15, v8}];

    v16 = [(ICLinkConverter *)self textStorage];
    [v16 fixupAfterEditing];

    [MEMORY[0x1E69B7680] deleteAttachment:v4];
    v17 = [(ICLinkConverter *)self insertionController];
    v18 = [v17 note];
    [v18 updateModificationDateAndChangeCountAndSaveImmediately];

    v19 = [(ICLinkConverter *)self textStorage];
    v20 = [v19 undoManager];
    v21 = [objc_opt_class() convertAttachmentToLinkActionTitle];
    [v20 setActionName:v21];
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ICLinkConverter *)self convertAttachmentToLink:v4, v8];
    }

    v9 = v8;
  }
}

- (BOOL)canConvertLinkAtLocationToAttachment:(unint64_t)a3
{
  objc_opt_class();
  v5 = [(ICLinkConverter *)self textStorage];
  v6 = [v5 attribute:*MEMORY[0x1E69DB670] atIndex:a3 effectiveRange:0];
  v7 = ICCheckedDynamicCast();

  if (ICInternalSettingsIsLinkConversionEnabled())
  {
    v8 = [v7 scheme];
    if ([v8 isEqual:@"http"])
    {
      v9 = 1;
    }

    else
    {
      v10 = [v7 scheme];
      v9 = [v10 isEqual:@"https"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)convertLinkAtLocationToAttachment:(unint64_t)a3
{
  if ([(ICLinkConverter *)self canConvertLinkAtLocationToAttachment:?])
  {
    v21 = 0;
    v22 = 0;
    objc_opt_class();
    v5 = [(ICLinkConverter *)self textStorage];
    v6 = [v5 attribute:*MEMORY[0x1E69DB670] atIndex:a3 effectiveRange:&v21];
    v7 = ICCheckedDynamicCast();

    v8 = [(ICLinkConverter *)self insertionController];
    v9 = [v8 note];
    v10 = [v9 addURLAttachmentWithURL:v7];

    v11 = [(ICLinkConverter *)self textStorage];
    v12 = [v11 attributedSubstringFromRange:{v21, v22}];
    v13 = [v12 string];
    [v10 setTitle:v13];

    v14 = [(ICLinkConverter *)self insertionController];
    v15 = [v14 addAttachment:v10 atTextRange:{v21, v22}];

    v16 = [(ICLinkConverter *)self insertionController];
    v17 = [v16 note];
    [v17 updateModificationDateAndChangeCountAndSaveImmediately];

    v18 = [(ICLinkConverter *)self textStorage];
    v19 = [v18 undoManager];
    v20 = [objc_opt_class() convertLinkToAttachmentActionTitle];
    [v19 setActionName:v20];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ICLinkConverter *)self convertLinkAtLocationToAttachment:v7];
    }
  }
}

- (ICAttachmentInsertionController)insertionController
{
  WeakRetained = objc_loadWeakRetained(&self->_insertionController);

  return WeakRetained;
}

- (void)convertAttachmentToLink:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [a1 insertionController];
  v6 = [v5 note];
  v7 = [v6 shortLoggingDescription];
  v8 = [a2 shortLoggingDescription];
  v9 = 138412546;
  v10 = v7;
  v11 = 2112;
  v12 = v8;
  _os_log_error_impl(&dword_1D4171000, a3, OS_LOG_TYPE_ERROR, "Cannot convert attachment to link {note: %@, attachment: %@}", &v9, 0x16u);
}

- (void)convertLinkAtLocationToAttachment:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 insertionController];
  v4 = [v3 note];
  v5 = [v4 shortLoggingDescription];
  v6 = 138412290;
  v7 = v5;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Cannot convert link to attachment {note: %@}", &v6, 0xCu);
}

@end