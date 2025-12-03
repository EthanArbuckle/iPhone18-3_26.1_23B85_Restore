@interface ContinuousReadingViewController
- (BOOL)isUserInteractingWithContainer;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (ContinuousReadingViewControllerDelegate)delegate;
- (UIScrollView)_outerScrollView;
- (_SFWebView)currentWebView;
- (double)_scrollOffsetYForNextDocument;
- (double)_scrollOffsetYForPreviousDocument;
- (void)_commitToNextContinuousDocument;
- (void)_commitToPreviousContinuousDocument;
- (void)_willCommitToContinuousDocumentInPreviewView:(id)view;
- (void)didCreateWebViewForNextDocument:(id)document;
- (void)didCreateWebViewForPreviousDocument:(id)document;
- (void)innerScrollViewDidScroll:(id)scroll;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setBannerTheme:(id)theme animated:(BOOL)animated;
- (void)setInterceptsScrollToTopTap:(BOOL)tap;
- (void)setPreviewView:(id)view;
- (void)setPreviousItemPreviewView:(id)view;
- (void)updateContinuousPreviewViewSizeAttributes;
- (void)updateOuterScrollView;
@end

@implementation ContinuousReadingViewController

- (UIScrollView)_outerScrollView
{
  outerScrollView = self->_outerScrollView;
  if (!outerScrollView)
  {
    v4 = objc_alloc_init(ContinuousReadingScrollView);
    v5 = self->_outerScrollView;
    self->_outerScrollView = &v4->super;

    [(UIScrollView *)self->_outerScrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)self->_outerScrollView setPagingEnabled:1];
    [(UIScrollView *)self->_outerScrollView setAutoresizingMask:18];
    [(UIScrollView *)self->_outerScrollView setDelegate:self];
    [(UIScrollView *)self->_outerScrollView _setAutoScrollEnabled:0];
    if ([MEMORY[0x277D49A08] isSolariumEnabled])
    {
      [(UIScrollView *)self->_outerScrollView setContentInsetAdjustmentBehavior:2];
    }

    [(UIScrollView *)self->_outerScrollView setScrollsToTop:0];
    [(UIScrollView *)self->_outerScrollView setScrollEnabled:0];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIScrollView *)self->_outerScrollView setBackgroundColor:systemBackgroundColor];

    self->_suppressingAutoScroll = 1;
    outerScrollView = self->_outerScrollView;
  }

  v7 = outerScrollView;

  return v7;
}

- (void)updateContinuousPreviewViewSizeAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_currentWebView);
  if (WeakRetained)
  {
    v26 = WeakRetained;
    [WeakRetained bounds];
    v5 = v4;
    v7 = v6;
    [(ContinuousReadingPreviewView *)self->_previousItemPreviewView setContentViewSize:v4, v6];
    [(ContinuousReadingPreviewView *)self->_previewView setContentViewSize:v5, v7];
    [v26 _obscuredInsets];
    UIEdgeInsetsReplace();
    v25 = v8;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = v5 - (v9 + v13);
    scrollView = [v26 scrollView];
    [scrollView contentInset];
    v18 = v17;
    v20 = v19;

    contentView = [(ContinuousReadingPreviewView *)self->_previousItemPreviewView contentView];
    if (v26 != contentView)
    {
      if (objc_opt_respondsToSelector())
      {
        [contentView _overrideLayoutParametersWithMinimumLayoutSize:v15 minimumUnobscuredSizeOverride:v7 maximumUnobscuredSizeOverride:{v15, v7, v5, v7}];
      }

      else
      {
        [contentView _overrideLayoutParametersWithMinimumLayoutSize:v15 maximumUnobscuredSizeOverride:{v7, v5, v7}];
      }

      scrollView2 = [contentView scrollView];
      [scrollView2 _sf_setContentInsetAdjustments:{0.0, v18, 0.0, v20}];

      [contentView _setObscuredInsets:{v25, v10, v12, v14}];
    }

    contentView2 = [(ContinuousReadingPreviewView *)self->_previewView contentView];

    if (contentView2 != v26)
    {
      if (objc_opt_respondsToSelector())
      {
        [contentView2 _overrideLayoutParametersWithMinimumLayoutSize:v15 minimumUnobscuredSizeOverride:v7 maximumUnobscuredSizeOverride:{v15, v7, v5, v7}];
      }

      else
      {
        [contentView2 _overrideLayoutParametersWithMinimumLayoutSize:v15 maximumUnobscuredSizeOverride:{v7, v5, v7}];
      }

      scrollView3 = [contentView2 scrollView];
      [scrollView3 _sf_setContentInsetAdjustments:{0.0, v18, 0.0, v20}];

      [contentView2 _setObscuredInsets:{v25, v10, v12, v14}];
    }

    WeakRetained = v26;
  }
}

