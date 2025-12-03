@interface MUImageContentViewController
- (AKPageController)pageController;
- (AKRectAnnotation)editingAnnotaiton;
- (BOOL)_imageIsSmallerThanView;
- (BOOL)_placeholderCanBeUsedForBaseImageOfSize:(CGSize)size;
- (BOOL)canEditContent;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (CGPoint)_maximumContentOffset;
- (CGPoint)_minimumContentOffset;
- (CGPoint)convertPoint:(CGPoint)point fromModelToOverlayWithPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (CGPoint)convertPoint:(CGPoint)point fromOverlayToModelWithPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (CGRect)_annotationRectInOverlay:(id)overlay pageIndex:(unint64_t)index;
- (CGRect)_zoomRectForScale:(double)scale withCenter:(CGPoint)center;
- (CGRect)maxPageRectWithPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (CGRect)visibleContentRect;
- (CGRect)visibleContentRectInCoordinateSpace:(id)space;
- (CGSize)idealContentSizeForScreenSize:(CGSize)size windowDecorationSize:(CGSize)decorationSize;
- (CGSize)sourceImagePixelSize;
- (MUImageContentViewController)initWithSourceContent:(id)content archivedDataModel:(id)model delegate:(id)delegate;
- (NSString)originalImageDescription;
- (UIEdgeInsets)edgeInsets;
- (UIImage)imageForAnalysis;
- (UIScrollViewDelegate)scrollViewDelegate;
- (double)_zoomToFitZoomFactorInBounds:(CGRect)bounds;
- (double)_zoomToFitZoomFactorIncludingScrollViewEdgeInsets;
- (double)modelBaseScaleFactorOfPageAtIndex:(unint64_t)index forAnnotationController:(id)controller;
- (id)contentSnapshot;
- (id)controller:(id)controller willSetToolbarItems:(id)items;
- (id)layerContainingQuickBackgroundForLoupeOnOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (id)newContentSnapshotPDFDataIncludingAdornments:(BOOL)adornments atScale:(double)scale inRect:(CGRect)rect onOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (id)popoverPresentingViewControllerForAnnotationController:(id)controller;
- (id)undoManagerForAnnotationController:(id)controller;
- (unint64_t)_pageIndexForAnnotation:(id)annotation;
- (void)_adjustScrollViewForKeyboardNotification:(id)notification;
- (void)_annotationWillBeginEditing:(id)editing;
- (void)_doubleTap:(id)tap;
- (void)_downsampleImageForDisplay:(CGImage *)display fromImageSource:(CGImageSource *)source withCompletionHandler:(id)handler;
- (void)_installOverlayOfController:(id)controller forPageAtIndex:(unint64_t)index;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_prepareToRotate;
- (void)_recoverFromRotation;
- (void)_setImage:(id)image withCompletionHandler:(id)handler;
- (void)_setupScrollViewForImageOfScaledSize:(CGSize)size;
- (void)_uninstallOverlayOfController:(id)controller forPageAtIndex:(unint64_t)index;
- (void)_updateMinMaxZoomFactor;
- (void)adjustScrollViewToAccomodateKeyboardStartingFrame:(double)frame endingFrame:(double)endingFrame annotationFrame:(double)annotationFrame inOverlayView:(CGFloat)view withAnimationDuration:(CGFloat)duration curve:(CGFloat)curve;
- (void)controllerDidEnterToolMode:(id)mode;
- (void)controllerDidExitToolMode:(id)mode;
- (void)controllerWillDismissSignatureCaptureView:(id)view;
- (void)controllerWillDismissSignatureManagerView:(id)view;
- (void)controllerWillShowSignatureCaptureView:(id)view;
- (void)controllerWillShowSignatureManagerView:(id)view;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)editCheckpointReachedForAnnotationController:(id)controller;
- (void)editDetectedForAnnotationController:(id)controller;
- (void)enableHDRAnnotations;
- (void)installDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index forAnnotationController:(id)controller;
- (void)loadContentWithCompletionBlock:(id)block;
- (void)penStrokeCompletedForAnnotationController:(id)controller;
- (void)positionSketchOverlay:(id)overlay forAnnotationController:(id)controller;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
- (void)setInkStyle:(unint64_t)style;
- (void)setup;
- (void)teardown;
- (void)uninstallAllAnnotationControllerOverlays;
- (void)uninstallDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index forAnnotationController:(id)controller;
- (void)updateDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index withPriority:(BOOL)priority forAnnotationController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MUImageContentViewController

- (MUImageContentViewController)initWithSourceContent:(id)content archivedDataModel:(id)model delegate:(id)delegate
{
  contentCopy = content;
  modelCopy = model;
  v18.receiver = self;
  v18.super_class = MUImageContentViewController;
  v11 = [(MUContentViewController *)&v18 initWithNibName:0 bundle:0 delegate:delegate];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceContent, content);
    v12->_downsampledImageScale = 1.0;
    v12->_maxImageDimension = 1.79769313e308;
    v12->_usePlaceholderAsDisplayImageIfPossible = modelCopy == 0;
    v13 = [MEMORY[0x277CEA698] controllerWithDelegate:v12];
    [(MUContentViewController *)v12 setAnnotationController:v13];

    [(MUImageContentViewController *)v12 setInkStyle:0];
    if (modelCopy)
    {
      v14 = objc_alloc_init(MUImageReader);
      annotationController = [(MUContentViewController *)v12 annotationController];
      v16 = [(MUImageReader *)v14 readAnnotationsFromArchivedModelData:modelCopy toController:annotationController];

      if (!v16)
      {
        NSLog(&cfstr_SFailedToReadA.isa, "[MUImageContentViewController initWithSourceContent:archivedDataModel:delegate:]");
        v12->_usePlaceholderAsDisplayImageIfPossible = 1;
      }
    }
  }

  return v12;
}

