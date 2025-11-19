@interface PBUIScrollableStaticWallpaperView
- (CGPoint)_boundedContentOffsetForOverhang;
- (CGPoint)_maximumContentOffsetForOverhang;
- (CGPoint)_minimumContentOffsetForOverhang;
- (CGRect)_cropRect;
- (CGRect)cropRect;
- (CGSize)_imageSize;
- (PBUIScrollableStaticWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 variant:(int64_t)a5 cacheGroup:(id)a6 delegate:(id)a7 options:(unint64_t)a8;
- (double)_parallaxFactorWithZoomScale:(double)a3 contentOffset:(CGPoint)a4;
- (double)_scrollViewParallaxFactor;
- (double)_throttleDuration;
- (double)cropZoomScale;
- (id)_newImageView;
- (id)_wallpaperImageForAnalysis;
- (void)_cancelThrottle;
- (void)_resetColorBoxes;
- (void)_scrollViewDidUpdate;
- (void)_setupContentViewWithOptions:(unint64_t)a3;
- (void)_setupScrollView;
- (void)_updateParallaxForScroll;
- (void)_updateScrollViewZoomScales;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)scrollViewDidChangeAdjustedContentInset:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)setContentView:(id)a3;
- (void)setCropRect:(CGRect)a3 zoomScale:(double)a4;
- (void)setParallaxEnabled:(BOOL)a3;
@end

@implementation PBUIScrollableStaticWallpaperView

