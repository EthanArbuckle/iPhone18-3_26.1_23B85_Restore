@interface ICDocCamExtractedDocumentNavigationController
- (ICDocCamExtractedDocumentNavigationController)initWithDelegate:(id)a3 documentInfoCollection:(id)a4 imageCache:(id)a5 currentIndex:(int64_t)a6 mode:(int)a7;
- (void)didReceiveMemoryWarning;
- (void)prepareForDismissal;
@end

@implementation ICDocCamExtractedDocumentNavigationController

- (ICDocCamExtractedDocumentNavigationController)initWithDelegate:(id)a3 documentInfoCollection:(id)a4 imageCache:(id)a5 currentIndex:(int64_t)a6 mode:(int)a7
{
  v7 = *&a7;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[ICDocCamExtractedDocumentViewController alloc] initWithDelegate:v14 documentInfoCollection:v13 imageCache:v12 currentIndex:a6 mode:v7];

  v19.receiver = self;
  v19.super_class = ICDocCamExtractedDocumentNavigationController;
  v16 = [(ICDocCamExtractedDocumentNavigationController *)&v19 initWithRootViewController:v15];
  v17 = v16;
  if (v16)
  {
    [(ICDocCamExtractedDocumentNavigationController *)v16 setModalPresentationCapturesStatusBarAppearance:1];
  }

  return v17;
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = ICDocCamExtractedDocumentNavigationController;
  [(ICDocCamExtractedDocumentNavigationController *)&v2 didReceiveMemoryWarning];
}

- (void)prepareForDismissal
{
  v3 = [(ICDocCamExtractedDocumentNavigationController *)self topViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ICDocCamExtractedDocumentNavigationController *)self topViewController];
    [v5 prepareForDismissal];
  }
}

@end