- (void)setInkStyle:(unint64_t)style
{
  self->_inkStyle = style;
  v3 = style == 0;
  annotationController = [(MUContentViewController *)self annotationController];
  [annotationController setUseHighVisibilityDefaultInks:v3];
}

- (UIImage)imageForAnalysis
{
  imageView = [(MUImageContentViewController *)self imageView];
  image = [imageView image];

  return image;
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
  darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
  view = [(MUImageContentViewController *)self view];
  [view setBackgroundColor:darkGrayColor];

  v5 = [MUImageScrollView alloc];
  view2 = [(MUImageContentViewController *)self view];
  [view2 bounds];
  v7 = [(MUImageScrollView *)v5 initWithFrame:?];
  [(MUImageContentViewController *)self setScrollView:v7];

  scrollView = [(MUImageContentViewController *)self scrollView];
  [scrollView setPreservesCenterDuringRotation:1];

  scrollView2 = [(MUImageContentViewController *)self scrollView];
  [scrollView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView3 = [(MUImageContentViewController *)self scrollView];
  [scrollView3 setDelegate:self];

  [(MUImageContentViewController *)self edgeInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  scrollView4 = [(MUImageContentViewController *)self scrollView];
  [scrollView4 setContentInset:{v12, v14, v16, v18}];

  v20 = *MEMORY[0x277D76EB8];
  scrollView5 = [(MUImageContentViewController *)self scrollView];
  [scrollView5 setDecelerationRate:v20];

  scrollView6 = [(MUImageContentViewController *)self scrollView];
  [scrollView6 setMaximumZoomScale:1.3];

  scrollView7 = [(MUImageContentViewController *)self scrollView];
  [scrollView7 setMinimumZoomScale:0.1];

  view3 = [(MUImageContentViewController *)self view];
  scrollView8 = [(MUImageContentViewController *)self scrollView];
  [view3 addSubview:scrollView8];

  v26 = _NSDictionaryOfVariableBindings(&cfstr_Scrollview.isa, self->_scrollView, 0);
  v27 = MEMORY[0x277CCAAD0];
  v28 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_scrollView]|" options:0 metrics:0 views:v26];
  [v27 activateConstraints:v28];

  v29 = MEMORY[0x277CCAAD0];
  v30 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_scrollView]|" options:0 metrics:0 views:v26];
  [v29 activateConstraints:v30];

  v31 = objc_alloc(MEMORY[0x277D75D18]);
  scrollView9 = [(MUImageContentViewController *)self scrollView];
  [scrollView9 bounds];
  v33 = [v31 initWithFrame:?];
  [(MUImageContentViewController *)self setCombinedContentView:v33];

  scrollView10 = [(MUImageContentViewController *)self scrollView];
  combinedContentView = [(MUImageContentViewController *)self combinedContentView];
  [scrollView10 addSubview:combinedContentView];

  v36 = objc_alloc(MEMORY[0x277D755E8]);
  combinedContentView2 = [(MUImageContentViewController *)self combinedContentView];
  [combinedContentView2 bounds];
  v38 = [v36 initWithFrame:?];
  [(MUImageContentViewController *)self setImageView:v38];

  imageView = [(MUImageContentViewController *)self imageView];
  [imageView setUserInteractionEnabled:1];

  combinedContentView3 = [(MUImageContentViewController *)self combinedContentView];
  imageView2 = [(MUImageContentViewController *)self imageView];
  [combinedContentView3 addSubview:imageView2];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__annotationWillBeginEditing_ name:*MEMORY[0x277CEA670] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__annotationDidEndEditing_ name:*MEMORY[0x277CEA650] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

  [(MUImageContentViewController *)self setFirstLoadZoomToFit:1];
  [(MUImageContentViewController *)self setZoomToFitRestoreValue:1];
}

