@interface ICAttachmentInsertionController
- (ICAttachmentInsertionController)init;
- (ICAttachmentInsertionController)initWithNote:(id)a3;
- (ICAttachmentInsertionDelegate)attachmentDelegate;
- (ICNote)note;
- (id)_addInlineAttachment:(id)a3 inTextStorage:(id)a4 atTextRange:(_NSRange)a5;
- (id)addAttachment:(id)a3;
- (id)addAttachment:(id)a3 atTextRange:(_NSRange)a4;
- (id)addInlineAttachment:(id)a3;
- (id)addInlineAttachment:(id)a3 atTextRange:(_NSRange)a4;
- (id)addInlineAttachment:(id)a3 atTextRange:(_NSRange)a4 textView:(id)a5;
@end

@implementation ICAttachmentInsertionController

- (ICAttachmentInsertionController)init
{
  [(ICAttachmentInsertionController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICAttachmentInsertionController)initWithNote:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICAttachmentInsertionController;
  v5 = [(ICAttachmentInsertionController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_note, v4);
  }

  return v6;
}

- (id)addAttachment:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentInsertionController *)self note];
  v6 = [v5 textStorage];
  v7 = -[ICAttachmentInsertionController addAttachment:atTextLocation:](self, "addAttachment:atTextLocation:", v4, [v6 length]);

  return v7;
}

- (id)addAttachment:(id)a3 atTextRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(ICAttachmentInsertionController *)self note];
  v9 = [v8 textStorage];
  if (location > [v9 length])
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v35.location = location;
      v35.length = length;
      [ICAttachmentInsertionController addAttachment:v35 atTextRange:v9];
    }

    location = [v9 length];
  }

  v11 = [(ICAttachmentInsertionController *)self attachmentDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 attachmentInsertionController:self willAddAttachment:v7 atRange:{location, length}];
  }

  v31 = self;
  v12 = [ICTextAttachment textAttachmentWithAttachment:v7];
  v13 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v12];
  v14 = [v13 mutableCopy];

  v32 = v12;
  [v14 addAttribute:*MEMORY[0x1E69DB5F8] value:v12 range:{0, objc_msgSend(v14, "length")}];
  v33 = v8;
  v15 = [v8 textStorage];
  v16 = MEMORY[0x1E69B7600];
  v17 = [v15 attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];

  v18 = objc_alloc_init(MEMORY[0x1E69B78B8]);
  [v18 setBlockQuoteLevel:{objc_msgSend(v17, "blockQuoteLevel")}];
  v19 = *v16;
  v20 = [v18 copy];
  v21 = [v14 ic_range];
  [v14 addAttribute:v19 value:v20 range:{v21, v22}];

  [v9 beginSkippingTimestampUpdates];
  [v9 replaceCharactersInRange:location withAttributedString:{length, v14}];
  [v9 endSkippingTimestampUpdates];
  [v9 fixupAfterEditing];
  [v7 updateChangeCountWithReason:@"Added attachment"];
  v23 = [v7 media];
  [v23 updateChangeCountWithReason:@"Added attachment"];

  v24 = [v7 attachmentModel];
  LODWORD(v23) = [v24 showThumbnailInNoteList];

  if (v23)
  {
    v25 = [v7 ic_postNotificationOnMainThreadAfterSaveWithName:*MEMORY[0x1E69B7420]];
  }

  if (objc_opt_respondsToSelector())
  {
    v26 = [v9 ic_rangeForAttachment:v7 withTextAttachment:0];
    v28 = v27;
    v29 = [MEMORY[0x1E695DF00] now];
    [v9 setTimestamp:v29 range:{v26, v28}];

    [v11 attachmentInsertionController:v31 didAddAttachment:v7 atRange:{v26, v28}];
  }

  return v32;
}

- (id)addInlineAttachment:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentInsertionController *)self note];
  v6 = [v5 textStorage];
  v7 = -[ICAttachmentInsertionController addInlineAttachment:atTextRange:](self, "addInlineAttachment:atTextRange:", v4, [v6 length], 0);

  return v7;
}

- (id)addInlineAttachment:(id)a3 atTextRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(ICAttachmentInsertionController *)self note];
  v9 = [v8 textStorage];
  v10 = [(ICAttachmentInsertionController *)self _addInlineAttachment:v7 inTextStorage:v9 atTextRange:location, length];

  return v10;
}

- (id)addInlineAttachment:(id)a3 atTextRange:(_NSRange)a4 textView:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = a3;
  objc_opt_class();
  v11 = [v9 textStorage];

  v12 = ICDynamicCast();

  v13 = [(ICAttachmentInsertionController *)self _addInlineAttachment:v10 inTextStorage:v12 atTextRange:location, length];

  return v13;
}

- (id)_addInlineAttachment:(id)a3 inTextStorage:(id)a4 atTextRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a3;
  v10 = a4;
  if (location > [v10 length])
  {
    v11 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v23.location = location;
      v23.length = length;
      [ICAttachmentInsertionController _addInlineAttachment:v23 inTextStorage:v10 atTextRange:?];
    }

    location = [v10 length];
  }

  v12 = [(ICAttachmentInsertionController *)self attachmentDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v12 attachmentInsertionController:self willAddInlineAttachment:v9 atRange:location textStorage:{length, v10}];
  }

  v13 = [v10 attributesAtIndex:location effectiveRange:0];
  v14 = [ICInlineAttachmentUIModel filteredStyleAttributes:v13];
  v15 = [v14 mutableCopy];

  v16 = [ICInlineTextAttachment textAttachmentWithAttachment:v9];
  [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  v17 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v16];
  v18 = [v17 mutableCopy];

  [v18 addAttributes:v15 range:{0, objc_msgSend(v18, "length")}];
  [v10 replaceCharactersInRange:location withAttributedString:{length, v18}];
  [v10 fixupAfterEditing];
  [v9 updateChangeCountWithReason:@"Added inline attachment"];
  v19 = [(ICAttachmentInsertionController *)self note];
  [v19 updateChangeCountWithReason:@"Added inline attachment"];

  v20 = [(ICAttachmentInsertionController *)self note];
  [v20 save];

  if (objc_opt_respondsToSelector())
  {
    [v12 attachmentInsertionController:self didAddInlineAttachment:v9 atRange:location + 1 textStorage:{0, v10}];
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