- (PBUIScrollableStaticWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 variant:(int64_t)a5 cacheGroup:(id)a6 delegate:(id)a7 options:(unint64_t)a8
{
  v17.receiver = self;
  v17.super_class = PBUIScrollableStaticWallpaperView;
  v8 = [(PBUIStaticWallpaperView *)&v17 initWithFrame:a4 configuration:a5 variant:a6 cacheGroup:a7 delegate:a8 options:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v8)
  {
    v9 = +[PBUIWallpaperDomain rootSettings];
    v10 = [v9 lockScreenParallaxSettings];
    parallaxSettings = v8->_parallaxSettings;
    v8->_parallaxSettings = v10;

    v8->_automaticallyEnablesParallax = 1;
    v12 = dispatch_queue_create("com.apple.PaperBoardSevices.ScrollableStaticWallpaperView", 0);
    workQueue = v8->_workQueue;
    v8->_workQueue = v12;

    v14 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    throttleCanUpdateFlag = v8->_throttleCanUpdateFlag;
    v8->_throttleCanUpdateFlag = v14;

    [(PBUIScrollableStaticWallpaperView *)v8 setOpaque:1];
  }

  return v8;
}

- (void)dealloc
{
  [(PBUIScrollableStaticWallpaperView *)self _cancelThrottle];
  [(UIScrollView *)self->_scrollView setDelegate:0];
  v3.receiver = self;
  v3.super_class = PBUIScrollableStaticWallpaperView;
  [(PBUIWallpaperView *)&v3 dealloc];
}

- (void)setParallaxEnabled:(BOOL)a3
{
  v3 = a3;
  if (![(PBUIWallpaperView *)self parallaxEnabled]&& v3)
  {
    [(UIScrollView *)self->_scrollView zoomScale];
    minimumZoomScale = v5;
    [(UIScrollView *)self->_scrollView zoomScale];
    if (v7 < self->_minimumZoomScaleForParallax)
    {
      [(UIScrollView *)self->_scrollView setZoomScale:1 animated:?];
      minimumZoomScale = self->_minimumZoomScale;
    }

    [(PBUIScrollableStaticWallpaperView *)self _boundedContentOffsetForOverhang];
    v9 = v8;
    v11 = v10;
    [(UIScrollView *)self->_scrollView setContentOffset:1 animated:?];
    [(PBUIScrollableStaticWallpaperView *)self _parallaxFactorWithZoomScale:minimumZoomScale contentOffset:v9, v11];
    [(PBUIWallpaperView *)self setParallaxFactor:?];
  }

  v12.receiver = self;
  v12.super_class = PBUIScrollableStaticWallpaperView;
  [(PBUIWallpaperView *)&v12 setParallaxEnabled:v3];
}

- (double)_scrollViewParallaxFactor
{
  scrollView = self->_scrollView;
  if (!scrollView)
  {
    return 1.0;
  }

  [(UIScrollView *)scrollView zoomScale];
  v5 = v4;
  [(UIScrollView *)self->_scrollView contentOffset];

  [(PBUIScrollableStaticWallpaperView *)self _parallaxFactorWithZoomScale:v5 contentOffset:v6, v7];
  return result;
}

- (double)_parallaxFactorWithZoomScale:(double)a3 contentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v45 = *MEMORY[0x277D85DE8];
  v8 = PBUILogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_INFO, "//////////_parallaxFactorWithZoomScale//////////", buf, 2u);
  }

  v9 = PBUILogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v44 = a3;
    _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_INFO, "zoomScale %g", buf, 0xCu);
  }

  v10 = PBUILogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    minimumZoomScale = self->_minimumZoomScale;
    *buf = 134217984;
    v44 = minimumZoomScale;
    _os_log_impl(&dword_21E67D000, v10, OS_LOG_TYPE_INFO, "minimumZoomScale %g", buf, 0xCu);
  }

  v12 = PBUILogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    minimumZoomScaleForParallax = self->_minimumZoomScaleForParallax;
    *buf = 134217984;
    v44 = minimumZoomScaleForParallax;
    _os_log_impl(&dword_21E67D000, v12, OS_LOG_TYPE_INFO, "minimumZoomScaleForParallax %g", buf, 0xCu);
  }

  v14 = fmin(fmax((a3 - self->_minimumZoomScale) / (self->_minimumZoomScaleForParallax - self->_minimumZoomScale), 0.0), 1.0);
  v15 = PBUILogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v44 = v14;
    _os_log_impl(&dword_21E67D000, v15, OS_LOG_TYPE_INFO, "zoomFactor %g", buf, 0xCu);
  }

  v42 = v14;

  [(PBUIScrollableStaticWallpaperView *)self _minimumContentOffsetForOverhang];
  v17 = v16;
  v19 = v18;
  v20 = PBUILogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v46.x = v17;
    v46.y = v19;
    NSStringFromCGPoint(v46);
    v21 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138543362;
    v44 = v21;
    _os_log_impl(&dword_21E67D000, v20, OS_LOG_TYPE_INFO, "minOffset %{public}@", buf, 0xCu);
  }

  [(PBUIScrollableStaticWallpaperView *)self _maximumContentOffsetForOverhang];
  v23 = v22;
  v25 = v24;
  v26 = PBUILogCommon();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v47.x = v23;
    v47.y = v25;
    NSStringFromCGPoint(v47);
    v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138543362;
    v44 = v27;
    _os_log_impl(&dword_21E67D000, v26, OS_LOG_TYPE_INFO, "maxOffset %{public}@", buf, 0xCu);
  }

  v28 = PBUILogCommon();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v44 = x / v17;
    _os_log_impl(&dword_21E67D000, v28, OS_LOG_TYPE_INFO, "minOffsetXFactor %g", buf, 0xCu);
  }

  v29 = y;
  v30 = y / v19;
  v31 = PBUILogCommon();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v44 = v30;
    _os_log_impl(&dword_21E67D000, v31, OS_LOG_TYPE_INFO, "minOffsetYFactor %g", buf, 0xCu);
  }

  if (x / v17 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = x / v17;
  }

  v33 = fmin(fmax(v32, 0.0), 1.0);
  v34 = PBUILogCommon();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v44 = v33;
    _os_log_impl(&dword_21E67D000, v34, OS_LOG_TYPE_INFO, "minOffsetFactor %g", buf, 0xCu);
  }

  v35 = (v17 + v23 - x) / v17;
  if (v35 >= (v19 + v25 - v29) / v19)
  {
    v35 = (v19 + v25 - v29) / v19;
  }

  v36 = fmin(fmax(v35, 0.0), 1.0);
  v37 = PBUILogCommon();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v44 = v36;
    _os_log_impl(&dword_21E67D000, v37, OS_LOG_TYPE_INFO, "maxOffsetFactor %g", buf, 0xCu);
  }

  v38 = v42;
  if (v42 > v33)
  {
    v38 = v33;
  }

  if (v38 <= v36)
  {
    v36 = v38;
  }

  v39 = PBUILogCommon();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v44 = v36;
    _os_log_impl(&dword_21E67D000, v39, OS_LOG_TYPE_INFO, "result: %g", buf, 0xCu);
  }

  v40 = PBUILogCommon();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21E67D000, v40, OS_LOG_TYPE_INFO, "/////////////////////////", buf, 2u);
  }

  return v36;
}

