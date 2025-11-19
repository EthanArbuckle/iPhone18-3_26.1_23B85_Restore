@interface ContinuousReadingViewController
- (BOOL)isUserInteractingWithContainer;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (ContinuousReadingViewControllerDelegate)delegate;
- (UIScrollView)_outerScrollView;
- (_SFWebView)currentWebView;
- (double)_scrollOffsetYForNextDocument;
- (double)_scrollOffsetYForPreviousDocument;
- (void)_commitToNextContinuousDocument;
- (void)_commitToPreviousContinuousDocument;
- (void)_willCommitToContinuousDocumentInPreviewView:(id)a3;
- (void)didCreateWebViewForNextDocument:(id)a3;
- (void)didCreateWebViewForPreviousDocument:(id)a3;
- (void)innerScrollViewDidScroll:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setBannerTheme:(id)a3 animated:(BOOL)a4;
- (void)setInterceptsScrollToTopTap:(BOOL)a3;
- (void)setPreviewView:(id)a3;
- (void)setPreviousItemPreviewView:(id)a3;
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
    v6 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIScrollView *)self->_outerScrollView setBackgroundColor:v6];

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
    v16 = [v26 scrollView];
    [v16 contentInset];
    v18 = v17;
    v20 = v19;

    v21 = [(ContinuousReadingPreviewView *)self->_previousItemPreviewView contentView];
    if (v26 != v21)
    {
      if (objc_opt_respondsToSelector())
      {
        [v21 _overrideLayoutParametersWithMinimumLayoutSize:v15 minimumUnobscuredSizeOverride:v7 maximumUnobscuredSizeOverride:{v15, v7, v5, v7}];
      }

      else
      {
        [v21 _overrideLayoutParametersWithMinimumLayoutSize:v15 maximumUnobscuredSizeOverride:{v7, v5, v7}];
      }

      v22 = [v21 scrollView];
      [v22 _sf_setContentInsetAdjustments:{0.0, v18, 0.0, v20}];

      [v21 _setObscuredInsets:{v25, v10, v12, v14}];
    }

    v23 = [(ContinuousReadingPreviewView *)self->_previewView contentView];

    if (v23 != v26)
    {
      if (objc_opt_respondsToSelector())
      {
        [v23 _overrideLayoutParametersWithMinimumLayoutSize:v15 minimumUnobscuredSizeOverride:v7 maximumUnobscuredSizeOverride:{v15, v7, v5, v7}];
      }

      else
      {
        [v23 _overrideLayoutParametersWithMinimumLayoutSize:v15 maximumUnobscuredSizeOverride:{v7, v5, v7}];
      }

      v24 = [v23 scrollView];
      [v24 _sf_setContentInsetAdjustments:{0.0, v18, 0.0, v20}];

      [v23 _setObscuredInsets:{v25, v10, v12, v14}];
    }

    WeakRetained = v26;
  }
}

- (void)updateOuterScrollView
{
  v11 = [(ContinuousReadingViewController *)self _outerScrollView];
  [v11 frame];
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

  [v11 setContentSize:{v4, v7}];
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

  [v11 setContentInset:{v6, v8, v9, v10}];
}

- (void)setPreviewView:(id)a3
{
  v5 = a3;
  previewView = self->_previewView;
  if (previewView != v5)
  {
    v7 = v5;
    [(ContinuousReadingPreviewView *)previewView removeFromSuperview];
    objc_storeStrong(&self->_previewView, a3);
    [(ContinuousReadingPreviewView *)v7 setBannerTheme:self->_bannerTheme animated:0];
    [(ContinuousReadingViewController *)self updateOuterScrollView];
    v5 = v7;
  }
}

