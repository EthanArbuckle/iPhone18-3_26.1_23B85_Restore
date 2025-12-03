@interface ICDocCamExtractedDocumentNavigationController
- (ICDocCamExtractedDocumentNavigationController)initWithDelegate:(id)delegate documentInfoCollection:(id)collection imageCache:(id)cache currentIndex:(int64_t)index mode:(int)mode;
- (void)didReceiveMemoryWarning;
- (void)prepareForDismissal;
@end

@implementation ICDocCamExtractedDocumentNavigationController

- (ICDocCamExtractedDocumentNavigationController)initWithDelegate:(id)delegate documentInfoCollection:(id)collection imageCache:(id)cache currentIndex:(int64_t)index mode:(int)mode
{
  v7 = *&mode;
  cacheCopy = cache;
  collectionCopy = collection;
  delegateCopy = delegate;
  v15 = [[ICDocCamExtractedDocumentViewController alloc] initWithDelegate:delegateCopy documentInfoCollection:collectionCopy imageCache:cacheCopy currentIndex:index mode:v7];

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
  topViewController = [(ICDocCamExtractedDocumentNavigationController *)self topViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    topViewController2 = [(ICDocCamExtractedDocumentNavigationController *)self topViewController];
    [topViewController2 prepareForDismissal];
  }
}

@end