- (void)updateOuterScrollView
{
  _outerScrollView = [(ContinuousReadingViewController *)self _outerScrollView];
  [_outerScrollView frame];
  v4 = v3;
  v6 = v5;
  if ([(ContinuousReadingPreviewView *)self->_previewView canShowContentView])
  {
    v7 = v6 + v6;
  }

  else
  {
    v7 = v6;
  }

  [_outerScrollView setContentSize:{v4, v7}];
  if ([(ContinuousReadingPreviewView *)self->_previousItemPreviewView canShowContentView])
  {
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
  }

  else
  {
    v6 = *MEMORY[0x277D768C8];
    v8 = *(MEMORY[0x277D768C8] + 8);
    v9 = *(MEMORY[0x277D768C8] + 16);
    v10 = *(MEMORY[0x277D768C8] + 24);
  }

  [_outerScrollView setContentInset:{v6, v8, v9, v10}];
}

- (void)setPreviewView:(id)view
{
  viewCopy = view;
  previewView = self->_previewView;
  if (previewView != viewCopy)
  {
    v7 = viewCopy;
    [(ContinuousReadingPreviewView *)previewView removeFromSuperview];
    objc_storeStrong(&self->_previewView, view);
    [(ContinuousReadingPreviewView *)v7 setBannerTheme:self->_bannerTheme animated:0];
    [(ContinuousReadingViewController *)self updateOuterScrollView];
    viewCopy = v7;
  }
}

- (void)setPreviousItemPreviewView:(id)view
{
  viewCopy = view;
  previousItemPreviewView = self->_previousItemPreviewView;
  if (previousItemPreviewView != viewCopy)
  {
    v7 = viewCopy;
    [(ContinuousReadingPreviewView *)previousItemPreviewView removeFromSuperview];
    objc_storeStrong(&self->_previousItemPreviewView, view);
    [(ContinuousReadingPreviewView *)v7 setBannerTheme:self->_bannerTheme animated:0];
    [(ContinuousReadingViewController *)self updateOuterScrollView];
    viewCopy = v7;
  }
}

- (BOOL)isUserInteractingWithContainer
{
  _outerScrollView = [(ContinuousReadingViewController *)self _outerScrollView];
  if ([_outerScrollView isTracking])
  {
    v4 = 1;
  }

  else
  {
    [_outerScrollView contentOffset];
    v6 = v5;
    [(ContinuousReadingViewController *)self scrollOffsetYForCurrentDocument];
    v4 = v6 != v7;
  }

  return v4;
}

- (void)setBannerTheme:(id)theme animated:(BOOL)animated
{
  animatedCopy = animated;
  objc_storeStrong(&self->_bannerTheme, theme);
  themeCopy = theme;
  [(ContinuousReadingPreviewView *)self->_previousItemPreviewView setBannerTheme:themeCopy animated:animatedCopy];
  [(ContinuousReadingPreviewView *)self->_previewView setBannerTheme:themeCopy animated:animatedCopy];
}

- (void)setInterceptsScrollToTopTap:(BOOL)tap
{
  if (self->_interceptsScrollToTopTap != tap)
  {
    tapCopy = tap;
    self->_interceptsScrollToTopTap = tap;
    _outerScrollView = [(ContinuousReadingViewController *)self _outerScrollView];
    [_outerScrollView setScrollEnabled:tapCopy];
    [_outerScrollView setScrollsToTop:tapCopy];
  }
}

