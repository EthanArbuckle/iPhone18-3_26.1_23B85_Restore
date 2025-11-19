@interface MUImageContentViewController
- (AKPageController)pageController;
- (AKRectAnnotation)editingAnnotaiton;
- (BOOL)_imageIsSmallerThanView;
- (BOOL)_placeholderCanBeUsedForBaseImageOfSize:(CGSize)a3;
- (BOOL)canEditContent;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (CGPoint)_maximumContentOffset;
- (CGPoint)_minimumContentOffset;
- (CGPoint)convertPoint:(CGPoint)a3 fromModelToOverlayWithPageIndex:(unint64_t)a4 forAnnotationController:(id)a5;
- (CGPoint)convertPoint:(CGPoint)a3 fromOverlayToModelWithPageIndex:(unint64_t)a4 forAnnotationController:(id)a5;
- (CGRect)_annotationRectInOverlay:(id)a3 pageIndex:(unint64_t)a4;
- (CGRect)_zoomRectForScale:(double)a3 withCenter:(CGPoint)a4;
- (CGRect)maxPageRectWithPageIndex:(unint64_t)a3 forAnnotationController:(id)a4;
- (CGRect)visibleContentRect;
- (CGRect)visibleContentRectInCoordinateSpace:(id)a3;
- (CGSize)idealContentSizeForScreenSize:(CGSize)a3 windowDecorationSize:(CGSize)a4;
- (CGSize)sourceImagePixelSize;
- (MUImageContentViewController)initWithSourceContent:(id)a3 archivedDataModel:(id)a4 delegate:(id)a5;
- (NSString)originalImageDescription;
- (UIEdgeInsets)edgeInsets;
- (UIImage)imageForAnalysis;
- (UIScrollViewDelegate)scrollViewDelegate;
- (double)_zoomToFitZoomFactorInBounds:(CGRect)a3;
- (double)_zoomToFitZoomFactorIncludingScrollViewEdgeInsets;
- (double)modelBaseScaleFactorOfPageAtIndex:(unint64_t)a3 forAnnotationController:(id)a4;
- (id)contentSnapshot;
- (id)controller:(id)a3 willSetToolbarItems:(id)a4;
- (id)layerContainingQuickBackgroundForLoupeOnOverlayAtPageIndex:(unint64_t)a3 forAnnotationController:(id)a4;
- (id)newContentSnapshotPDFDataIncludingAdornments:(BOOL)a3 atScale:(double)a4 inRect:(CGRect)a5 onOverlayAtPageIndex:(unint64_t)a6 forAnnotationController:(id)a7;
- (id)popoverPresentingViewControllerForAnnotationController:(id)a3;
- (id)undoManagerForAnnotationController:(id)a3;
- (unint64_t)_pageIndexForAnnotation:(id)a3;
- (void)_adjustScrollViewForKeyboardNotification:(id)a3;
- (void)_annotationWillBeginEditing:(id)a3;
- (void)_doubleTap:(id)a3;
- (void)_downsampleImageForDisplay:(CGImage *)a3 fromImageSource:(CGImageSource *)a4 withCompletionHandler:(id)a5;
- (void)_installOverlayOfController:(id)a3 forPageAtIndex:(unint64_t)a4;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_prepareToRotate;
- (void)_recoverFromRotation;
- (void)_setImage:(id)a3 withCompletionHandler:(id)a4;
- (void)_setupScrollViewForImageOfScaledSize:(CGSize)a3;
- (void)_uninstallOverlayOfController:(id)a3 forPageAtIndex:(unint64_t)a4;
- (void)_updateMinMaxZoomFactor;
- (void)adjustScrollViewToAccomodateKeyboardStartingFrame:(double)a3 endingFrame:(double)a4 annotationFrame:(double)a5 inOverlayView:(CGFloat)a6 withAnimationDuration:(CGFloat)a7 curve:(CGFloat)a8;
- (void)controllerDidEnterToolMode:(id)a3;
- (void)controllerDidExitToolMode:(id)a3;
- (void)controllerWillDismissSignatureCaptureView:(id)a3;
- (void)controllerWillDismissSignatureManagerView:(id)a3;
- (void)controllerWillShowSignatureCaptureView:(id)a3;
- (void)controllerWillShowSignatureManagerView:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)editCheckpointReachedForAnnotationController:(id)a3;
- (void)editDetectedForAnnotationController:(id)a3;
- (void)enableHDRAnnotations;
- (void)installDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 forAnnotationController:(id)a5;
- (void)loadContentWithCompletionBlock:(id)a3;
- (void)penStrokeCompletedForAnnotationController:(id)a3;
- (void)positionSketchOverlay:(id)a3 forAnnotationController:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidZoom:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setInkStyle:(unint64_t)a3;
- (void)setup;
- (void)teardown;
- (void)uninstallAllAnnotationControllerOverlays;
- (void)uninstallDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 forAnnotationController:(id)a5;
- (void)updateDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 withPriority:(BOOL)a5 forAnnotationController:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MUImageContentViewController

- (MUImageContentViewController)initWithSourceContent:(id)a3 archivedDataModel:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = MUImageContentViewController;
  v11 = [(MUContentViewController *)&v18 initWithNibName:0 bundle:0 delegate:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceContent, a3);
    v12->_downsampledImageScale = 1.0;
    v12->_maxImageDimension = 1.79769313e308;
    v12->_usePlaceholderAsDisplayImageIfPossible = v10 == 0;
    v13 = [MEMORY[0x277CEA698] controllerWithDelegate:v12];
    [(MUContentViewController *)v12 setAnnotationController:v13];

    [(MUImageContentViewController *)v12 setInkStyle:0];
    if (v10)
    {
      v14 = objc_alloc_init(MUImageReader);
      v15 = [(MUContentViewController *)v12 annotationController];
      v16 = [(MUImageReader *)v14 readAnnotationsFromArchivedModelData:v10 toController:v15];

      if (!v16)
      {
        NSLog(&cfstr_SFailedToReadA.isa, "[MUImageContentViewController initWithSourceContent:archivedDataModel:delegate:]");
        v12->_usePlaceholderAsDisplayImageIfPossible = 1;
      }
    }
  }

  return v12;
}

- (void)setInkStyle:(unint64_t)a3
{
  self->_inkStyle = a3;
  v3 = a3 == 0;
  v4 = [(MUContentViewController *)self annotationController];
  [v4 setUseHighVisibilityDefaultInks:v3];
}

- (UIImage)imageForAnalysis
{
  v2 = [(MUImageContentViewController *)self imageView];
  v3 = [v2 image];

  return v3;
}

