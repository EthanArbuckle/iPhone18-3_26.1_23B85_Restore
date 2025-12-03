@interface ICInlineTextAttachment
+ (Class)textAttachmentClassForAttachment:(id)attachment;
+ (ICInlineTextAttachment)textAttachmentWithAttachment:(id)attachment;
+ (NSCache)imageCache;
- (BOOL)isUnsupported;
- (ICInlineTextAttachment)initWithAttachment:(id)attachment;
- (id)altText;
- (id)attachmentIdentifier;
- (id)attachmentUTI;
- (id)displayText;
- (id)imageForBounds:(CGRect)bounds attributes:(id)attributes location:(id)location textContainer:(id)container;
- (id)inlineAttachmentInContext:(id)context;
- (id)printableTextContentForAppearanceType:(unint64_t)type traitCollection:(id)collection styleAttributes:(id)attributes textContainer:(id)container;
- (void)fixAttachmentForAttributedString:(id)string range:(_NSRange)range forPlainText:(BOOL)text forStandardizedText:(BOOL)standardizedText;
@end

@implementation ICInlineTextAttachment

+ (NSCache)imageCache
{
  if (imageCache_onceToken_1 != -1)
  {
    +[ICInlineTextAttachment imageCache];
  }

  v3 = imageCache_imageCache_1;

  return v3;
}

uint64_t __36__ICInlineTextAttachment_imageCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  imageCache_imageCache_1 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (ICInlineTextAttachment)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  typeUTI = [attachmentCopy typeUTI];
  v6 = typeUTI;
  v7 = *MEMORY[0x1E69B7550];
  if (typeUTI)
  {
    v7 = typeUTI;
  }

  v8 = v7;

  data = [MEMORY[0x1E695DEF0] data];
  v12.receiver = self;
  v12.super_class = ICInlineTextAttachment;
  v10 = [(ICAbstractTextAttachment *)&v12 initWithData:data ofType:v8];

  if (v10)
  {
    [(ICAbstractTextAttachment *)v10 setAttachment:attachmentCopy];
  }

  return v10;
}

- (BOOL)isUnsupported
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  isUnsupported = [attachment isUnsupported];

  return isUnsupported;
}

- (id)inlineAttachmentInContext:(id)context
{
  contextCopy = context;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__43;
  v16 = __Block_byref_object_dispose__43;
  attachment = [(ICAbstractTextAttachment *)self attachment];
  v5 = v13[5];
  if (v5)
  {
    managedObjectContext = [v5 managedObjectContext];

    if (managedObjectContext != contextCopy)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __52__ICInlineTextAttachment_inlineAttachmentInContext___block_invoke;
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

void __52__ICInlineTextAttachment_inlineAttachmentInContext___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B7778];
  v6 = [*(*(*(a1 + 40) + 8) + 40) objectID];
  v3 = [v2 ic_existingObjectWithID:v6 context:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)fixAttachmentForAttributedString:(id)string range:(_NSRange)range forPlainText:(BOOL)text forStandardizedText:(BOOL)standardizedText
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v18.location = [stringCopy ic_range];
  v18.length = v10;
  v17.location = location;
  v17.length = length;
  v11 = NSIntersectionRange(v17, v18);
  if (v11.length)
  {
    attachmentAttributesForAttributedString = [(ICInlineTextAttachment *)self attachmentAttributesForAttributedString];
    [stringCopy addAttributes:attachmentAttributesForAttributedString range:{v11.location, v11.length}];
    v13 = *MEMORY[0x1E69DB5F8];
    v14 = [attachmentAttributesForAttributedString objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];

    if (!v14)
    {
      [stringCopy removeAttribute:v13 range:{v11.location, v11.length}];
    }

    displayText = [(ICInlineTextAttachment *)self displayText];
    [stringCopy replaceCharactersInRange:v11.location withString:{v11.length, displayText}];
  }

  else
  {
    v16 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ICInlineTextAttachment fixAttachmentForAttributedString:v16 range:? forPlainText:? forStandardizedText:?];
    }
  }
}

+ (ICInlineTextAttachment)textAttachmentWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = [objc_alloc(objc_msgSend(self textAttachmentClassForAttachment:{attachmentCopy)), "initWithAttachment:", attachmentCopy}];

  return v5;
}

