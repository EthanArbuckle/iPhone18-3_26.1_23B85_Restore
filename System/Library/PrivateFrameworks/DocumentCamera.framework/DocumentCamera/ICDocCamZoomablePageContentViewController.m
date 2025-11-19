@interface ICDocCamZoomablePageContentViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)isTouchingAnalyzableContentAtPoint:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)zoomRectForScale:(float)a3 withCenter:(CGPoint)a4;
- (CGSize)prevScrollViewSize;
- (ICDocCamZoomablePageContentDelegate)pageContentDelegate;
- (ICDocCamZoomablePageContentViewController)init;
- (double)zoomScale;
- (void)analyzeCurrentImageIfNecessary;
- (void)doubleTap:(id)a3;
- (void)pageContentViewDidPencilDown;
- (void)resetImageCentering;
- (void)resetZoom;
- (void)scrollViewDidZoom:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)setImage:(id)a3;
- (void)setupAccessibility;
- (void)setupScales;
- (void)singleTap;
- (void)view:(id)a3 setCenter:(CGPoint)a4;
- (void)viewDidAppear:(BOOL)a3;
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
    v3 = [(ICDocCamZoomablePageContentViewController *)self image];

    if (v3)
    {
      objc_initWeak(&location, self);
      v4 = +[DCImageAnalyzerManager sharedInstance];
      v5 = [(ICDocCamZoomablePageContentViewController *)self image];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __75__ICDocCamZoomablePageContentViewController_analyzeCurrentImageIfNecessary__block_invoke;
      v6[3] = &unk_278F93560;
      objc_copyWeak(&v7, &location);
      [v4 analysisForImage:v5 completionHandler:v6];

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

    v6 = [(ICDocCamZoomablePageContentViewController *)self analysisInteraction];
    [v6 setActiveInteractionTypes:0];

    v7 = [(ICDocCamZoomablePageContentViewController *)self imageView];
    v8 = [(ICDocCamZoomablePageContentViewController *)self analysisInteraction];
    [v7 addInteraction:v8];
  }

  v9 = [(ICDocCamZoomablePageContentViewController *)self image];
  v10 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [v10 setImage:v9];

  v11 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [v11 setAccessibilityIgnoresInvertColors:1];

  v12 = objc_opt_class();
  v13 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  v14 = DCCheckedDynamicCast(v12, v13);
  [v14 setPageContentViewDelegate:self];

  v15 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v15 setDelegate:self];

  v16 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v16 setMinimumZoomScale:1.0];

  v17 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v17 setMaximumZoomScale:0.5];

  v18 = *MEMORY[0x277D76EB8];
  v19 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v19 setDecelerationRate:v18];

  v20 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v20 bounds];
  [(ICDocCamZoomablePageContentViewController *)self setPrevScrollViewSize:v21, v22];

  [(ICDocCamZoomablePageContentViewController *)self setShouldSetupScalesInViewDidLayoutSubviews:1];
  v23 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_singleTap];
  [v23 setNumberOfTapsRequired:1];
  [v23 setAllowedTouchTypes:&unk_285C6D5E8];
  v24 = [(ICDocCamZoomablePageContentViewController *)self view];
  [v24 addGestureRecognizer:v23];

  v25 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_doubleTap_];
  [v25 setNumberOfTapsRequired:2];
  [v25 setAllowedTouchTypes:&unk_285C6D600];
  v26 = [(ICDocCamZoomablePageContentViewController *)self view];
  [v26 addGestureRecognizer:v25];

  [v23 requireGestureRecognizerToFail:v25];
  v27 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [v27 setUserInteractionEnabled:1];

  [(ICDocCamZoomablePageContentViewController *)self analyzeCurrentImageIfNecessary];
  v28 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v28 setContentInsetAdjustmentBehavior:2];
}

- (void)resetZoom
{
  v4 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  v3 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v3 minimumZoomScale];
  [v4 setZoomScale:0 animated:?];
}

- (void)resetImageCentering
{
  v3 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v3 bounds];
  MidX = CGRectGetMidX(v9);
  v5 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v5 bounds];
  MidY = CGRectGetMidY(v10);

  v7 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [(ICDocCamZoomablePageContentViewController *)self view:v7 setCenter:MidX, MidY];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICDocCamZoomablePageContentViewController;
  [(ICDocCamZoomablePageContentViewController *)&v4 viewDidAppear:a3];
  [(ICDocCamZoomablePageContentViewController *)self setupAccessibility];
}