- (void)dealloc
{
  [(MUImageContentViewController *)self teardown];
  v3.receiver = self;
  v3.super_class = MUImageContentViewController;
  [(MUImageContentViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v46.receiver = self;
  v46.super_class = MUImageContentViewController;
  [(MUImageContentViewController *)&v46 viewDidLoad];
  v3 = [MEMORY[0x277D75348] darkGrayColor];
  v4 = [(MUImageContentViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [MUImageScrollView alloc];
  v6 = [(MUImageContentViewController *)self view];
  [v6 bounds];
  v7 = [(MUImageScrollView *)v5 initWithFrame:?];
  [(MUImageContentViewController *)self setScrollView:v7];

  v8 = [(MUImageContentViewController *)self scrollView];
  [v8 setPreservesCenterDuringRotation:1];

  v9 = [(MUImageContentViewController *)self scrollView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(MUImageContentViewController *)self scrollView];
  [v10 setDelegate:self];

  [(MUImageContentViewController *)self edgeInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(MUImageContentViewController *)self scrollView];
  [v19 setContentInset:{v12, v14, v16, v18}];

  v20 = *MEMORY[0x277D76EB8];
  v21 = [(MUImageContentViewController *)self scrollView];
  [v21 setDecelerationRate:v20];

  v22 = [(MUImageContentViewController *)self scrollView];
  [v22 setMaximumZoomScale:1.3];

  v23 = [(MUImageContentViewController *)self scrollView];
  [v23 setMinimumZoomScale:0.1];

  v24 = [(MUImageContentViewController *)self view];
  v25 = [(MUImageContentViewController *)self scrollView];
  [v24 addSubview:v25];

  v26 = _NSDictionaryOfVariableBindings(&cfstr_Scrollview.isa, self->_scrollView, 0);
  v27 = MEMORY[0x277CCAAD0];
  v28 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_scrollView]|" options:0 metrics:0 views:v26];
  [v27 activateConstraints:v28];

  v29 = MEMORY[0x277CCAAD0];
  v30 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_scrollView]|" options:0 metrics:0 views:v26];
  [v29 activateConstraints:v30];

  v31 = objc_alloc(MEMORY[0x277D75D18]);
  v32 = [(MUImageContentViewController *)self scrollView];
  [v32 bounds];
  v33 = [v31 initWithFrame:?];
  [(MUImageContentViewController *)self setCombinedContentView:v33];

  v34 = [(MUImageContentViewController *)self scrollView];
  v35 = [(MUImageContentViewController *)self combinedContentView];
  [v34 addSubview:v35];

  v36 = objc_alloc(MEMORY[0x277D755E8]);
  v37 = [(MUImageContentViewController *)self combinedContentView];
  [v37 bounds];
  v38 = [v36 initWithFrame:?];
  [(MUImageContentViewController *)self setImageView:v38];

  v39 = [(MUImageContentViewController *)self imageView];
  [v39 setUserInteractionEnabled:1];

  v40 = [(MUImageContentViewController *)self combinedContentView];
  v41 = [(MUImageContentViewController *)self imageView];
  [v40 addSubview:v41];

  v42 = [MEMORY[0x277CCAB98] defaultCenter];
  [v42 addObserver:self selector:sel__annotationWillBeginEditing_ name:*MEMORY[0x277CEA670] object:0];

  v43 = [MEMORY[0x277CCAB98] defaultCenter];
  [v43 addObserver:self selector:sel__annotationDidEndEditing_ name:*MEMORY[0x277CEA650] object:0];

  v44 = [MEMORY[0x277CCAB98] defaultCenter];
  [v44 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  v45 = [MEMORY[0x277CCAB98] defaultCenter];
  [v45 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

  [(MUImageContentViewController *)self setFirstLoadZoomToFit:1];
  [(MUImageContentViewController *)self setZoomToFitRestoreValue:1];
}

- (CGRect)visibleContentRect
{
  v3 = [(MUImageContentViewController *)self view];
  v4 = [v3 window];
  [(MUImageContentViewController *)self visibleContentRectInCoordinateSpace:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)visibleContentRectInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(MUImageContentViewController *)self imageView];
  v6 = [(MUImageContentViewController *)self imageView];
  [v6 bounds];
  [v5 convertRect:v4 toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)contentSnapshot
{
  v2 = [(MUImageContentViewController *)self combinedContentView];
  v3 = [v2 snapshotViewAfterScreenUpdates:1];

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = MUImageContentViewController;
  [(MUImageContentViewController *)&v3 viewDidAppear:a3];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = MUImageContentViewController;
  [(MUImageContentViewController *)&v2 didReceiveMemoryWarning];
}

- (void)setup
{
  NSLog(&cfstr_S_0.isa, a2, "[MUImageContentViewController setup]");
  [(MUImageContentViewController *)self setDidSetup:1];
  v36 = [(MUContentViewController *)self annotationController];
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__doubleTap_];
  [v3 setNumberOfTapsRequired:2];
  [(MUImageContentViewController *)self setLocalDoubleTapRecognizer:v3];
  v4 = [(MUImageContentViewController *)self view];
  [v4 addGestureRecognizer:v3];

  v5 = [(MUImageContentViewController *)self view];
  v6 = [v36 tapGestureRecognizer];
  [v5 addGestureRecognizer:v6];

  v7 = [(MUImageContentViewController *)self view];
  v8 = [v36 doubleTapGestureRecognizer];
  [v7 addGestureRecognizer:v8];

  v9 = [(MUImageContentViewController *)self view];
  v10 = [v36 pressGestureRecognizer];
  [v9 addGestureRecognizer:v10];

  v11 = [(MUImageContentViewController *)self view];
  v12 = [v36 panGestureRecognizer];
  [v11 addGestureRecognizer:v12];

  v13 = [(MUImageContentViewController *)self view];
  v14 = [v36 rotationGestureRecognizer];
  [v13 addGestureRecognizer:v14];

  v15 = [v36 tapGestureRecognizer];
  [v15 requireGestureRecognizerToFail:v3];

  v16 = [v36 doubleTapGestureRecognizer];
  [v3 requireGestureRecognizerToFail:v16];

  v17 = [v36 panGestureRecognizer];
  [v3 requireGestureRecognizerToFail:v17];

  v18 = [(MUImageContentViewController *)self scrollView];
  v19 = [v18 panGestureRecognizer];
  v20 = [v36 panGestureRecognizer];
  [v19 requireGestureRecognizerToFail:v20];

  v21 = [(MUImageContentViewController *)self scrollView];
  v22 = [v21 panGestureRecognizer];
  v23 = [v36 rotationGestureRecognizer];
  [v22 requireGestureRecognizerToFail:v23];

  v24 = [(MUImageContentViewController *)self scrollView];
  v25 = [v24 pinchGestureRecognizer];
  v26 = [v36 panGestureRecognizer];
  [v25 requireGestureRecognizerToFail:v26];

  v27 = [(MUImageContentViewController *)self scrollView];
  v28 = [v27 pinchGestureRecognizer];
  v29 = [v36 rotationGestureRecognizer];
  [v28 requireGestureRecognizerToFail:v29];

  v30 = [v36 modelController];
  v31 = [v30 pageModelControllers];
  v32 = [v31 count];

  if (!v32)
  {
    v33 = objc_opt_new();
    v34 = [v36 modelController];
    v35 = [v34 mutableArrayValueForKey:@"pageModelControllers"];
    [v35 addObject:v33];
  }

  [v36 setCurrentPageIndex:0];
}

- (void)teardown
{
  NSLog(&cfstr_S_0.isa, a2, "[MUImageContentViewController teardown]");
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  if ([(MUImageContentViewController *)self didSetup])
  {
    [(MUImageContentViewController *)self setDidSetup:0];
    if ([(MUImageContentViewController *)self isViewLoaded])
    {
      v4 = [(MUImageContentViewController *)self view];
      v5 = [(MUImageContentViewController *)self localDoubleTapRecognizer];
      [v4 removeGestureRecognizer:v5];

      v6 = [(MUContentViewController *)self annotationController];
      if (v6)
      {
        v7 = [(MUImageContentViewController *)self view];
        v8 = [v6 tapGestureRecognizer];
        [v7 removeGestureRecognizer:v8];

        v9 = [(MUImageContentViewController *)self view];
        v10 = [v6 doubleTapGestureRecognizer];
        [v9 removeGestureRecognizer:v10];

        v11 = [(MUImageContentViewController *)self view];
        v12 = [v6 pressGestureRecognizer];
        [v11 removeGestureRecognizer:v12];

        v13 = [(MUImageContentViewController *)self view];
        v14 = [v6 panGestureRecognizer];
        [v13 removeGestureRecognizer:v14];

        v15 = [(MUImageContentViewController *)self view];
        v16 = [v6 rotationGestureRecognizer];
        [v15 removeGestureRecognizer:v16];

        [v6 teardown];
        [(MUContentViewController *)self setAnnotationController:0];
      }
    }

    [(MUImageContentViewController *)self setLocalDoubleTapRecognizer:0];
  }

  if ([(MUImageContentViewController *)self isViewLoaded])
  {
    v17 = [(MUImageContentViewController *)self scrollView];
    [v17 setDelegate:0];

    v18 = [(MUImageContentViewController *)self scrollView];
    [v18 removeFromSuperview];

    [(MUImageContentViewController *)self setScrollView:0];
  }
}

- (void)loadContentWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MUImageContentViewController *)self sourceContent];
  [(MUImageContentViewController *)self _setImage:v5 withCompletionHandler:v4];
}