- (void)didCreateWebViewForNextDocument:(id)document
{
  documentCopy = document;
  contentView = [(ContinuousReadingPreviewView *)self->_previewView contentView];

  if (contentView != documentCopy)
  {
    v6 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
    WeakRetained = objc_loadWeakRetained(&self->_currentWebView);
    [WeakRetained frame];
    v10 = v9;
    v12 = v11;

    v13 = *(MEMORY[0x277CBF2C0] + 16);
    v17[0] = *MEMORY[0x277CBF2C0];
    v17[1] = v13;
    v17[2] = *(MEMORY[0x277CBF2C0] + 32);
    [documentCopy setTransform:v17];
    [documentCopy setFrame:{v6, v7, v10, v12}];
    scrollView = [documentCopy scrollView];
    [scrollView setClipsToBounds:1];

    scrollView2 = [documentCopy scrollView];
    [scrollView2 setScrollsToTop:0];

    [(ContinuousReadingPreviewView *)self->_previewView setContentView:documentCopy];
    _outerScrollView = [(ContinuousReadingViewController *)self _outerScrollView];
    [documentCopy setClippingView:_outerScrollView];

    [(ContinuousReadingViewController *)self updateOuterScrollView];
  }
}

- (void)didCreateWebViewForPreviousDocument:(id)document
{
  documentCopy = document;
  contentView = [(ContinuousReadingPreviewView *)self->_previousItemPreviewView contentView];

  if (contentView != documentCopy)
  {
    v6 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
    WeakRetained = objc_loadWeakRetained(&self->_currentWebView);
    [WeakRetained frame];
    v10 = v9;
    v12 = v11;

    v13 = *(MEMORY[0x277CBF2C0] + 16);
    v17[0] = *MEMORY[0x277CBF2C0];
    v17[1] = v13;
    v17[2] = *(MEMORY[0x277CBF2C0] + 32);
    [documentCopy setTransform:v17];
    [documentCopy setFrame:{v6, v7, v10, v12}];
    scrollView = [documentCopy scrollView];
    [scrollView setClipsToBounds:1];

    scrollView2 = [documentCopy scrollView];
    [scrollView2 setScrollsToTop:0];

    [(ContinuousReadingPreviewView *)self->_previousItemPreviewView setContentView:documentCopy];
    _outerScrollView = [(ContinuousReadingViewController *)self _outerScrollView];
    [documentCopy setClippingView:_outerScrollView];

    [(ContinuousReadingViewController *)self updateOuterScrollView];
  }
}

- (void)innerScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (![(ContinuousReadingPreviewView *)self->_previewView canShowContentView]&& ![(ContinuousReadingPreviewView *)self->_previousItemPreviewView canShowContentView]|| self->_suppressingAutoScroll)
  {
    goto LABEL_12;
  }

  _outerScrollView = [(ContinuousReadingViewController *)self _outerScrollView];
  [scrollCopy bounds];
  MaxY = CGRectGetMaxY(v17);
  [scrollCopy contentSize];
  v7 = MaxY - v6;
  [scrollCopy contentInset];
  v9 = v7 - v8;
  if (v7 - v8 >= 0.0)
  {
    canShowContentView = [(ContinuousReadingPreviewView *)self->_previewView canShowContentView];
    goto LABEL_10;
  }

  [scrollCopy bounds];
  MinY = CGRectGetMinY(v18);
  [scrollCopy contentInset];
  v12 = MinY + v11;
  canShowContentView2 = [(ContinuousReadingPreviewView *)self->_previousItemPreviewView canShowContentView];
  canShowContentView = v12 > 0.0 || canShowContentView2;
  if (v12 <= 0.0 || canShowContentView2)
  {
    goto LABEL_10;
  }

  if ([(ContinuousReadingPreviewView *)self->_previewView canShowContentView])
  {
    canShowContentView = 1;
LABEL_10:
    [_outerScrollView setScrollEnabled:canShowContentView & 1];
  }

LABEL_12:
}

