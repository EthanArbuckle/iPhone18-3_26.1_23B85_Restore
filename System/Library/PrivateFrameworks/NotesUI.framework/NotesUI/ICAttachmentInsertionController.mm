@interface ICAttachmentInsertionController
- (ICAttachmentInsertionController)init;
- (ICAttachmentInsertionController)initWithNote:(id)note;
- (ICAttachmentInsertionDelegate)attachmentDelegate;
- (ICNote)note;
- (id)_addInlineAttachment:(id)attachment inTextStorage:(id)storage atTextRange:(_NSRange)range;
- (id)addAttachment:(id)attachment;
- (id)addAttachment:(id)attachment atTextRange:(_NSRange)range;
- (id)addInlineAttachment:(id)attachment;
- (id)addInlineAttachment:(id)attachment atTextRange:(_NSRange)range;
- (id)addInlineAttachment:(id)attachment atTextRange:(_NSRange)range textView:(id)view;
@end

@implementation ICAttachmentInsertionController

- (ICAttachmentInsertionController)init
{
  [(ICAttachmentInsertionController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICAttachmentInsertionController)initWithNote:(id)note
{
  noteCopy = note;
  v8.receiver = self;
  v8.super_class = ICAttachmentInsertionController;
  v5 = [(ICAttachmentInsertionController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_note, noteCopy);
  }

  return v6;
}

- (id)addAttachment:(id)attachment
{
  attachmentCopy = attachment;
  note = [(ICAttachmentInsertionController *)self note];
  textStorage = [note textStorage];
  v7 = -[ICAttachmentInsertionController addAttachment:atTextLocation:](self, "addAttachment:atTextLocation:", attachmentCopy, [textStorage length]);

  return v7;
}

- (id)addAttachment:(id)attachment atTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attachmentCopy = attachment;
  note = [(ICAttachmentInsertionController *)self note];
  textStorage = [note textStorage];
  if (location > [textStorage length])
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v35.location = location;
      v35.length = length;
      [ICAttachmentInsertionController addAttachment:v35 atTextRange:textStorage];
    }

    location = [textStorage length];
  }

  attachmentDelegate = [(ICAttachmentInsertionController *)self attachmentDelegate];
  if (objc_opt_respondsToSelector())
  {
    [attachmentDelegate attachmentInsertionController:self willAddAttachment:attachmentCopy atRange:{location, length}];
  }

  selfCopy = self;
  v12 = [ICTextAttachment textAttachmentWithAttachment:attachmentCopy];
  v13 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v12];
  v14 = [v13 mutableCopy];

  v32 = v12;
  [v14 addAttribute:*MEMORY[0x1E69DB5F8] value:v12 range:{0, objc_msgSend(v14, "length")}];
  v33 = note;
  textStorage2 = [note textStorage];
  v16 = MEMORY[0x1E69B7600];
  v17 = [textStorage2 attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];

  v18 = objc_alloc_init(MEMORY[0x1E69B78B8]);
  [v18 setBlockQuoteLevel:{objc_msgSend(v17, "blockQuoteLevel")}];
  v19 = *v16;
  v20 = [v18 copy];
  ic_range = [v14 ic_range];
  [v14 addAttribute:v19 value:v20 range:{ic_range, v22}];

  [textStorage beginSkippingTimestampUpdates];
  [textStorage replaceCharactersInRange:location withAttributedString:{length, v14}];
  [textStorage endSkippingTimestampUpdates];
  [textStorage fixupAfterEditing];
  [attachmentCopy updateChangeCountWithReason:@"Added attachment"];
  media = [attachmentCopy media];
  [media updateChangeCountWithReason:@"Added attachment"];

  attachmentModel = [attachmentCopy attachmentModel];
  LODWORD(media) = [attachmentModel showThumbnailInNoteList];

  if (media)
  {
    v25 = [attachmentCopy ic_postNotificationOnMainThreadAfterSaveWithName:*MEMORY[0x1E69B7420]];
  }

  if (objc_opt_respondsToSelector())
  {
    v26 = [textStorage ic_rangeForAttachment:attachmentCopy withTextAttachment:0];
    v28 = v27;
    v29 = [MEMORY[0x1E695DF00] now];
    [textStorage setTimestamp:v29 range:{v26, v28}];

    [attachmentDelegate attachmentInsertionController:selfCopy didAddAttachment:attachmentCopy atRange:{v26, v28}];
  }

  return v32;
}

