@interface ICInlineTextAttachment
+ (Class)textAttachmentClassForAttachment:(id)a3;
+ (ICInlineTextAttachment)textAttachmentWithAttachment:(id)a3;
+ (NSCache)imageCache;
- (BOOL)isUnsupported;
- (ICInlineTextAttachment)initWithAttachment:(id)a3;
- (id)altText;
- (id)attachmentIdentifier;
- (id)attachmentUTI;
- (id)displayText;
- (id)imageForBounds:(CGRect)a3 attributes:(id)a4 location:(id)a5 textContainer:(id)a6;
- (id)inlineAttachmentInContext:(id)a3;
- (id)printableTextContentForAppearanceType:(unint64_t)a3 traitCollection:(id)a4 styleAttributes:(id)a5 textContainer:(id)a6;
- (void)fixAttachmentForAttributedString:(id)a3 range:(_NSRange)a4 forPlainText:(BOOL)a5 forStandardizedText:(BOOL)a6;
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

- (ICInlineTextAttachment)initWithAttachment:(id)a3
{
  v4 = a3;
  v5 = [v4 typeUTI];
  v6 = v5;
  v7 = *MEMORY[0x1E69B7550];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [MEMORY[0x1E695DEF0] data];
  v12.receiver = self;
  v12.super_class = ICInlineTextAttachment;
  v10 = [(ICAbstractTextAttachment *)&v12 initWithData:v9 ofType:v8];

  if (v10)
  {
    [(ICAbstractTextAttachment *)v10 setAttachment:v4];
  }

  return v10;
}

- (BOOL)isUnsupported
{
  v2 = [(ICAbstractTextAttachment *)self attachment];
  v3 = [v2 isUnsupported];

  return v3;
}

- (id)inlineAttachmentInContext:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__43;
  v16 = __Block_byref_object_dispose__43;
  v17 = [(ICAbstractTextAttachment *)self attachment];
  v5 = v13[5];
  if (v5)
  {
    v6 = [v5 managedObjectContext];

    if (v6 != v4)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __52__ICInlineTextAttachment_inlineAttachmentInContext___block_invoke;
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

void __52__ICInlineTextAttachment_inlineAttachmentInContext___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B7778];
  v6 = [*(*(*(a1 + 40) + 8) + 40) objectID];
  v3 = [v2 ic_existingObjectWithID:v6 context:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)fixAttachmentForAttributedString:(id)a3 range:(_NSRange)a4 forPlainText:(BOOL)a5 forStandardizedText:(BOOL)a6
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v18.location = [v9 ic_range];
  v18.length = v10;
  v17.location = location;
  v17.length = length;
  v11 = NSIntersectionRange(v17, v18);
  if (v11.length)
  {
    v12 = [(ICInlineTextAttachment *)self attachmentAttributesForAttributedString];
    [v9 addAttributes:v12 range:{v11.location, v11.length}];
    v13 = *MEMORY[0x1E69DB5F8];
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];

    if (!v14)
    {
      [v9 removeAttribute:v13 range:{v11.location, v11.length}];
    }

    v15 = [(ICInlineTextAttachment *)self displayText];
    [v9 replaceCharactersInRange:v11.location withString:{v11.length, v15}];
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

+ (ICInlineTextAttachment)textAttachmentWithAttachment:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_msgSend(a1 textAttachmentClassForAttachment:{v4)), "initWithAttachment:", v4}];

  return v5;
}

+ (Class)textAttachmentClassForAttachment:(id)a3
{
  if ([a3 attachmentType] > 5)
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
  v3 = [(ICAbstractTextAttachment *)self attachment];
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__ICInlineTextAttachment_attachmentIdentifier__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlockAndWait:v7];

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
  v3 = [(ICAbstractTextAttachment *)self attachment];
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__ICInlineTextAttachment_attachmentUTI__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlockAndWait:v7];

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
  v3 = [(ICAbstractTextAttachment *)self attachment];
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__ICInlineTextAttachment_altText__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlockAndWait:v7];

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
  v3 = [(ICAbstractTextAttachment *)self attachment];
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__ICInlineTextAttachment_displayText__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlockAndWait:v7];

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

- (id)imageForBounds:(CGRect)a3 attributes:(id)a4 location:(id)a5 textContainer:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = [objc_opt_class() imageCache];
  v11 = [(ICInlineTextAttachment *)self attachmentIdentifier];
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    objc_opt_class();
    v14 = [(ICAbstractTextAttachment *)self newlyCreatedViewForTextContainer:v9];
    v15 = ICDynamicCast();

    if (v15)
    {
      v16 = [v9 textView];
      v17 = [v16 tintColor];
      [v15 setTintColor:v17];

      [v15 updateStyleWithAttributes:v8];
      [v15 intrinsicContentSize];
      v19 = v18;
      [v15 intrinsicContentSize];
      [v15 setFrame:{0.0, 0.0, v19, v20}];
      v21 = [v15 ic_imageRenderedFromViewHierarchyAfterScreenUpdates:1];
      v22 = [objc_opt_class() imageCache];
      v23 = [(ICInlineTextAttachment *)self attachmentIdentifier];
      [v22 setObject:v21 forKey:v23];

      v13 = v21;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)printableTextContentForAppearanceType:(unint64_t)a3 traitCollection:(id)a4 styleAttributes:(id)a5 textContainer:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = [ICPrintableTextAttachment alloc];
  v13 = [MEMORY[0x1E695DEF0] data];
  v14 = [(ICInlineTextAttachment *)self attachmentUTI];
  v15 = [(ICPrintableTextAttachment *)v12 initWithData:v13 ofType:v14];

  v16 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v15];
  objc_opt_class();
  v17 = [(ICAbstractTextAttachment *)self newlyCreatedViewForTextContainer:v10];

  v18 = ICDynamicCast();

  v19 = [MEMORY[0x1E69DC888] ic_tintColorWithTraitCollection:v11];

  [v18 setTintColor:v19];
  if (v18)
  {
    [v18 updateStyleWithAttributes:v9];
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      [v18 intrinsicContentSize];
      v21 = v20;
      [v18 intrinsicContentSize];
      [v18 setFrame:{0.0, 0.0, v21, v22}];
    }

    v23 = [v18 imageForPrinting];
    [(ICPrintableTextAttachment *)v15 setImage:v23];

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