- (void)_resetColorBoxes
{
  v3 = [(PBUIStaticWallpaperView *)self _createColorBoxes];
  [(PBUIStaticWallpaperView *)self setColorBoxes:v3];
}

- (void)setContentView:(id)a3
{
  v4.receiver = self;
  v4.super_class = PBUIScrollableStaticWallpaperView;
  [(PBUIWallpaperView *)&v4 setContentView:a3];
  [(PBUIScrollableStaticWallpaperView *)self _resetColorBoxes];
}

- (void)_setupContentViewWithOptions:(unint64_t)a3
{
  v13 = [MEMORY[0x277D759A0] mainScreen];
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  [v13 bounds];
  v8 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{v4, v5, v6, v7}];
  scrollView = self->_scrollView;
  self->_scrollView = v8;

  v10 = self->_scrollView;
  [(PBUIScrollableStaticWallpaperView *)self frame];
  UIRectGetCenter();
  [(UIScrollView *)v10 setCenter:?];
  [(UIScrollView *)self->_scrollView setClipsToBounds:0];
  [(UIScrollView *)self->_scrollView setScrollsToTop:0];
  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
  [(UIScrollView *)self->_scrollView _setSupportsPointerDragScrolling:1];
  v11 = [(PBUIScrollableStaticWallpaperView *)self _newImageView];
  imageView = self->_imageView;
  self->_imageView = v11;

  [(UIScrollView *)self->_scrollView addSubview:self->_imageView];
  [(PBUIScrollableStaticWallpaperView *)self _setupScrollView];
  [(PBUIScrollableStaticWallpaperView *)self setContentView:self->_scrollView];
}

- (id)_newImageView
{
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = [(PBUIStaticWallpaperView *)self wallpaperImage];
  v5 = [v3 initWithImage:v4];

  return v5;
}

- (void)didMoveToWindow
{
  v3 = [(PBUIScrollableStaticWallpaperView *)self window];

  if (v3)
  {

    [(PBUIScrollableStaticWallpaperView *)self _scrollViewDidUpdate];
  }
}

