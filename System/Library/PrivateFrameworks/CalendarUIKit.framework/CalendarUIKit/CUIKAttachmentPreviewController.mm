@interface CUIKAttachmentPreviewController
+ (BOOL)canPreview:(id)a3 fileName:(id)a4;
- (CUIKAttachmentPreviewController)initWithAttachment:(id)a3;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (unint64_t)supportedInterfaceOrientationMaskForInterfaceOrientation:(int64_t)a3;
@end

@implementation CUIKAttachmentPreviewController

- (CUIKAttachmentPreviewController)initWithAttachment:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CUIKAttachmentPreviewController;
  v5 = [(CUIKAttachmentPreviewController *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(CUIKAttachmentPreviewController *)v5 setAttachment:v4];
    v7 = objc_alloc_init(getQLPreviewControllerClass());
    v8 = [v7 view];
    v9 = [v8 window];
    v10 = [v9 windowScene];
    v11 = [v10 interfaceOrientation];

    [v7 setForcedSupportedInterfaceOrientations:{-[CUIKAttachmentPreviewController supportedInterfaceOrientationMaskForInterfaceOrientation:](v6, "supportedInterfaceOrientationMaskForInterfaceOrientation:", v11)}];
    [v7 setDataSource:v6];
    [(CUIKAttachmentPreviewController *)v6 setPreviewController:v7];
  }

  return v6;
}

+ (BOOL)canPreview:(id)a3 fileName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CUIKAttachmentQLItem alloc] initWithURL:v6 title:v5];

  LOBYTE(v6) = [getQLPreviewControllerClass() canPreviewItem:v7];
  return v6;
}

- (unint64_t)supportedInterfaceOrientationMaskForInterfaceOrientation:(int64_t)a3
{
  if ((a3 - 2) > 2)
  {
    return 2;
  }

  else
  {
    return qword_1CAD58178[a3 - 2];
  }
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v5 = [CUIKAttachmentQLItem alloc];
  v6 = [(CUIKAttachmentPreviewController *)self attachment];
  v7 = [v6 URL];
  v8 = [(CUIKAttachmentPreviewController *)self attachment];
  v9 = [v8 fileName];
  v10 = [(CUIKAttachmentQLItem *)v5 initWithURL:v7 title:v9];

  return v10;
}

@end