- (CGRect)visibleContentRect
{
  view = [(MUImageContentViewController *)self view];
  window = [view window];
  [(MUImageContentViewController *)self visibleContentRectInCoordinateSpace:window];
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

- (CGRect)visibleContentRectInCoordinateSpace:(id)space
{
  spaceCopy = space;
  imageView = [(MUImageContentViewController *)self imageView];
  imageView2 = [(MUImageContentViewController *)self imageView];
  [imageView2 bounds];
  [imageView convertRect:spaceCopy toCoordinateSpace:?];
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
  combinedContentView = [(MUImageContentViewController *)self combinedContentView];
  v3 = [combinedContentView snapshotViewAfterScreenUpdates:1];

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = MUImageContentViewController;
  [(MUImageContentViewController *)&v3 viewDidAppear:appear];
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
  annotationController = [(MUContentViewController *)self annotationController];
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__doubleTap_];
  [v3 setNumberOfTapsRequired:2];
  [(MUImageContentViewController *)self setLocalDoubleTapRecognizer:v3];
  view = [(MUImageContentViewController *)self view];
  [view addGestureRecognizer:v3];

  view2 = [(MUImageContentViewController *)self view];
  tapGestureRecognizer = [annotationController tapGestureRecognizer];
  [view2 addGestureRecognizer:tapGestureRecognizer];

  view3 = [(MUImageContentViewController *)self view];
  doubleTapGestureRecognizer = [annotationController doubleTapGestureRecognizer];
  [view3 addGestureRecognizer:doubleTapGestureRecognizer];

  view4 = [(MUImageContentViewController *)self view];
  pressGestureRecognizer = [annotationController pressGestureRecognizer];
  [view4 addGestureRecognizer:pressGestureRecognizer];

  view5 = [(MUImageContentViewController *)self view];
  panGestureRecognizer = [annotationController panGestureRecognizer];
  [view5 addGestureRecognizer:panGestureRecognizer];

  view6 = [(MUImageContentViewController *)self view];
  rotationGestureRecognizer = [annotationController rotationGestureRecognizer];
  [view6 addGestureRecognizer:rotationGestureRecognizer];

  tapGestureRecognizer2 = [annotationController tapGestureRecognizer];
  [tapGestureRecognizer2 requireGestureRecognizerToFail:v3];

  doubleTapGestureRecognizer2 = [annotationController doubleTapGestureRecognizer];
  [v3 requireGestureRecognizerToFail:doubleTapGestureRecognizer2];

  panGestureRecognizer2 = [annotationController panGestureRecognizer];
  [v3 requireGestureRecognizerToFail:panGestureRecognizer2];

  scrollView = [(MUImageContentViewController *)self scrollView];
  panGestureRecognizer3 = [scrollView panGestureRecognizer];
  panGestureRecognizer4 = [annotationController panGestureRecognizer];
  [panGestureRecognizer3 requireGestureRecognizerToFail:panGestureRecognizer4];

  scrollView2 = [(MUImageContentViewController *)self scrollView];
  panGestureRecognizer5 = [scrollView2 panGestureRecognizer];
  rotationGestureRecognizer2 = [annotationController rotationGestureRecognizer];
  [panGestureRecognizer5 requireGestureRecognizerToFail:rotationGestureRecognizer2];

  scrollView3 = [(MUImageContentViewController *)self scrollView];
  pinchGestureRecognizer = [scrollView3 pinchGestureRecognizer];
  panGestureRecognizer6 = [annotationController panGestureRecognizer];
  [pinchGestureRecognizer requireGestureRecognizerToFail:panGestureRecognizer6];

  scrollView4 = [(MUImageContentViewController *)self scrollView];
  pinchGestureRecognizer2 = [scrollView4 pinchGestureRecognizer];
  rotationGestureRecognizer3 = [annotationController rotationGestureRecognizer];
  [pinchGestureRecognizer2 requireGestureRecognizerToFail:rotationGestureRecognizer3];

  modelController = [annotationController modelController];
  pageModelControllers = [modelController pageModelControllers];
  v32 = [pageModelControllers count];

  if (!v32)
  {
    v33 = objc_opt_new();
    modelController2 = [annotationController modelController];
    v35 = [modelController2 mutableArrayValueForKey:@"pageModelControllers"];
    [v35 addObject:v33];
  }

  [annotationController setCurrentPageIndex:0];
}

- (void)teardown
{
  NSLog(&cfstr_S_0.isa, a2, "[MUImageContentViewController teardown]");
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  if ([(MUImageContentViewController *)self didSetup])
  {
    [(MUImageContentViewController *)self setDidSetup:0];
    if ([(MUImageContentViewController *)self isViewLoaded])
    {
      view = [(MUImageContentViewController *)self view];
      localDoubleTapRecognizer = [(MUImageContentViewController *)self localDoubleTapRecognizer];
      [view removeGestureRecognizer:localDoubleTapRecognizer];

      annotationController = [(MUContentViewController *)self annotationController];
      if (annotationController)
      {
        view2 = [(MUImageContentViewController *)self view];
        tapGestureRecognizer = [annotationController tapGestureRecognizer];
        [view2 removeGestureRecognizer:tapGestureRecognizer];

        view3 = [(MUImageContentViewController *)self view];
        doubleTapGestureRecognizer = [annotationController doubleTapGestureRecognizer];
        [view3 removeGestureRecognizer:doubleTapGestureRecognizer];

        view4 = [(MUImageContentViewController *)self view];
        pressGestureRecognizer = [annotationController pressGestureRecognizer];
        [view4 removeGestureRecognizer:pressGestureRecognizer];

        view5 = [(MUImageContentViewController *)self view];
        panGestureRecognizer = [annotationController panGestureRecognizer];
        [view5 removeGestureRecognizer:panGestureRecognizer];

        view6 = [(MUImageContentViewController *)self view];
        rotationGestureRecognizer = [annotationController rotationGestureRecognizer];
        [view6 removeGestureRecognizer:rotationGestureRecognizer];

        [annotationController teardown];
        [(MUContentViewController *)self setAnnotationController:0];
      }
    }

    [(MUImageContentViewController *)self setLocalDoubleTapRecognizer:0];
  }

  if ([(MUImageContentViewController *)self isViewLoaded])
  {
    scrollView = [(MUImageContentViewController *)self scrollView];
    [scrollView setDelegate:0];

    scrollView2 = [(MUImageContentViewController *)self scrollView];
    [scrollView2 removeFromSuperview];

    [(MUImageContentViewController *)self setScrollView:0];
  }
}

