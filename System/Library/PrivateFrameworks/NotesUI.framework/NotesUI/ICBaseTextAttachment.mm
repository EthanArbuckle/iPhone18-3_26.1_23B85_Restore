@interface ICBaseTextAttachment
- (BOOL)supportsUserConfigurablePresentationSizeForTextContainer:(id)container;
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (ICBaseTextAttachment)initWithAttachment:(id)attachment;
- (id)attachmentAttributesForAttributedString;
- (id)attachmentIdentifier;
- (id)attachmentInContext:(id)context;
- (id)attachmentUTI;
- (id)image;
- (signed)effectiveAttachmentViewSizeForTextContainer:(id)container;
- (void)detachView:(id)view fromParentView:(id)parentView;
- (void)fixAttachmentForAttributedString:(id)string range:(_NSRange)range forPlainText:(BOOL)text forStandardizedText:(BOOL)standardizedText;
@end

@implementation ICBaseTextAttachment

- (id)image
{
  v2 = MEMORY[0x1E69DCAB8];
  emptyImage = [MEMORY[0x1E695F658] emptyImage];
  v4 = [v2 imageWithCIImage:emptyImage];

  return v4;
}

- (ICBaseTextAttachment)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = MEMORY[0x1E69B7680];
  typeUTI = [attachmentCopy typeUTI];
  LODWORD(v5) = [v5 typeUTIIsInlineDrawing:typeUTI];

  if (v5)
  {
    v7 = MEMORY[0x1E6978590];
LABEL_3:
    v8 = *v7;
    goto LABEL_9;
  }

  v9 = MEMORY[0x1E69B7680];
  typeUTI2 = [attachmentCopy typeUTI];
  if ([v9 typeUTIIsSystemPaper:typeUTI2])
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
  data = [MEMORY[0x1E695DEF0] data];
  v13 = [(ICAbstractTextAttachment *)self initWithData:data ofType:v8];

  if (v13)
  {
    [(ICAbstractTextAttachment *)v13 setAttachment:attachmentCopy];
  }

  return v13;
}

- (void)fixAttachmentForAttributedString:(id)string range:(_NSRange)range forPlainText:(BOOL)text forStandardizedText:(BOOL)standardizedText
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  attachmentAttributesForAttributedString = [(ICBaseTextAttachment *)self attachmentAttributesForAttributedString];
  [stringCopy addAttributes:attachmentAttributesForAttributedString range:{location, length}];
  v10 = *MEMORY[0x1E69DB5F8];
  v11 = [attachmentAttributesForAttributedString objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];

  if (!v11)
  {
    [stringCopy removeAttribute:v10 range:{location, length}];
  }

  attachment = [(ICAbstractTextAttachment *)self attachment];
  v13 = [attachment URL];

  if (v13)
  {
    attachment2 = [(ICAbstractTextAttachment *)self attachment];
    title = [attachment2 title];
    if ([title length])
    {
      attachment3 = [(ICAbstractTextAttachment *)self attachment];
      title2 = [attachment3 title];
    }

    else
    {
      title2 = [v13 absoluteString];
    }

    [stringCopy replaceCharactersInRange:location withString:{length, title2}];
  }

  else
  {
    attachmentAsNSTextAttachment = [(ICBaseTextAttachment *)self attachmentAsNSTextAttachment];
    fileWrapper = [attachmentAsNSTextAttachment fileWrapper];
    isDirectory = [fileWrapper isDirectory];

    if (isDirectory)
    {
      [stringCopy replaceCharactersInRange:location withString:{length, &stru_1F4F94F00}];
    }
  }
}

- (id)attachmentAttributesForAttributedString
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  attachmentAsNSTextAttachment = [(ICBaseTextAttachment *)self attachmentAsNSTextAttachment];
  if (attachmentAsNSTextAttachment)
  {
    [dictionary setObject:attachmentAsNSTextAttachment forKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  }

  attachment = [(ICAbstractTextAttachment *)self attachment];
  v6 = [attachment URL];

  if (v6)
  {
    [dictionary setObject:v6 forKeyedSubscript:*MEMORY[0x1E69DB670]];
  }

  v7 = [dictionary copy];

  return v7;
}

- (signed)effectiveAttachmentViewSizeForTextContainer:(id)container
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  preferredViewSize = [attachment preferredViewSize];

  return preferredViewSize;
}

- (BOOL)supportsUserConfigurablePresentationSizeForTextContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = ICBaseTextAttachment;
  if ([(ICAbstractTextAttachment *)&v9 supportsUserConfigurablePresentationSizeForTextContainer:containerCopy])
  {
    v5 = [(ICBaseTextAttachment *)self effectiveAttachmentViewSizeForTextContainer:containerCopy];
    attachment = [(ICAbstractTextAttachment *)self attachment];
    v7 = v5 == [attachment preferredViewSize];
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
  attachment = [(ICAbstractTextAttachment *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__ICBaseTextAttachment_attachmentIdentifier__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [managedObjectContext performBlockAndWait:v7];

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
  attachment = [(ICAbstractTextAttachment *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__ICBaseTextAttachment_attachmentUTI__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [managedObjectContext performBlockAndWait:v7];

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

- (id)attachmentInContext:(id)context
{
  contextCopy = context;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__50;
  v16 = __Block_byref_object_dispose__50;
  attachment = [(ICAbstractTextAttachment *)self attachment];
  v5 = v13[5];
  if (v5)
  {
    managedObjectContext = [v5 managedObjectContext];

    if (managedObjectContext != contextCopy)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__ICBaseTextAttachment_attachmentInContext___block_invoke;
      v9[3] = &unk_1E8468FA8;
      v11 = &v12;
      v10 = contextCopy;
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

- (void)detachView:(id)view fromParentView:(id)parentView
{
  viewCopy = view;
  parentViewCopy = parentView;
  if ([viewCopy isFirstResponder])
  {
    nextResponder = [viewCopy nextResponder];
    if (nextResponder)
    {
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
        {
          break;
        }

        v8NextResponder = [nextResponder nextResponder];

        nextResponder = v8NextResponder;
        if (!v8NextResponder)
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

    shouldAvoidBecomingFirstResponder = [v10 shouldAvoidBecomingFirstResponder];
    [v10 setShouldAvoidBecomingFirstResponder:1];
    [viewCopy resignFirstResponder];
    [v10 setShouldAvoidBecomingFirstResponder:shouldAvoidBecomingFirstResponder];
    superview = [viewCopy superview];

    if (superview == parentViewCopy)
    {
      [viewCopy removeFromSuperview];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ICBaseTextAttachment;
    [(ICBaseTextAttachment *)&v13 detachView:viewCopy fromParentView:parentViewCopy];
  }
}

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  v21.receiver = self;
  v21.super_class = ICBaseTextAttachment;
  [(ICBaseTextAttachment *)&v21 attachmentBoundsForAttributes:attributes location:location textContainer:container proposedLineFragment:fragment.origin.x position:fragment.origin.y, fragment.size.width, fragment.size.height, position.x, position.y];
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

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  v20.receiver = self;
  v20.super_class = ICBaseTextAttachment;
  [(ICBaseTextAttachment *)&v20 attachmentBoundsForTextContainer:container proposedLineFragment:index glyphPosition:fragment.origin.x characterIndex:fragment.origin.y, fragment.size.width, fragment.size.height, position.x, position.y];
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