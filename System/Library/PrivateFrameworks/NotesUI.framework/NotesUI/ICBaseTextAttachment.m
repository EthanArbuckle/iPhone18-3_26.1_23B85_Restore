@interface ICBaseTextAttachment
- (BOOL)supportsUserConfigurablePresentationSizeForTextContainer:(id)a3;
- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7;
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (ICBaseTextAttachment)initWithAttachment:(id)a3;
- (id)attachmentAttributesForAttributedString;
- (id)attachmentIdentifier;
- (id)attachmentInContext:(id)a3;
- (id)attachmentUTI;
- (id)image;
- (signed)effectiveAttachmentViewSizeForTextContainer:(id)a3;
- (void)detachView:(id)a3 fromParentView:(id)a4;
- (void)fixAttachmentForAttributedString:(id)a3 range:(_NSRange)a4 forPlainText:(BOOL)a5 forStandardizedText:(BOOL)a6;
@end

@implementation ICBaseTextAttachment

- (id)image
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E695F658] emptyImage];
  v4 = [v2 imageWithCIImage:v3];

  return v4;
}

- (ICBaseTextAttachment)initWithAttachment:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69B7680];
  v6 = [v4 typeUTI];
  LODWORD(v5) = [v5 typeUTIIsInlineDrawing:v6];

  if (v5)
  {
    v7 = MEMORY[0x1E6978590];
LABEL_3:
    v8 = *v7;
    goto LABEL_9;
  }

  v9 = MEMORY[0x1E69B7680];
  v10 = [v4 typeUTI];
  if ([v9 typeUTIIsSystemPaper:v10])
  {
    v11 = +[ICSystemPaperTextAttachment isEnabled];

    if (v11)
    {
      v7 = MEMORY[0x1E6978598];
      goto LABEL_3;
    }
  }

  else
  {
  }

  v8 = @"com.apple.notes.textattachment";
LABEL_9:
  v12 = [MEMORY[0x1E695DEF0] data];
  v13 = [(ICAbstractTextAttachment *)self initWithData:v12 ofType:v8];

  if (v13)
  {
    [(ICAbstractTextAttachment *)v13 setAttachment:v4];
  }

  return v13;
}

- (void)fixAttachmentForAttributedString:(id)a3 range:(_NSRange)a4 forPlainText:(BOOL)a5 forStandardizedText:(BOOL)a6
{
  length = a4.length;
  location = a4.location;
  v21 = a3;
  v9 = [(ICBaseTextAttachment *)self attachmentAttributesForAttributedString];
  [v21 addAttributes:v9 range:{location, length}];
  v10 = *MEMORY[0x1E69DB5F8];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];

  if (!v11)
  {
    [v21 removeAttribute:v10 range:{location, length}];
  }

  v12 = [(ICAbstractTextAttachment *)self attachment];
  v13 = [v12 URL];

  if (v13)
  {
    v14 = [(ICAbstractTextAttachment *)self attachment];
    v15 = [v14 title];
    if ([v15 length])
    {
      v16 = [(ICAbstractTextAttachment *)self attachment];
      v17 = [v16 title];
    }

    else
    {
      v17 = [v13 absoluteString];
    }

    [v21 replaceCharactersInRange:location withString:{length, v17}];
  }

  else
  {
    v18 = [(ICBaseTextAttachment *)self attachmentAsNSTextAttachment];
    v19 = [v18 fileWrapper];
    v20 = [v19 isDirectory];

    if (v20)
    {
      [v21 replaceCharactersInRange:location withString:{length, &stru_1F4F94F00}];
    }
  }
}

- (id)attachmentAttributesForAttributedString
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(ICBaseTextAttachment *)self attachmentAsNSTextAttachment];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  }

  v5 = [(ICAbstractTextAttachment *)self attachment];
  v6 = [v5 URL];

  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69DB670]];
  }

  v7 = [v3 copy];

  return v7;
}

- (signed)effectiveAttachmentViewSizeForTextContainer:(id)a3
{
  v3 = [(ICAbstractTextAttachment *)self attachment];
  v4 = [v3 preferredViewSize];

  return v4;
}