- (CGSize)_imageSize
{
  [(PBUIScrollableStaticWallpaperView *)self _cropRect];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (id)_wallpaperImageForAnalysis
{
  [(UIScrollView *)self->_scrollView zoomScale];
  v4 = v3;
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = v6;

  [(PBUIScrollableStaticWallpaperView *)self _cropRect];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  if (CGRectEqualToRect(v18, *MEMORY[0x277CBF3A0]))
  {
    v12 = 0;
  }

  else
  {
    v17.width = width;
    v17.height = height;
    UIGraphicsBeginImageContextWithOptions(v17, 1, v7);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextScaleCTM(CurrentContext, v4, v4);
    v14 = [(PBUIStaticWallpaperView *)self wallpaperImage];
    [v14 drawAtPoint:{-x / v4, -y / v4}];

    v12 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v12;
}

- (void)_cancelThrottle
{
  throttleTimer = self->_throttleTimer;
  if (throttleTimer)
  {
    dispatch_source_cancel(throttleTimer);
    v4 = self->_throttleTimer;
    self->_throttleTimer = 0;
  }

  throttleCanUpdateFlag = self->_throttleCanUpdateFlag;

  [(BSAtomicFlag *)throttleCanUpdateFlag setFlag:0];
}

- (void)_scrollViewDidUpdate
{
  if ([(BSAtomicFlag *)self->_throttleCanUpdateFlag setFlag:1])
  {
    if (!self->_throttleTimer)
    {
      [(PBUIScrollableStaticWallpaperView *)self _throttleDuration];
      v4 = v3;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __57__PBUIScrollableStaticWallpaperView__scrollViewDidUpdate__block_invoke;
      handler[3] = &unk_278361E18;
      handler[4] = self;
      v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      if (v5)
      {
        v6 = dispatch_time(0, (v4 * 1000000000.0));
        dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
        dispatch_source_set_event_handler(v5, handler);
        dispatch_resume(v5);
      }

      throttleTimer = self->_throttleTimer;
      self->_throttleTimer = v5;
    }

    [(PBUIScrollableStaticWallpaperView *)self _updateParallaxForScroll];
    objc_initWeak(&location, self);
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PBUIScrollableStaticWallpaperView__scrollViewDidUpdate__block_invoke_2;
    block[3] = &unk_278363040;
    objc_copyWeak(&v10, &location);
    dispatch_async(workQueue, block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __57__PBUIScrollableStaticWallpaperView__scrollViewDidUpdate__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _createColorBoxes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__PBUIScrollableStaticWallpaperView__scrollViewDidUpdate__block_invoke_3;
  v5[3] = &unk_278363718;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __57__PBUIScrollableStaticWallpaperView__scrollViewDidUpdate__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setColorBoxes:*(a1 + 32)];
  v2 = [WeakRetained _computeAverageColor];
  [WeakRetained updateLegibilitySettingsForAverageColor:v2];
}

- (void)_updateParallaxForScroll
{
  [(PBUIScrollableStaticWallpaperView *)self _scrollViewParallaxFactor];
  v4 = v3;
  v5 = [(PBUIWallpaperView *)self parallaxEnabled];
  if (v4 >= 0.75 || !v5)
  {
    v7 = v5;
    v10.receiver = self;
    v10.super_class = PBUIScrollableStaticWallpaperView;
    [(PBUIWallpaperView *)&v10 parallaxFactor];
    if (v4 >= 0.75 && vabdd_f64(v4, v8) > 0.1)
    {
      [(PBUIWallpaperView *)self setParallaxFactor:v4];
      if (v7 || !self->_automaticallyEnablesParallax)
      {
        [(PBUIWallpaperView *)self _applyParallaxSettings];
      }

      else
      {
        v9.receiver = self;
        v9.super_class = PBUIScrollableStaticWallpaperView;
        [(PBUIWallpaperView *)&v9 setParallaxEnabled:1];
        self->_automaticallyEnablesParallax = 0;
      }
    }
  }

  else
  {
    [(PBUIScrollableStaticWallpaperView *)self setParallaxEnabled:0];
    self->_automaticallyEnablesParallax = 1;
  }
}

- (double)_throttleDuration
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  if ([v2 _graphicsQuality] == 100)
  {
    v3 = 0.2;
  }

  else
  {
    v3 = 1.0;
  }

  return v3;
}

- (void)_updateScrollViewZoomScales
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = PBUILogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_INFO, "//////////_updateScrollViewZoomScales//////////", buf, 2u);
  }

  v28.receiver = self;
  v28.super_class = PBUIScrollableStaticWallpaperView;
  v4 = [(PBUIStaticWallpaperView *)&v28 wallpaperImage];
  [v4 size];
  v6 = v5;
  v8 = v7;

  v9 = PBUILogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v32.width = v6;
    v32.height = v8;
    v10 = NSStringFromCGSize(v32);
    *buf = 138543362;
    v30 = *&v10;
    _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_INFO, "imageSize: %{public}@", buf, 0xCu);
  }

  [(UIScrollView *)self->_scrollView bounds];
  v13 = v12 / v6;
  if (v12 / v6 < v11 / v8)
  {
    v13 = v11 / v8;
  }

  self->_minimumZoomScale = v13;
  [(UIScrollView *)self->_scrollView setMinimumZoomScale:?];
  [(UIScrollView *)self->_scrollView setMaximumZoomScale:fmax(self->_minimumZoomScale + self->_minimumZoomScale, 5.0)];
  +[PBUIWallpaperParallaxSettings minimumWallpaperSizeForCurrentDevice];
  v15 = v14;
  v17 = v16;
  v18 = PBUILogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v33.width = v15;
    v33.height = v17;
    v19 = NSStringFromCGSize(v33);
    *buf = 138543362;
    v30 = *&v19;
    _os_log_impl(&dword_21E67D000, v18, OS_LOG_TYPE_INFO, "parallaxSize: %{public}@", buf, 0xCu);
  }

  v20 = v15 / v6;
  v21 = PBUILogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v30 = v20;
    _os_log_impl(&dword_21E67D000, v21, OS_LOG_TYPE_INFO, "scaleX: %g", buf, 0xCu);
  }

  v22 = v17 / v8;
  v23 = PBUILogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v30 = v22;
    _os_log_impl(&dword_21E67D000, v23, OS_LOG_TYPE_INFO, "scaleY: %g", buf, 0xCu);
  }

  if (v20 >= v22)
  {
    v24 = v20;
  }

  else
  {
    v24 = v22;
  }

  self->_minimumZoomScaleForParallax = v24;
  v25 = PBUILogCommon();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    minimumZoomScaleForParallax = self->_minimumZoomScaleForParallax;
    *buf = 134217984;
    v30 = minimumZoomScaleForParallax;
    _os_log_impl(&dword_21E67D000, v25, OS_LOG_TYPE_INFO, "minimumZoomScaleForParallax: %g", buf, 0xCu);
  }

  v27 = PBUILogCommon();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21E67D000, v27, OS_LOG_TYPE_INFO, "/////////////////////////", buf, 2u);
  }
}

