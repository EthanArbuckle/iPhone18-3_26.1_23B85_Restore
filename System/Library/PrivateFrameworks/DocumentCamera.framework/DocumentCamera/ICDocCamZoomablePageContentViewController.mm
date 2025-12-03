@interface ICDocCamZoomablePageContentViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)isTouchingAnalyzableContentAtPoint:(CGPoint)point withEvent:(id)event;
- (CGRect)zoomRectForScale:(float)scale withCenter:(CGPoint)center;
- (CGSize)prevScrollViewSize;
- (ICDocCamZoomablePageContentDelegate)pageContentDelegate;
- (ICDocCamZoomablePageContentViewController)init;
- (double)zoomScale;
- (void)analyzeCurrentImageIfNecessary;
- (void)doubleTap:(id)tap;
- (void)pageContentViewDidPencilDown;
- (void)resetImageCentering;
- (void)resetZoom;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)setImage:(id)image;
- (void)setupAccessibility;
- (void)setupScales;
- (void)singleTap;
- (void)view:(id)view setCenter:(CGPoint)center;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ICDocCamZoomablePageContentViewController

- (ICDocCamZoomablePageContentViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6.receiver = self;
  v6.super_class = ICDocCamZoomablePageContentViewController;
  v4 = [(ICDocCamZoomablePageContentViewController *)&v6 initWithNibName:@"ICDocCamZoomablePageContentViewController" bundle:v3];

  return v4;
}

- (void)analyzeCurrentImageIfNecessary
{
  if (+[DCImageAnalyzerManager isImageAnalysisEnabled])
  {
    image = [(ICDocCamZoomablePageContentViewController *)self image];

    if (image)
    {
      objc_initWeak(&location, self);
      v4 = +[DCImageAnalyzerManager sharedInstance];
      image2 = [(ICDocCamZoomablePageContentViewController *)self image];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __75__ICDocCamZoomablePageContentViewController_analyzeCurrentImageIfNecessary__block_invoke;
      v6[3] = &unk_278F93560;
      objc_copyWeak(&v7, &location);
      [v4 analysisForImage:image2 completionHandler:v6];

      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

void __75__ICDocCamZoomablePageContentViewController_analyzeCurrentImageIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __75__ICDocCamZoomablePageContentViewController_analyzeCurrentImageIfNecessary__block_invoke_cold_1(v6, v7);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained analysisInteraction];
    [v10 setAnalysis:v5];

    v11 = [v9 analysisInteraction];
    [v11 setActiveInteractionTypes:3];
  }
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = ICDocCamZoomablePageContentViewController;
  [(ICDocCamZoomablePageContentViewController *)&v29 viewDidLoad];
  if (+[DCImageAnalyzerManager isImageAnalysisEnabled])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v3 = getVKCImageAnalysisInteractionClass_softClass;
    v34 = getVKCImageAnalysisInteractionClass_softClass;
    if (!getVKCImageAnalysisInteractionClass_softClass)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __getVKCImageAnalysisInteractionClass_block_invoke;
      v30[3] = &unk_278F931A0;
      v30[4] = &v31;
      __getVKCImageAnalysisInteractionClass_block_invoke(v30);
      v3 = v32[3];
    }

    v4 = v3;
    _Block_object_dispose(&v31, 8);
    v5 = objc_alloc_init(v3);
    [(ICDocCamZoomablePageContentViewController *)self setAnalysisInteraction:v5];

    analysisInteraction = [(ICDocCamZoomablePageContentViewController *)self analysisInteraction];
    [analysisInteraction setActiveInteractionTypes:0];

    imageView = [(ICDocCamZoomablePageContentViewController *)self imageView];
    analysisInteraction2 = [(ICDocCamZoomablePageContentViewController *)self analysisInteraction];
    [imageView addInteraction:analysisInteraction2];
  }

  image = [(ICDocCamZoomablePageContentViewController *)self image];
  imageView2 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [imageView2 setImage:image];

  imageView3 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [imageView3 setAccessibilityIgnoresInvertColors:1];

  v12 = objc_opt_class();
  imageView4 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  v14 = DCCheckedDynamicCast(v12, imageView4);
  [v14 setPageContentViewDelegate:self];

  scrollView = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView setDelegate:self];

  scrollView2 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView2 setMinimumZoomScale:1.0];

  scrollView3 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView3 setMaximumZoomScale:0.5];

  v18 = *MEMORY[0x277D76EB8];
  scrollView4 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView4 setDecelerationRate:v18];

  scrollView5 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView5 bounds];
  [(ICDocCamZoomablePageContentViewController *)self setPrevScrollViewSize:v21, v22];

  [(ICDocCamZoomablePageContentViewController *)self setShouldSetupScalesInViewDidLayoutSubviews:1];
  v23 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_singleTap];
  [v23 setNumberOfTapsRequired:1];
  [v23 setAllowedTouchTypes:&unk_285C6D5E8];
  view = [(ICDocCamZoomablePageContentViewController *)self view];
  [view addGestureRecognizer:v23];

  v25 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_doubleTap_];
  [v25 setNumberOfTapsRequired:2];
  [v25 setAllowedTouchTypes:&unk_285C6D600];
  view2 = [(ICDocCamZoomablePageContentViewController *)self view];
  [view2 addGestureRecognizer:v25];

  [v23 requireGestureRecognizerToFail:v25];
  imageView5 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [imageView5 setUserInteractionEnabled:1];

  [(ICDocCamZoomablePageContentViewController *)self analyzeCurrentImageIfNecessary];
  scrollView6 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView6 setContentInsetAdjustmentBehavior:2];
}