+ (Class)textAttachmentClassForAttachment:(id)attachment
{
  if ([attachment attachmentType] > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (id)attachmentIdentifier
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__43;
  v12 = __Block_byref_object_dispose__43;
  v13 = 0;
  attachment = [(ICAbstractTextAttachment *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__ICInlineTextAttachment_attachmentIdentifier__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __46__ICInlineTextAttachment_attachmentIdentifier__block_invoke(uint64_t a1)
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
  v11 = __Block_byref_object_copy__43;
  v12 = __Block_byref_object_dispose__43;
  v13 = 0;
  attachment = [(ICAbstractTextAttachment *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__ICInlineTextAttachment_attachmentUTI__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __39__ICInlineTextAttachment_attachmentUTI__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attachment];
  v2 = [v5 typeUTI];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)altText
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__43;
  v12 = __Block_byref_object_dispose__43;
  v13 = 0;
  attachment = [(ICAbstractTextAttachment *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__ICInlineTextAttachment_altText__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __33__ICInlineTextAttachment_altText__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attachment];
  v2 = [v5 altText];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)displayText
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__43;
  v12 = __Block_byref_object_dispose__43;
  v13 = 0;
  attachment = [(ICAbstractTextAttachment *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__ICInlineTextAttachment_displayText__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __37__ICInlineTextAttachment_displayText__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attachment];
  v2 = [v5 displayText];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)imageForBounds:(CGRect)bounds attributes:(id)attributes location:(id)location textContainer:(id)container
{
  attributesCopy = attributes;
  containerCopy = container;
  imageCache = [objc_opt_class() imageCache];
  attachmentIdentifier = [(ICInlineTextAttachment *)self attachmentIdentifier];
  v12 = [imageCache objectForKey:attachmentIdentifier];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    objc_opt_class();
    v14 = [(ICAbstractTextAttachment *)self newlyCreatedViewForTextContainer:containerCopy];
    v15 = ICDynamicCast();

    if (v15)
    {
      textView = [containerCopy textView];
      tintColor = [textView tintColor];
      [v15 setTintColor:tintColor];

      [v15 updateStyleWithAttributes:attributesCopy];
      [v15 intrinsicContentSize];
      v19 = v18;
      [v15 intrinsicContentSize];
      [v15 setFrame:{0.0, 0.0, v19, v20}];
      v21 = [v15 ic_imageRenderedFromViewHierarchyAfterScreenUpdates:1];
      imageCache2 = [objc_opt_class() imageCache];
      attachmentIdentifier2 = [(ICInlineTextAttachment *)self attachmentIdentifier];
      [imageCache2 setObject:v21 forKey:attachmentIdentifier2];

      v13 = v21;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)printableTextContentForAppearanceType:(unint64_t)type traitCollection:(id)collection styleAttributes:(id)attributes textContainer:(id)container
{
  attributesCopy = attributes;
  containerCopy = container;
  collectionCopy = collection;
  v12 = [ICPrintableTextAttachment alloc];
  data = [MEMORY[0x1E695DEF0] data];
  attachmentUTI = [(ICInlineTextAttachment *)self attachmentUTI];
  v15 = [(ICPrintableTextAttachment *)v12 initWithData:data ofType:attachmentUTI];

  v16 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v15];
  objc_opt_class();
  v17 = [(ICAbstractTextAttachment *)self newlyCreatedViewForTextContainer:containerCopy];

  v18 = ICDynamicCast();

  v19 = [MEMORY[0x1E69DC888] ic_tintColorWithTraitCollection:collectionCopy];

  [v18 setTintColor:v19];
  if (v18)
  {
    [v18 updateStyleWithAttributes:attributesCopy];
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      [v18 intrinsicContentSize];
      v21 = v20;
      [v18 intrinsicContentSize];
      [v18 setFrame:{0.0, 0.0, v21, v22}];
    }

    imageForPrinting = [v18 imageForPrinting];
    [(ICPrintableTextAttachment *)v15 setImage:imageForPrinting];

    [v18 baselineOffsetFromBottom];
    [(ICPrintableTextAttachment *)v15 setFrameOffset:0.0, -v24];
  }

  return v16;
}

- (void)fixAttachmentForAttributedString:(void *)a1 range:(NSObject *)a2 forPlainText:forStandardizedText:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 attachment];
  v4 = [v3 shortLoggingDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Not fixing inline attachment for string because range is invalid {attachment: %@}", &v5, 0xCu);
}

@end