- (void)_setupScrollView
{
  v11.receiver = self;
  v11.super_class = PBUIScrollableStaticWallpaperView;
  v3 = [(PBUIStaticWallpaperView *)&v11 wallpaperImage];
  [v3 size];
  v5 = v4;
  v7 = v6;

  [(UIScrollView *)self->_scrollView setContentSize:v5, v7];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(PBUIScrollableStaticWallpaperView *)self _updateScrollViewZoomScales];
  [(UIScrollView *)self->_scrollView setZoomScale:self->_minimumZoomScaleForParallax];
  [(UIScrollView *)self->_scrollView contentSize];
  v9 = v8;
  [(UIScrollView *)self->_scrollView bounds];
  [(UIScrollView *)self->_scrollView setContentOffset:(v9 - v10) * 0.5, 0.0];
  [(PBUIScrollableStaticWallpaperView *)self _boundedContentOffsetForOverhang];
  [(UIScrollView *)self->_scrollView setContentOffset:0 animated:?];
  [(UIScrollView *)self->_scrollView setBounces:1];
  [(UIScrollView *)self->_scrollView setAlwaysBounceHorizontal:1];
  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [(UIScrollView *)self->_scrollView setScrollEnabled:1];
}

- (CGPoint)_boundedContentOffsetForOverhang
{
  [(UIScrollView *)self->_scrollView contentOffset];
  v4 = v3;
  v6 = v5;
  [(PBUIScrollableStaticWallpaperView *)self _minimumContentOffsetForOverhang];
  v8 = v7;
  v10 = v9;
  [(PBUIScrollableStaticWallpaperView *)self _maximumContentOffsetForOverhang];
  if (v8 >= v4)
  {
    v13 = v8;
  }

  else
  {
    v13 = v4;
  }

  if (v11 > v13)
  {
    v11 = v13;
  }

  if (v10 >= v6)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (v12 > v14)
  {
    v12 = v14;
  }

  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)_minimumContentOffsetForOverhang
{
  +[PBUIWallpaperParallaxSettings overhangSizeForCurrentDevice];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)_maximumContentOffsetForOverhang
{
  +[PBUIWallpaperParallaxSettings overhangSizeForCurrentDevice];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self->_scrollView contentSize];
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self->_scrollView bounds];
  v12 = v8 - v11 - v4;
  v14 = v10 - v13 - v6;
  result.y = v14;
  result.x = v12;
  return result;
}