- (void)resetZoom
{
  scrollView = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  scrollView2 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView2 minimumZoomScale];
  [scrollView setZoomScale:0 animated:?];
}

- (void)resetImageCentering
{
  scrollView = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView bounds];
  MidX = CGRectGetMidX(v9);
  scrollView2 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView2 bounds];
  MidY = CGRectGetMidY(v10);

  imageView = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [(ICDocCamZoomablePageContentViewController *)self view:imageView setCenter:MidX, MidY];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICDocCamZoomablePageContentViewController;
  [(ICDocCamZoomablePageContentViewController *)&v4 viewDidAppear:appear];
  [(ICDocCamZoomablePageContentViewController *)self setupAccessibility];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if ([(ICDocCamZoomablePageContentViewController *)self shouldSetupScalesInViewDidLayoutSubviews])
  {
    v5 = 1;
  }

  else
  {
    [(UIImage *)self->_image size];
    v7 = v6;
    v9 = v8;
    [imageCopy size];
    v5 = v9 != v11 || v7 != v10;
  }

  [(ICDocCamZoomablePageContentViewController *)self setShouldSetupScalesInViewDidLayoutSubviews:v5];
  objc_storeStrong(&self->_image, image);
  viewIfLoaded = [(ICDocCamZoomablePageContentViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    imageView = [(ICDocCamZoomablePageContentViewController *)self imageView];
    [imageView setImage:imageCopy];

    [(ICDocCamZoomablePageContentViewController *)self analyzeCurrentImageIfNecessary];
    if ([(ICDocCamZoomablePageContentViewController *)self shouldSetupScalesInViewDidLayoutSubviews])
    {
      view = [(ICDocCamZoomablePageContentViewController *)self view];
      [view setNeedsLayout];
    }
  }
}

- (double)zoomScale
{
  scrollView = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView zoomScale];
  v4 = v3;

  return v4;
}

- (void)view:(id)view setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  viewCopy = view;
  [viewCopy frame];
  v9 = v8;
  v11 = v10;
  scrollView = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView contentOffset];
  v14 = v13;
  v16 = v15;

  v17 = x - v9 * 0.5;
  v18 = y - v11 * 0.5;
  if (v17 >= 0.0)
  {
    v19 = v14;
  }

  else
  {
    v19 = -v17;
  }

  if (v17 >= 0.0)
  {
    v20 = x - v9 * 0.5;
  }

  else
  {
    v20 = 0.0;
  }

  if (v18 >= 0.0)
  {
    v21 = v16;
  }

  else
  {
    v21 = -v18;
  }

  if (v18 >= 0.0)
  {
    v22 = v18;
  }

  else
  {
    v22 = 0.0;
  }

  [viewCopy setFrame:{v20, v22, v9, v11}];

  scrollView2 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView2 setContentOffset:{v19, v21}];
}