- (CGSize)idealContentSizeForScreenSize:(CGSize)a3 windowDecorationSize:(CGSize)a4
{
  v4 = a3.width - a4.width;
  v5 = a3.height - a4.height;
  [(MUImageContentViewController *)self contentSize];
  v8 = v7 * (v4 / v6);
  v9 = v6 * (v5 / v7);
  if (v6 / v7 < v4 / v5)
  {
    v8 = v5;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9 > v6;
  if (v8 > v7)
  {
    v10 = 1;
  }

  if (!v10)
  {
    v6 = v9;
    v7 = v8;
  }

  v11 = fmax(v6, 32.0);
  v12 = fmax(v7, 32.0);
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  p_edgeInsets = &self->_edgeInsets;
  v9 = self->_edgeInsets.top;
  if (self->_edgeInsets.left == a3.left && v9 == top && self->_edgeInsets.right == a3.right)
  {
    v9 = self->_edgeInsets.bottom;
    p_edgeInsets->top = top;
    self->_edgeInsets.left = a3.left;
    self->_edgeInsets.bottom = a3.bottom;
    self->_edgeInsets.right = a3.right;
    if (v9 == a3.bottom)
    {
      goto LABEL_11;
    }
  }

  else
  {
    p_edgeInsets->top = top;
    self->_edgeInsets.left = a3.left;
    self->_edgeInsets.bottom = a3.bottom;
    self->_edgeInsets.right = a3.right;
  }

  v12 = [(MUImageContentViewController *)self scrollView];
  [v12 setContentInset:{top, left, bottom, right}];

  v13 = [(MUImageContentViewController *)self scrollView];
  [v13 setScrollIndicatorInsets:{top, left, bottom, right}];

LABEL_11:

  [(MUImageContentViewController *)self _updateMinMaxZoomFactor];
}

- (void)_installOverlayOfController:(id)a3 forPageAtIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 setOverlayShouldPixelate:1];
  if (([v6 isOverlayViewLoadedAtIndex:a4] & 1) == 0)
  {
    [v6 prepareOverlayAtIndex:a4];
  }

  v7 = [v6 overlayViewAtIndex:a4];
  v8 = [(MUImageContentViewController *)self combinedContentView];
  v9 = [v7 superview];

  if (v9 != v8)
  {
    [(UIImageView *)self->_imageView bounds];
    [(UIImageView *)self->_imageView convertRect:v8 toView:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v20 = *(MEMORY[0x277CBF2C0] + 16);
    *&v24.a = *MEMORY[0x277CBF2C0];
    v21 = *&v24.a;
    *&v24.c = v20;
    *&v24.tx = *(MEMORY[0x277CBF2C0] + 32);
    v19 = *&v24.tx;
    CGAffineTransformMakeScale(&t2, 1.0, -1.0);
    *&t1.a = v21;
    *&t1.c = v20;
    *&t1.tx = v19;
    CGAffineTransformConcat(&v24, &t1, &t2);
    v18 = [v7 layer];
    [v18 setAnchorPoint:{0.5, 0.5}];

    t2 = v24;
    [v7 setTransform:&t2];
    [v7 setFrame:{v11, v13, v15, v17}];
    [v8 addSubview:v7];
  }
}

- (void)_uninstallOverlayOfController:(id)a3 forPageAtIndex:(unint64_t)a4
{
  v6 = a3;
  if ([v6 isOverlayViewLoadedAtIndex:a4])
  {
    v5 = [v6 overlayViewAtIndex:a4];
    [v6 relinquishOverlayAtIndex:a4];
    [v5 removeFromSuperview];
  }
}

- (void)uninstallAllAnnotationControllerOverlays
{
  v7 = [(MUContentViewController *)self annotationController];
  v3 = [v7 modelController];
  v4 = [v3 pageModelControllers];
  v5 = [v4 count];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      [(MUImageContentViewController *)self _uninstallOverlayOfController:v7 forPageAtIndex:i];
    }
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (BOOL)canEditContent
{
  if (![(MUImageContentViewController *)self didSetup])
  {
    return 0;
  }

  v3 = [(MUImageContentViewController *)self imageView];
  v4 = [v3 image];
  v5 = v4 != 0;

  return v5;
}

- (void)_setImage:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    NSLog(&cfstr_SCouldNotSetIm.isa, "[MUImageContentViewController _setImage:withCompletionHandler:]", 0);
    goto LABEL_29;
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = CGImageSourceCreateWithData(v6, 0);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [(__CFData *)v6 CGImage];
        v34[3] = v23;
        CGImageRetain(v23);
      }

      goto LABEL_8;
    }

    v8 = CGImageSourceCreateWithURL(v6, 0);
  }

  v30[3] = v8;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v8, 0, 0);
  v34[3] = ImageAtIndex;
LABEL_8:
  v10 = v34[3];
  if (v10)
  {
    Width = CGImageGetWidth(v10);
    Height = CGImageGetHeight(v34[3]);
    v13 = v30[3];
    if (v13)
    {
      v14 = CGImageSourceCopyPropertiesAtIndex(v13, 0, 0);
      v15 = v14;
      if (v14)
      {
        v16 = *MEMORY[0x277CD3410];
        if (CFDictionaryContainsKey(v14, *MEMORY[0x277CD3410]))
        {
          Value = CFDictionaryGetValue(v15, v16);
          valuePtr = 0;
          if (Value)
          {
            if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
            {
              if ((valuePtr - 5) >= 4)
              {
                v18 = Height;
              }

              else
              {
                v18 = Width;
              }

              if ((valuePtr - 5) < 4)
              {
                Width = Height;
              }

              Height = v18;
            }
          }
        }

        CFRelease(v15);
      }
    }

    [(MUImageContentViewController *)self setSourceImagePixelSize:Width, Height];
    v19 = v34[3];
    v20 = v30[3];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __64__MUImageContentViewController__setImage_withCompletionHandler___block_invoke;
    v24[3] = &unk_27986E790;
    v26 = &v33;
    v27 = &v29;
    v24[4] = self;
    v25 = v7;
    [(MUImageContentViewController *)self _downsampleImageForDisplay:v19 fromImageSource:v20 withCompletionHandler:v24];
  }

  else
  {
    v21 = v30[3];
    if (v21)
    {
      CFRelease(v21);
      v22 = v34[3];
    }

    else
    {
      v22 = 0;
    }

    NSLog(&cfstr_SFailedToGetAC.isa, "[MUImageContentViewController _setImage:withCompletionHandler:]", v22);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
LABEL_29:
}