- (void)setPreviousItemPreviewView:(id)a3
{
  v5 = a3;
  previousItemPreviewView = self->_previousItemPreviewView;
  if (previousItemPreviewView != v5)
  {
    v7 = v5;
    [(ContinuousReadingPreviewView *)previousItemPreviewView removeFromSuperview];
    objc_storeStrong(&self->_previousItemPreviewView, a3);
    [(ContinuousReadingPreviewView *)v7 setBannerTheme:self->_bannerTheme animated:0];
    [(ContinuousReadingViewController *)self updateOuterScrollView];
    v5 = v7;
  }
}

- (BOOL)isUserInteractingWithContainer
{
  v3 = [(ContinuousReadingViewController *)self _outerScrollView];
  if ([v3 isTracking])
  {
    v4 = 1;
  }

  else
  {
    [v3 contentOffset];
    v6 = v5;
    [(ContinuousReadingViewController *)self scrollOffsetYForCurrentDocument];
    v4 = v6 != v7;
  }

  return v4;
}

- (void)setBannerTheme:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  objc_storeStrong(&self->_bannerTheme, a3);
  v7 = a3;
  [(ContinuousReadingPreviewView *)self->_previousItemPreviewView setBannerTheme:v7 animated:v4];
  [(ContinuousReadingPreviewView *)self->_previewView setBannerTheme:v7 animated:v4];
}

- (void)setInterceptsScrollToTopTap:(BOOL)a3
{
  if (self->_interceptsScrollToTopTap != a3)
  {
    v4 = a3;
    self->_interceptsScrollToTopTap = a3;
    v5 = [(ContinuousReadingViewController *)self _outerScrollView];
    [v5 setScrollEnabled:v4];
    [v5 setScrollsToTop:v4];
  }
}

- (void)didCreateWebViewForNextDocument:(id)a3
{
  v4 = a3;
  v5 = [(ContinuousReadingPreviewView *)self->_previewView contentView];

  if (v5 != v4)
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
    [v4 setTransform:v17];
    [v4 setFrame:{v6, v7, v10, v12}];
    v14 = [v4 scrollView];
    [v14 setClipsToBounds:1];

    v15 = [v4 scrollView];
    [v15 setScrollsToTop:0];

    [(ContinuousReadingPreviewView *)self->_previewView setContentView:v4];
    v16 = [(ContinuousReadingViewController *)self _outerScrollView];
    [v4 setClippingView:v16];

    [(ContinuousReadingViewController *)self updateOuterScrollView];
  }
}

- (void)didCreateWebViewForPreviousDocument:(id)a3
{
  v4 = a3;
  v5 = [(ContinuousReadingPreviewView *)self->_previousItemPreviewView contentView];

  if (v5 != v4)
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
    [v4 setTransform:v17];
    [v4 setFrame:{v6, v7, v10, v12}];
    v14 = [v4 scrollView];
    [v14 setClipsToBounds:1];

    v15 = [v4 scrollView];
    [v15 setScrollsToTop:0];

    [(ContinuousReadingPreviewView *)self->_previousItemPreviewView setContentView:v4];
    v16 = [(ContinuousReadingViewController *)self _outerScrollView];
    [v4 setClippingView:v16];

    [(ContinuousReadingViewController *)self updateOuterScrollView];
  }
}

- (void)innerScrollViewDidScroll:(id)a3
{
  v15 = a3;
  if (![(ContinuousReadingPreviewView *)self->_previewView canShowContentView]&& ![(ContinuousReadingPreviewView *)self->_previousItemPreviewView canShowContentView]|| self->_suppressingAutoScroll)
  {
    goto LABEL_12;
  }

  v4 = [(ContinuousReadingViewController *)self _outerScrollView];
  [v15 bounds];
  MaxY = CGRectGetMaxY(v17);
  [v15 contentSize];
  v7 = MaxY - v6;
  [v15 contentInset];
  v9 = v7 - v8;
  if (v7 - v8 >= 0.0)
  {
    v14 = [(ContinuousReadingPreviewView *)self->_previewView canShowContentView];
    goto LABEL_10;
  }

  [v15 bounds];
  MinY = CGRectGetMinY(v18);
  [v15 contentInset];
  v12 = MinY + v11;
  v13 = [(ContinuousReadingPreviewView *)self->_previousItemPreviewView canShowContentView];
  v14 = v12 > 0.0 || v13;
  if (v12 <= 0.0 || v13)
  {
    goto LABEL_10;
  }

  if ([(ContinuousReadingPreviewView *)self->_previewView canShowContentView])
  {
    v14 = 1;
LABEL_10:
    [v4 setScrollEnabled:v14 & 1];
  }

LABEL_12:
}