- (CGRect)zoomRectForScale:(float)scale withCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  imageView = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [imageView frame];
  scaleCopy = scale;
  v11 = v10 / scale;

  imageView2 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [imageView2 frame];
  v14 = v13 / scaleCopy;

  imageView3 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  view = [(ICDocCamZoomablePageContentViewController *)self view];
  [imageView3 convertPoint:view fromView:{x, y}];
  v18 = v17;
  v20 = v19;

  v21 = v18 - v14 * 0.5;
  v22 = v20 - v11 * 0.5;
  v23 = v14;
  v24 = v11;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  v5 = [(ICDocCamZoomablePageContentViewController *)self pageContentDelegate:zooming];
  [v5 hideBarsForZoomablePageContentViewController:self];
}

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  delegate = [zoomCopy delegate];
  v4 = [delegate viewForZoomingInScrollView:zoomCopy];

  [v4 frame];
  v6 = v5;
  v8 = v7;
  [zoomCopy bounds];
  v9 = 0.0;
  v10 = 0.0;
  if (v6 < v11)
  {
    [zoomCopy bounds];
    v10 = (v12 - v6) * 0.5;
  }

  [zoomCopy bounds];
  if (v8 < v13)
  {
    [zoomCopy bounds];
    v9 = (v14 - v8) * 0.5;
  }

  [v4 setFrame:{v10, v9, v6, v8}];
}

- (void)setupScales
{
  image = [(ICDocCamZoomablePageContentViewController *)self image];
  [image size];
  v5 = v4;
  v7 = v6;
  scrollView = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView setContentSize:{v5, v7}];

  scrollView2 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView2 frame];
  v11 = v10;
  v13 = v12;

  scrollView3 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView3 contentSize];
  v16 = v11 / v15;

  scrollView4 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView4 contentSize];
  v19 = v13 / v18;

  if (v16 >= v19)
  {
    v16 = v19;
  }

  scrollView5 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView5 setMinimumZoomScale:v16];

  scrollView6 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView6 setMaximumZoomScale:1.0];

  scrollView7 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView7 setZoomScale:v16];
}

- (void)viewDidLayoutSubviews
{
  v52.receiver = self;
  v52.super_class = ICDocCamZoomablePageContentViewController;
  [(ICDocCamZoomablePageContentViewController *)&v52 viewDidLayoutSubviews];
  scrollView = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [scrollView bounds];
  v5 = v4;
  v7 = v6;

  if ([(ICDocCamZoomablePageContentViewController *)self shouldSetupScalesInViewDidLayoutSubviews])
  {
    [(ICDocCamZoomablePageContentViewController *)self setShouldSetupScalesInViewDidLayoutSubviews:0];
    image = [(ICDocCamZoomablePageContentViewController *)self image];
    [image size];
    v10 = v9;
    v12 = v11;
    scrollView2 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [scrollView2 setContentSize:{v10, v12}];

    imageView = [(ICDocCamZoomablePageContentViewController *)self imageView];
    [imageView sizeToFit];

    [(ICDocCamZoomablePageContentViewController *)self setupScales];
LABEL_15:
    scrollView3 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [scrollView3 bounds];
    MidX = CGRectGetMidX(v53);
    scrollView4 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [scrollView4 bounds];
    MidY = CGRectGetMidY(v54);

    imageView2 = [(ICDocCamZoomablePageContentViewController *)self imageView];
    [(ICDocCamZoomablePageContentViewController *)self view:imageView2 setCenter:MidX, MidY];

    goto LABEL_16;
  }

  [(ICDocCamZoomablePageContentViewController *)self prevScrollViewSize];
  if (v5 != v16 || v7 != v15)
  {
    scrollView5 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [scrollView5 zoomScale];
    v20 = v19;

    scrollView6 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [scrollView6 minimumZoomScale];
    v23 = v22;

    image2 = [(ICDocCamZoomablePageContentViewController *)self image];
    [image2 size];
    v26 = v25;
    v28 = v27;
    scrollView7 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [scrollView7 setContentSize:{v26, v28}];

    [(ICDocCamZoomablePageContentViewController *)self setupScales];
    if (v20 != v23)
    {
      scrollView8 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
      [scrollView8 minimumZoomScale];
      v32 = v31;

      if (v20 >= v32)
      {
        v32 = v20;
      }

      scrollView9 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
      [scrollView9 maximumZoomScale];
      v35 = v34;

      if (v32 < v35)
      {
        v35 = v32;
      }

      scrollView10 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
      [scrollView10 zoomScale];
      v38 = v37;

      if (v35 != v38)
      {
        scrollView11 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
        [scrollView11 setZoomScale:v35];

        scrollView12 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
        [(ICDocCamZoomablePageContentViewController *)self scrollViewDidZoom:scrollView12];
      }
    }

    scrollView13 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [scrollView13 zoomScale];
    v43 = v42;
    scrollView14 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [scrollView14 minimumZoomScale];
    v46 = v45;

    if (v43 == v46)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  [(ICDocCamZoomablePageContentViewController *)self setPrevScrollViewSize:v5, v7];
}

- (void)singleTap
{
  pageContentDelegate = [(ICDocCamZoomablePageContentViewController *)self pageContentDelegate];
  [pageContentDelegate switchBarVisibilityForZoomablePageContentViewController:self];
}

- (void)doubleTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy numberOfTouches])
  {
    scrollView = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [scrollView zoomScale];
    v7 = v6;
    scrollView2 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [scrollView2 minimumZoomScale];
    v10 = v9;

    if (v7 == v10)
    {
      scrollView3 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
      [tapCopy locationOfTouch:0 inView:scrollView3];
      v13 = v12;
      v15 = v14;

      scrollView4 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
      [scrollView4 maximumZoomScale];
      *&v17 = v17;
      [(ICDocCamZoomablePageContentViewController *)self zoomRectForScale:v17 withCenter:v13, v15];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      scrollView5 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
      [scrollView5 zoomToRect:1 animated:{v19, v21, v23, v25}];
    }

    else
    {
      view = [(ICDocCamZoomablePageContentViewController *)self view];
      [view bounds];
      MidX = CGRectGetMidX(v32);
      view2 = [(ICDocCamZoomablePageContentViewController *)self view];
      [view2 bounds];
      MidY = CGRectGetMidY(v33);

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __55__ICDocCamZoomablePageContentViewController_doubleTap___block_invoke;
      v31[3] = &unk_278F93588;
      v31[4] = self;
      *&v31[5] = MidX;
      *&v31[6] = MidY;
      [MEMORY[0x277D75D18] animateWithDuration:v31 animations:0.2];
    }
  }
}