void __64__MUImageContentViewController__setImage_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  CGImageRelease(*(*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 48) + 8) + 24) = 0;
  v7 = *(*(*(a1 + 56) + 8) + 24);
  if (v7)
  {
    CFRelease(v7);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  if (!v6)
  {
    v8 = [*(a1 + 32) imageView];
    [v8 setImage:v5];

    if ([v5 isHighDynamicRange])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    v10 = [*(a1 + 32) imageView];
    [v10 setPreferredImageDynamicRange:v9];

    v11 = [*(a1 + 32) annotationController];
    [*(a1 + 32) _installOverlayOfController:v11 forPageAtIndex:0];
    v12 = [MEMORY[0x277D75418] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (v13 != 1)
    {
      v14 = [MEMORY[0x277D75418] currentDevice];
      if (([v14 orientation] - 1) >= 2)
      {
      }

      else
      {
        v15 = [*(a1 + 32) parentViewController];
        v16 = [v15 view];
        [v16 safeAreaInsets];
        v18 = v17;

        if (v18 <= 0.0)
        {
          [*(a1 + 32) setLoadCompletionBlock:*(a1 + 40)];
          v19 = dispatch_time(0, 200000000);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __64__MUImageContentViewController__setImage_withCompletionHandler___block_invoke_2;
          block[3] = &unk_27986E2C8;
          block[4] = *(a1 + 32);
          dispatch_after(v19, MEMORY[0x277D85CD0], block);
LABEL_15:

          goto LABEL_16;
        }
      }
    }

    v20 = *(a1 + 40);
    if (v20)
    {
      (*(v20 + 16))();
    }

    goto LABEL_15;
  }

  NSLog(&stru_2869635F0.isa, v6);
LABEL_16:
}

void __64__MUImageContentViewController__setImage_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) loadCompletionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) loadCompletionBlock];
    v3[2]();

    v4 = *(a1 + 32);

    [v4 setLoadCompletionBlock:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v24.receiver = self;
  v24.super_class = MUImageContentViewController;
  [(MUImageContentViewController *)&v24 viewDidLayoutSubviews];
  v3 = [(MUImageContentViewController *)self loadCompletionBlock];
  if (v3)
  {
    v4 = v3;
    v5 = [(MUImageContentViewController *)self parentViewController];
    v6 = [v5 view];
    [v6 safeAreaInsets];
    v8 = v7;

    if (v8 != 0.0)
    {
      v9 = [(MUImageContentViewController *)self loadCompletionBlock];
      [(MUImageContentViewController *)self setLoadCompletionBlock:0];
      v10 = dispatch_time(0, 0);
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __53__MUImageContentViewController_viewDidLayoutSubviews__block_invoke;
      v21 = &unk_27986E7B8;
      v22 = self;
      v23 = v9;
      v11 = v9;
      dispatch_after(v10, MEMORY[0x277D85CD0], &v18);
    }
  }

  [(MUImageContentViewController *)self _updateMinMaxZoomFactor:v18];
  if ([(MUImageContentViewController *)self firstLoadZoomToFit])
  {
    v12 = [(MUImageContentViewController *)self _imageIsSmallerThanView];
    v13 = 1.0;
    if (!v12)
    {
      [(MUImageContentViewController *)self _zoomToFitZoomFactor];
    }

    [(UIScrollView *)self->_scrollView setZoomScale:v13];
  }

  [(UIScrollView *)self->_scrollView zoomScale];
  v15 = v14;
  [(UIScrollView *)self->_scrollView minimumZoomScale];
  if (v15 < v16)
  {
    v15 = v16;
  }

  [(UIScrollView *)self->_scrollView maximumZoomScale];
  if (v15 < v17)
  {
    v17 = v15;
  }

  [(UIScrollView *)self->_scrollView setZoomScale:v17];
}

uint64_t __53__MUImageContentViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _updateMinMaxZoomFactor];
  v2 = [*(a1 + 32) _imageIsSmallerThanView];
  v3 = 1.0;
  if ((v2 & 1) == 0)
  {
    [*(a1 + 32) _zoomToFitZoomFactor];
  }

  v4 = *(*(a1 + 32) + 1080);

  return [v4 setZoomScale:v3];
}

- (void)_setupScrollViewForImageOfScaledSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(MUImageContentViewController *)self imageView];
  [v6 setFrame:{0.0, 0.0, width, height}];

  v7 = [(MUImageContentViewController *)self combinedContentView];
  [v7 setFrame:{0.0, 0.0, width, height}];

  v13 = [(MUImageContentViewController *)self scrollView];
  v8 = [(MUImageContentViewController *)self combinedContentView];
  [v8 frame];
  [v13 setContentSize:{v9, v10}];

  [(MUImageContentViewController *)self _updateMinMaxZoomFactor];
  v11 = [(MUImageContentViewController *)self _imageIsSmallerThanView];
  v12 = 1.0;
  if (!v11)
  {
    [(MUImageContentViewController *)self _zoomToFitZoomFactor];
  }

  [v13 setZoomScale:v12];
  [(MUImageContentViewController *)self setFirstLoadZoomToFit:1];
}

- (void)_downsampleImageForDisplay:(CGImage *)a3 fromImageSource:(CGImageSource *)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  [(MUImageContentViewController *)self sourceImagePixelSize];
  v11 = v9;
  v12 = v10;
  if (v9 >= v10)
  {
    v13 = v9;
  }

  else
  {
    v13 = v10;
  }

  v14 = [(MUImageContentViewController *)self _placeholderCanBeUsedForBaseImageOfSize:?];
  v15 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__0;
  v47 = __Block_byref_object_dispose__0;
  if (v14)
  {
    v15 = [(MUImageContentViewController *)self tentativePlaceholderImage];
  }

  v48 = v15;
  [(MUImageContentViewController *)self setTentativePlaceholderImage:0];
  if (v14)
  {
    [v44[5] size];
    v17 = v16;
    [v44[5] size];
    if (v17 >= v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }
  }

  else
  {
    [(MUImageContentViewController *)self maxImageDimension];
    if (v13 <= v20)
    {
      v21 = 1.0;
      v22 = v11;
      goto LABEL_14;
    }

    [(MUImageContentViewController *)self maxImageDimension];
  }

  v21 = v19 / v13;
  v22 = v11 * v21;
  v12 = v12 * v21;
LABEL_14:
  v23 = [(MUContentViewController *)self delegate];
  v24 = objc_opt_respondsToSelector();
  v26 = v21;
  if (v24)
  {
    [v23 adjustedSourceImageSize];
    v25 = v27;
    v28 = v27 == 0.0;
    v26 = v21;
    if (!v28)
    {
      v26 = v11 / v25;
    }
  }

  [(MUImageContentViewController *)self setDownsampledImageScale:v26, v25];
  [(MUImageContentViewController *)self _setupScrollViewForImageOfScaledSize:v22, v12];
  if (v8)
  {
    if (v14)
    {
      v8[2](v8, v44[5], 0);
    }

    else
    {
      v29 = CGImageSourceCopyPropertiesAtIndex(a4, 0, 0);
      v30 = [(__CFDictionary *)v29 valueForKey:*MEMORY[0x277CD3410]];
      v31 = v30;
      if (v21 >= 1.0 && [v30 longLongValue] < 2)
      {
        v33 = [MEMORY[0x277D755B8] imageWithCGImage:a3];
        v34 = v44[5];
        v44[5] = v33;

        v8[2](v8, v44[5], 0);
      }

      else
      {
        v32 = dispatch_get_global_queue(33, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __97__MUImageContentViewController__downsampleImageForDisplay_fromImageSource_withCompletionHandler___block_invoke;
        block[3] = &unk_27986E808;
        v39 = v22;
        v40 = v12;
        v41 = v21;
        v37 = &v43;
        v38 = a4;
        v42 = a3;
        v36 = v8;
        dispatch_async(v32, block);
      }
    }
  }

  _Block_object_dispose(&v43, 8);
}

