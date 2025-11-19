@interface ICImagePreviewController
- (ICImagePreviewController)initWithAttachment:(id)a3;
@end

@implementation ICImagePreviewController

- (ICImagePreviewController)initWithAttachment:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICImagePreviewController;
  v5 = [(ICImagePreviewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(ICImagePreviewController *)v5 setAttachment:v4];
  }

  return v6;
}

@end