- (void)loadContentWithCompletionBlock:(id)block
{
  blockCopy = block;
  sourceContent = [(MUImageContentViewController *)self sourceContent];
  [(MUImageContentViewController *)self _setImage:sourceContent withCompletionHandler:blockCopy];
}

- (CGSize)idealContentSizeForScreenSize:(CGSize)size windowDecorationSize:(CGSize)decorationSize
{
  v4 = size.width - decorationSize.width;
  v5 = size.height - decorationSize.height;
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

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  p_edgeInsets = &self->_edgeInsets;
  v9 = self->_edgeInsets.top;
  if (self->_edgeInsets.left == insets.left && v9 == top && self->_edgeInsets.right == insets.right)
  {
    v9 = self->_edgeInsets.bottom;
    p_edgeInsets->top = top;
    self->_edgeInsets.left = insets.left;
    self->_edgeInsets.bottom = insets.bottom;
    self->_edgeInsets.right = insets.right;
    if (v9 == insets.bottom)
    {
      goto LABEL_11;
    }
  }

  else
  {
    p_edgeInsets->top = top;
    self->_edgeInsets.left = insets.left;
    self->_edgeInsets.bottom = insets.bottom;
    self->_edgeInsets.right = insets.right;
  }

  scrollView = [(MUImageContentViewController *)self scrollView];
  [scrollView setContentInset:{top, left, bottom, right}];

  scrollView2 = [(MUImageContentViewController *)self scrollView];
  [scrollView2 setScrollIndicatorInsets:{top, left, bottom, right}];

LABEL_11:

  [(MUImageContentViewController *)self _updateMinMaxZoomFactor];
}

- (void)_installOverlayOfController:(id)controller forPageAtIndex:(unint64_t)index
{
  controllerCopy = controller;
  [controllerCopy setOverlayShouldPixelate:1];
  if (([controllerCopy isOverlayViewLoadedAtIndex:index] & 1) == 0)
  {
    [controllerCopy prepareOverlayAtIndex:index];
  }

  v7 = [controllerCopy overlayViewAtIndex:index];
  combinedContentView = [(MUImageContentViewController *)self combinedContentView];
  superview = [v7 superview];

  if (superview != combinedContentView)
  {
    [(UIImageView *)self->_imageView bounds];
    [(UIImageView *)self->_imageView convertRect:combinedContentView toView:?];
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
    layer = [v7 layer];
    [layer setAnchorPoint:{0.5, 0.5}];

    t2 = v24;
    [v7 setTransform:&t2];
    [v7 setFrame:{v11, v13, v15, v17}];
    [combinedContentView addSubview:v7];
  }
}

- (void)_uninstallOverlayOfController:(id)controller forPageAtIndex:(unint64_t)index
{
  controllerCopy = controller;
  if ([controllerCopy isOverlayViewLoadedAtIndex:index])
  {
    v5 = [controllerCopy overlayViewAtIndex:index];
    [controllerCopy relinquishOverlayAtIndex:index];
    [v5 removeFromSuperview];
  }
}

- (void)uninstallAllAnnotationControllerOverlays
{
  annotationController = [(MUContentViewController *)self annotationController];
  modelController = [annotationController modelController];
  pageModelControllers = [modelController pageModelControllers];
  v5 = [pageModelControllers count];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      [(MUImageContentViewController *)self _uninstallOverlayOfController:annotationController forPageAtIndex:i];
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

  imageView = [(MUImageContentViewController *)self imageView];
  image = [imageView image];
  v5 = image != 0;

  return v5;
}

- (void)_setImage:(id)image withCompletionHandler:(id)handler
{
  imageCopy = image;
  handlerCopy = handler;
  if (!imageCopy)
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
    v8 = CGImageSourceCreateWithData(imageCopy, 0);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        cGImage = [(__CFData *)imageCopy CGImage];
        v34[3] = cGImage;
        CGImageRetain(cGImage);
      }

      goto LABEL_8;
    }

    v8 = CGImageSourceCreateWithURL(imageCopy, 0);
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
    v25 = handlerCopy;
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
  loadCompletionBlock = [(MUImageContentViewController *)self loadCompletionBlock];
  if (loadCompletionBlock)
  {
    v4 = loadCompletionBlock;
    parentViewController = [(MUImageContentViewController *)self parentViewController];
    view = [parentViewController view];
    [view safeAreaInsets];
    v8 = v7;

    if (v8 != 0.0)
    {
      loadCompletionBlock2 = [(MUImageContentViewController *)self loadCompletionBlock];
      [(MUImageContentViewController *)self setLoadCompletionBlock:0];
      v10 = dispatch_time(0, 0);
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __53__MUImageContentViewController_viewDidLayoutSubviews__block_invoke;
      v21 = &unk_27986E7B8;
      selfCopy = self;
      v23 = loadCompletionBlock2;
      v11 = loadCompletionBlock2;
      dispatch_after(v10, MEMORY[0x277D85CD0], &v18);
    }
  }

  [(MUImageContentViewController *)self _updateMinMaxZoomFactor:v18];
  if ([(MUImageContentViewController *)self firstLoadZoomToFit])
  {
    _imageIsSmallerThanView = [(MUImageContentViewController *)self _imageIsSmallerThanView];
    v13 = 1.0;
    if (!_imageIsSmallerThanView)
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

- (void)_setupScrollViewForImageOfScaledSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageView = [(MUImageContentViewController *)self imageView];
  [imageView setFrame:{0.0, 0.0, width, height}];

  combinedContentView = [(MUImageContentViewController *)self combinedContentView];
  [combinedContentView setFrame:{0.0, 0.0, width, height}];

  scrollView = [(MUImageContentViewController *)self scrollView];
  combinedContentView2 = [(MUImageContentViewController *)self combinedContentView];
  [combinedContentView2 frame];
  [scrollView setContentSize:{v9, v10}];

  [(MUImageContentViewController *)self _updateMinMaxZoomFactor];
  _imageIsSmallerThanView = [(MUImageContentViewController *)self _imageIsSmallerThanView];
  v12 = 1.0;
  if (!_imageIsSmallerThanView)
  {
    [(MUImageContentViewController *)self _zoomToFitZoomFactor];
  }

  [scrollView setZoomScale:v12];
  [(MUImageContentViewController *)self setFirstLoadZoomToFit:1];
}

