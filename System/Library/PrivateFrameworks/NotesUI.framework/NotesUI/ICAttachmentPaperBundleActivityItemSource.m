@interface ICAttachmentPaperBundleActivityItemSource
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
@end

@implementation ICAttachmentPaperBundleActivityItemSource

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICAttachmentActivityItemSource *)self attachment];
  v9 = [v8 isPasswordProtected];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [(ICAttachmentActivityItemSource *)self attachment];
    v12 = [v11 fallbackPDFData];

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v13 = [(ICAttachmentActivityItemSource *)self attachment];
    v12 = [v13 previewItemURL];
  }

  return v12;
}

@end