- (CGRect)_cropRect
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = PBUILogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.a) = 0;
    _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_INFO, "//////////_cropRect//////////", &buf, 2u);
  }

  [(UIScrollView *)self->_scrollView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = PBUILogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v62.origin.x = v5;
    v62.origin.y = v7;
    v62.size.width = v9;
    v62.size.height = v11;
    v13 = NSStringFromCGRect(v62);
    LODWORD(buf.a) = 138543362;
    *(&buf.a + 4) = v13;
    _os_log_impl(&dword_21E67D000, v12, OS_LOG_TYPE_INFO, "zoomedRect: %{public}@", &buf, 0xCu);
  }

  [(UIScrollView *)self->_scrollView zoomScale];
  v15 = v14;
  v16 = PBUILogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.a) = 134217984;
    *(&buf.a + 4) = v15;
    _os_log_impl(&dword_21E67D000, v16, OS_LOG_TYPE_INFO, "zoomScale: %g", &buf, 0xCu);
  }

  v57.receiver = self;
  v57.super_class = PBUIScrollableStaticWallpaperView;
  v17 = [(PBUIStaticWallpaperView *)&v57 wallpaperImage];
  v18 = v17;
  if (v15 == 0.0 || v17 == 0)
  {
    v20 = *MEMORY[0x277CBF3A0];
    v21 = *(MEMORY[0x277CBF3A0] + 8);
    v22 = *(MEMORY[0x277CBF3A0] + 16);
    v23 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    [v17 size];
    v25 = v15 * v24;
    v27 = v15 * v26;
    v28 = PBUILogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v60.width = v25;
      v60.height = v27;
      v30 = NSStringFromCGSize(v60);
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = v30;
      _os_log_impl(&dword_21E67D000, v28, OS_LOG_TYPE_INFO, "scaledImageSize: %{public}@", &buf, 0xCu);
    }

    v56 = v27;

    v31 = 0.0;
    if ([(PBUIWallpaperView *)self parallaxEnabled])
    {
      [(PBUIScrollableStaticWallpaperView *)self parallaxFactor];
      v31 = v32;
    }

    [PBUIWallpaperParallaxSettings bestWallpaperSizeForParallaxFactor:v31];
    v34 = v33;
    v36 = v35;
    v37 = PBUILogCommon();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 134217984;
      *(&buf.a + 4) = v31;
      _os_log_impl(&dword_21E67D000, v37, OS_LOG_TYPE_INFO, "parallaxFactor: %g", &buf, 0xCu);
    }

    v38 = PBUILogCommon();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v61.width = v34;
      v61.height = v36;
      v39 = NSStringFromCGSize(v61);
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = v39;
      _os_log_impl(&dword_21E67D000, v38, OS_LOG_TYPE_INFO, "bestSize: %{public}@", &buf, 0xCu);
    }

    v40 = (v34 - v9) * 0.5;
    v41 = (v36 - v11) * 0.5;
    if (v40 >= v5)
    {
      v40 = v5;
    }

    if (v40 >= v25 - (v5 + v9))
    {
      v40 = v25 - (v5 + v9);
    }

    if (v41 >= v7)
    {
      v41 = v7;
    }

    if (v41 >= v56 - (v7 + v11))
    {
      v41 = v56 - (v7 + v11);
    }

    if (v40 >= 0.0)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0.0;
    }

    if (v41 >= 0.0)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0.0;
    }

    v44 = PBUILogCommon();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 134217984;
      *(&buf.a + 4) = v42;
      _os_log_impl(&dword_21E67D000, v44, OS_LOG_TYPE_INFO, "extraX: %g", &buf, 0xCu);
    }

    v45 = PBUILogCommon();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 134217984;
      *(&buf.a + 4) = v43;
      _os_log_impl(&dword_21E67D000, v45, OS_LOG_TYPE_INFO, "extraY: %g", &buf, 0xCu);
    }

    [(PBUIWallpaperView *)self contentScaleFactor];
    CGAffineTransformMakeScale(&buf, 1.0 / v46, 1.0 / v46);
    v63.origin.x = v5 - v42;
    v63.origin.y = v7 - v43;
    v63.size.width = v9 + v42 * 2.0;
    v63.size.height = v11 + v43 * 2.0;
    CGRectApplyAffineTransform(v63, &buf);
    v47 = PBUILogCommon();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&dword_21E67D000, v47, OS_LOG_TYPE_INFO, "/////////////////////////", &buf, 2u);
    }

    UIRectCenteredIntegralRect();
    v20 = v48;
    v21 = v49;
    v22 = v50;
    v23 = v51;
  }

  v52 = v20;
  v53 = v21;
  v54 = v22;
  v55 = v23;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (CGRect)cropRect
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = PBUILogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_INFO, "//////////cropRect//////////", &v29, 2u);
  }

  [(PBUIScrollableStaticWallpaperView *)self _cropRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = PBUILogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v32.origin.x = v5;
    v32.origin.y = v7;
    v32.size.width = v9;
    v32.size.height = v11;
    v13 = NSStringFromCGRect(v32);
    v29 = 138543362;
    v30 = v13;
    _os_log_impl(&dword_21E67D000, v12, OS_LOG_TYPE_INFO, "pre crop rect: %{public}@", &v29, 0xCu);
  }

  [(UIScrollView *)self->_scrollView convertRect:self->_imageView toView:v5, v7, v9, v11];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = PBUILogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v33.origin.x = v15;
    v33.origin.y = v17;
    v33.size.width = v19;
    v33.size.height = v21;
    v23 = NSStringFromCGRect(v33);
    v29 = 138543362;
    v30 = v23;
    _os_log_impl(&dword_21E67D000, v22, OS_LOG_TYPE_INFO, "result crop rect: %{public}@", &v29, 0xCu);
  }

  v24 = PBUILogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&dword_21E67D000, v24, OS_LOG_TYPE_INFO, "/////////////////////////", &v29, 2u);
  }

  v25 = v15;
  v26 = v17;
  v27 = v19;
  v28 = v21;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (double)cropZoomScale
{
  [(UIScrollView *)self->_scrollView zoomScale];
  v4 = v3;
  [(PBUIWallpaperView *)self contentScaleFactor];
  return v4 * v5;
}