- (void)_willCommitToContinuousDocumentInPreviewView:(id)a3
{
  v4 = a3;
  v5 = [(ContinuousReadingViewController *)self _outerScrollView];
  [v5 setContentOffset:0 animated:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  v6 = [(ContinuousReadingViewController *)self _outerScrollView];
  v7 = [v4 contentView];
  [v6 addSubview:v7];

  v8 = [v4 contentView];

  v15 = [v8 scrollView];

  [v15 _sf_setContentInsetAdjustments:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v15 contentOffset];
  v10 = v9;
  v12 = v11;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained continuousReadingViewControllerNextWebViewLandingOffset:self includeBottomBar:0];
  [v15 setContentOffset:{v10, v12 - v14}];
}

- (void)_commitToNextContinuousDocument
{
  [(ContinuousReadingViewController *)self _willCommitToContinuousDocumentInPreviewView:self->_previewView];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [(ContinuousReadingPreviewView *)self->_previewView continuousReadingItem];
  self->_committingToContinuousDocument = 1;
  [WeakRetained continuousReadingViewControllerWillCommitToLoadNextItem:self];
  [WeakRetained continuousReadingViewController:self didCommitToLoadItem:v3];
  self->_committingToContinuousDocument = 0;
}

- (void)_commitToPreviousContinuousDocument
{
  [(ContinuousReadingViewController *)self _willCommitToContinuousDocumentInPreviewView:self->_previousItemPreviewView];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [(ContinuousReadingPreviewView *)self->_previousItemPreviewView continuousReadingItem];
  self->_committingToContinuousDocument = 1;
  [WeakRetained continuousReadingViewControllerCommitToLoadPreviousItem:self];
  [WeakRetained continuousReadingViewController:self didCommitToLoadItem:v3];
  self->_committingToContinuousDocument = 0;
}

- (double)_scrollOffsetYForNextDocument
{
  v2 = [(ContinuousReadingViewController *)self _outerScrollView];
  [v2 frame];
  Height = CGRectGetHeight(v5);

  return Height;
}

- (double)_scrollOffsetYForPreviousDocument
{
  v2 = [(ContinuousReadingViewController *)self _outerScrollView];
  [v2 frame];
  v3 = -CGRectGetHeight(v5);

  return v3;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  if (!self->_suppressingAutoScroll)
  {
    v10 = v4;
    [v4 contentOffset];
    if (v5 >= 0.0 || [(ContinuousReadingPreviewView *)self->_previousItemPreviewView canShowContentView])
    {
      [v10 contentOffset];
      v7 = v6;
      [(ContinuousReadingViewController *)self scrollOffsetYForCurrentDocument];
      v4 = v10;
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

    v4 = v10;
  }

LABEL_8:
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a5->y;
  [(ContinuousReadingViewController *)self _scrollOffsetYForNextDocument:a3];
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

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v10 = a3;
  [v10 contentOffset];
  v5 = v4;
  [(ContinuousReadingViewController *)self _scrollOffsetYForNextDocument];
  if (v5 == v6)
  {
    [(ContinuousReadingViewController *)self _commitToNextContinuousDocument];
    self->_scrollingToNextContinuousDocument = 0;
  }

  else
  {
    [v10 contentOffset];
    v8 = v7;
    [(ContinuousReadingViewController *)self _scrollOffsetYForPreviousDocument];
    if (v8 == v9)
    {
      [(ContinuousReadingViewController *)self _commitToPreviousContinuousDocument];
    }
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
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