- (void)_downsampleImageForDisplay:(CGImage *)display fromImageSource:(CGImageSource *)source withCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  tentativePlaceholderImage = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__0;
  v47 = __Block_byref_object_dispose__0;
  if (v14)
  {
    tentativePlaceholderImage = [(MUImageContentViewController *)self tentativePlaceholderImage];
  }

  v48 = tentativePlaceholderImage;
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
  delegate = [(MUContentViewController *)self delegate];
  v24 = objc_opt_respondsToSelector();
  v26 = v21;
  if (v24)
  {
    [delegate adjustedSourceImageSize];
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
  if (handlerCopy)
  {
    if (v14)
    {
      handlerCopy[2](handlerCopy, v44[5], 0);
    }

    else
    {
      v29 = CGImageSourceCopyPropertiesAtIndex(source, 0, 0);
      v30 = [(__CFDictionary *)v29 valueForKey:*MEMORY[0x277CD3410]];
      v31 = v30;
      if (v21 >= 1.0 && [v30 longLongValue] < 2)
      {
        v33 = [MEMORY[0x277D755B8] imageWithCGImage:display];
        v34 = v44[5];
        v44[5] = v33;

        handlerCopy[2](handlerCopy, v44[5], 0);
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
        sourceCopy = source;
        displayCopy = display;
        v36 = handlerCopy;
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

- (BOOL)_placeholderCanBeUsedForBaseImageOfSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  tentativePlaceholderImage = [(MUImageContentViewController *)self tentativePlaceholderImage];
  [tentativePlaceholderImage size];
  v8 = v7;
  v10 = v9;
  [(MUImageContentViewController *)self maxImageDimension];
  usePlaceholderAsDisplayImageIfPossible = 0;
  if (tentativePlaceholderImage)
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

- (double)_zoomToFitZoomFactorInBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = CGRectGetWidth(bounds);
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

- (void)_doubleTap:(id)tap
{
  tapCopy = tap;
  scrollView = [(MUImageContentViewController *)self scrollView];
  [scrollView zoomScale];
  v6 = v5;
  [scrollView maximumZoomScale];
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
    [scrollView setScrollEnabled:1];
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
    [tapCopy locationInView:self->_imageView];
    [(MUImageContentViewController *)self _zoomRectForScale:v8 withCenter:v12, v13];
    self->_inDoubleTapZoom = 1;
    [scrollView zoomToRect:1 animated:?];
    self->_inDoubleTapZoom = 0;
  }
}

- (CGRect)_zoomRectForScale:(double)scale withCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  scrollView = [(MUImageContentViewController *)self scrollView];
  [scrollView frame];
  v9 = v8 / scale;
  [scrollView frame];
  v11 = v10 / scale;

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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(MUImageContentViewController *)self _prepareToRotate];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__MUImageContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_27986E830;
  *&v9[5] = width;
  *&v9[6] = height;
  v9[4] = self;
  [coordinatorCopy animateAlongsideTransition:v9 completion:0];
  v8.receiver = self;
  v8.super_class = MUImageContentViewController;
  [(MUImageContentViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
  scrollView = [(MUImageContentViewController *)self scrollView];
  [scrollView zoomScale];
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
  _imageIsSmallerThanView = [(MUImageContentViewController *)self _imageIsSmallerThanView];
  v8 = fmax(v4, 1.0);
  v9 = fmin(v6, 1.3);
  if (_imageIsSmallerThanView)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1.3;
  }

  if (_imageIsSmallerThanView)
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

- (CGRect)_annotationRectInOverlay:(id)overlay pageIndex:(unint64_t)index
{
  [overlay rectangle];
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
  annotationController = [(MUContentViewController *)self annotationController];
  [(MUImageContentViewController *)self convertPoint:index fromModelToOverlayWithPageIndex:annotationController forAnnotationController:MinX, MinY];
  v16 = v15;
  v18 = v17;

  annotationController2 = [(MUContentViewController *)self annotationController];
  [(MUImageContentViewController *)self convertPoint:index fromModelToOverlayWithPageIndex:annotationController2 forAnnotationController:MaxX, MaxY];
  v21 = v20;
  v23 = v22;

  v26 = v16;
  v27 = v18;

  v24 = v21 - v16;
  v25 = v23 - v18;
  return CGRectStandardize(*&v26);
}

- (void)_annotationWillBeginEditing:(id)editing
{
  userInfo = [editing userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277CEA658]];

  [(MUImageContentViewController *)self setEditingAnnotaiton:v5];
}

- (unint64_t)_pageIndexForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotationController = [(MUContentViewController *)self annotationController];
  modelController = [annotationController modelController];
  v7 = [modelController pageModelControllerForAnnotation:annotationCopy];

  modelController2 = [annotationController modelController];
  pageModelControllers = [modelController2 pageModelControllers];
  v10 = [pageModelControllers indexOfObject:v7];

  return v10;
}

- (void)_keyboardWillShow:(id)show
{
  [(MUImageContentViewController *)self _adjustScrollViewForKeyboardNotification:show];
  view = [(MUImageContentViewController *)self view];
  [view setNeedsLayout];

  [(MUImageContentViewController *)self setZoomToFitRestoreValue:[(MUImageContentViewController *)self firstLoadZoomToFit]];

  [(MUImageContentViewController *)self setFirstLoadZoomToFit:0];
}

- (void)_keyboardWillHide:(id)hide
{
  [(MUImageContentViewController *)self _adjustScrollViewForKeyboardNotification:hide];
  view = [(MUImageContentViewController *)self view];
  [view setNeedsLayout];

  zoomToFitRestoreValue = [(MUImageContentViewController *)self zoomToFitRestoreValue];

  [(MUImageContentViewController *)self setFirstLoadZoomToFit:zoomToFitRestoreValue];
}

- (void)_adjustScrollViewForKeyboardNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo valueForKey:*MEMORY[0x277D76BB0]];
  [v6 CGRectValue];
  v38 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  userInfo2 = [notificationCopy userInfo];
  v15 = [userInfo2 valueForKey:*MEMORY[0x277D76BB8]];
  [v15 CGRectValue];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  userInfo3 = [notificationCopy userInfo];
  v25 = [userInfo3 valueForKey:*MEMORY[0x277D76B78]];
  [v25 floatValue];
  v27 = v26;

  userInfo4 = [notificationCopy userInfo];

  v29 = [userInfo4 valueForKey:*MEMORY[0x277D76B70]];
  unsignedIntegerValue = [v29 unsignedIntegerValue];

  editingAnnotaiton = [(MUImageContentViewController *)self editingAnnotaiton];
  v31 = [(MUImageContentViewController *)self _pageIndexForAnnotation:editingAnnotaiton];
  if (editingAnnotaiton && v31 != 0x7FFFFFFFFFFFFFFFLL)
  {
    annotationController = [(MUContentViewController *)self annotationController];
    v33 = [annotationController overlayViewAtIndex:v31];

    [(MUImageContentViewController *)self _annotationRectInOverlay:editingAnnotaiton pageIndex:v31];
    [v33 convertRect:0 toView:?];
    [(MUImageContentViewController *)self adjustScrollViewToAccomodateKeyboardStartingFrame:v33 endingFrame:unsignedIntegerValue annotationFrame:v38 inOverlayView:v9 withAnimationDuration:v11 curve:v13, v17, v19, v21, v23, v34, v35, v36, v37, v27];
  }
}