- (BOOL)supportsUserConfigurablePresentationSizeForTextContainer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICBaseTextAttachment;
  if ([(ICAbstractTextAttachment *)&v9 supportsUserConfigurablePresentationSizeForTextContainer:v4])
  {
    v5 = [(ICBaseTextAttachment *)self effectiveAttachmentViewSizeForTextContainer:v4];
    v6 = [(ICAbstractTextAttachment *)self attachment];
    v7 = v5 == [v6 preferredViewSize];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)attachmentIdentifier
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__50;
  v12 = __Block_byref_object_dispose__50;
  v13 = 0;
  v3 = [(ICAbstractTextAttachment *)self attachment];
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__ICBaseTextAttachment_attachmentIdentifier__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __44__ICBaseTextAttachment_attachmentIdentifier__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attachment];
  v2 = [v5 identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)attachmentUTI
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__50;
  v12 = __Block_byref_object_dispose__50;
  v13 = 0;
  v3 = [(ICAbstractTextAttachment *)self attachment];
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__ICBaseTextAttachment_attachmentUTI__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __37__ICBaseTextAttachment_attachmentUTI__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attachment];
  v2 = [v5 typeUTI];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)attachmentInContext:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__50;
  v16 = __Block_byref_object_dispose__50;
  v17 = [(ICAbstractTextAttachment *)self attachment];
  v5 = v13[5];
  if (v5)
  {
    v6 = [v5 managedObjectContext];

    if (v6 != v4)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__ICBaseTextAttachment_attachmentInContext___block_invoke;
      v9[3] = &unk_1E8468FA8;
      v11 = &v12;
      v10 = v4;
      [v10 performBlockAndWait:v9];
    }
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __44__ICBaseTextAttachment_attachmentInContext___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B7680];
  v6 = [*(*(*(a1 + 40) + 8) + 40) objectID];
  v3 = [v2 ic_existingObjectWithID:v6 context:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)detachView:(id)a3 fromParentView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isFirstResponder])
  {
    v8 = [v6 nextResponder];
    if (v8)
    {
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
        {
          break;
        }

        v9 = [v8 nextResponder];

        v8 = v9;
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      objc_opt_class();
      v10 = ICDynamicCast();
    }

    else
    {
LABEL_6:
      v10 = 0;
    }

    v11 = [v10 shouldAvoidBecomingFirstResponder];
    [v10 setShouldAvoidBecomingFirstResponder:1];
    [v6 resignFirstResponder];
    [v10 setShouldAvoidBecomingFirstResponder:v11];
    v12 = [v6 superview];

    if (v12 == v7)
    {
      [v6 removeFromSuperview];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ICBaseTextAttachment;
    [(ICBaseTextAttachment *)&v13 detachView:v6 fromParentView:v7];
  }
}

- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7
{
  v21.receiver = self;
  v21.super_class = ICBaseTextAttachment;
  [(ICBaseTextAttachment *)&v21 attachmentBoundsForAttributes:a3 location:a4 textContainer:a5 proposedLineFragment:a6.origin.x position:a6.origin.y, a6.size.width, a6.size.height, a7.x, a7.y];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v7;
  if ((v12 == 0.0 || v7 == 0.0) && PKIsInlineDrawingOrPaperAttachment())
  {
    if (v13 == 0.0)
    {
      v15 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ICBaseTextAttachment attachmentBoundsForAttributes:location:textContainer:proposedLineFragment:position:];
      }

      v13 = 1.0;
    }

    if (v14 == 0.0)
    {
      v16 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [ICBaseTextAttachment attachmentBoundsForAttributes:location:textContainer:proposedLineFragment:position:];
      }

      v14 = 1.0;
    }
  }

  v17 = v9;
  v18 = v11;
  v19 = v13;
  v20 = v14;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  v20.receiver = self;
  v20.super_class = ICBaseTextAttachment;
  [(ICBaseTextAttachment *)&v20 attachmentBoundsForTextContainer:a3 proposedLineFragment:a6 glyphPosition:a4.origin.x characterIndex:a4.origin.y, a4.size.width, a4.size.height, a5.x, a5.y];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v6;
  if ((v11 == 0.0 || v6 == 0.0) && PKIsInlineDrawingOrPaperAttachment())
  {
    if (v12 == 0.0)
    {
      v14 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [ICBaseTextAttachment attachmentBoundsForAttributes:location:textContainer:proposedLineFragment:position:];
      }

      v12 = 1.0;
    }

    if (v13 == 0.0)
    {
      v15 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ICBaseTextAttachment attachmentBoundsForAttributes:location:textContainer:proposedLineFragment:position:];
      }

      v13 = 1.0;
    }
  }

  v16 = v8;
  v17 = v10;
  v18 = v12;
  v19 = v13;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

@end