- (id)addInlineAttachment:(id)attachment
{
  attachmentCopy = attachment;
  note = [(ICAttachmentInsertionController *)self note];
  textStorage = [note textStorage];
  v7 = -[ICAttachmentInsertionController addInlineAttachment:atTextRange:](self, "addInlineAttachment:atTextRange:", attachmentCopy, [textStorage length], 0);

  return v7;
}

- (id)addInlineAttachment:(id)attachment atTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attachmentCopy = attachment;
  note = [(ICAttachmentInsertionController *)self note];
  textStorage = [note textStorage];
  v10 = [(ICAttachmentInsertionController *)self _addInlineAttachment:attachmentCopy inTextStorage:textStorage atTextRange:location, length];

  return v10;
}

- (id)addInlineAttachment:(id)attachment atTextRange:(_NSRange)range textView:(id)view
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  attachmentCopy = attachment;
  objc_opt_class();
  textStorage = [viewCopy textStorage];

  v12 = ICDynamicCast();

  v13 = [(ICAttachmentInsertionController *)self _addInlineAttachment:attachmentCopy inTextStorage:v12 atTextRange:location, length];

  return v13;
}

- (id)_addInlineAttachment:(id)attachment inTextStorage:(id)storage atTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attachmentCopy = attachment;
  storageCopy = storage;
  if (location > [storageCopy length])
  {
    v11 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v23.location = location;
      v23.length = length;
      [ICAttachmentInsertionController _addInlineAttachment:v23 inTextStorage:storageCopy atTextRange:?];
    }

    location = [storageCopy length];
  }

  attachmentDelegate = [(ICAttachmentInsertionController *)self attachmentDelegate];
  if (objc_opt_respondsToSelector())
  {
    [attachmentDelegate attachmentInsertionController:self willAddInlineAttachment:attachmentCopy atRange:location textStorage:{length, storageCopy}];
  }

  v13 = [storageCopy attributesAtIndex:location effectiveRange:0];
  v14 = [ICInlineAttachmentUIModel filteredStyleAttributes:v13];
  v15 = [v14 mutableCopy];

  v16 = [ICInlineTextAttachment textAttachmentWithAttachment:attachmentCopy];
  [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  v17 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v16];
  v18 = [v17 mutableCopy];

  [v18 addAttributes:v15 range:{0, objc_msgSend(v18, "length")}];
  [storageCopy replaceCharactersInRange:location withAttributedString:{length, v18}];
  [storageCopy fixupAfterEditing];
  [attachmentCopy updateChangeCountWithReason:@"Added inline attachment"];
  note = [(ICAttachmentInsertionController *)self note];
  [note updateChangeCountWithReason:@"Added inline attachment"];

  note2 = [(ICAttachmentInsertionController *)self note];
  [note2 save];

  if (objc_opt_respondsToSelector())
  {
    [attachmentDelegate attachmentInsertionController:self didAddInlineAttachment:attachmentCopy atRange:location + 1 textStorage:{0, storageCopy}];
  }

  return v16;
}

- (ICAttachmentInsertionDelegate)attachmentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_attachmentDelegate);

  return WeakRetained;
}

- (ICNote)note
{
  WeakRetained = objc_loadWeakRetained(&self->_note);

  return WeakRetained;
}

- (void)addAttachment:(NSRange)a1 atTextRange:(void *)a2 .cold.1(NSRange a1, void *a2)
{
  v3 = NSStringFromRange(a1);
  [a2 length];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_1D4171000, v4, v5, "Attempted to addAttachment:atTextRange: with an out of bound range: %@. Adding attachment to the end of text storage instead, %lu.", v6, v7, v8, v9, v10);
}

- (void)_addInlineAttachment:(NSRange)a1 inTextStorage:(void *)a2 atTextRange:.cold.1(NSRange a1, void *a2)
{
  v3 = NSStringFromRange(a1);
  [a2 length];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_1D4171000, v4, v5, "Attempted to addInlineAttachment:atTextRange: with an out of bound range: %@. Adding token attachment to the end of text storage instead, %lu.", v6, v7, v8, v9, v10);
}

@end