- (void)adjustScrollViewToAccomodateKeyboardStartingFrame:(double)frame endingFrame:(double)endingFrame annotationFrame:(double)annotationFrame inOverlayView:(CGFloat)view withAnimationDuration:(CGFloat)duration curve:(CGFloat)curve
{
  scrollView = [self scrollView];
  superview = [scrollView superview];
  [scrollView frame];
  [superview convertRect:0 toView:?];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v88.origin.x = v28;
  v88.origin.y = v30;
  v88.size.width = v32;
  v88.size.height = v34;
  v71 = -(duration - CGRectGetMaxY(v88));
  v67 = *MEMORY[0x277CBF398];
  v70 = *(MEMORY[0x277CBF398] + 8);
  v69 = *(MEMORY[0x277CBF398] + 16);
  v68 = *(MEMORY[0x277CBF398] + 24);
  [scrollView bounds];
  [scrollView convertRect:0 toView:?];
  x = v89.origin.x;
  y = v89.origin.y;
  width = v89.size.width;
  height = v89.size.height;
  v94.origin.x = view;
  v94.origin.y = duration;
  v94.size.width = curve;
  v94.size.height = a9;
  if (CGRectIntersectsRect(v89, v94))
  {
    v90.origin.x = x;
    v90.origin.y = y;
    v90.size.width = width;
    v90.size.height = height;
    v95.origin.x = view;
    v95.origin.y = duration;
    v95.size.width = curve;
    v95.size.height = a9;
    v91 = CGRectIntersection(v90, v95);
    v64 = height - (CGRectGetHeight(v91) + 0.0);
    [scrollView convertRect:0 fromView:{a13, a14, a15, a16}];
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

  [scrollView contentInset];
  v52 = v51;
  [scrollView _contentScrollInset];
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
      [scrollView _setContentScrollInset:{v54, v56, v59, v58}];
      goto LABEL_21;
    }

    v60 = dispatch_time(0, (a17 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __152__MUImageContentViewController_adjustScrollViewToAccomodateKeyboardStartingFrame_endingFrame_annotationFrame_inOverlayView_withAnimationDuration_curve___block_invoke_2;
    block[3] = &unk_27986E880;
    v73 = scrollView;
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
    v79 = scrollView;
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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  scrollView = [(MUImageContentViewController *)self scrollView];

  v5 = draggingCopy;
  if (scrollView == draggingCopy)
  {
    [(MUImageContentViewController *)self setFirstLoadZoomToFit:0];
    [(MUImageContentViewController *)self setCentersIgnoringContentInsets:0];
    scrollViewDelegate = [(MUImageContentViewController *)self scrollViewDelegate];
    if (scrollViewDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [scrollViewDelegate scrollViewWillBeginDragging:draggingCopy];
    }

    v5 = draggingCopy;
  }
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  zoomingCopy = zooming;
  viewCopy = view;
  scrollView = [(MUImageContentViewController *)self scrollView];

  if (scrollView == zoomingCopy)
  {
    [(MUImageContentViewController *)self setFirstLoadZoomToFit:0];
    [(MUImageContentViewController *)self setCentersIgnoringContentInsets:0];
    if (!self->_inDoubleTapZoom)
    {
      [zoomingCopy setScrollEnabled:1];
    }

    scrollViewDelegate = [(MUImageContentViewController *)self scrollViewDelegate];
    if (scrollViewDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [scrollViewDelegate scrollViewWillBeginZooming:zoomingCopy withView:viewCopy];
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  scrollViewDelegate = [(MUImageContentViewController *)self scrollViewDelegate];
  scrollView = [(MUImageContentViewController *)self scrollView];
  if (scrollView == scrollCopy && scrollViewDelegate)
  {
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      [scrollViewDelegate scrollViewDidScroll:scrollCopy];
    }
  }

  else
  {
  }
}

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  scrollViewDelegate = [(MUImageContentViewController *)self scrollViewDelegate];
  scrollView = [(MUImageContentViewController *)self scrollView];
  if (scrollView == zoomCopy && scrollViewDelegate)
  {
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      [scrollViewDelegate scrollViewDidZoom:zoomCopy];
    }
  }

  else
  {
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  topCopy = top;
  scrollView = [(MUImageContentViewController *)self scrollView];

  if (scrollView == topCopy)
  {
    [(MUImageContentViewController *)self setCentersIgnoringContentInsets:0];
    scrollViewDelegate = [(MUImageContentViewController *)self scrollViewDelegate];
    if (scrollViewDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6 = [scrollViewDelegate scrollViewShouldScrollToTop:topCopy];
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

- (CGPoint)convertPoint:(CGPoint)point fromOverlayToModelWithPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  y = point.y;
  x = point.x;
  v8 = [controller overlayViewAtIndex:index];
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

- (CGPoint)convertPoint:(CGPoint)point fromModelToOverlayWithPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  y = point.y;
  x = point.x;
  v8 = [controller overlayViewAtIndex:index];
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

- (CGRect)maxPageRectWithPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  v5 = [(MUImageContentViewController *)self imageView:index];
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

- (id)newContentSnapshotPDFDataIncludingAdornments:(BOOL)adornments atScale:(double)scale inRect:(CGRect)rect onOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  imageView = [(MUImageContentViewController *)self imageView];
  image = [imageView image];
  cGImage = [image CGImage];

  v18 = [controllerCopy overlayViewAtIndex:index];

  imageView2 = [(MUImageContentViewController *)self imageView];
  [imageView2 convertRect:v18 fromView:{x, y, width, height}];
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
  mediaBox.size.width = v25 * scale;
  mediaBox.size.height = v27 * scale;
  v30 = CGImageGetWidth(cGImage);
  v31 = CGImageGetHeight(cGImage);
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
  ColorSpace = CGImageGetColorSpace(cGImage);
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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    CGContextSetFillColorWithColor(v43, [whiteColor CGColor]);

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
    CGContextDrawImage(v43, v65, cGImage);
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
        CGContextScaleCTM(v52, scale, scale);
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

- (id)undoManagerForAnnotationController:(id)controller
{
  delegate = [(MUContentViewController *)self delegate];
  v5 = [delegate undoManagerForContentViewController:self];

  return v5;
}

- (id)popoverPresentingViewControllerForAnnotationController:(id)controller
{
  controllerCopy = controller;
  delegate = [(MUContentViewController *)self delegate];
  v6 = [delegate popoverPresentingViewControllerForAnnotationController:controllerCopy];

  return v6;
}

- (void)installDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index forAnnotationController:(id)controller
{
  recognizerCopy = recognizer;
  view = [(MUImageContentViewController *)self view];
  [view addGestureRecognizer:recognizerCopy];
}

- (void)uninstallDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index forAnnotationController:(id)controller
{
  recognizerCopy = recognizer;
  view = [recognizerCopy view];
  [view removeGestureRecognizer:recognizerCopy];
}

- (void)updateDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index withPriority:(BOOL)priority forAnnotationController:(id)controller
{
  priorityCopy = priority;
  v55[4] = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  controllerCopy = controller;
  tapGestureRecognizer = [controllerCopy tapGestureRecognizer];
  v55[0] = tapGestureRecognizer;
  pressGestureRecognizer = [controllerCopy pressGestureRecognizer];
  v55[1] = pressGestureRecognizer;
  panGestureRecognizer = [controllerCopy panGestureRecognizer];
  v55[2] = panGestureRecognizer;
  v39 = controllerCopy;
  rotationGestureRecognizer = [controllerCopy rotationGestureRecognizer];
  v55[3] = rotationGestureRecognizer;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];

  v16 = [MEMORY[0x277CBEB58] set];
  view = [(MUImageContentViewController *)self view];
  gestureRecognizers = [view gestureRecognizers];
  [v16 addObjectsFromArray:gestureRecognizers];

  scrollView = [(MUImageContentViewController *)self scrollView];
  gestureRecognizers2 = [scrollView gestureRecognizers];
  [v16 addObjectsFromArray:gestureRecognizers2];

  v21 = [MEMORY[0x277CBEB98] setWithArray:v15];
  [v16 minusSet:v21];

  [v16 removeObject:recognizerCopy];
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

        [recognizerCopy requireGestureRecognizerToFail:*(*(&v48 + 1) + 8 * i)];
      }

      v24 = [v22 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v24);
  }

  if (priorityCopy)
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
          [recognizerCopy removeFailureRequirement:v32];
          if ((objc_opt_respondsToSelector() & 1) == 0 || [v32 _acceptsFailureRequirements])
          {
            [v32 requireGestureRecognizerToFail:recognizerCopy];
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
          [v38 removeFailureRequirement:recognizerCopy];
          if ((objc_opt_respondsToSelector() & 1) == 0 || [v38 _acceptsFailureRequirements])
          {
            [recognizerCopy requireGestureRecognizerToFail:v38];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v35);
    }
  }
}

- (double)modelBaseScaleFactorOfPageAtIndex:(unint64_t)index forAnnotationController:(id)controller
{
  v6 = [(MUContentViewController *)self delegate:index];
  [v6 modelBaseScaleFactorOfPageAtIndex:index forContentViewController:self];
  v8 = v7;

  return v8;
}

- (id)controller:(id)controller willSetToolbarItems:(id)items
{
  itemsCopy = items;
  delegate = [(MUContentViewController *)self delegate];
  v7 = [delegate annotationControllerOfContentViewController:self willSetToolbarItems:itemsCopy];

  return v7;
}

- (void)positionSketchOverlay:(id)overlay forAnnotationController:(id)controller
{
  overlayCopy = overlay;
  delegate = [(MUContentViewController *)self delegate];
  [delegate positionSketchOverlay:overlayCopy forContentViewController:self];
}

- (id)layerContainingQuickBackgroundForLoupeOnOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  v4 = [(MUImageContentViewController *)self imageView:index];
  layer = [v4 layer];

  return layer;
}

