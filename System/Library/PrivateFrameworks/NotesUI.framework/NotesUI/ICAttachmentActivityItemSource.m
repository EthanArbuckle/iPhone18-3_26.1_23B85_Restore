@interface ICAttachmentActivityItemSource
- (ICAttachment)attachment;
- (ICAttachmentActivityItemSource)initWithAttachment:(id)a3;
- (NSString)attachmentFileName;
- (NSString)attachmentTypeUTI;
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerLinkMetadata:(id)a3;
@end

@implementation ICAttachmentActivityItemSource

- (ICAttachmentActivityItemSource)initWithAttachment:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICAttachmentActivityItemSource;
  v5 = [(ICAttachmentActivityItemSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICAttachmentActivityItemSource *)v5 setAttachment:v4];
  }

  return v6;
}

- (NSString)attachmentTypeUTI
{
  v2 = [(ICAttachmentActivityItemSource *)self attachment];
  v3 = [v2 typeUTI];

  return v3;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = [a4 isEqualToString:*MEMORY[0x1E69CDA90]];
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
    v9 = [(ICAttachmentActivityItemSource *)self attachment];
    v10 = [v9 pasteboardData];

    if (v10)
    {
      v13 = v6;
      v11 = [v10 persistenceData];
      v14[0] = v11;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4
{
  if ([a4 isEqualToString:*MEMORY[0x1E69CDA90]])
  {
    v4 = *MEMORY[0x1E69B7508];
  }

  else
  {
    v4 = &stru_1F4F94F00;
  }

  return v4;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = [(ICAttachmentActivityItemSource *)self attachment];
  if ([v4 isTable])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(ICAttachmentActivityItemSource *)self attachment];
    v7 = [v6 usesLinkPresentation];

    if (v7)
    {
      v5 = 0;
      goto LABEL_7;
    }

    gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(v8);
    v5 = objc_alloc_init(*(v9 + 3232));
    v10 = [(ICAttachmentActivityItemSource *)self attachment];
    [MEMORY[0x1E69DCEB0] ic_scale];
    v4 = [v10 attachmentPreviewImageWithMinSize:*MEMORY[0x1E695F060] scale:{*(MEMORY[0x1E695F060] + 8), v11}];

    v12 = objc_alloc(MEMORY[0x1E696ACA0]);
    v13 = [v4 previewImageURL];
    v14 = [v12 initWithContentsOfURL:v13];
    [v5 setIconProvider:v14];

    v15 = [(ICAttachmentActivityItemSource *)self attachmentFileName];
    [v5 setTitle:v15];
  }

LABEL_7:

  return v5;
}

- (NSString)attachmentFileName
{
  v3 = [(ICAttachmentActivityItemSource *)self attachment];
  v4 = [v3 title];

  if (![v4 length])
  {
    v5 = [(ICAttachmentActivityItemSource *)self attachment];
    v6 = [v5 note];
    v7 = [v6 title];

    v4 = v7;
  }

  v8 = [(ICAttachmentActivityItemSource *)self attachmentTypeUTI];
  if (![v4 length])
  {
    v9 = [MEMORY[0x1E69B7680] filenameFromUTI:v8];

    v4 = v9;
  }

  if (![v4 length])
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"name.length != 0" functionName:"-[ICAttachmentActivityItemSource attachmentFileName]" simulateCrash:1 showAlert:0 format:{@"Empty filename for uti %@", v8}];
  }

  v10 = [MEMORY[0x1E69B7680] filenameExtensionForUTI:v8];
  if (v10)
  {
    v11 = [v4 pathExtension];
    v12 = [v11 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      v13 = [v4 stringByAppendingPathExtension:v10];

      v4 = v13;
    }
  }

  return v4;
}

- (ICAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

@end