void __97__MUImageContentViewController__downsampleImageForDisplay_fromImageSource_withCompletionHandler___block_invoke(uint64_t a1)
{
  v32[8] = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    v2 = *MEMORY[0x277CD3578];
    v3 = MEMORY[0x277CBEC38];
    v32[0] = MEMORY[0x277CBEC38];
    v4 = *MEMORY[0x277CD3660];
    v31[0] = v2;
    v31[1] = v4;
    v5 = *(a1 + 56);
    if (v5 < *(a1 + 64))
    {
      v5 = *(a1 + 64);
    }

    v6 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
    v32[1] = v6;
    v31[2] = *MEMORY[0x277CD3650];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:vcvtpd_s64_f64(1.0 / *(a1 + 72))];
    v8 = *MEMORY[0x277CD3678];
    v32[2] = v7;
    v32[3] = v3;
    v9 = *MEMORY[0x277CD3568];
    v31[3] = v8;
    v31[4] = v9;
    v32[4] = v3;
    v32[5] = &unk_2869693B8;
    v10 = *MEMORY[0x277CD3648];
    v31[5] = *MEMORY[0x277CD35C8];
    v31[6] = v10;
    v31[7] = *MEMORY[0x277CD3610];
    v32[6] = v3;
    v32[7] = v3;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:8];

    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(*(a1 + 48), 0, v11);
    if (ThumbnailAtIndex)
    {
      v13 = ThumbnailAtIndex;
      v14 = [MEMORY[0x277D755B8] imageWithCGImage:ThumbnailAtIndex];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      CGImageRelease(v13);
    }
  }

  else
  {
    v17 = [MEMORY[0x277D755B8] imageWithCGImage:*(a1 + 80)];
    v11 = [MEMORY[0x277D75568] defaultFormat];
    [(__CFDictionary *)v11 setScale:1.0];
    v18 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v11 format:{*(a1 + 56), *(a1 + 64)}];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __97__MUImageContentViewController__downsampleImageForDisplay_fromImageSource_withCompletionHandler___block_invoke_68;
    v28[3] = &unk_27986E768;
    v29 = v17;
    v30 = *(a1 + 56);
    v19 = v17;
    v20 = [v18 imageWithActions:v28];
    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __97__MUImageContentViewController__downsampleImageForDisplay_fromImageSource_withCompletionHandler___block_invoke_2;
  v25[3] = &unk_27986E7E0;
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  v26 = v23;
  v27 = v24;
  dispatch_async(MEMORY[0x277D85CD0], v25);
}

- (BOOL)_placeholderCanBeUsedForBaseImageOfSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(MUImageContentViewController *)self tentativePlaceholderImage];
  [v6 size];
  v8 = v7;
  v10 = v9;
  [(MUImageContentViewController *)self maxImageDimension];
  usePlaceholderAsDisplayImageIfPossible = 0;
  if (v6)
  {
    if (v8 >= v10)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    if (v13 >= v11 && v8 <= width && v10 <= height && vabdd_f64(v8 / v10, width / height) < 0.0005)
    {
      usePlaceholderAsDisplayImageIfPossible = self->_usePlaceholderAsDisplayImageIfPossible;
    }
  }

  return usePlaceholderAsDisplayImageIfPossible;
}

- (double)_zoomToFitZoomFactorIncludingScrollViewEdgeInsets
{
  [(UIScrollView *)self->_scrollView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self->_scrollView contentInset];

  [(MUImageContentViewController *)self _zoomToFitZoomFactorInBounds:v4 + v12, v6 + v11, v8 - (v12 + v14), v10 - (v11 + v13)];
  return result;
}

- (double)_zoomToFitZoomFactorInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3);
  [(UIImageView *)self->_imageView bounds];
  v9 = v8 / CGRectGetWidth(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v10 = CGRectGetHeight(v13);
  [(UIImageView *)self->_imageView bounds];
  result = v10 / CGRectGetHeight(v14);
  if (v9 < result)
  {
    result = v9;
  }

  if (result == 0.0)
  {
    return 0.0001;
  }

  return result;
}

- (void)_doubleTap:(id)a3
{
  v14 = a3;
  v4 = [(MUImageContentViewController *)self scrollView];
  [v4 zoomScale];
  v6 = v5;
  [v4 maximumZoomScale];
  v8 = v7;
  [(MUImageContentViewController *)self _zoomToFitZoomFactor];
  v10 = v9;
  if ([(MUImageContentViewController *)self _imageIsSmallerThanView])
  {
    v11 = 1.0;
    if (v6 == 1.0)
    {
      v11 = v10;
    }
  }

  else
  {
    [v4 setScrollEnabled:1];
    if (vabdd_f64(v6, v10) >= 0.0005)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }
  }

  if (v11 < v8)
  {
    v8 = v11;
  }

  if (vabdd_f64(v8, v6) >= 0.0005)
  {
    [v14 locationInView:self->_imageView];
    [(MUImageContentViewController *)self _zoomRectForScale:v8 withCenter:v12, v13];
    self->_inDoubleTapZoom = 1;
    [v4 zoomToRect:1 animated:?];
    self->_inDoubleTapZoom = 0;
  }
}

- (CGRect)_zoomRectForScale:(double)a3 withCenter:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(MUImageContentViewController *)self scrollView];
  [v7 frame];
  v9 = v8 / a3;
  [v7 frame];
  v11 = v10 / a3;

  v12 = x - v11 * 0.5;
  v13 = y - v9 * 0.5;
  v14 = v11;
  v15 = v9;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)_imageIsSmallerThanView
{
  [(UIImageView *)self->_imageView bounds];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self->_scrollView bounds];

  return [(MUImageContentViewController *)self _imageIsSize:v4 isSmallerThanSize:v6];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(MUImageContentViewController *)self _prepareToRotate];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__MUImageContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_27986E830;
  *&v9[5] = width;
  *&v9[6] = height;
  v9[4] = self;
  [v7 animateAlongsideTransition:v9 completion:0];
  v8.receiver = self;
  v8.super_class = MUImageContentViewController;
  [(MUImageContentViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

void __83__MUImageContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);

  if (v7 == v4 && v8 == v6)
  {
    v10 = *(a1 + 32);

    [v10 _recoverFromRotation];
  }
}

- (void)_prepareToRotate
{
  [(UIScrollView *)self->_scrollView bounds];
  MidX = CGRectGetMidX(v11);
  [(UIScrollView *)self->_scrollView bounds];
  [(UIScrollView *)self->_scrollView convertPoint:self->_combinedContentView toView:MidX, CGRectGetMidY(v12)];
  self->_pointToCenterAfterRotation.x = v4;
  self->_pointToCenterAfterRotation.y = v5;
  [(MUImageContentViewController *)self _zoomToFitZoomFactor];
  v7 = v6;
  v9 = [(MUImageContentViewController *)self scrollView];
  [v9 zoomScale];
  self->_wasZoomToFit = vabdd_f64(v7, v8) < 0.0005;
}

- (void)_recoverFromRotation
{
  v3 = 1.0;
  if (![(MUImageContentViewController *)self _imageIsSmallerThanView])
  {
    [(MUImageContentViewController *)self _zoomToFitZoomFactor];
    v3 = v4;
  }

  [(UIScrollView *)self->_scrollView bounds];
  v6 = v5;
  v8 = v7;
  imageView = self->_imageView;
  [(UIImageView *)imageView bounds];
  [(UIImageView *)imageView convertRect:self->_scrollView toView:?];
  if (!self->_wasZoomToFit && (v6 >= v10 ? (v12 = v8 < v11) : (v12 = 1), v12))
  {
    [(UIScrollView *)self->_scrollView convertPoint:self->_combinedContentView fromView:self->_pointToCenterAfterRotation.x, self->_pointToCenterAfterRotation.y];
    v14 = v13;
    v16 = v15;
    [(UIScrollView *)self->_scrollView bounds];
    v18 = v14 - v17 * 0.5;
    [(UIScrollView *)self->_scrollView bounds];
    v20 = v16 - v19 * 0.5;
    [(MUImageContentViewController *)self _maximumContentOffset];
    v22 = v21;
    v24 = v23;
    [(MUImageContentViewController *)self _minimumContentOffset];
    if (v22 >= v18)
    {
      v27 = v18;
    }

    else
    {
      v27 = v22;
    }

    if (v25 < v27)
    {
      v25 = v27;
    }

    if (v24 >= v20)
    {
      v28 = v20;
    }

    else
    {
      v28 = v24;
    }

    if (v26 < v28)
    {
      v26 = v28;
    }

    [(UIScrollView *)self->_scrollView setContentOffset:v25, v26];
  }

  else
  {
    [(UIScrollView *)self->_scrollView setZoomScale:1 animated:v3];
  }

  [(MUImageContentViewController *)self _updateMinMaxZoomFactor];
}