- (void)controllerDidEnterToolMode:(id)mode
{
  scrollView = [(MUImageContentViewController *)self scrollView];
  panGestureRecognizer = [scrollView panGestureRecognizer];
  [panGestureRecognizer setMinimumNumberOfTouches:2];

  localDoubleTapRecognizer = [(MUImageContentViewController *)self localDoubleTapRecognizer];
  [localDoubleTapRecognizer setEnabled:0];
}

- (void)controllerDidExitToolMode:(id)mode
{
  scrollView = [(MUImageContentViewController *)self scrollView];
  panGestureRecognizer = [scrollView panGestureRecognizer];
  [panGestureRecognizer setMinimumNumberOfTouches:1];

  localDoubleTapRecognizer = [(MUImageContentViewController *)self localDoubleTapRecognizer];
  [localDoubleTapRecognizer setEnabled:1];
}

- (void)editDetectedForAnnotationController:(id)controller
{
  controllerCopy = controller;
  delegate = [(MUContentViewController *)self delegate];
  [delegate editDetectedForAnnotationController:controllerCopy];
}

- (void)editCheckpointReachedForAnnotationController:(id)controller
{
  controllerCopy = controller;
  delegate = [(MUContentViewController *)self delegate];
  [delegate editCheckpointReachedForAnnotationController:controllerCopy];
}