- (void)setImage:(id)a3
{
  v15 = a3;
  if ([(ICDocCamZoomablePageContentViewController *)self shouldSetupScalesInViewDidLayoutSubviews])
  {
    v5 = 1;
  }

  else
  {
    [(UIImage *)self->_image size];
    v7 = v6;
    v9 = v8;
    [v15 size];
    v5 = v9 != v11 || v7 != v10;
  }

  [(ICDocCamZoomablePageContentViewController *)self setShouldSetupScalesInViewDidLayoutSubviews:v5];
  objc_storeStrong(&self->_image, a3);
  v12 = [(ICDocCamZoomablePageContentViewController *)self viewIfLoaded];

  if (v12)
  {
    v13 = [(ICDocCamZoomablePageContentViewController *)self imageView];
    [v13 setImage:v15];

    [(ICDocCamZoomablePageContentViewController *)self analyzeCurrentImageIfNecessary];
    if ([(ICDocCamZoomablePageContentViewController *)self shouldSetupScalesInViewDidLayoutSubviews])
    {
      v14 = [(ICDocCamZoomablePageContentViewController *)self view];
      [v14 setNeedsLayout];
    }
  }
}

- (double)zoomScale
{
  v2 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v2 zoomScale];
  v4 = v3;

  return v4;
}

- (void)view:(id)a3 setCenter:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v12 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v12 contentOffset];
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

  [v7 setFrame:{v20, v22, v9, v11}];

  v23 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v23 setContentOffset:{v19, v21}];
}

- (CGRect)zoomRectForScale:(float)a3 withCenter:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [v8 frame];
  v9 = a3;
  v11 = v10 / a3;

  v12 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [v12 frame];
  v14 = v13 / v9;

  v15 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  v16 = [(ICDocCamZoomablePageContentViewController *)self view];
  [v15 convertPoint:v16 fromView:{x, y}];
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

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  v5 = [(ICDocCamZoomablePageContentViewController *)self pageContentDelegate:a3];
  [v5 hideBarsForZoomablePageContentViewController:self];
}

- (void)scrollViewDidZoom:(id)a3
{
  v15 = a3;
  v3 = [v15 delegate];
  v4 = [v3 viewForZoomingInScrollView:v15];

  [v4 frame];
  v6 = v5;
  v8 = v7;
  [v15 bounds];
  v9 = 0.0;
  v10 = 0.0;
  if (v6 < v11)
  {
    [v15 bounds];
    v10 = (v12 - v6) * 0.5;
  }

  [v15 bounds];
  if (v8 < v13)
  {
    [v15 bounds];
    v9 = (v14 - v8) * 0.5;
  }

  [v4 setFrame:{v10, v9, v6, v8}];
}

- (void)setupScales
{
  v3 = [(ICDocCamZoomablePageContentViewController *)self image];
  [v3 size];
  v5 = v4;
  v7 = v6;
  v8 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v8 setContentSize:{v5, v7}];

  v9 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v9 frame];
  v11 = v10;
  v13 = v12;

  v14 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v14 contentSize];
  v16 = v11 / v15;

  v17 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v17 contentSize];
  v19 = v13 / v18;

  if (v16 >= v19)
  {
    v16 = v19;
  }

  v20 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v20 setMinimumZoomScale:v16];

  v21 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v21 setMaximumZoomScale:1.0];

  v22 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v22 setZoomScale:v16];
}

