@interface ICLinkConverter
- (BOOL)canConvertAttachmentToLink:(id)link;
- (BOOL)canConvertLinkAtLocationToAttachment:(unint64_t)attachment;
- (ICAttachmentInsertionController)insertionController;
- (ICLinkConverter)initWithInsertionController:(id)controller;
- (ICTTTextStorage)textStorage;
- (void)convertAttachmentToLink:(id)link;
- (void)convertLinkAtLocationToAttachment:(unint64_t)attachment;
@end

@implementation ICLinkConverter

- (ICLinkConverter)initWithInsertionController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = ICLinkConverter;
  v5 = [(ICLinkConverter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_insertionController, controllerCopy);
  }

  return v6;
}

- (ICTTTextStorage)textStorage
{
  insertionController = [(ICLinkConverter *)self insertionController];
  note = [insertionController note];
  textStorage = [note textStorage];

  return textStorage;
}

- (BOOL)canConvertAttachmentToLink:(id)link
{
  linkCopy = link;
  if (ICInternalSettingsIsLinkConversionEnabled())
  {
    insertionController = [(ICLinkConverter *)self insertionController];
    note = [insertionController note];
    if (note && ([linkCopy needsInitialFetchFromCloud] & 1) == 0)
    {
      parentAttachment = [linkCopy parentAttachment];
      if (!parentAttachment && [linkCopy isUsed] && objc_msgSend(linkCopy, "isURL"))
      {
        v9 = [linkCopy URL];
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

- (void)convertAttachmentToLink:(id)link
{
  v23[1] = *MEMORY[0x1E69E9840];
  linkCopy = link;
  if ([(ICLinkConverter *)self canConvertAttachmentToLink:linkCopy])
  {
    title = [linkCopy title];
    v6 = title;
    if (title)
    {
      urlString = title;
    }

    else
    {
      urlString = [linkCopy urlString];
    }

    v9 = urlString;

    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v22 = *MEMORY[0x1E69DB670];
    v11 = [linkCopy URL];
    v23[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v8 = [v10 initWithString:v9 attributes:v12];

    textStorage = [(ICLinkConverter *)self textStorage];
    rangeInNote = [linkCopy rangeInNote];
    [textStorage replaceCharactersInRange:rangeInNote withAttributedString:{v15, v8}];

    textStorage2 = [(ICLinkConverter *)self textStorage];
    [textStorage2 fixupAfterEditing];

    [MEMORY[0x1E69B7680] deleteAttachment:linkCopy];
    insertionController = [(ICLinkConverter *)self insertionController];
    note = [insertionController note];
    [note updateModificationDateAndChangeCountAndSaveImmediately];

    textStorage3 = [(ICLinkConverter *)self textStorage];
    undoManager = [textStorage3 undoManager];
    convertAttachmentToLinkActionTitle = [objc_opt_class() convertAttachmentToLinkActionTitle];
    [undoManager setActionName:convertAttachmentToLinkActionTitle];
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ICLinkConverter *)self convertAttachmentToLink:linkCopy, v8];
    }

    v9 = v8;
  }
}

- (BOOL)canConvertLinkAtLocationToAttachment:(unint64_t)attachment
{
  objc_opt_class();
  textStorage = [(ICLinkConverter *)self textStorage];
  v6 = [textStorage attribute:*MEMORY[0x1E69DB670] atIndex:attachment effectiveRange:0];
  v7 = ICCheckedDynamicCast();

  if (ICInternalSettingsIsLinkConversionEnabled())
  {
    scheme = [v7 scheme];
    if ([scheme isEqual:@"http"])
    {
      v9 = 1;
    }

    else
    {
      scheme2 = [v7 scheme];
      v9 = [scheme2 isEqual:@"https"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)convertLinkAtLocationToAttachment:(unint64_t)attachment
{
  if ([(ICLinkConverter *)self canConvertLinkAtLocationToAttachment:?])
  {
    v21 = 0;
    v22 = 0;
    objc_opt_class();
    textStorage = [(ICLinkConverter *)self textStorage];
    v6 = [textStorage attribute:*MEMORY[0x1E69DB670] atIndex:attachment effectiveRange:&v21];
    v7 = ICCheckedDynamicCast();

    insertionController = [(ICLinkConverter *)self insertionController];
    note = [insertionController note];
    v10 = [note addURLAttachmentWithURL:v7];

    textStorage2 = [(ICLinkConverter *)self textStorage];
    v12 = [textStorage2 attributedSubstringFromRange:{v21, v22}];
    string = [v12 string];
    [v10 setTitle:string];

    insertionController2 = [(ICLinkConverter *)self insertionController];
    v15 = [insertionController2 addAttachment:v10 atTextRange:{v21, v22}];

    insertionController3 = [(ICLinkConverter *)self insertionController];
    note2 = [insertionController3 note];
    [note2 updateModificationDateAndChangeCountAndSaveImmediately];

    textStorage3 = [(ICLinkConverter *)self textStorage];
    undoManager = [textStorage3 undoManager];
    convertLinkToAttachmentActionTitle = [objc_opt_class() convertLinkToAttachmentActionTitle];
    [undoManager setActionName:convertLinkToAttachmentActionTitle];
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