- (void)setCropRect:(CGRect)a3 zoomScale:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsEmpty(a3))
  {
    [(PBUIWallpaperView *)self contentScaleFactor];
    v11 = v10;
    [(UIScrollView *)self->_scrollView setZoomScale:a4 / v10];
    [(UIScrollView *)self->_scrollView convertRect:self->_imageView fromView:x, y, width, height];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    CGAffineTransformMakeScale(&v30, v11, v11);
    v31.origin.x = v13;
    v31.origin.y = v15;
    v31.size.width = v17;
    v31.size.height = v19;
    CGRectApplyAffineTransform(v31, &v30);
    UIRectCenteredIntegralRect();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [(UIScrollView *)self->_scrollView bounds];
    [(UIScrollView *)self->_scrollView setContentOffset:v21 + (v25 - v28) * 0.5, v23 + (v27 - v29) * 0.5];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PBUIScrollableStaticWallpaperView;
  [(PBUIWallpaperView *)&v5 layoutSubviews];
  scrollView = self->_scrollView;
  v4 = [(UIScrollView *)scrollView superview];
  [v4 bounds];
  UIRectGetCenter();
  [(UIScrollView *)scrollView setCenter:?];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(PBUIScrollableStaticWallpaperView *)self _scrollViewDidUpdate];
  }
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)a3
{
  if ([(PBUIWallpaperView *)self parallaxEnabled])
  {
    [(PBUIScrollableStaticWallpaperView *)self _boundedContentOffsetForOverhang];
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView setContentOffset:1 animated:?];
  }
}

@end