- (void)viewDidLayoutSubviews
{
  v52.receiver = self;
  v52.super_class = ICDocCamZoomablePageContentViewController;
  [(ICDocCamZoomablePageContentViewController *)&v52 viewDidLayoutSubviews];
  v3 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  if ([(ICDocCamZoomablePageContentViewController *)self shouldSetupScalesInViewDidLayoutSubviews])
  {
    [(ICDocCamZoomablePageContentViewController *)self setShouldSetupScalesInViewDidLayoutSubviews:0];
    v8 = [(ICDocCamZoomablePageContentViewController *)self image];
    [v8 size];
    v10 = v9;
    v12 = v11;
    v13 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [v13 setContentSize:{v10, v12}];

    v14 = [(ICDocCamZoomablePageContentViewController *)self imageView];
    [v14 sizeToFit];

    [(ICDocCamZoomablePageContentViewController *)self setupScales];
LABEL_15:
    v47 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [v47 bounds];
    MidX = CGRectGetMidX(v53);
    v49 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [v49 bounds];
    MidY = CGRectGetMidY(v54);

    v51 = [(ICDocCamZoomablePageContentViewController *)self imageView];
    [(ICDocCamZoomablePageContentViewController *)self view:v51 setCenter:MidX, MidY];

    goto LABEL_16;
  }

  [(ICDocCamZoomablePageContentViewController *)self prevScrollViewSize];
  if (v5 != v16 || v7 != v15)
  {
    v18 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [v18 zoomScale];
    v20 = v19;

    v21 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [v21 minimumZoomScale];
    v23 = v22;

    v24 = [(ICDocCamZoomablePageContentViewController *)self image];
    [v24 size];
    v26 = v25;
    v28 = v27;
    v29 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [v29 setContentSize:{v26, v28}];

    [(ICDocCamZoomablePageContentViewController *)self setupScales];
    if (v20 != v23)
    {
      v30 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
      [v30 minimumZoomScale];
      v32 = v31;

      if (v20 >= v32)
      {
        v32 = v20;
      }

      v33 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
      [v33 maximumZoomScale];
      v35 = v34;

      if (v32 < v35)
      {
        v35 = v32;
      }

      v36 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
      [v36 zoomScale];
      v38 = v37;

      if (v35 != v38)
      {
        v39 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
        [v39 setZoomScale:v35];

        v40 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
        [(ICDocCamZoomablePageContentViewController *)self scrollViewDidZoom:v40];
      }
    }

    v41 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [v41 zoomScale];
    v43 = v42;
    v44 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [v44 minimumZoomScale];
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
  v3 = [(ICDocCamZoomablePageContentViewController *)self pageContentDelegate];
  [v3 switchBarVisibilityForZoomablePageContentViewController:self];
}

- (void)doubleTap:(id)a3
{
  v4 = a3;
  if ([v4 numberOfTouches])
  {
    v5 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [v5 zoomScale];
    v7 = v6;
    v8 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
    [v8 minimumZoomScale];
    v10 = v9;

    if (v7 == v10)
    {
      v11 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
      [v4 locationOfTouch:0 inView:v11];
      v13 = v12;
      v15 = v14;

      v16 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
      [v16 maximumZoomScale];
      *&v17 = v17;
      [(ICDocCamZoomablePageContentViewController *)self zoomRectForScale:v17 withCenter:v13, v15];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v26 = [(ICDocCamZoomablePageContentViewController *)self scrollView];
      [v26 zoomToRect:1 animated:{v19, v21, v23, v25}];
    }

    else
    {
      v27 = [(ICDocCamZoomablePageContentViewController *)self view];
      [v27 bounds];
      MidX = CGRectGetMidX(v32);
      v29 = [(ICDocCamZoomablePageContentViewController *)self view];
      [v29 bounds];
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
  v3 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [v3 setIsAccessibilityElement:1];

  v5 = [DCLocalization localizedStringForKey:@"image" value:@"image" table:@"Localizable"];
  v4 = [(ICDocCamZoomablePageContentViewController *)self imageView];
  [v4 setAccessibilityLabel:v5];
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(ICDocCamZoomablePageContentViewController *)self pageContentDelegate];
  v4 = [v3 isShowingBarsForZoomablePageContentViewController:self];

  if ((v4 & 1) == 0)
  {
    v5 = [(ICDocCamZoomablePageContentViewController *)self pageContentDelegate];
    [v5 showBarsForZoomablePageContentViewController:self];
  }

  return v4 ^ 1;
}

- (void)pageContentViewDidPencilDown
{
  v3 = [(ICDocCamZoomablePageContentViewController *)self pageContentDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ICDocCamZoomablePageContentViewController *)self pageContentDelegate];
    [v5 pencilDownInZoomablePageContentViewController:self];
  }
}

- (BOOL)isTouchingAnalyzableContentAtPoint:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = [(ICDocCamZoomablePageContentViewController *)self analysisInteraction];
  if ([v6 hasActiveTextSelection] & 1) != 0 || (objc_msgSend(v6, "dataDetectorExistsAtPoint:", x, y) & 1) != 0 || (objc_msgSend(v6, "textExistsAtPoint:", x, y))
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 visualSearchExistsAtPoint:{x, y}];
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