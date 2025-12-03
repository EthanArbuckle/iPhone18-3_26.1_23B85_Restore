@interface CUIKAttachmentPreviewController
+ (BOOL)canPreview:(id)preview fileName:(id)name;
- (CUIKAttachmentPreviewController)initWithAttachment:(id)attachment;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (unint64_t)supportedInterfaceOrientationMaskForInterfaceOrientation:(int64_t)orientation;
@end

@implementation CUIKAttachmentPreviewController

- (CUIKAttachmentPreviewController)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v13.receiver = self;
  v13.super_class = CUIKAttachmentPreviewController;
  v5 = [(CUIKAttachmentPreviewController *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(CUIKAttachmentPreviewController *)v5 setAttachment:attachmentCopy];
    v7 = objc_alloc_init(getQLPreviewControllerClass());
    view = [v7 view];
    window = [view window];
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    [v7 setForcedSupportedInterfaceOrientations:{-[CUIKAttachmentPreviewController supportedInterfaceOrientationMaskForInterfaceOrientation:](v6, "supportedInterfaceOrientationMaskForInterfaceOrientation:", interfaceOrientation)}];
    [v7 setDataSource:v6];
    [(CUIKAttachmentPreviewController *)v6 setPreviewController:v7];
  }

  return v6;
}

+ (BOOL)canPreview:(id)preview fileName:(id)name
{
  nameCopy = name;
  previewCopy = preview;
  v7 = [[CUIKAttachmentQLItem alloc] initWithURL:previewCopy title:nameCopy];

  LOBYTE(previewCopy) = [getQLPreviewControllerClass() canPreviewItem:v7];
  return previewCopy;
}

- (unint64_t)supportedInterfaceOrientationMaskForInterfaceOrientation:(int64_t)orientation
{
  if ((orientation - 2) > 2)
  {
    return 2;
  }

  else
  {
    return qword_1CAD58178[orientation - 2];
  }
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  v5 = [CUIKAttachmentQLItem alloc];
  attachment = [(CUIKAttachmentPreviewController *)self attachment];
  v7 = [attachment URL];
  attachment2 = [(CUIKAttachmentPreviewController *)self attachment];
  fileName = [attachment2 fileName];
  v10 = [(CUIKAttachmentQLItem *)v5 initWithURL:v7 title:fileName];

  return v10;
}

@end