- (void)penStrokeCompletedForAnnotationController:(id)controller
{
  controllerCopy = controller;
  delegate = [(MUContentViewController *)self delegate];
  [delegate penStrokeCompletedForAnnotationController:controllerCopy];
}

- (void)controllerWillShowSignatureCaptureView:(id)view
{
  viewCopy = view;
  delegate = [(MUContentViewController *)self delegate];
  [delegate controllerWillShowSignatureCaptureView:viewCopy];
}

- (void)controllerWillDismissSignatureCaptureView:(id)view
{
  viewCopy = view;
  delegate = [(MUContentViewController *)self delegate];
  [delegate controllerWillDismissSignatureCaptureView:viewCopy];
}

- (void)controllerWillShowSignatureManagerView:(id)view
{
  viewCopy = view;
  delegate = [(MUContentViewController *)self delegate];
  [delegate controllerWillShowSignatureManagerView:viewCopy];
}

- (void)controllerWillDismissSignatureManagerView:(id)view
{
  viewCopy = view;
  delegate = [(MUContentViewController *)self delegate];
  [delegate controllerWillDismissSignatureManagerView:viewCopy];
}

- (NSString)originalImageDescription
{
  delegate = [(MUContentViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    originalImageDescription = [delegate originalImageDescription];
  }

  else
  {
    originalImageDescription = 0;
  }

  return originalImageDescription;
}

- (void)enableHDRAnnotations
{
  [MEMORY[0x277CEA698] defaultMaxHDRGain];
  v4 = v3;
  annotationController = [(MUContentViewController *)self annotationController];
  [annotationController setMaxHDRGain:v4];
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