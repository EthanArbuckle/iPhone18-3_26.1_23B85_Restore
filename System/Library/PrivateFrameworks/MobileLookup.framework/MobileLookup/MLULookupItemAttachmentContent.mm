@interface MLULookupItemAttachmentContent
- (MLULookupItemAttachmentContent)initWithAttachments:(id)attachments currentAttachmentIndex:(unint64_t)index;
@end

@implementation MLULookupItemAttachmentContent

- (MLULookupItemAttachmentContent)initWithAttachments:(id)attachments currentAttachmentIndex:(unint64_t)index
{
  attachmentsCopy = attachments;
  v11.receiver = self;
  v11.super_class = MLULookupItemAttachmentContent;
  v7 = [(MLULookupItemAttachmentContent *)&v11 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CDAA58]) initWithPreviewItems:attachmentsCopy];
    [(MLULookupItemContent *)v7 setPreviewViewController:v8];

    previewViewController = [(MLULookupItemContent *)v7 previewViewController];
    [previewViewController setCurrentPreviewItemIndex:index];

    [(MLULookupItemContent *)v7 setValid:1];
  }

  return v7;
}

@end