- (CGPoint)_maximumContentOffset
{
  [(UIScrollView *)self->_scrollView contentSize];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self->_scrollView bounds];
  v8 = v4 - v7;
  v10 = v6 - v9;
  result.y = v10;
  result.x = v8;
  return result;
}

- (void)_updateMinMaxZoomFactor
{
  [(MUImageContentViewController *)self _zoomToFitZoomFactor];
  v4 = v3;
  [(MUImageContentViewController *)self _zoomToFitZoomFactorIncludingScrollViewEdgeInsets];
  v6 = v5;
  v7 = [(MUImageContentViewController *)self _imageIsSmallerThanView];
  v8 = fmax(v4, 1.0);
  v9 = fmin(v6, 1.3);
  if (v7)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1.3;
  }

  if (v7)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = v9;
  }

  [(UIScrollView *)self->_scrollView setMinimumZoomScale:v11];
  [(UIScrollView *)self->_scrollView setMaximumZoomScale:v10];
  [(UIScrollView *)self->_scrollView zoomScale];
  if (v12 < v11)
  {
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView setZoomScale:v11];
  }
}

- (CGPoint)_minimumContentOffset
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)_annotationRectInOverlay:(id)a3 pageIndex:(unint64_t)a4
{
  [a3 rectangle];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  MinX = CGRectGetMinX(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MinY = CGRectGetMinY(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MaxX = CGRectGetMaxX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MaxY = CGRectGetMaxY(v32);
  v14 = [(MUContentViewController *)self annotationController];
  [(MUImageContentViewController *)self convertPoint:a4 fromModelToOverlayWithPageIndex:v14 forAnnotationController:MinX, MinY];
  v16 = v15;
  v18 = v17;

  v19 = [(MUContentViewController *)self annotationController];
  [(MUImageContentViewController *)self convertPoint:a4 fromModelToOverlayWithPageIndex:v19 forAnnotationController:MaxX, MaxY];
  v21 = v20;
  v23 = v22;

  v26 = v16;
  v27 = v18;

  v24 = v21 - v16;
  v25 = v23 - v18;
  return CGRectStandardize(*&v26);
}

- (void)_annotationWillBeginEditing:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277CEA658]];

  [(MUImageContentViewController *)self setEditingAnnotaiton:v5];
}

- (unint64_t)_pageIndexForAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self annotationController];
  v6 = [v5 modelController];
  v7 = [v6 pageModelControllerForAnnotation:v4];

  v8 = [v5 modelController];
  v9 = [v8 pageModelControllers];
  v10 = [v9 indexOfObject:v7];

  return v10;
}

- (void)_keyboardWillShow:(id)a3
{
  [(MUImageContentViewController *)self _adjustScrollViewForKeyboardNotification:a3];
  v4 = [(MUImageContentViewController *)self view];
  [v4 setNeedsLayout];

  [(MUImageContentViewController *)self setZoomToFitRestoreValue:[(MUImageContentViewController *)self firstLoadZoomToFit]];

  [(MUImageContentViewController *)self setFirstLoadZoomToFit:0];
}

- (void)_keyboardWillHide:(id)a3
{
  [(MUImageContentViewController *)self _adjustScrollViewForKeyboardNotification:a3];
  v4 = [(MUImageContentViewController *)self view];
  [v4 setNeedsLayout];

  v5 = [(MUImageContentViewController *)self zoomToFitRestoreValue];

  [(MUImageContentViewController *)self setFirstLoadZoomToFit:v5];
}

- (void)_adjustScrollViewForKeyboardNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 valueForKey:*MEMORY[0x277D76BB0]];
  [v6 CGRectValue];
  v38 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v4 userInfo];
  v15 = [v14 valueForKey:*MEMORY[0x277D76BB8]];
  [v15 CGRectValue];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [v4 userInfo];
  v25 = [v24 valueForKey:*MEMORY[0x277D76B78]];
  [v25 floatValue];
  v27 = v26;

  v28 = [v4 userInfo];

  v29 = [v28 valueForKey:*MEMORY[0x277D76B70]];
  v30 = [v29 unsignedIntegerValue];

  v39 = [(MUImageContentViewController *)self editingAnnotaiton];
  v31 = [(MUImageContentViewController *)self _pageIndexForAnnotation:v39];
  if (v39 && v31 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = [(MUContentViewController *)self annotationController];
    v33 = [v32 overlayViewAtIndex:v31];

    [(MUImageContentViewController *)self _annotationRectInOverlay:v39 pageIndex:v31];
    [v33 convertRect:0 toView:?];
    [(MUImageContentViewController *)self adjustScrollViewToAccomodateKeyboardStartingFrame:v33 endingFrame:v30 annotationFrame:v38 inOverlayView:v9 withAnimationDuration:v11 curve:v13, v17, v19, v21, v23, v34, v35, v36, v37, v27];
  }
}

- (void)adjustScrollViewToAccomodateKeyboardStartingFrame:(double)a3 endingFrame:(double)a4 annotationFrame:(double)a5 inOverlayView:(CGFloat)a6 withAnimationDuration:(CGFloat)a7 curve:(CGFloat)a8
{
  v25 = [a1 scrollView];
  v26 = [v25 superview];
  [v25 frame];
  [v26 convertRect:0 toView:?];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v88.origin.x = v28;
  v88.origin.y = v30;
  v88.size.width = v32;
  v88.size.height = v34;
  v71 = -(a7 - CGRectGetMaxY(v88));
  v67 = *MEMORY[0x277CBF398];
  v70 = *(MEMORY[0x277CBF398] + 8);
  v69 = *(MEMORY[0x277CBF398] + 16);
  v68 = *(MEMORY[0x277CBF398] + 24);
  [v25 bounds];
  [v25 convertRect:0 toView:?];
  x = v89.origin.x;
  y = v89.origin.y;
  width = v89.size.width;
  height = v89.size.height;
  v94.origin.x = a6;
  v94.origin.y = a7;
  v94.size.width = a8;
  v94.size.height = a9;
  if (CGRectIntersectsRect(v89, v94))
  {
    v90.origin.x = x;
    v90.origin.y = y;
    v90.size.width = width;
    v90.size.height = height;
    v95.origin.x = a6;
    v95.origin.y = a7;
    v95.size.width = a8;
    v95.size.height = a9;
    v91 = CGRectIntersection(v90, v95);
    v64 = height - (CGRectGetHeight(v91) + 0.0);
    [v25 convertRect:0 fromView:{a13, a14, a15, a16}];
    rect2a = v39;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v92.origin.x = x + 0.0;
    v92.size.height = v64;
    v92.origin.y = y + 0.0;
    v92.size.width = width;
    v96.origin.x = a13;
    v96.origin.y = a14;
    v96.size.width = a15;
    v96.size.height = a16;
    v46 = CGRectContainsRect(v92, v96);
    v47 = v68;
    v48 = v69;
    if (!v46)
    {
      v47 = v45;
      v48 = v43;
    }

    v49 = v70;
    if (!v46)
    {
      v49 = v41;
    }

    v50 = v67;
    if (!v46)
    {
      v50 = rect2a;
    }
  }

  else
  {
    v47 = v68;
    v48 = v69;
    v49 = v70;
    v50 = v67;
  }

  [v25 contentInset];
  v52 = v51;
  [v25 _contentScrollInset];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  if (v52 >= v71)
  {
    v59 = 0.0;
  }

  else
  {
    v59 = v71 - v52;
  }

  v93.origin.x = v50;
  v93.origin.y = v49;
  v93.size.width = v48;
  v93.size.height = v47;
  if (CGRectIsNull(v93))
  {
    if (v59 <= 0.0)
    {
      [v25 _setContentScrollInset:{v54, v56, v59, v58}];
      goto LABEL_21;
    }

    v60 = dispatch_time(0, (a17 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __152__MUImageContentViewController_adjustScrollViewToAccomodateKeyboardStartingFrame_endingFrame_annotationFrame_inOverlayView_withAnimationDuration_curve___block_invoke_2;
    block[3] = &unk_27986E880;
    v73 = v25;
    v74 = v54;
    v75 = v56;
    v76 = v59;
    v77 = v58;
    dispatch_after(v60, MEMORY[0x277D85CD0], block);
    v61 = v73;
  }

  else
  {
    if ((a12 - 1) >= 3)
    {
      v62 = 4;
    }

    else
    {
      v62 = ((a12 - 1) << 16) + 65540;
    }

    v63 = MEMORY[0x277D75D18];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __152__MUImageContentViewController_adjustScrollViewToAccomodateKeyboardStartingFrame_endingFrame_annotationFrame_inOverlayView_withAnimationDuration_curve___block_invoke;
    v78[3] = &unk_27986E858;
    v79 = v25;
    v80 = v54;
    v81 = v56;
    v82 = v59;
    v83 = v58;
    v84 = v50;
    v85 = v49;
    v86 = v48;
    v87 = v47;
    [v63 animateWithDuration:v62 delay:v78 options:0 animations:a17 completion:0.0];
    v61 = v79;
  }

LABEL_21:
}

uint64_t __152__MUImageContentViewController_adjustScrollViewToAccomodateKeyboardStartingFrame_endingFrame_annotationFrame_inOverlayView_withAnimationDuration_curve___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setContentScrollInset:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);

  return [v2 scrollRectToVisible:0 animated:{v3, v4, v5, v6}];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v7 = a3;
  v4 = [(MUImageContentViewController *)self scrollView];

  v5 = v7;
  if (v4 == v7)
  {
    [(MUImageContentViewController *)self setFirstLoadZoomToFit:0];
    [(MUImageContentViewController *)self setCentersIgnoringContentInsets:0];
    v6 = [(MUImageContentViewController *)self scrollViewDelegate];
    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v6 scrollViewWillBeginDragging:v7];
    }

    v5 = v7;
  }
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MUImageContentViewController *)self scrollView];

  if (v7 == v9)
  {
    [(MUImageContentViewController *)self setFirstLoadZoomToFit:0];
    [(MUImageContentViewController *)self setCentersIgnoringContentInsets:0];
    if (!self->_inDoubleTapZoom)
    {
      [v9 setScrollEnabled:1];
    }

    v8 = [(MUImageContentViewController *)self scrollViewDelegate];
    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 scrollViewWillBeginZooming:v9 withView:v6];
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v7 = a3;
  v4 = [(MUImageContentViewController *)self scrollViewDelegate];
  v5 = [(MUImageContentViewController *)self scrollView];
  if (v5 == v7 && v4)
  {
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      [v4 scrollViewDidScroll:v7];
    }
  }

  else
  {
  }
}

