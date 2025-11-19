@interface MLULookupItemAttachmentContent
- (MLULookupItemAttachmentContent)initWithAttachments:(id)a3 currentAttachmentIndex:(unint64_t)a4;
@end

@implementation MLULookupItemAttachmentContent

- (MLULookupItemAttachmentContent)initWithAttachments:(id)a3 currentAttachmentIndex:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MLULookupItemAttachmentContent;
  v7 = [(MLULookupItemAttachmentContent *)&v11 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CDAA58]) initWithPreviewItems:v6];
    [(MLULookupItemContent *)v7 setPreviewViewController:v8];

    v9 = [(MLULookupItemContent *)v7 previewViewController];
    [v9 setCurrentPreviewItemIndex:a4];

    [(MLULookupItemContent *)v7 setValid:1];
  }

  return v7;
}

@end