void __55__ICDocCamZoomablePageContentViewController_doubleTap___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) scrollView];
  [v2 minimumZoomScale];
  v4 = v3;
  v5 = [*(a1 + 32) scrollView];
  [v5 setZoomScale:v4];

  v6 = *(a1 + 32);
  v7 = [v6 imageView];
  [v6 view:v7 setCenter:{*(a1 + 40), *(a1 + 48)}];
}

- (void)setupAccessibility
{
  imageView = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [imageView setIsAccessibilityElement:1];

  v5 = [DCLocalization localizedStringForKey:@"image" value:@"image" table:@"Localizable"];
  imageView2 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [imageView2 setAccessibilityLabel:v5];
}

- (BOOL)accessibilityPerformEscape
{
  pageContentDelegate = [(ICDocCamZoomablePageContentViewController *)self pageContentDelegate];
  v4 = [pageContentDelegate isShowingBarsForZoomablePageContentViewController:self];

  if ((v4 & 1) == 0)
  {
    pageContentDelegate2 = [(ICDocCamZoomablePageContentViewController *)self pageContentDelegate];
    [pageContentDelegate2 showBarsForZoomablePageContentViewController:self];
  }

  return v4 ^ 1;
}

- (void)pageContentViewDidPencilDown
{
  pageContentDelegate = [(ICDocCamZoomablePageContentViewController *)self pageContentDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    pageContentDelegate2 = [(ICDocCamZoomablePageContentViewController *)self pageContentDelegate];
    [pageContentDelegate2 pencilDownInZoomablePageContentViewController:self];
  }
}

- (BOOL)isTouchingAnalyzableContentAtPoint:(CGPoint)point withEvent:(id)event
{
  y = point.y;
  x = point.x;
  analysisInteraction = [(ICDocCamZoomablePageContentViewController *)self analysisInteraction];
  if ([analysisInteraction hasActiveTextSelection] & 1) != 0 || (objc_msgSend(analysisInteraction, "dataDetectorExistsAtPoint:", x, y) & 1) != 0 || (objc_msgSend(analysisInteraction, "textExistsAtPoint:", x, y))
  {
    v7 = 1;
  }

  else
  {
    v7 = [analysisInteraction visualSearchExistsAtPoint:{x, y}];
  }

  return v7;
}

- (ICDocCamZoomablePageContentDelegate)pageContentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pageContentDelegate);

  return WeakRetained;
}

- (CGSize)prevScrollViewSize
{
  width = self->_prevScrollViewSize.width;
  height = self->_prevScrollViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

void __75__ICDocCamZoomablePageContentViewController_analyzeCurrentImageIfNecessary__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_249253000, a2, OS_LOG_TYPE_ERROR, "Encountered error from VKCImageAnalysis: %@", &v2, 0xCu);
}

@end