- (void)scrollViewDidZoom:(id)a3
{
  v7 = a3;
  v4 = [(MUImageContentViewController *)self scrollViewDelegate];
  v5 = [(MUImageContentViewController *)self scrollView];
  if (v5 == v7 && v4)
  {
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      [v4 scrollViewDidZoom:v7];
    }
  }

  else
  {
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = a3;
  v5 = [(MUImageContentViewController *)self scrollView];

  if (v5 == v4)
  {
    [(MUImageContentViewController *)self setCentersIgnoringContentInsets:0];
    v7 = [(MUImageContentViewController *)self scrollViewDelegate];
    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6 = [v7 scrollViewShouldScrollToTop:v4];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromOverlayToModelWithPageIndex:(unint64_t)a4 forAnnotationController:(id)a5
{
  y = a3.y;
  x = a3.x;
  v8 = [a5 overlayViewAtIndex:a4];
  [v8 convertPoint:self->_imageView toView:{x, y}];
  v10 = v9;
  v12 = v11;
  [(UIImageView *)self->_imageView bounds];
  v13 = CGRectGetHeight(v21) - v12;
  [(MUImageContentViewController *)self downsampledImageScale];
  v15 = v10 / v14;
  [(MUImageContentViewController *)self downsampledImageScale];
  v17 = v13 / v16;

  v18 = v15;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromModelToOverlayWithPageIndex:(unint64_t)a4 forAnnotationController:(id)a5
{
  y = a3.y;
  x = a3.x;
  v8 = [a5 overlayViewAtIndex:a4];
  [(MUImageContentViewController *)self downsampledImageScale];
  v10 = x * v9;
  [(MUImageContentViewController *)self downsampledImageScale];
  v12 = y * v11;
  [(UIImageView *)self->_imageView bounds];
  [v8 convertPoint:self->_imageView fromView:{v10, CGRectGetHeight(v20) - v12}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGRect)maxPageRectWithPageIndex:(unint64_t)a3 forAnnotationController:(id)a4
{
  v5 = [(MUImageContentViewController *)self imageView:a3];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(MUImageContentViewController *)self downsampledImageScale];
  v15 = v11 / v14;
  [(MUImageContentViewController *)self downsampledImageScale];
  v17 = v13 / v16;
  v18 = v7;
  v19 = v9;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (id)newContentSnapshotPDFDataIncludingAdornments:(BOOL)a3 atScale:(double)a4 inRect:(CGRect)a5 onOverlayAtPageIndex:(unint64_t)a6 forAnnotationController:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a7;
  v15 = [(MUImageContentViewController *)self imageView];
  v16 = [v15 image];
  v17 = [v16 CGImage];

  v18 = [v14 overlayViewAtIndex:a6];

  v19 = [(MUImageContentViewController *)self imageView];
  [v19 convertRect:v18 fromView:{x, y, width, height}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [(UIImageView *)self->_imageView bounds];
  MaxY = CGRectGetMaxY(v58);
  v59.origin.x = v21;
  v59.origin.y = v23;
  v59.size.width = v25;
  v59.size.height = v27;
  v29 = MaxY - CGRectGetMaxY(v59);
  mediaBox.origin = *MEMORY[0x277CBF348];
  mediaBox.size.width = v25 * a4;
  mediaBox.size.height = v27 * a4;
  v30 = CGImageGetWidth(v17);
  v31 = CGImageGetHeight(v17);
  v60.origin.x = v21;
  v60.origin.y = v29;
  v60.size.width = v25;
  v60.size.height = v27;
  v61 = CGRectIntegral(v60);
  v32 = v61.origin.y;
  v33 = v61.size.width;
  v34 = v61.size.height;
  v55 = v61.origin.x;
  v56 = CGRectGetWidth(v61);
  v62.origin.x = v55;
  v62.origin.y = v32;
  v62.size.width = v33;
  v54 = v34;
  v62.size.height = v34;
  v35 = CGRectGetHeight(v62);
  v63.origin.x = v21;
  v63.origin.y = v29;
  v63.size.width = v25;
  v63.size.height = v27;
  if (CGRectIsEmpty(v63))
  {
    goto LABEL_16;
  }

  v36 = vcvtad_u64_f64(v56);
  v37 = vcvtad_u64_f64(v35);
  ColorSpace = CGImageGetColorSpace(v17);
  if (!ColorSpace || (v39 = ColorSpace, CGColorSpaceUsesExtendedRange(ColorSpace)) || CGColorSpaceIsWideGamutRGB(v39))
  {
    v40 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    v39 = v40;
  }

  else
  {
    v40 = 0;
  }

  v41 = CGColorSpaceGetNumberOfComponents(v39) != 1;
  v42 = CGBitmapContextCreate(0, v36, v37, 8uLL, 0, v39, v41);
  if (v42)
  {
    v43 = v42;
    v44 = v30;
    v45 = [MEMORY[0x277D75348] whiteColor];
    CGContextSetFillColorWithColor(v43, [v45 CGColor]);

    v64.size.height = v54;
    v64.origin.x = v55;
    v64.origin.y = v32;
    v64.size.width = v33;
    CGContextFillRect(v43, v64);
    CGContextTranslateCTM(v43, -v55, -v32);
    CGContextSetInterpolationQuality(v43, kCGInterpolationNone);
    v65.origin.x = 0.0;
    v65.origin.y = 0.0;
    v65.size.width = v44;
    v65.size.height = v31;
    CGContextDrawImage(v43, v65, v17);
    Image = CGBitmapContextCreateImage(v43);
    CGContextRelease(v43);
    if (!v40)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  Image = 0;
  if (v40)
  {
LABEL_8:
    CGColorSpaceRelease(v40);
  }

LABEL_9:
  if (!Image)
  {
LABEL_16:
    v48 = 0;
    goto LABEL_17;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  v48 = Mutable;
  if (Mutable)
  {
    v49 = CGDataConsumerCreateWithCFData(Mutable);
    if (v49)
    {
      v50 = v49;
      v51 = CGPDFContextCreate(v49, &mediaBox, 0);
      if (v51)
      {
        v52 = v51;
        CGPDFContextBeginPage(v51, 0);
        CGContextSaveGState(v52);
        CGContextScaleCTM(v52, a4, a4);
        CGContextTranslateCTM(v52, -(v21 - v55), -(v29 - v32));
        CGContextSetInterpolationQuality(v52, kCGInterpolationNone);
        v66.origin.x = 0.0;
        v66.origin.y = 0.0;
        v66.size.width = round(v56);
        v66.size.height = round(v35);
        CGContextDrawImage(v52, v66, Image);
        CGContextRestoreGState(v52);
        CGPDFContextEndPage(v52);
        CGPDFContextClose(v52);
        CGContextRelease(v52);
      }

      CGDataConsumerRelease(v50);
    }
  }

  CGImageRelease(Image);
LABEL_17:

  return v48;
}

- (id)undoManagerForAnnotationController:(id)a3
{
  v4 = [(MUContentViewController *)self delegate];
  v5 = [v4 undoManagerForContentViewController:self];

  return v5;
}

- (id)popoverPresentingViewControllerForAnnotationController:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  v6 = [v5 popoverPresentingViewControllerForAnnotationController:v4];

  return v6;
}

- (void)installDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 forAnnotationController:(id)a5
{
  v6 = a3;
  v7 = [(MUImageContentViewController *)self view];
  [v7 addGestureRecognizer:v6];
}

- (void)uninstallDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 forAnnotationController:(id)a5
{
  v5 = a3;
  v6 = [v5 view];
  [v6 removeGestureRecognizer:v5];
}

- (void)updateDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 withPriority:(BOOL)a5 forAnnotationController:(id)a6
{
  v7 = a5;
  v55[4] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = [v10 tapGestureRecognizer];
  v55[0] = v11;
  v12 = [v10 pressGestureRecognizer];
  v55[1] = v12;
  v13 = [v10 panGestureRecognizer];
  v55[2] = v13;
  v39 = v10;
  v14 = [v10 rotationGestureRecognizer];
  v55[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];

  v16 = [MEMORY[0x277CBEB58] set];
  v17 = [(MUImageContentViewController *)self view];
  v18 = [v17 gestureRecognizers];
  [v16 addObjectsFromArray:v18];

  v19 = [(MUImageContentViewController *)self scrollView];
  v20 = [v19 gestureRecognizers];
  [v16 addObjectsFromArray:v20];

  v21 = [MEMORY[0x277CBEB98] setWithArray:v15];
  [v16 minusSet:v21];

  [v16 removeObject:v9];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v22 = v15;
  v23 = [v22 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v49;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v49 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [v9 requireGestureRecognizerToFail:*(*(&v48 + 1) + 8 * i)];
      }

      v24 = [v22 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v24);
  }

  if (v7)
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v27 = v16;
    v28 = [v27 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v45;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v45 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v44 + 1) + 8 * j);
          [v9 removeFailureRequirement:v32];
          if ((objc_opt_respondsToSelector() & 1) == 0 || [v32 _acceptsFailureRequirements])
          {
            [v32 requireGestureRecognizerToFail:v9];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v29);
    }
  }

  else
  {
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v33 = v16;
    v34 = [v33 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v41;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v41 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v40 + 1) + 8 * k);
          [v38 removeFailureRequirement:v9];
          if ((objc_opt_respondsToSelector() & 1) == 0 || [v38 _acceptsFailureRequirements])
          {
            [v9 requireGestureRecognizerToFail:v38];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v35);
    }
  }
}

