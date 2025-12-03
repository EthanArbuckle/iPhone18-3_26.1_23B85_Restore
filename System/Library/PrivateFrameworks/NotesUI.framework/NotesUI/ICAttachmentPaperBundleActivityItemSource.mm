@interface ICAttachmentPaperBundleActivityItemSource
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
@end

@implementation ICAttachmentPaperBundleActivityItemSource

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  attachment = [(ICAttachmentActivityItemSource *)self attachment];
  isPasswordProtected = [attachment isPasswordProtected];

  if (isPasswordProtected)
  {
    v10 = objc_autoreleasePoolPush();
    attachment2 = [(ICAttachmentActivityItemSource *)self attachment];
    fallbackPDFData = [attachment2 fallbackPDFData];

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    attachment3 = [(ICAttachmentActivityItemSource *)self attachment];
    fallbackPDFData = [attachment3 previewItemURL];
  }

  return fallbackPDFData;
}

@end