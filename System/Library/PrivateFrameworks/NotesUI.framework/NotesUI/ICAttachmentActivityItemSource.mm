@interface ICAttachmentActivityItemSource
- (ICAttachment)attachment;
- (ICAttachmentActivityItemSource)initWithAttachment:(id)attachment;
- (NSString)attachmentFileName;
- (NSString)attachmentTypeUTI;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
@end

@implementation ICAttachmentActivityItemSource

- (ICAttachmentActivityItemSource)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v8.receiver = self;
  v8.super_class = ICAttachmentActivityItemSource;
  v5 = [(ICAttachmentActivityItemSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICAttachmentActivityItemSource *)v5 setAttachment:attachmentCopy];
  }

  return v6;
}

- (NSString)attachmentTypeUTI
{
  attachment = [(ICAttachmentActivityItemSource *)self attachment];
  typeUTI = [attachment typeUTI];

  return typeUTI;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = [type isEqualToString:*MEMORY[0x1E69CDA90]];
  v6 = *MEMORY[0x1E69B7508];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    attachment = [(ICAttachmentActivityItemSource *)self attachment];
    pasteboardData = [attachment pasteboardData];

    if (pasteboardData)
    {
      v13 = v6;
      persistenceData = [pasteboardData persistenceData];
      v14[0] = persistenceData;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  if ([type isEqualToString:*MEMORY[0x1E69CDA90]])
  {
    v4 = *MEMORY[0x1E69B7508];
  }

  else
  {
    v4 = &stru_1F4F94F00;
  }

  return v4;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  attachment = [(ICAttachmentActivityItemSource *)self attachment];
  if ([attachment isTable])
  {
    v5 = 0;
  }

  else
  {
    attachment2 = [(ICAttachmentActivityItemSource *)self attachment];
    usesLinkPresentation = [attachment2 usesLinkPresentation];

    if (usesLinkPresentation)
    {
      v5 = 0;
      goto LABEL_7;
    }

    gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(v8);
    v5 = objc_alloc_init(*(v9 + 3232));
    attachment3 = [(ICAttachmentActivityItemSource *)self attachment];
    [MEMORY[0x1E69DCEB0] ic_scale];
    attachment = [attachment3 attachmentPreviewImageWithMinSize:*MEMORY[0x1E695F060] scale:{*(MEMORY[0x1E695F060] + 8), v11}];

    v12 = objc_alloc(MEMORY[0x1E696ACA0]);
    previewImageURL = [attachment previewImageURL];
    v14 = [v12 initWithContentsOfURL:previewImageURL];
    [v5 setIconProvider:v14];

    attachmentFileName = [(ICAttachmentActivityItemSource *)self attachmentFileName];
    [v5 setTitle:attachmentFileName];
  }

LABEL_7:

  return v5;
}

- (NSString)attachmentFileName
{
  attachment = [(ICAttachmentActivityItemSource *)self attachment];
  title = [attachment title];

  if (![title length])
  {
    attachment2 = [(ICAttachmentActivityItemSource *)self attachment];
    note = [attachment2 note];
    title2 = [note title];

    title = title2;
  }

  attachmentTypeUTI = [(ICAttachmentActivityItemSource *)self attachmentTypeUTI];
  if (![title length])
  {
    v9 = [MEMORY[0x1E69B7680] filenameFromUTI:attachmentTypeUTI];

    title = v9;
  }

  if (![title length])
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"name.length != 0" functionName:"-[ICAttachmentActivityItemSource attachmentFileName]" simulateCrash:1 showAlert:0 format:{@"Empty filename for uti %@", attachmentTypeUTI}];
  }

  v10 = [MEMORY[0x1E69B7680] filenameExtensionForUTI:attachmentTypeUTI];
  if (v10)
  {
    pathExtension = [title pathExtension];
    v12 = [pathExtension isEqual:v10];

    if ((v12 & 1) == 0)
    {
      v13 = [title stringByAppendingPathExtension:v10];

      title = v13;
    }
  }

  return title;
}

- (ICAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

@end