- (double)modelBaseScaleFactorOfPageAtIndex:(unint64_t)a3 forAnnotationController:(id)a4
{
  v6 = [(MUContentViewController *)self delegate:a3];
  [v6 modelBaseScaleFactorOfPageAtIndex:a3 forContentViewController:self];
  v8 = v7;

  return v8;
}

- (id)controller:(id)a3 willSetToolbarItems:(id)a4
{
  v5 = a4;
  v6 = [(MUContentViewController *)self delegate];
  v7 = [v6 annotationControllerOfContentViewController:self willSetToolbarItems:v5];

  return v7;
}

- (void)positionSketchOverlay:(id)a3 forAnnotationController:(id)a4
{
  v5 = a3;
  v6 = [(MUContentViewController *)self delegate];
  [v6 positionSketchOverlay:v5 forContentViewController:self];
}

- (id)layerContainingQuickBackgroundForLoupeOnOverlayAtPageIndex:(unint64_t)a3 forAnnotationController:(id)a4
{
  v4 = [(MUImageContentViewController *)self imageView:a3];
  v5 = [v4 layer];

  return v5;
}

- (void)controllerDidEnterToolMode:(id)a3
{
  v4 = [(MUImageContentViewController *)self scrollView];
  v5 = [v4 panGestureRecognizer];
  [v5 setMinimumNumberOfTouches:2];

  v6 = [(MUImageContentViewController *)self localDoubleTapRecognizer];
  [v6 setEnabled:0];
}

- (void)controllerDidExitToolMode:(id)a3
{
  v4 = [(MUImageContentViewController *)self scrollView];
  v5 = [v4 panGestureRecognizer];
  [v5 setMinimumNumberOfTouches:1];

  v6 = [(MUImageContentViewController *)self localDoubleTapRecognizer];
  [v6 setEnabled:1];
}

- (void)editDetectedForAnnotationController:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  [v5 editDetectedForAnnotationController:v4];
}

- (void)editCheckpointReachedForAnnotationController:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  [v5 editCheckpointReachedForAnnotationController:v4];
}

- (void)penStrokeCompletedForAnnotationController:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  [v5 penStrokeCompletedForAnnotationController:v4];
}

- (void)controllerWillShowSignatureCaptureView:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  [v5 controllerWillShowSignatureCaptureView:v4];
}

- (void)controllerWillDismissSignatureCaptureView:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  [v5 controllerWillDismissSignatureCaptureView:v4];
}

- (void)controllerWillShowSignatureManagerView:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  [v5 controllerWillShowSignatureManagerView:v4];
}

- (void)controllerWillDismissSignatureManagerView:(id)a3
{
  v4 = a3;
  v5 = [(MUContentViewController *)self delegate];
  [v5 controllerWillDismissSignatureManagerView:v4];
}

- (NSString)originalImageDescription
{
  v2 = [(MUContentViewController *)self delegate];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 originalImageDescription];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)enableHDRAnnotations
{
  [MEMORY[0x277CEA698] defaultMaxHDRGain];
  v4 = v3;
  v5 = [(MUContentViewController *)self annotationController];
  [v5 setMaxHDRGain:v4];
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

- (CGSize)sourceImagePixelSize
{
  objc_copyStruct(v4, &self->_sourceImagePixelSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (AKRectAnnotation)editingAnnotaiton
{
  WeakRetained = objc_loadWeakRetained(&self->_editingAnnotaiton);

  return WeakRetained;
}

- (AKPageController)pageController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

@end