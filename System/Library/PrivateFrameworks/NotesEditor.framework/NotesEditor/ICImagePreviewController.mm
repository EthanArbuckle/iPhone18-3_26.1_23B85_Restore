@interface ICImagePreviewController
- (ICImagePreviewController)initWithAttachment:(id)attachment;
@end

@implementation ICImagePreviewController

- (ICImagePreviewController)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v8.receiver = self;
  v8.super_class = ICImagePreviewController;
  v5 = [(ICImagePreviewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(ICImagePreviewController *)v5 setAttachment:attachmentCopy];
  }

  return v6;
}

@end