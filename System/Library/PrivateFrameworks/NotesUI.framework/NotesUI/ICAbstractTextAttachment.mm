@interface ICAbstractTextAttachment
+ (id)textAttachmentWithBaseAttachment:(id)attachment;
- (BOOL)containsFindableText;
- (BOOL)supportsMultiplePresentationSizes;
- (Class)attachmentViewClassForTextContainer:(id)container;
- (ICAbstractTextAttachment)initWithData:(id)data ofType:(id)type;
- (NSString)viewIdentifier;
- (id)newlyCreatedViewForManualRendering:(BOOL)rendering textContainer:(id)container;
@end

@implementation ICAbstractTextAttachment

- (NSString)viewIdentifier
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__44;
  v12 = __Block_byref_object_dispose__44;
  v13 = 0;
  attachment = [(ICAbstractTextAttachment *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__ICAbstractTextAttachment_viewIdentifier__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __42__ICAbstractTextAttachment_viewIdentifier__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attachment];
  v2 = [v5 identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)supportsMultiplePresentationSizes
{
  supportedPresentationSizes = [(ICAbstractTextAttachment *)self supportedPresentationSizes];
  v3 = [supportedPresentationSizes count] > 1;

  return v3;
}

+ (id)textAttachmentWithBaseAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  v4 = ICDynamicCast();
  if (v4)
  {
    v5 = [[ICInlineTextAttachment alloc] initWithAttachment:v4];
  }

  else
  {
    objc_opt_class();
    v6 = ICDynamicCast();
    if (v6)
    {
      v5 = [objc_alloc(+[ICTextAttachment textAttachmentClassForAttachment:](ICTextAttachment textAttachmentClassForAttachment:{v6)), "initWithAttachment:", v6}];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (ICAbstractTextAttachment)initWithData:(id)data ofType:(id)type
{
  v5.receiver = self;
  v5.super_class = ICAbstractTextAttachment;
  result = [(ICAbstractTextAttachment *)&v5 initWithData:data ofType:type];
  if (result)
  {
    result->_foregroundAlpha = 1.0;
  }

  return result;
}

- (Class)attachmentViewClassForTextContainer:(id)container
{
  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ICAbstractTextAttachment *)self attachmentViewClassForTextContainer:v4];
  }

  v5 = objc_opt_class();

  return v5;
}

- (id)newlyCreatedViewForManualRendering:(BOOL)rendering textContainer:(id)container
{
  renderingCopy = rendering;
  containerCopy = container;
  v7 = [(ICAbstractTextAttachment *)self attachmentViewClassForTextContainer:containerCopy];
  if ([(objc_class *)v7 conformsToProtocol:&unk_1F4FD4420])
  {
    v8 = [[v7 alloc] initWithTextAttachment:self textContainer:containerCopy forManualRendering:renderingCopy];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(v7);
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (BOOL)containsFindableText
{
  attachmentViewControllerClass = [(ICAbstractTextAttachment *)self attachmentViewControllerClass];

  return [(objc_class *)attachmentViewControllerClass conformsToProtocol:&unk_1F5091B60];
}

- (void)attachmentViewClassForTextContainer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "Trying to get a view class for an attachment with an unknown text attachment type: %@", &v2, 0xCu);
}

@end