- (void)_willCommitToContinuousDocumentInPreviewView:(id)view
{
  viewCopy = view;
  _outerScrollView = [(ContinuousReadingViewController *)self _outerScrollView];
  [_outerScrollView setContentOffset:0 animated:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  _outerScrollView2 = [(ContinuousReadingViewController *)self _outerScrollView];
  contentView = [viewCopy contentView];
  [_outerScrollView2 addSubview:contentView];

  contentView2 = [viewCopy contentView];

  scrollView = [contentView2 scrollView];

  [scrollView _sf_setContentInsetAdjustments:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [scrollView contentOffset];
  v10 = v9;
  v12 = v11;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained continuousReadingViewControllerNextWebViewLandingOffset:self includeBottomBar:0];
  [scrollView setContentOffset:{v10, v12 - v14}];
}

- (void)_commitToNextContinuousDocument
{
  [(ContinuousReadingViewController *)self _willCommitToContinuousDocumentInPreviewView:self->_previewView];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  continuousReadingItem = [(ContinuousReadingPreviewView *)self->_previewView continuousReadingItem];
  self->_committingToContinuousDocument = 1;
  [WeakRetained continuousReadingViewControllerWillCommitToLoadNextItem:self];
  [WeakRetained continuousReadingViewController:self didCommitToLoadItem:continuousReadingItem];
  self->_committingToContinuousDocument = 0;
}

- (void)_commitToPreviousContinuousDocument
{
  [(ContinuousReadingViewController *)self _willCommitToContinuousDocumentInPreviewView:self->_previousItemPreviewView];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  continuousReadingItem = [(ContinuousReadingPreviewView *)self->_previousItemPreviewView continuousReadingItem];
  self->_committingToContinuousDocument = 1;
  [WeakRetained continuousReadingViewControllerCommitToLoadPreviousItem:self];
  [WeakRetained continuousReadingViewController:self didCommitToLoadItem:continuousReadingItem];
  self->_committingToContinuousDocument = 0;
}

- (double)_scrollOffsetYForNextDocument
{
  _outerScrollView = [(ContinuousReadingViewController *)self _outerScrollView];
  [_outerScrollView frame];
  Height = CGRectGetHeight(v5);

  return Height;
}

- (double)_scrollOffsetYForPreviousDocument
{
  _outerScrollView = [(ContinuousReadingViewController *)self _outerScrollView];
  [_outerScrollView frame];
  v3 = -CGRectGetHeight(v5);

  return v3;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (!self->_suppressingAutoScroll)
  {
    v10 = scrollCopy;
    [scrollCopy contentOffset];
    if (v5 >= 0.0 || [(ContinuousReadingPreviewView *)self->_previousItemPreviewView canShowContentView])
    {
      [v10 contentOffset];
      v7 = v6;
      [(ContinuousReadingViewController *)self scrollOffsetYForCurrentDocument];
      scrollCopy = v10;
      if (v7 == v8)
      {
        goto LABEL_8;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained continuousReadingViewController:self scrollViewDidScroll:v10];
    }

    else
    {
      [v10 setContentOffset:{0.0, 0.0}];
    }

    scrollCopy = v10;
  }

LABEL_8:
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = offset->y;
  [(ContinuousReadingViewController *)self _scrollOffsetYForNextDocument:dragging];
  if (y == v7)
  {
    self->_scrollingToNextContinuousDocument = 1;
    memset(&v16, 0, sizeof(v16));
    WeakRetained = objc_loadWeakRetained(&self->_currentWebView);
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained transform];
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
    }

    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 continuousReadingViewControllerNextWebViewLandingOffset:self includeBottomBar:1];
    v14 = v16;
    CGAffineTransformTranslate(&v15, &v14, 0.0, v11);
    v16 = v15;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v13 = v16;
    v12[2] = __94__ContinuousReadingViewController_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke;
    v12[3] = &unk_2781D9738;
    v12[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v12 animations:0.15];
  }
}

void __94__ContinuousReadingViewController_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v3 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  v4[2] = *(a1 + 72);
  [WeakRetained setTransform:v4];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  [deceleratingCopy contentOffset];
  v5 = v4;
  [(ContinuousReadingViewController *)self _scrollOffsetYForNextDocument];
  if (v5 == v6)
  {
    [(ContinuousReadingViewController *)self _commitToNextContinuousDocument];
    self->_scrollingToNextContinuousDocument = 0;
  }

  else
  {
    [deceleratingCopy contentOffset];
    v8 = v7;
    [(ContinuousReadingViewController *)self _scrollOffsetYForPreviousDocument];
    if (v8 == v9)
    {
      [(ContinuousReadingViewController *)self _commitToPreviousContinuousDocument];
    }
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained continuousReadingViewControllerDidObserveScrollToTopTap:self];

  return 0;
}

- (_SFWebView)currentWebView
{
  WeakRetained = objc_loadWeakRetained(&self->_currentWebView);

  return WeakRetained;
}

- (ContinuousReadingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end